
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackl/models/models.dart';

part 'home_data.freezed.dart';
@freezed
class HomeData with _$HomeData {
  factory HomeData({
    required List<EventModel> popular,
    required List<EventModel> today,
    required List<EventModel> tomorrow,
}) = _HomeData;
}
