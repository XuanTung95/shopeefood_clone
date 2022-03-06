import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shopeefood_clone/models/model_address.dart';
import 'package:shopeefood_clone/models/model_ads_banner.dart';
import 'package:shopeefood_clone/models/model_collection.dart';
import 'package:shopeefood_clone/models/model_delivery.dart';
import 'package:shopeefood_clone/models/model_dish.dart';
import 'package:shopeefood_clone/models/model_feedback_response.dart';
import 'package:shopeefood_clone/models/model_flash_sale.dart';
import 'package:shopeefood_clone/models/model_location_response.dart';
import 'package:shopeefood_clone/models/model_menu_response.dart';
import 'package:shopeefood_clone/models/model_order.dart';
import 'package:shopeefood_clone/models/model_shop_detail.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

import '../../models/model_category.dart';
import '../../models/model_meta_response.dart';
import '../../models/model_notifications.dart';
import '../../models/model_user_profile.dart';
import '../../models/model_voucher.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://google.com/")
abstract class ApiRestClient {
  factory ApiRestClient(Dio dio, {String baseUrl}) = _ApiRestClient;

  @GET(urlGetCollectionInfo)
  Future<ModelCollectionResponse> getListCollectionInfo();

  @GET(urlGetDishInfo)
  Future<DishResponse> getListDishInfo();

  @GET(urlGetHomeSquareInfo)
  Future<HomeSquareResponse> getHomeSquare();

  @GET(urlGetHomeAdsBanner)
  Future<AdsBanerResponse> getHomeAdsBanner();

  @GET(urlGetMetaData)
  Future<MetaResponse> getMetaData();

  @GET(urlGetDeliveryListItem)
  Future<DeliveryResponse> getDeliveryListItem(
      @Query("id") int id,
      @Query("type") int type,
      @Query("page") int page,
      @Query("pageSize") int pageSize);

  @GET(urlGetInfoOfBranch)
  Future<DeliveryResponse> getInfoOfBrand(@Query("id") int id,);

  @GET(urlGetFlashSale)
  Future<FlashSaleResponse> getFlashSale();

  @GET(urlGetOrderHistory)
  Future<OrderResponse> getOrderHistory();


  @GET(urlGetMostOrdered)
  Future<DeliveryResponse> getMostOrdered();

  @GET(urlGetNotifications)
  Future<NotificationResponse> getNotifications();

  @GET(urlGetUserProfile)
  Future<ModelUserProfileResponse> getUserProfile();

  @GET(urlGetMyVoucher)
  Future<ModelVoucherResponse> getMyVoucher();

  @GET(urlGetInvalidVoucher)
  Future<ModelVoucherResponse> getInvalidVoucher();

  @GET(urlGetAddress)
  Future<AddressResponse> getAddress();

  @GET(urlGetShopDetail)
  Future<ShopDetailResponse> getShopDetail();

  @GET(urlGetMenu)
  Future<ModelMenuResponse> getMenu();

  @GET(urlGetFeedback)
  Future<ModelFeedbackResponse> getFeedback();
}
