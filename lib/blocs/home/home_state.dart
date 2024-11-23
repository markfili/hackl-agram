part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({required HomeData homeData}) = _Initial;
  const factory HomeState.success({required HomeData homeData}) = _Success;
}
