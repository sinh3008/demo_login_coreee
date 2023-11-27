part of 'breeds_bloc.dart';

@freezed
class BreedsState with _$BreedsState {
  const factory BreedsState.initial() = _Initial;
  const factory BreedsState.loading() = _Loading;
  const factory BreedsState.loaded(List<BreedsModel> breeds) = _Loaded;
}
