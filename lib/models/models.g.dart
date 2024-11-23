// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      descriptionEn: json['description_en'] as String?,
      eventType: json['event_type'] == null
          ? null
          : EventType.fromJson(json['event_type'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      organizer: Organizer.fromJson(json['organizer'] as Map<String, dynamic>),
      location: json['location'] as String?,
      startDatetime: DateTime.parse(json['start_datetime'] as String),
      endDatetime: json['end_datetime'] == null
          ? null
          : DateTime.parse(json['end_datetime'] as String),
      targetAgeGroups: (json['target_age_groups'] as List<dynamic>?)
          ?.map((e) => TargetAgeGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as String?,
      ticketsAvailable: (json['tickets_available'] as num).toInt(),
      registrationRequired: json['registration_required'] as bool,
      registrationDeadline: json['registration_deadline'] == null
          ? null
          : DateTime.parse(json['registration_deadline'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      tags: json['tags'] as List<dynamic>,
      featured: json['featured'] as bool,
      cityDistrict: json['city_district'] == null
          ? null
          : CityDistrict.fromJson(
              json['city_district'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'description_en': instance.descriptionEn,
      'event_type': instance.eventType,
      'categories': instance.categories,
      'organizer': instance.organizer,
      'location': instance.location,
      'start_datetime': instance.startDatetime.toIso8601String(),
      'end_datetime': instance.endDatetime?.toIso8601String(),
      'target_age_groups': instance.targetAgeGroups,
      'price': instance.price,
      'tickets_available': instance.ticketsAvailable,
      'registration_required': instance.registrationRequired,
      'registration_deadline': instance.registrationDeadline?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'tags': instance.tags,
      'featured': instance.featured,
      'city_district': instance.cityDistrict,
    };

_$EventTypeImpl _$$EventTypeImplFromJson(Map<String, dynamic> json) =>
    _$EventTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$EventTypeImplToJson(_$EventTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$OrganizerImpl _$$OrganizerImplFromJson(Map<String, dynamic> json) =>
    _$OrganizerImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      organizerType: json['organizer_type'] == null
          ? null
          : OrganizerType.fromJson(
              json['organizer_type'] as Map<String, dynamic>),
      location: json['location'] as String,
      contactEmail: json['contact_email'] as String,
      hasParking: json['has_parking'] as bool,
      petFriendly: json['pet_friendly'] as bool,
      wheelchairAccessibleEntry: json['wheelchair_accessible_entry'] as bool,
      wheelchairAccessibleWc: json['wheelchair_accessible_wc'] as bool,
      logoUrl: json['logo_url'] as String?,
      user: json['user'],
    );

Map<String, dynamic> _$$OrganizerImplToJson(_$OrganizerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organizer_type': instance.organizerType,
      'location': instance.location,
      'contact_email': instance.contactEmail,
      'has_parking': instance.hasParking,
      'pet_friendly': instance.petFriendly,
      'wheelchair_accessible_entry': instance.wheelchairAccessibleEntry,
      'wheelchair_accessible_wc': instance.wheelchairAccessibleWc,
      'logo_url': instance.logoUrl,
      'user': instance.user,
    };

_$OrganizerTypeImpl _$$OrganizerTypeImplFromJson(Map<String, dynamic> json) =>
    _$OrganizerTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$OrganizerTypeImplToJson(_$OrganizerTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$TargetAgeGroupImpl _$$TargetAgeGroupImplFromJson(Map<String, dynamic> json) =>
    _$TargetAgeGroupImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TargetAgeGroupImplToJson(
        _$TargetAgeGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CityDistrictImpl _$$CityDistrictImplFromJson(Map<String, dynamic> json) =>
    _$CityDistrictImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CityDistrictImplToJson(_$CityDistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
