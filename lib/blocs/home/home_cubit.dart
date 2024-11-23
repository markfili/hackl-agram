import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackl/data/repositories/home_repository.dart';
import 'package:hackl/models/home/home_data.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository repository;

  HomeCubit({required this.repository}) : super(HomeState.initial(homeData: HomeData(popular: [], today: [], tomorrow: []))) {
    getHomeData();
  }

  Future<void> getHomeData() async {
    final homeData = await repository.getHomeData();
    emit(state.copyWith(homeData: homeData));
  }
}
