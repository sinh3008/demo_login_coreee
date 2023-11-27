// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_cat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageCatModel _$ImageCatModelFromJson(Map<String, dynamic> json) {
  return _ImageCatModel.fromJson(json);
}

/// @nodoc
mixin _$ImageCatModel {
  String? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCatModelCopyWith<ImageCatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCatModelCopyWith<$Res> {
  factory $ImageCatModelCopyWith(
          ImageCatModel value, $Res Function(ImageCatModel) then) =
      _$ImageCatModelCopyWithImpl<$Res, ImageCatModel>;
  @useResult
  $Res call({String? id, String? url, int? width, int? height});
}

/// @nodoc
class _$ImageCatModelCopyWithImpl<$Res, $Val extends ImageCatModel>
    implements $ImageCatModelCopyWith<$Res> {
  _$ImageCatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageCatModelImplCopyWith<$Res>
    implements $ImageCatModelCopyWith<$Res> {
  factory _$$ImageCatModelImplCopyWith(
          _$ImageCatModelImpl value, $Res Function(_$ImageCatModelImpl) then) =
      __$$ImageCatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? url, int? width, int? height});
}

/// @nodoc
class __$$ImageCatModelImplCopyWithImpl<$Res>
    extends _$ImageCatModelCopyWithImpl<$Res, _$ImageCatModelImpl>
    implements _$$ImageCatModelImplCopyWith<$Res> {
  __$$ImageCatModelImplCopyWithImpl(
      _$ImageCatModelImpl _value, $Res Function(_$ImageCatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$ImageCatModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageCatModelImpl implements _ImageCatModel {
  _$ImageCatModelImpl({this.id, this.url, this.width, this.height});

  factory _$ImageCatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageCatModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'ImageCatModel(id: $id, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageCatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageCatModelImplCopyWith<_$ImageCatModelImpl> get copyWith =>
      __$$ImageCatModelImplCopyWithImpl<_$ImageCatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageCatModelImplToJson(
      this,
    );
  }
}

abstract class _ImageCatModel implements ImageCatModel {
  factory _ImageCatModel(
      {final String? id,
      final String? url,
      final int? width,
      final int? height}) = _$ImageCatModelImpl;

  factory _ImageCatModel.fromJson(Map<String, dynamic> json) =
      _$ImageCatModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$$ImageCatModelImplCopyWith<_$ImageCatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
