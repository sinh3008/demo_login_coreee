part of 'image_cat_bloc.dart';

@freezed
class ImageCatState with _$ImageCatState {
  const factory ImageCatState.initial() = _Initial;
  const factory ImageCatState.loading() = _Loading;
  const factory ImageCatState.loaded(List<ImageCatModel> imageCatModel) =
      _Loaded;
}
