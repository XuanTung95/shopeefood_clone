import 'package:shopeefood_clone/models/model_menu_response.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_cart.dart';
import '../../models/model_shop_detail.dart';

class StateCart extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateCart());

  final List<OrderItems> _orderItems = [];

  List<OrderItems> get orderItems => _orderItems;

  List<OrderDishes> orderDishes(int restaurantId) {
    final List<OrderDishes> ret = [];
    for (var orderItem in _orderItems) {
      if (orderItem.restaurant?.id == restaurantId) {
        orderItem.orders?.userOrder?.forEach((userOrder) {
          ret.addAll(userOrder.orderDishes ?? []);
        });
      }
    }
    return ret;
  }

  void clearAll() {
    _orderItems.clear();
    notifyListeners();
  }

  double totalPriceOf(int restaurantId) {
    double ret = 0;
    final dish = orderDishes(restaurantId);
    for (var item in dish) {
      ret += (item.price?.value ?? 0) * (item.quantity ?? 0);
    }
    return ret;
  }

  void updateOrderDish(OrderDishes dish,) {
    if ((dish.quantity ?? 0) <= 0) {
      for (var orderItem in _orderItems) {
        orderItem.orders?.userOrder?.forEach((element) {
          element.orderDishes?.remove(dish);
        });
      }
    }
    notifyListeners();
  }

  void addRemoveDish(OrderDishes dish, ModelShopDetail restaurant) {
    OrderItems? orderItem = _getOrderItemById(restaurant.id ?? -1);
    if (orderItem == null) {
      orderItem = OrderItems();
      _orderItems.add(orderItem);
    }
    orderItem.orders ??= Orders(totalCount: 0, totalItem: 0, userOrder: []);
    orderItem.restaurant ??= restaurant;
    orderItem.orders!.userOrder ??= [];
    final userOrder = orderItem.orders!.userOrder;
    if (userOrder!.isEmpty) {
      userOrder.add(UserOrder());
    }
    final currOrder = userOrder[0];
    currOrder.orderDishes ??= [];
    final _oldDish = _getOrderDish(currOrder, dish);
    if (_oldDish != null) {
      currOrder.orderDishes?.remove(_oldDish);
    }
    if (dish.quantity != null && dish.quantity! > 0) {
      currOrder.orderDishes?.add(dish);
    }
    notifyListeners();
  }

  OrderDishes getOrderDishFromMenu(ModelShopDetail restaurant, ModelMenu menu) {
    OrderDishes? ret;
    for (var item in _orderItems) {
      if (item.restaurant?.id == restaurant.id) {
        item.orders?.userOrder?.forEach((userOrder) {
          userOrder.orderDishes?.forEach(
            (dish) {
              if (dish.id == menu.id) {
                ret = dish;
              }
            },
          );
        });
      }
    }
    if (ret == null) {
      return OrderDishes(
        originalPrice: menu.price,
        dish: Dish(
          originalPrice: menu.price,
          price: menu.discountPrice ?? menu.price,
          id: menu.id,
          photos: menu.photos,
          name: menu.name,
        ),
        price: menu.discountPrice ?? menu.price,
        quantity: 0,
        id: menu.id,
      );
    } else {
      return ret!;
    }
  }

  OrderDishes? _getOrderDish(UserOrder order, OrderDishes dish) {
    for (var value in order.orderDishes ?? []) {
      if (value.id == dish.id) {
        return value;
      }
    }
  }

  OrderItems? _getOrderItemById(int restaurantId) {
    for (var value in _orderItems) {
      if (value.restaurant?.id == restaurantId) {
        return value;
      }
    }
  }
}
