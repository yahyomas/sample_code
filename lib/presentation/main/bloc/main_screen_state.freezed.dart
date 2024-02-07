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
  List<Business> get businesses => throw _privateConstructorUsedError;
  List<ServiceCategory> get serviceCategories =>
      throw _privateConstructorUsedError;
  City get selectedCity => throw _privateConstructorUsedError;
  bool get isFilterActive => throw _privateConstructorUsedError;

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
      List<Business> businesses,
      List<ServiceCategory> serviceCategories,
      City selectedCity,
      bool isFilterActive});
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
    Object? businesses = null,
    Object? serviceCategories = null,
    Object? selectedCity = null,
    Object? isFilterActive = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      businesses: null == businesses
          ? _value.businesses
          : businesses // ignore: cast_nullable_to_non_nullable
              as List<Business>,
      serviceCategories: null == serviceCategories
          ? _value.serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
      selectedCity: null == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City,
      isFilterActive: null == isFilterActive
          ? _value.isFilterActive
          : isFilterActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
      List<Business> businesses,
      List<ServiceCategory> serviceCategories,
      City selectedCity,
      bool isFilterActive});
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
    Object? businesses = null,
    Object? serviceCategories = null,
    Object? selectedCity = null,
    Object? isFilterActive = null,
  }) {
    return _then(_$MainScreenStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      businesses: null == businesses
          ? _value._businesses
          : businesses // ignore: cast_nullable_to_non_nullable
              as List<Business>,
      serviceCategories: null == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
      selectedCity: null == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City,
      isFilterActive: null == isFilterActive
          ? _value.isFilterActive
          : isFilterActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainScreenStateImpl implements _MainScreenState {
  const _$MainScreenStateImpl(
      {this.status = Status.initial,
      final List<Business> businesses = const [],
      final List<ServiceCategory> serviceCategories = const [],
      this.selectedCity = const City(
          name: 'Washington', lat: '47.7511', lon: '-120.7401', id: 0),
      this.isFilterActive = false})
      : _businesses = businesses,
        _serviceCategories = serviceCategories;

  @override
  @JsonKey()
  final Status status;
  final List<Business> _businesses;
  @override
  @JsonKey()
  List<Business> get businesses {
    if (_businesses is EqualUnmodifiableListView) return _businesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businesses);
  }

  final List<ServiceCategory> _serviceCategories;
  @override
  @JsonKey()
  List<ServiceCategory> get serviceCategories {
    if (_serviceCategories is EqualUnmodifiableListView)
      return _serviceCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceCategories);
  }

  @override
  @JsonKey()
  final City selectedCity;
  @override
  @JsonKey()
  final bool isFilterActive;

  @override
  String toString() {
    return 'MainScreenState(status: $status, businesses: $businesses, serviceCategories: $serviceCategories, selectedCity: $selectedCity, isFilterActive: $isFilterActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainScreenStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._businesses, _businesses) &&
            const DeepCollectionEquality()
                .equals(other._serviceCategories, _serviceCategories) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            (identical(other.isFilterActive, isFilterActive) ||
                other.isFilterActive == isFilterActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_businesses),
      const DeepCollectionEquality().hash(_serviceCategories),
      selectedCity,
      isFilterActive);

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
      final List<Business> businesses,
      final List<ServiceCategory> serviceCategories,
      final City selectedCity,
      final bool isFilterActive}) = _$MainScreenStateImpl;

  @override
  Status get status;
  @override
  List<Business> get businesses;
  @override
  List<ServiceCategory> get serviceCategories;
  @override
  City get selectedCity;
  @override
  bool get isFilterActive;
  @override
  @JsonKey(ignore: true)
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
