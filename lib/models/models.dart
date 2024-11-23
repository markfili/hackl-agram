import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class EventModel with _$EventModel {
  factory EventModel({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'description_en') String? descriptionEn,
    @JsonKey(name: 'event_type') required EventType? eventType,
    @JsonKey(defaultValue: []) required List<Category> categories,
    required Organizer organizer,
    required String? location,
    @JsonKey(name: 'start_datetime') required DateTime startDatetime,
    @JsonKey(name: 'end_datetime') DateTime? endDatetime,
    @JsonKey(name: 'target_age_groups') List<TargetAgeGroup>? targetAgeGroups,
    required String? price,
    @JsonKey(name: 'tickets_available') required int ticketsAvailable,
    @JsonKey(name: 'registration_required') required bool registrationRequired,
    @JsonKey(name: 'registration_deadline') DateTime? registrationDeadline,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required List<dynamic> tags,
    required bool featured,
    @JsonKey(name: 'city_district') CityDistrict? cityDistrict,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);
}

@freezed
class EventType with _$EventType {
  factory EventType({
    required int id,
    required String name,
  }) = _EventType;

  factory EventType.fromJson(Map<String, dynamic> json) => _$EventTypeFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    required int id,
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class Organizer with _$Organizer {
  factory Organizer({
    required int id,
    required String name,
    @JsonKey(name: 'organizer_type') required OrganizerType? organizerType,
    required String location,
    @JsonKey(name: 'contact_email') required String contactEmail,
    @JsonKey(name: 'has_parking') required bool hasParking,
    @JsonKey(name: 'pet_friendly') required bool petFriendly,
    @JsonKey(name: 'wheelchair_accessible_entry') required bool wheelchairAccessibleEntry,
    @JsonKey(name: 'wheelchair_accessible_wc') required bool wheelchairAccessibleWc,
    @JsonKey(name: 'logo_url') String? logoUrl,
    dynamic user,
  }) = _Organizer;

  factory Organizer.fromJson(Map<String, dynamic> json) => _$OrganizerFromJson(json);
}

@freezed
class OrganizerType with _$OrganizerType {
  factory OrganizerType({
    required int id,
    required String name,
  }) = _OrganizerType;

  factory OrganizerType.fromJson(Map<String, dynamic> json) => _$OrganizerTypeFromJson(json);
}

@freezed
class TargetAgeGroup with _$TargetAgeGroup {
  factory TargetAgeGroup({
    required int id,
    required String name,
  }) = _TargetAgeGroup;

  factory TargetAgeGroup.fromJson(Map<String, dynamic> json) => _$TargetAgeGroupFromJson(json);
}

@freezed
class CityDistrict with _$CityDistrict {
  factory CityDistrict({
    required int id,
    required String name,
  }) = _CityDistrict;

  factory CityDistrict.fromJson(Map<String, dynamic> json) => _$CityDistrictFromJson(json);
}