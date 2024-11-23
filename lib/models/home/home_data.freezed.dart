// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeData {
  List<EventModel> get popular => throw _privateConstructorUsedError;
  List<EventModel> get today => throw _privateConstructorUsedError;
  List<EventModel> get tomorrow => throw _privateConstructorUsedError;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res, HomeData>;
  @useResult
  $Res call(
      {List<EventModel> popular,
      List<EventModel> today,
      List<EventModel> tomorrow});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res, $Val extends HomeData>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popular = null,
    Object? today = null,
    Object? tomorrow = null,
  }) {
    return _then(_value.copyWith(
      popular: null == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      today: null == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      tomorrow: null == tomorrow
          ? _value.tomorrow
          : tomorrow // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataImplCopyWith<$Res>
    implements $HomeDataCopyWith<$Res> {
  factory _$$HomeDataImplCopyWith(
          _$HomeDataImpl value, $Res Function(_$HomeDataImpl) then) =
      __$$HomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EventModel> popular,
      List<EventModel> today,
      List<EventModel> tomorrow});
}

/// @nodoc
class __$$HomeDataImplCopyWithImpl<$Res>
    extends _$HomeDataCopyWithImpl<$Res, _$HomeDataImpl>
    implements _$$HomeDataImplCopyWith<$Res> {
  __$$HomeDataImplCopyWithImpl(
      _$HomeDataImpl _value, $Res Function(_$HomeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popular = null,
    Object? today = null,
    Object? tomorrow = null,
  }) {
    return _then(_$HomeDataImpl(
      popular: null == popular
          ? _value._popular
          : popular // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      today: null == today
          ? _value._today
          : today // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      tomorrow: null == tomorrow
          ? _value._tomorrow
          : tomorrow // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc

class _$HomeDataImpl implements _HomeData {
  _$HomeDataImpl(
      {required final List<EventModel> popular,
      required final List<EventModel> today,
      required final List<EventModel> tomorrow})
      : _popular = popular,
        _today = today,
        _tomorrow = tomorrow;

  final List<EventModel> _popular;
  @override
  List<EventModel> get popular {
    if (_popular is EqualUnmodifiableListView) return _popular;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popular);
  }

  final List<EventModel> _today;
  @override
  List<EventModel> get today {
    if (_today is EqualUnmodifiableListView) return _today;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_today);
  }

  final List<EventModel> _tomorrow;
  @override
  List<EventModel> get tomorrow {
    if (_tomorrow is EqualUnmodifiableListView) return _tomorrow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tomorrow);
  }

  @override
  String toString() {
    return 'HomeData(popular: $popular, today: $today, tomorrow: $tomorrow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataImpl &&
            const DeepCollectionEquality().equals(other._popular, _popular) &&
            const DeepCollectionEquality().equals(other._today, _today) &&
            const DeepCollectionEquality().equals(other._tomorrow, _tomorrow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popular),
      const DeepCollectionEquality().hash(_today),
      const DeepCollectionEquality().hash(_tomorrow));

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      __$$HomeDataImplCopyWithImpl<_$HomeDataImpl>(this, _$identity);
}

abstract class _HomeData implements HomeData {
  factory _HomeData(
      {required final List<EventModel> popular,
      required final List<EventModel> today,
      required final List<EventModel> tomorrow}) = _$HomeDataImpl;

  @override
  List<EventModel> get popular;
  @override
  List<EventModel> get today;
  @override
  List<EventModel> get tomorrow;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
