// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainScreenState {
  Status get status => throw _privateConstructorUsedError;
  MainScreenErrorType? get mainScreenErrorType =>
      throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  String get temp => throw _privateConstructorUsedError;
  String get feelsLike => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  Weather? get weatherDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenStateCopyWith<MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res, MainScreenState>;
  @useResult
  $Res call(
      {Status status,
      MainScreenErrorType? mainScreenErrorType,
      String cityName,
      String temp,
      String feelsLike,
      String info,
      String main,
      Weather? weatherDto});
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res, $Val extends MainScreenState>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mainScreenErrorType = freezed,
    Object? cityName = null,
    Object? temp = null,
    Object? feelsLike = null,
    Object? info = null,
    Object? main = null,
    Object? weatherDto = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      mainScreenErrorType: freezed == mainScreenErrorType
          ? _value.mainScreenErrorType
          : mainScreenErrorType // ignore: cast_nullable_to_non_nullable
              as MainScreenErrorType?,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDto: freezed == weatherDto
          ? _value.weatherDto
          : weatherDto // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainScreenStateImplCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$MainScreenStateImplCopyWith(_$MainScreenStateImpl value,
          $Res Function(_$MainScreenStateImpl) then) =
      __$$MainScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      MainScreenErrorType? mainScreenErrorType,
      String cityName,
      String temp,
      String feelsLike,
      String info,
      String main,
      Weather? weatherDto});
}

/// @nodoc
class __$$MainScreenStateImplCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$MainScreenStateImpl>
    implements _$$MainScreenStateImplCopyWith<$Res> {
  __$$MainScreenStateImplCopyWithImpl(
      _$MainScreenStateImpl _value, $Res Function(_$MainScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mainScreenErrorType = freezed,
    Object? cityName = null,
    Object? temp = null,
    Object? feelsLike = null,
    Object? info = null,
    Object? main = null,
    Object? weatherDto = freezed,
  }) {
    return _then(_$MainScreenStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      mainScreenErrorType: freezed == mainScreenErrorType
          ? _value.mainScreenErrorType
          : mainScreenErrorType // ignore: cast_nullable_to_non_nullable
              as MainScreenErrorType?,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDto: freezed == weatherDto
          ? _value.weatherDto
          : weatherDto // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }
}

/// @nodoc

class _$MainScreenStateImpl implements _MainScreenState {
  const _$MainScreenStateImpl(
      {this.status = Status.loading,
      this.mainScreenErrorType,
      this.cityName = '',
      this.temp = '',
      this.feelsLike = '',
      this.info = '',
      this.main = '',
      this.weatherDto});

  @override
  @JsonKey()
  final Status status;
  @override
  final MainScreenErrorType? mainScreenErrorType;
  @override
  @JsonKey()
  final String cityName;
  @override
  @JsonKey()
  final String temp;
  @override
  @JsonKey()
  final String feelsLike;
  @override
  @JsonKey()
  final String info;
  @override
  @JsonKey()
  final String main;
  @override
  final Weather? weatherDto;

  @override
  String toString() {
    return 'MainScreenState(status: $status, mainScreenErrorType: $mainScreenErrorType, cityName: $cityName, temp: $temp, feelsLike: $feelsLike, info: $info, main: $main, weatherDto: $weatherDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainScreenStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mainScreenErrorType, mainScreenErrorType) ||
                other.mainScreenErrorType == mainScreenErrorType) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.weatherDto, weatherDto) ||
                other.weatherDto == weatherDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, mainScreenErrorType,
      cityName, temp, feelsLike, info, main, weatherDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      __$$MainScreenStateImplCopyWithImpl<_$MainScreenStateImpl>(
          this, _$identity);
}

abstract class _MainScreenState implements MainScreenState {
  const factory _MainScreenState(
      {final Status status,
      final MainScreenErrorType? mainScreenErrorType,
      final String cityName,
      final String temp,
      final String feelsLike,
      final String info,
      final String main,
      final Weather? weatherDto}) = _$MainScreenStateImpl;

  @override
  Status get status;
  @override
  MainScreenErrorType? get mainScreenErrorType;
  @override
  String get cityName;
  @override
  String get temp;
  @override
  String get feelsLike;
  @override
  String get info;
  @override
  String get main;
  @override
  Weather? get weatherDto;
  @override
  @JsonKey(ignore: true)
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
