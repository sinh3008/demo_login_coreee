import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight.freezed.dart';
part 'weight.g.dart';

@freezed
class Weight with _$Weight {
  factory Weight({
    String? imperial,
    String? metric,
  }) = _Weight;

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}
