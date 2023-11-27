// ignore_for_file: avoid_print

import 'dart:async';

import 'package:demo_login_core/model/image_cat_model/image_cat_model.dart';
import 'package:demo_login_core/repositories/breeds_repository/breed_repository_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_cat_event.dart';
part 'image_cat_state.dart';
part 'image_cat_bloc.freezed.dart';

class ImageCatBloc extends Bloc<ImageCatEvent, ImageCatState> {
  ImageCatBloc({
    required BreedsRepositoryType breedsRepositoryType,
  }) : super(const _Initial()) {
    _breedsRepositoryType = breedsRepositoryType;
    on<_Started>(_onStart);
  }
  late final BreedsRepositoryType _breedsRepositoryType;

  FutureOr<void> _onStart(_Started event, Emitter<ImageCatState> emit) async {
    emit(const ImageCatState.loading());
    var data = await _breedsRepositoryType.getImageCat(event.breedIds);
    emit(ImageCatState.loaded(data));
  }
}
