import 'package:hackl/data/sources/remote_source.dart';
import 'package:hackl/models/event/filters.dart';

class FiltersRepository {
  final List<PriceFilter> prices = [
    PriceFilter(title: "Besplatno", value: "besplatno"),
    PriceFilter(title: "Do €10", value: "do_10"),
    PriceFilter(title: "Do €20", value: "do_20"),
    PriceFilter(title: "Iznad €20", value: "iznad_20"),
  ];

  final List<DateFilter> dates = [
    DateFilter(title: "Danas", value: "danas"),
    DateFilter(title: "Sutra", value: "sutra"),
    DateFilter(title: "Iduci tjedan", value: "iduci_tjedan"),
    DateFilter(title: "Iduci vikend", value: "iduci_vikend"),
  ];
  final RemoteSource remoteSource;

  FiltersRepository({required this.remoteSource});

  Future<EventFilters> getEventFilters() async {
    final districtsResponse = await remoteSource.loadDistricts();
    final typesResponse = await remoteSource.loadEventTypes();
    return EventFilters(
      districts: districtsResponse.districts,
      types: typesResponse.types,
      prices: prices,
      dates: dates,
    );
  }
}
