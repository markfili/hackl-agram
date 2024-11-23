import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackl/models/models.dart';
part 'events_response.freezed.dart';
part 'events_response.g.dart';
@freezed
class EventsResponse with _$EventsResponse {
  factory EventsResponse({
    required List<EventModel> events,
  }) = _EventsResponse;

  factory EventsResponse.fromJson(Map<String, dynamic> json) => _$EventsResponseFromJson(json);
}
