import 'package:hackl/data/sources/remote_source.dart';
import 'package:hackl/models/models.dart';

class EventsRepository {
  final RemoteSource remoteSource;

  EventsRepository({required this.remoteSource});

  Future<List<EventModel>> getEvents({String? search, Map<String, dynamic>? filters}) async {
    final response = await remoteSource.getEvents(search: search, filters: filters);
    return response.events;
  }
}
