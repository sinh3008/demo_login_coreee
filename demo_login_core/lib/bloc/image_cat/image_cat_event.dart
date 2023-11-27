part of 'image_cat_bloc.dart';

@freezed
class ImageCatEvent with _$ImageCatEvent {
  const factory ImageCatEvent.started(String breedIds) = _Started;
}
