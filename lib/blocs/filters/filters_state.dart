part of 'filters_cubit.dart';

@freezed
class FiltersState with _$FiltersState {
  const factory FiltersState.initial() = _Initial;

  const factory FiltersState.loading() = _Loading;

  const factory FiltersState.success({
    required EventFilters filters,
  }) = _Loaded;
}
