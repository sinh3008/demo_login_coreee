import 'package:demo_login_core/model/breeds_model/breeds_model.dart';
import 'package:demo_login_core/model/image_cat_model/image_cat_model.dart';

abstract class BreedsRepositoryType {
  Future<List<BreedsModel>> getAllBreeds();
  Future<List<ImageCatModel>> getImageCat(String breedIds);
}
