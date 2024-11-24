import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackl/models/models.dart';

part 'home_response.g.dart';
part 'home_response.freezed.dart';

@freezed
class HomeResponse with _$HomeResponse {
  factory HomeResponse({
    @JsonKey(name: 'carousel_1_data') required List<EventModel> carousel1data,
    @JsonKey(name: 'carousel_2_data') required List<EventModel> carousel2data,
    @JsonKey(name: 'carousel_3_data') required List<EventModel> carousel3data,
}) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) => _$HomeResponseFromJson(json);
}