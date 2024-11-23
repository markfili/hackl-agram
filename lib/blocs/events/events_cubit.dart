import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackl/data/repositories/events_repository.dart';
import 'package:hackl/models/models.dart';

part 'events_cubit.freezed.dart';
part 'events_state.dart';

class EventsCubit extends Cubit<EventsState> {
  final EventsRepository repository;

  EventsCubit({required this.repository})
      : super(
          const EventsState.initial(
            events: [],
            loading: true,
          ),
        ) {
    loadEvents();
  }

  Future<void> loadEvents({String? search, Map<String, dynamic>? filters}) async {
    emit(state.copyWith(loading: true, search: search ?? state.search, filters: filters ?? state.filters));
    final events = await repository.getEvents(search: search, filters: filters);
    emit(state.copyWith(events: events, loading: false));
  }

  Future<void> search(String? value) async {
    await loadEvents(search: value);
  }

  Future<void> filter(Map<String, dynamic> value) async {
    await loadEvents(filters: value);
  }
}
