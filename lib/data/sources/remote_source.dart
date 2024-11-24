import 'package:hackl/data/network/api_client.dart';
import 'package:hackl/data/network/responses/events/events_response.dart';
import 'package:hackl/data/network/responses/filters/districts_response.dart';
import 'package:hackl/data/network/responses/filters/event_types_response.dart';
import 'package:hackl/data/network/responses/home/home_response.dart';
import 'package:hackl/models/models.dart';

class RemoteSource {
  final ApiClient apiClient;

  RemoteSource({required this.apiClient});

  Future<HomeResponse> callHome() async {
    final response = await apiClient.get('/api/events/carousel/');
    if (response != null) {
      return HomeResponse.fromJson(response);
    }
    return HomeResponse(carousel1data: [], carousel2data: [], carousel3data: []);
  }

  Future<EventsResponse> getEvents({String? search, Map<String, dynamic>? filters}) async {
    final queryParameters = <String, dynamic>{};
    if (search != null) queryParameters['search'] = search;
    if (filters != null) queryParameters.addAll(filters);
    final response = await apiClient.get<List<dynamic>>(
      'api/events/events/',
      queryParameters: queryParameters,
    );
    if (response != null) {
      final events = response
          .map(
            (e) => EventModel.fromJson(e),
          )
          .toList();
      return EventsResponse(events: events);
    }
    return EventsResponse(events: []);
  }

  Future<DistrictsResponse> loadDistricts() async {
    final response = await apiClient.get<List<dynamic>>(
      'api/organizers/districts/',
    );
    if (response != null) {
      final districts = response
          .map(
            (e) => CityDistrict.fromJson(e),
          )
          .toList();
      return DistrictsResponse(districts: districts);
    }
    return DistrictsResponse(districts: []);
  }

  Future<EventTypesResponse> loadEventTypes() async {
    final response = await apiClient.get<List<dynamic>>(
      'api/events/event-types/',
    );
    if (response != null) {
      final types = response
          .map(
            (e) => EventType.fromJson(e),
          )
          .toList();
      return EventTypesResponse(types: types);
    }
    return EventTypesResponse(types: []);
  }
}
