import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackl/data/repositories/filters_repository.dart';
import 'package:hackl/models/event/filters.dart';

part 'filters_cubit.freezed.dart';
part 'filters_state.dart';

class FiltersCubit extends Cubit<FiltersState> {
  final FiltersRepository repository;

  FiltersCubit({
    required this.repository,
  }) : super(const FiltersState.initial()) {
    loadFilters();
  }

  Future<void> loadFilters() async {
    emit(const FiltersState.loading());
    final filters = await repository.getEventFilters();
    emit(FiltersState.success(filters: filters));
  }
}
