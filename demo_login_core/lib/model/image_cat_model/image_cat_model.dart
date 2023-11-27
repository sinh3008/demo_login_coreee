import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_cat_model.freezed.dart';
part 'image_cat_model.g.dart';

@freezed
class ImageCatModel with _$ImageCatModel {
  factory ImageCatModel({
    String? id,
    String? url,
    int? width,
    int? height,
  }) = _ImageCatModel;

  factory ImageCatModel.fromJson(Map<String, dynamic> json) =>
      _$ImageCatModelFromJson(json);
}
