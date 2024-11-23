// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsResponseImpl _$$EventsResponseImplFromJson(Map<String, dynamic> json) =>
    _$EventsResponseImpl(
      events: (json['events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventsResponseImplToJson(
        _$EventsResponseImpl instance) =>
    <String, dynamic>{
      'events': instance.events,
    };
