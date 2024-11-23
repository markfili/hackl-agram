import 'package:hackl/data/sources/remote_source.dart';
import 'package:hackl/models/home/home_data.dart';

class HomeRepository {
  final RemoteSource remoteSource;

  HomeRepository({required this.remoteSource});

  Future<HomeData> getHomeData() async {
    final homeResponse = await remoteSource.callHome();
    return HomeData(
      popular: homeResponse.carousel1data,
      today: homeResponse.carousel2data,
      tomorrow: homeResponse.carousel3data,
    );
  }

  /// get all events
// api/events/events/

  /// search events
// api/events/events/?search=nekaj

  /// filter events
// api/events/events/?
// date
/*
    sutra
    danas
    iduci_tjedan
    iduci_vikend
    range + from_date i to_date
   */
// district

// event_type

// category

// price
/*
    besplatno
    do_10
    do_20
    iznad_20
  */
}
