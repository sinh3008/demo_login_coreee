import 'package:demo_login_core/model/breeds_model/breeds_model.dart';
import 'package:demo_login_core/model/image_cat_model/image_cat_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'breed_service.g.dart';

// ignore: unnecessary_string_interpolations
@RestApi(baseUrl: 'https://api.thecatapi.com')
abstract class BreedsService {
  factory BreedsService(Dio dio, {String baseUrl}) = _BreedsService;

  // ignore: unnecessary_string_interpolations
  @GET('/v1/breeds')
  Future<List<BreedsModel>> getAllBreeds();

  @GET('/v1/images/search')
  Future<List<ImageCatModel>> getImageCat(@Query('breed_ids') String breedIds);
}
