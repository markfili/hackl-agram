part of 'events_cubit.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.initial({
    required List<EventModel> events,
    @Default(false) bool loading,
    String? search,
    Map<String, dynamic>? filters,
  }) = _Initial;
}
