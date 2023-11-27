import 'package:demo_login_core/model/breeds_model/breeds_model.dart';
import 'package:demo_login_core/model/image_cat_model/image_cat_model.dart';
import 'package:demo_login_core/repositories/breeds_repository/breed_repository_type.dart';
import 'package:demo_login_core/services/breed_service.dart';

class BreedsRepository implements BreedsRepositoryType {
  BreedsRepository({required BreedsService breedsService})
      : _breedsService = breedsService;
  late final BreedsService _breedsService;
  @override
  Future<List<BreedsModel>> getAllBreeds() async {
    var response = await _breedsService.getAllBreeds();
    return response;
  }

  @override
  Future<List<ImageCatModel>> getImageCat(String breedIds) async {
    var response = await _breedsService.getImageCat(breedIds);
    return response;
  }
}
