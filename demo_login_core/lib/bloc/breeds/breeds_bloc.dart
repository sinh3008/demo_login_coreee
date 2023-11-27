// ignore_for_file: prefer_const_constructors

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:demo_login_core/model/breeds_model/breeds_model.dart';
import 'package:demo_login_core/repositories/breeds_repository/breed_repository_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeds_event.dart';
part 'breeds_state.dart';
part 'breeds_bloc.freezed.dart';

class BreedsBloc extends Bloc<BreedsEvent, BreedsState> {
  BreedsBloc({required BreedsRepositoryType breedsRepositoryType})
      : super(_Initial()) {
    _breedsRepositoryType = breedsRepositoryType;
    on<_Started>(_onStart);
  }
  late final BreedsRepositoryType _breedsRepositoryType;

  FutureOr<void> _onStart(_Started event, Emitter<BreedsState> emit) async {
    emit(BreedsState.loading());
    var data = await _breedsRepositoryType.getAllBreeds();

    emit(BreedsState.loaded(data));
  }
}
