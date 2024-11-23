// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_en')
  String? get descriptionEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_type')
  EventType? get eventType => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Category> get categories => throw _privateConstructorUsedError;
  Organizer get organizer => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_datetime')
  DateTime? get endDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_age_groups')
  List<TargetAgeGroup>? get targetAgeGroups =>
      throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'tickets_available')
  int get ticketsAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_required')
  bool get registrationRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_deadline')
  DateTime? get registrationDeadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<dynamic> get tags => throw _privateConstructorUsedError;
  bool get featured => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_district')
  CityDistrict? get cityDistrict => throw _privateConstructorUsedError;

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'description_en') String? descriptionEn,
      @JsonKey(name: 'event_type') EventType? eventType,
      @JsonKey(defaultValue: []) List<Category> categories,
      Organizer organizer,
      String? location,
      @JsonKey(name: 'start_datetime') DateTime startDatetime,
      @JsonKey(name: 'end_datetime') DateTime? endDatetime,
      @JsonKey(name: 'target_age_groups') List<TargetAgeGroup>? targetAgeGroups,
      String? price,
      @JsonKey(name: 'tickets_available') int ticketsAvailable,
      @JsonKey(name: 'registration_required') bool registrationRequired,
      @JsonKey(name: 'registration_deadline') DateTime? registrationDeadline,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<dynamic> tags,
      bool featured,
      @JsonKey(name: 'city_district') CityDistrict? cityDistrict});

  $EventTypeCopyWith<$Res>? get eventType;
  $OrganizerCopyWith<$Res> get organizer;
  $CityDistrictCopyWith<$Res>? get cityDistrict;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? descriptionEn = freezed,
    Object? eventType = freezed,
    Object? categories = null,
    Object? organizer = null,
    Object? location = freezed,
    Object? startDatetime = null,
    Object? endDatetime = freezed,
    Object? targetAgeGroups = freezed,
    Object? price = freezed,
    Object? ticketsAvailable = null,
    Object? registrationRequired = null,
    Object? registrationDeadline = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? tags = null,
    Object? featured = null,
    Object? cityDistrict = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: freezed == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as Organizer,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDatetime: null == startDatetime
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDatetime: freezed == endDatetime
          ? _value.endDatetime
          : endDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetAgeGroups: freezed == targetAgeGroups
          ? _value.targetAgeGroups
          : targetAgeGroups // ignore: cast_nullable_to_non_nullable
              as List<TargetAgeGroup>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsAvailable: null == ticketsAvailable
          ? _value.ticketsAvailable
          : ticketsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      registrationRequired: null == registrationRequired
          ? _value.registrationRequired
          : registrationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationDeadline: freezed == registrationDeadline
          ? _value.registrationDeadline
          : registrationDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      cityDistrict: freezed == cityDistrict
          ? _value.cityDistrict
          : cityDistrict // ignore: cast_nullable_to_non_nullable
              as CityDistrict?,
    ) as $Val);
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventTypeCopyWith<$Res>? get eventType {
    if (_value.eventType == null) {
      return null;
    }

    return $EventTypeCopyWith<$Res>(_value.eventType!, (value) {
      return _then(_value.copyWith(eventType: value) as $Val);
    });
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizerCopyWith<$Res> get organizer {
    return $OrganizerCopyWith<$Res>(_value.organizer, (value) {
      return _then(_value.copyWith(organizer: value) as $Val);
    });
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityDistrictCopyWith<$Res>? get cityDistrict {
    if (_value.cityDistrict == null) {
      return null;
    }

    return $CityDistrictCopyWith<$Res>(_value.cityDistrict!, (value) {
      return _then(_value.copyWith(cityDistrict: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'description_en') String? descriptionEn,
      @JsonKey(name: 'event_type') EventType? eventType,
      @JsonKey(defaultValue: []) List<Category> categories,
      Organizer organizer,
      String? location,
      @JsonKey(name: 'start_datetime') DateTime startDatetime,
      @JsonKey(name: 'end_datetime') DateTime? endDatetime,
      @JsonKey(name: 'target_age_groups') List<TargetAgeGroup>? targetAgeGroups,
      String? price,
      @JsonKey(name: 'tickets_available') int ticketsAvailable,
      @JsonKey(name: 'registration_required') bool registrationRequired,
      @JsonKey(name: 'registration_deadline') DateTime? registrationDeadline,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<dynamic> tags,
      bool featured,
      @JsonKey(name: 'city_district') CityDistrict? cityDistrict});

  @override
  $EventTypeCopyWith<$Res>? get eventType;
  @override
  $OrganizerCopyWith<$Res> get organizer;
  @override
  $CityDistrictCopyWith<$Res>? get cityDistrict;
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? descriptionEn = freezed,
    Object? eventType = freezed,
    Object? categories = null,
    Object? organizer = null,
    Object? location = freezed,
    Object? startDatetime = null,
    Object? endDatetime = freezed,
    Object? targetAgeGroups = freezed,
    Object? price = freezed,
    Object? ticketsAvailable = null,
    Object? registrationRequired = null,
    Object? registrationDeadline = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? tags = null,
    Object? featured = null,
    Object? cityDistrict = freezed,
  }) {
    return _then(_$EventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: freezed == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as Organizer,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDatetime: null == startDatetime
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDatetime: freezed == endDatetime
          ? _value.endDatetime
          : endDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetAgeGroups: freezed == targetAgeGroups
          ? _value._targetAgeGroups
          : targetAgeGroups // ignore: cast_nullable_to_non_nullable
              as List<TargetAgeGroup>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsAvailable: null == ticketsAvailable
          ? _value.ticketsAvailable
          : ticketsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      registrationRequired: null == registrationRequired
          ? _value.registrationRequired
          : registrationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationDeadline: freezed == registrationDeadline
          ? _value.registrationDeadline
          : registrationDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      cityDistrict: freezed == cityDistrict
          ? _value.cityDistrict
          : cityDistrict // ignore: cast_nullable_to_non_nullable
              as CityDistrict?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelImpl implements _EventModel {
  _$EventModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'description_en') this.descriptionEn,
      @JsonKey(name: 'event_type') required this.eventType,
      @JsonKey(defaultValue: []) required final List<Category> categories,
      required this.organizer,
      required this.location,
      @JsonKey(name: 'start_datetime') required this.startDatetime,
      @JsonKey(name: 'end_datetime') this.endDatetime,
      @JsonKey(name: 'target_age_groups')
      final List<TargetAgeGroup>? targetAgeGroups,
      required this.price,
      @JsonKey(name: 'tickets_available') required this.ticketsAvailable,
      @JsonKey(name: 'registration_required')
      required this.registrationRequired,
      @JsonKey(name: 'registration_deadline') this.registrationDeadline,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required final List<dynamic> tags,
      required this.featured,
      @JsonKey(name: 'city_district') this.cityDistrict})
      : _categories = categories,
        _targetAgeGroups = targetAgeGroups,
        _tags = tags;

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'description_en')
  final String? descriptionEn;
  @override
  @JsonKey(name: 'event_type')
  final EventType? eventType;
  final List<Category> _categories;
  @override
  @JsonKey(defaultValue: [])
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final Organizer organizer;
  @override
  final String? location;
  @override
  @JsonKey(name: 'start_datetime')
  final DateTime startDatetime;
  @override
  @JsonKey(name: 'end_datetime')
  final DateTime? endDatetime;
  final List<TargetAgeGroup>? _targetAgeGroups;
  @override
  @JsonKey(name: 'target_age_groups')
  List<TargetAgeGroup>? get targetAgeGroups {
    final value = _targetAgeGroups;
    if (value == null) return null;
    if (_targetAgeGroups is EqualUnmodifiableListView) return _targetAgeGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? price;
  @override
  @JsonKey(name: 'tickets_available')
  final int ticketsAvailable;
  @override
  @JsonKey(name: 'registration_required')
  final bool registrationRequired;
  @override
  @JsonKey(name: 'registration_deadline')
  final DateTime? registrationDeadline;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final List<dynamic> _tags;
  @override
  List<dynamic> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final bool featured;
  @override
  @JsonKey(name: 'city_district')
  final CityDistrict? cityDistrict;

  @override
  String toString() {
    return 'EventModel(id: $id, name: $name, description: $description, descriptionEn: $descriptionEn, eventType: $eventType, categories: $categories, organizer: $organizer, location: $location, startDatetime: $startDatetime, endDatetime: $endDatetime, targetAgeGroups: $targetAgeGroups, price: $price, ticketsAvailable: $ticketsAvailable, registrationRequired: $registrationRequired, registrationDeadline: $registrationDeadline, createdAt: $createdAt, updatedAt: $updatedAt, tags: $tags, featured: $featured, cityDistrict: $cityDistrict)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.organizer, organizer) ||
                other.organizer == organizer) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDatetime, startDatetime) ||
                other.startDatetime == startDatetime) &&
            (identical(other.endDatetime, endDatetime) ||
                other.endDatetime == endDatetime) &&
            const DeepCollectionEquality()
                .equals(other._targetAgeGroups, _targetAgeGroups) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.ticketsAvailable, ticketsAvailable) ||
                other.ticketsAvailable == ticketsAvailable) &&
            (identical(other.registrationRequired, registrationRequired) ||
                other.registrationRequired == registrationRequired) &&
            (identical(other.registrationDeadline, registrationDeadline) ||
                other.registrationDeadline == registrationDeadline) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.cityDistrict, cityDistrict) ||
                other.cityDistrict == cityDistrict));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        descriptionEn,
        eventType,
        const DeepCollectionEquality().hash(_categories),
        organizer,
        location,
        startDatetime,
        endDatetime,
        const DeepCollectionEquality().hash(_targetAgeGroups),
        price,
        ticketsAvailable,
        registrationRequired,
        registrationDeadline,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_tags),
        featured,
        cityDistrict
      ]);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(
      this,
    );
  }
}

abstract class _EventModel implements EventModel {
  factory _EventModel(
      {required final int id,
      required final String name,
      required final String description,
      @JsonKey(name: 'description_en') final String? descriptionEn,
      @JsonKey(name: 'event_type') required final EventType? eventType,
      @JsonKey(defaultValue: []) required final List<Category> categories,
      required final Organizer organizer,
      required final String? location,
      @JsonKey(name: 'start_datetime') required final DateTime startDatetime,
      @JsonKey(name: 'end_datetime') final DateTime? endDatetime,
      @JsonKey(name: 'target_age_groups')
      final List<TargetAgeGroup>? targetAgeGroups,
      required final String? price,
      @JsonKey(name: 'tickets_available') required final int ticketsAvailable,
      @JsonKey(name: 'registration_required')
      required final bool registrationRequired,
      @JsonKey(name: 'registration_deadline')
      final DateTime? registrationDeadline,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      required final List<dynamic> tags,
      required final bool featured,
      @JsonKey(name: 'city_district')
      final CityDistrict? cityDistrict}) = _$EventModelImpl;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'description_en')
  String? get descriptionEn;
  @override
  @JsonKey(name: 'event_type')
  EventType? get eventType;
  @override
  @JsonKey(defaultValue: [])
  List<Category> get categories;
  @override
  Organizer get organizer;
  @override
  String? get location;
  @override
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime;
  @override
  @JsonKey(name: 'end_datetime')
  DateTime? get endDatetime;
  @override
  @JsonKey(name: 'target_age_groups')
  List<TargetAgeGroup>? get targetAgeGroups;
  @override
  String? get price;
  @override
  @JsonKey(name: 'tickets_available')
  int get ticketsAvailable;
  @override
  @JsonKey(name: 'registration_required')
  bool get registrationRequired;
  @override
  @JsonKey(name: 'registration_deadline')
  DateTime? get registrationDeadline;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  List<dynamic> get tags;
  @override
  bool get featured;
  @override
  @JsonKey(name: 'city_district')
  CityDistrict? get cityDistrict;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventType _$EventTypeFromJson(Map<String, dynamic> json) {
  return _EventType.fromJson(json);
}

/// @nodoc
mixin _$EventType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this EventType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventTypeCopyWith<EventType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventTypeCopyWith<$Res> {
  factory $EventTypeCopyWith(EventType value, $Res Function(EventType) then) =
      _$EventTypeCopyWithImpl<$Res, EventType>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$EventTypeCopyWithImpl<$Res, $Val extends EventType>
    implements $EventTypeCopyWith<$Res> {
  _$EventTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventTypeImplCopyWith<$Res>
    implements $EventTypeCopyWith<$Res> {
  factory _$$EventTypeImplCopyWith(
          _$EventTypeImpl value, $Res Function(_$EventTypeImpl) then) =
      __$$EventTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$EventTypeImplCopyWithImpl<$Res>
    extends _$EventTypeCopyWithImpl<$Res, _$EventTypeImpl>
    implements _$$EventTypeImplCopyWith<$Res> {
  __$$EventTypeImplCopyWithImpl(
      _$EventTypeImpl _value, $Res Function(_$EventTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$EventTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventTypeImpl implements _EventType {
  _$EventTypeImpl({required this.id, required this.name});

  factory _$EventTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'EventType(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of EventType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventTypeImplCopyWith<_$EventTypeImpl> get copyWith =>
      __$$EventTypeImplCopyWithImpl<_$EventTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventTypeImplToJson(
      this,
    );
  }
}

abstract class _EventType implements EventType {
  factory _EventType({required final int id, required final String name}) =
      _$EventTypeImpl;

  factory _EventType.fromJson(Map<String, dynamic> json) =
      _$EventTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of EventType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventTypeImplCopyWith<_$EventTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  _$CategoryImpl({required this.id, required this.name});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Category(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  factory _Category({required final int id, required final String name}) =
      _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Organizer _$OrganizerFromJson(Map<String, dynamic> json) {
  return _Organizer.fromJson(json);
}

/// @nodoc
mixin _$Organizer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'organizer_type')
  OrganizerType? get organizerType => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_email')
  String get contactEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_parking')
  bool get hasParking => throw _privateConstructorUsedError;
  @JsonKey(name: 'pet_friendly')
  bool get petFriendly => throw _privateConstructorUsedError;
  @JsonKey(name: 'wheelchair_accessible_entry')
  bool get wheelchairAccessibleEntry => throw _privateConstructorUsedError;
  @JsonKey(name: 'wheelchair_accessible_wc')
  bool get wheelchairAccessibleWc => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  dynamic get user => throw _privateConstructorUsedError;

  /// Serializes this Organizer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Organizer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizerCopyWith<Organizer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerCopyWith<$Res> {
  factory $OrganizerCopyWith(Organizer value, $Res Function(Organizer) then) =
      _$OrganizerCopyWithImpl<$Res, Organizer>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'organizer_type') OrganizerType? organizerType,
      String location,
      @JsonKey(name: 'contact_email') String contactEmail,
      @JsonKey(name: 'has_parking') bool hasParking,
      @JsonKey(name: 'pet_friendly') bool petFriendly,
      @JsonKey(name: 'wheelchair_accessible_entry')
      bool wheelchairAccessibleEntry,
      @JsonKey(name: 'wheelchair_accessible_wc') bool wheelchairAccessibleWc,
      @JsonKey(name: 'logo_url') String? logoUrl,
      dynamic user});

  $OrganizerTypeCopyWith<$Res>? get organizerType;
}

/// @nodoc
class _$OrganizerCopyWithImpl<$Res, $Val extends Organizer>
    implements $OrganizerCopyWith<$Res> {
  _$OrganizerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Organizer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? organizerType = freezed,
    Object? location = null,
    Object? contactEmail = null,
    Object? hasParking = null,
    Object? petFriendly = null,
    Object? wheelchairAccessibleEntry = null,
    Object? wheelchairAccessibleWc = null,
    Object? logoUrl = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organizerType: freezed == organizerType
          ? _value.organizerType
          : organizerType // ignore: cast_nullable_to_non_nullable
              as OrganizerType?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      contactEmail: null == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String,
      hasParking: null == hasParking
          ? _value.hasParking
          : hasParking // ignore: cast_nullable_to_non_nullable
              as bool,
      petFriendly: null == petFriendly
          ? _value.petFriendly
          : petFriendly // ignore: cast_nullable_to_non_nullable
              as bool,
      wheelchairAccessibleEntry: null == wheelchairAccessibleEntry
          ? _value.wheelchairAccessibleEntry
          : wheelchairAccessibleEntry // ignore: cast_nullable_to_non_nullable
              as bool,
      wheelchairAccessibleWc: null == wheelchairAccessibleWc
          ? _value.wheelchairAccessibleWc
          : wheelchairAccessibleWc // ignore: cast_nullable_to_non_nullable
              as bool,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of Organizer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizerTypeCopyWith<$Res>? get organizerType {
    if (_value.organizerType == null) {
      return null;
    }

    return $OrganizerTypeCopyWith<$Res>(_value.organizerType!, (value) {
      return _then(_value.copyWith(organizerType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizerImplCopyWith<$Res>
    implements $OrganizerCopyWith<$Res> {
  factory _$$OrganizerImplCopyWith(
          _$OrganizerImpl value, $Res Function(_$OrganizerImpl) then) =
      __$$OrganizerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'organizer_type') OrganizerType? organizerType,
      String location,
      @JsonKey(name: 'contact_email') String contactEmail,
      @JsonKey(name: 'has_parking') bool hasParking,
      @JsonKey(name: 'pet_friendly') bool petFriendly,
      @JsonKey(name: 'wheelchair_accessible_entry')
      bool wheelchairAccessibleEntry,
      @JsonKey(name: 'wheelchair_accessible_wc') bool wheelchairAccessibleWc,
      @JsonKey(name: 'logo_url') String? logoUrl,
      dynamic user});

  @override
  $OrganizerTypeCopyWith<$Res>? get organizerType;
}

/// @nodoc
class __$$OrganizerImplCopyWithImpl<$Res>
    extends _$OrganizerCopyWithImpl<$Res, _$OrganizerImpl>
    implements _$$OrganizerImplCopyWith<$Res> {
  __$$OrganizerImplCopyWithImpl(
      _$OrganizerImpl _value, $Res Function(_$OrganizerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Organizer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? organizerType = freezed,
    Object? location = null,
    Object? contactEmail = null,
    Object? hasParking = null,
    Object? petFriendly = null,
    Object? wheelchairAccessibleEntry = null,
    Object? wheelchairAccessibleWc = null,
    Object? logoUrl = freezed,
    Object? user = freezed,
  }) {
    return _then(_$OrganizerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organizerType: freezed == organizerType
          ? _value.organizerType
          : organizerType // ignore: cast_nullable_to_non_nullable
              as OrganizerType?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      contactEmail: null == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String,
      hasParking: null == hasParking
          ? _value.hasParking
          : hasParking // ignore: cast_nullable_to_non_nullable
              as bool,
      petFriendly: null == petFriendly
          ? _value.petFriendly
          : petFriendly // ignore: cast_nullable_to_non_nullable
              as bool,
      wheelchairAccessibleEntry: null == wheelchairAccessibleEntry
          ? _value.wheelchairAccessibleEntry
          : wheelchairAccessibleEntry // ignore: cast_nullable_to_non_nullable
              as bool,
      wheelchairAccessibleWc: null == wheelchairAccessibleWc
          ? _value.wheelchairAccessibleWc
          : wheelchairAccessibleWc // ignore: cast_nullable_to_non_nullable
              as bool,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizerImpl implements _Organizer {
  _$OrganizerImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'organizer_type') required this.organizerType,
      required this.location,
      @JsonKey(name: 'contact_email') required this.contactEmail,
      @JsonKey(name: 'has_parking') required this.hasParking,
      @JsonKey(name: 'pet_friendly') required this.petFriendly,
      @JsonKey(name: 'wheelchair_accessible_entry')
      required this.wheelchairAccessibleEntry,
      @JsonKey(name: 'wheelchair_accessible_wc')
      required this.wheelchairAccessibleWc,
      @JsonKey(name: 'logo_url') this.logoUrl,
      this.user});

  factory _$OrganizerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizerImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'organizer_type')
  final OrganizerType? organizerType;
  @override
  final String location;
  @override
  @JsonKey(name: 'contact_email')
  final String contactEmail;
  @override
  @JsonKey(name: 'has_parking')
  final bool hasParking;
  @override
  @JsonKey(name: 'pet_friendly')
  final bool petFriendly;
  @override
  @JsonKey(name: 'wheelchair_accessible_entry')
  final bool wheelchairAccessibleEntry;
  @override
  @JsonKey(name: 'wheelchair_accessible_wc')
  final bool wheelchairAccessibleWc;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @override
  final dynamic user;

  @override
  String toString() {
    return 'Organizer(id: $id, name: $name, organizerType: $organizerType, location: $location, contactEmail: $contactEmail, hasParking: $hasParking, petFriendly: $petFriendly, wheelchairAccessibleEntry: $wheelchairAccessibleEntry, wheelchairAccessibleWc: $wheelchairAccessibleWc, logoUrl: $logoUrl, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organizerType, organizerType) ||
                other.organizerType == organizerType) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.hasParking, hasParking) ||
                other.hasParking == hasParking) &&
            (identical(other.petFriendly, petFriendly) ||
                other.petFriendly == petFriendly) &&
            (identical(other.wheelchairAccessibleEntry,
                    wheelchairAccessibleEntry) ||
                other.wheelchairAccessibleEntry == wheelchairAccessibleEntry) &&
            (identical(other.wheelchairAccessibleWc, wheelchairAccessibleWc) ||
                other.wheelchairAccessibleWc == wheelchairAccessibleWc) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      organizerType,
      location,
      contactEmail,
      hasParking,
      petFriendly,
      wheelchairAccessibleEntry,
      wheelchairAccessibleWc,
      logoUrl,
      const DeepCollectionEquality().hash(user));

  /// Create a copy of Organizer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizerImplCopyWith<_$OrganizerImpl> get copyWith =>
      __$$OrganizerImplCopyWithImpl<_$OrganizerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizerImplToJson(
      this,
    );
  }
}

abstract class _Organizer implements Organizer {
  factory _Organizer(
      {required final int id,
      required final String name,
      @JsonKey(name: 'organizer_type')
      required final OrganizerType? organizerType,
      required final String location,
      @JsonKey(name: 'contact_email') required final String contactEmail,
      @JsonKey(name: 'has_parking') required final bool hasParking,
      @JsonKey(name: 'pet_friendly') required final bool petFriendly,
      @JsonKey(name: 'wheelchair_accessible_entry')
      required final bool wheelchairAccessibleEntry,
      @JsonKey(name: 'wheelchair_accessible_wc')
      required final bool wheelchairAccessibleWc,
      @JsonKey(name: 'logo_url') final String? logoUrl,
      final dynamic user}) = _$OrganizerImpl;

  factory _Organizer.fromJson(Map<String, dynamic> json) =
      _$OrganizerImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'organizer_type')
  OrganizerType? get organizerType;
  @override
  String get location;
  @override
  @JsonKey(name: 'contact_email')
  String get contactEmail;
  @override
  @JsonKey(name: 'has_parking')
  bool get hasParking;
  @override
  @JsonKey(name: 'pet_friendly')
  bool get petFriendly;
  @override
  @JsonKey(name: 'wheelchair_accessible_entry')
  bool get wheelchairAccessibleEntry;
  @override
  @JsonKey(name: 'wheelchair_accessible_wc')
  bool get wheelchairAccessibleWc;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  dynamic get user;

  /// Create a copy of Organizer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizerImplCopyWith<_$OrganizerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrganizerType _$OrganizerTypeFromJson(Map<String, dynamic> json) {
  return _OrganizerType.fromJson(json);
}

/// @nodoc
mixin _$OrganizerType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this OrganizerType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizerTypeCopyWith<OrganizerType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerTypeCopyWith<$Res> {
  factory $OrganizerTypeCopyWith(
          OrganizerType value, $Res Function(OrganizerType) then) =
      _$OrganizerTypeCopyWithImpl<$Res, OrganizerType>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$OrganizerTypeCopyWithImpl<$Res, $Val extends OrganizerType>
    implements $OrganizerTypeCopyWith<$Res> {
  _$OrganizerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizerTypeImplCopyWith<$Res>
    implements $OrganizerTypeCopyWith<$Res> {
  factory _$$OrganizerTypeImplCopyWith(
          _$OrganizerTypeImpl value, $Res Function(_$OrganizerTypeImpl) then) =
      __$$OrganizerTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$OrganizerTypeImplCopyWithImpl<$Res>
    extends _$OrganizerTypeCopyWithImpl<$Res, _$OrganizerTypeImpl>
    implements _$$OrganizerTypeImplCopyWith<$Res> {
  __$$OrganizerTypeImplCopyWithImpl(
      _$OrganizerTypeImpl _value, $Res Function(_$OrganizerTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$OrganizerTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizerTypeImpl implements _OrganizerType {
  _$OrganizerTypeImpl({required this.id, required this.name});

  factory _$OrganizerTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizerTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'OrganizerType(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizerTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of OrganizerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizerTypeImplCopyWith<_$OrganizerTypeImpl> get copyWith =>
      __$$OrganizerTypeImplCopyWithImpl<_$OrganizerTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizerTypeImplToJson(
      this,
    );
  }
}

abstract class _OrganizerType implements OrganizerType {
  factory _OrganizerType({required final int id, required final String name}) =
      _$OrganizerTypeImpl;

  factory _OrganizerType.fromJson(Map<String, dynamic> json) =
      _$OrganizerTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of OrganizerType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizerTypeImplCopyWith<_$OrganizerTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TargetAgeGroup _$TargetAgeGroupFromJson(Map<String, dynamic> json) {
  return _TargetAgeGroup.fromJson(json);
}

/// @nodoc
mixin _$TargetAgeGroup {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this TargetAgeGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TargetAgeGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TargetAgeGroupCopyWith<TargetAgeGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetAgeGroupCopyWith<$Res> {
  factory $TargetAgeGroupCopyWith(
          TargetAgeGroup value, $Res Function(TargetAgeGroup) then) =
      _$TargetAgeGroupCopyWithImpl<$Res, TargetAgeGroup>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$TargetAgeGroupCopyWithImpl<$Res, $Val extends TargetAgeGroup>
    implements $TargetAgeGroupCopyWith<$Res> {
  _$TargetAgeGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TargetAgeGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetAgeGroupImplCopyWith<$Res>
    implements $TargetAgeGroupCopyWith<$Res> {
  factory _$$TargetAgeGroupImplCopyWith(_$TargetAgeGroupImpl value,
          $Res Function(_$TargetAgeGroupImpl) then) =
      __$$TargetAgeGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TargetAgeGroupImplCopyWithImpl<$Res>
    extends _$TargetAgeGroupCopyWithImpl<$Res, _$TargetAgeGroupImpl>
    implements _$$TargetAgeGroupImplCopyWith<$Res> {
  __$$TargetAgeGroupImplCopyWithImpl(
      _$TargetAgeGroupImpl _value, $Res Function(_$TargetAgeGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetAgeGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TargetAgeGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetAgeGroupImpl implements _TargetAgeGroup {
  _$TargetAgeGroupImpl({required this.id, required this.name});

  factory _$TargetAgeGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetAgeGroupImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'TargetAgeGroup(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetAgeGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TargetAgeGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetAgeGroupImplCopyWith<_$TargetAgeGroupImpl> get copyWith =>
      __$$TargetAgeGroupImplCopyWithImpl<_$TargetAgeGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetAgeGroupImplToJson(
      this,
    );
  }
}

abstract class _TargetAgeGroup implements TargetAgeGroup {
  factory _TargetAgeGroup({required final int id, required final String name}) =
      _$TargetAgeGroupImpl;

  factory _TargetAgeGroup.fromJson(Map<String, dynamic> json) =
      _$TargetAgeGroupImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of TargetAgeGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TargetAgeGroupImplCopyWith<_$TargetAgeGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityDistrict _$CityDistrictFromJson(Map<String, dynamic> json) {
  return _CityDistrict.fromJson(json);
}

/// @nodoc
mixin _$CityDistrict {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CityDistrict to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityDistrictCopyWith<CityDistrict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDistrictCopyWith<$Res> {
  factory $CityDistrictCopyWith(
          CityDistrict value, $Res Function(CityDistrict) then) =
      _$CityDistrictCopyWithImpl<$Res, CityDistrict>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CityDistrictCopyWithImpl<$Res, $Val extends CityDistrict>
    implements $CityDistrictCopyWith<$Res> {
  _$CityDistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityDistrictImplCopyWith<$Res>
    implements $CityDistrictCopyWith<$Res> {
  factory _$$CityDistrictImplCopyWith(
          _$CityDistrictImpl value, $Res Function(_$CityDistrictImpl) then) =
      __$$CityDistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CityDistrictImplCopyWithImpl<$Res>
    extends _$CityDistrictCopyWithImpl<$Res, _$CityDistrictImpl>
    implements _$$CityDistrictImplCopyWith<$Res> {
  __$$CityDistrictImplCopyWithImpl(
      _$CityDistrictImpl _value, $Res Function(_$CityDistrictImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CityDistrictImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDistrictImpl implements _CityDistrict {
  _$CityDistrictImpl({required this.id, required this.name});

  factory _$CityDistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDistrictImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CityDistrict(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDistrictImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CityDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDistrictImplCopyWith<_$CityDistrictImpl> get copyWith =>
      __$$CityDistrictImplCopyWithImpl<_$CityDistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDistrictImplToJson(
      this,
    );
  }
}

abstract class _CityDistrict implements CityDistrict {
  factory _CityDistrict({required final int id, required final String name}) =
      _$CityDistrictImpl;

  factory _CityDistrict.fromJson(Map<String, dynamic> json) =
      _$CityDistrictImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of CityDistrict
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityDistrictImplCopyWith<_$CityDistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
