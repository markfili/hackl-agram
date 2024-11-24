// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return _HomeResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeResponse {
  @JsonKey(name: 'carousel_1_data')
  List<EventModel> get carousel1data => throw _privateConstructorUsedError;
  @JsonKey(name: 'carousel_2_data')
  List<EventModel> get carousel2data => throw _privateConstructorUsedError;
  @JsonKey(name: 'carousel_3_data')
  List<EventModel> get carousel3data => throw _privateConstructorUsedError;

  /// Serializes this HomeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeResponseCopyWith<HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res, HomeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'carousel_1_data') List<EventModel> carousel1data,
      @JsonKey(name: 'carousel_2_data') List<EventModel> carousel2data,
      @JsonKey(name: 'carousel_3_data') List<EventModel> carousel3data});
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res, $Val extends HomeResponse>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carousel1data = null,
    Object? carousel2data = null,
    Object? carousel3data = null,
  }) {
    return _then(_value.copyWith(
      carousel1data: null == carousel1data
          ? _value.carousel1data
          : carousel1data // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      carousel2data: null == carousel2data
          ? _value.carousel2data
          : carousel2data // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      carousel3data: null == carousel3data
          ? _value.carousel3data
          : carousel3data // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeResponseImplCopyWith<$Res>
    implements $HomeResponseCopyWith<$Res> {
  factory _$$HomeResponseImplCopyWith(
          _$HomeResponseImpl value, $Res Function(_$HomeResponseImpl) then) =
      __$$HomeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'carousel_1_data') List<EventModel> carousel1data,
      @JsonKey(name: 'carousel_2_data') List<EventModel> carousel2data,
      @JsonKey(name: 'carousel_3_data') List<EventModel> carousel3data});
}

/// @nodoc
class __$$HomeResponseImplCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$HomeResponseImpl>
    implements _$$HomeResponseImplCopyWith<$Res> {
  __$$HomeResponseImplCopyWithImpl(
      _$HomeResponseImpl _value, $Res Function(_$HomeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carousel1data = null,
    Object? carousel2data = null,
    Object? carousel3data = null,
  }) {
    return _then(_$HomeResponseImpl(
      carousel1data: null == carousel1data
          ? _value._carousel1data
          : carousel1data // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      carousel2data: null == carousel2data
          ? _value._carousel2data
          : carousel2data // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      carousel3data: null == carousel3data
          ? _value._carousel3data
          : carousel3data // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseImpl implements _HomeResponse {
  _$HomeResponseImpl(
      {@JsonKey(name: 'carousel_1_data')
      required final List<EventModel> carousel1data,
      @JsonKey(name: 'carousel_2_data')
      required final List<EventModel> carousel2data,
      @JsonKey(name: 'carousel_3_data')
      required final List<EventModel> carousel3data})
      : _carousel1data = carousel1data,
        _carousel2data = carousel2data,
        _carousel3data = carousel3data;

  factory _$HomeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseImplFromJson(json);

  final List<EventModel> _carousel1data;
  @override
  @JsonKey(name: 'carousel_1_data')
  List<EventModel> get carousel1data {
    if (_carousel1data is EqualUnmodifiableListView) return _carousel1data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carousel1data);
  }

  final List<EventModel> _carousel2data;
  @override
  @JsonKey(name: 'carousel_2_data')
  List<EventModel> get carousel2data {
    if (_carousel2data is EqualUnmodifiableListView) return _carousel2data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carousel2data);
  }

  final List<EventModel> _carousel3data;
  @override
  @JsonKey(name: 'carousel_3_data')
  List<EventModel> get carousel3data {
    if (_carousel3data is EqualUnmodifiableListView) return _carousel3data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carousel3data);
  }

  @override
  String toString() {
    return 'HomeResponse(carousel1data: $carousel1data, carousel2data: $carousel2data, carousel3data: $carousel3data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._carousel1data, _carousel1data) &&
            const DeepCollectionEquality()
                .equals(other._carousel2data, _carousel2data) &&
            const DeepCollectionEquality()
                .equals(other._carousel3data, _carousel3data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_carousel1data),
      const DeepCollectionEquality().hash(_carousel2data),
      const DeepCollectionEquality().hash(_carousel3data));

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      __$$HomeResponseImplCopyWithImpl<_$HomeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeResponse implements HomeResponse {
  factory _HomeResponse(
      {@JsonKey(name: 'carousel_1_data')
      required final List<EventModel> carousel1data,
      @JsonKey(name: 'carousel_2_data')
      required final List<EventModel> carousel2data,
      @JsonKey(name: 'carousel_3_data')
      required final List<EventModel> carousel3data}) = _$HomeResponseImpl;

  factory _HomeResponse.fromJson(Map<String, dynamic> json) =
      _$HomeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'carousel_1_data')
  List<EventModel> get carousel1data;
  @override
  @JsonKey(name: 'carousel_2_data')
  List<EventModel> get carousel2data;
  @override
  @JsonKey(name: 'carousel_3_data')
  List<EventModel> get carousel3data;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
