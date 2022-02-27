import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shopeefood_clone/models/model_ads_banner.dart';
import 'package:shopeefood_clone/models/model_collection.dart';
import 'package:shopeefood_clone/models/model_delivery.dart';
import 'package:shopeefood_clone/models/model_dish.dart';
import 'package:shopeefood_clone/models/model_flash_sale.dart';
import 'package:shopeefood_clone/models/model_location_response.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

import '../../models/model_category.dart';
import '../../models/model_meta_response.dart';

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
}
