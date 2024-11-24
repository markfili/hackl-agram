import 'package:hackl/models/models.dart';

class EventFilters {
  final List<CityDistrict> districts;
  final List<EventType> types;
  final List<PriceFilter> prices;
  final List<DateFilter> dates;

  EventFilters({
    required this.districts,
    required this.types,
    required this.prices,
    required this.dates,
  });
}

class PriceFilter {
  final String title;
  final String value;

  PriceFilter({required this.title, required this.value});
}

class DateFilter {
  final String title;
  final String value;

  DateFilter({required this.title, required this.value});
}
