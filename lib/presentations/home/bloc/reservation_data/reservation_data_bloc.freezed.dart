// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReservationDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation reservation) submitReservation,
    required TResult Function(Reservation reservation) addOrUpdateReservation,
    required TResult Function() cancelReservation,
    required TResult Function(int reservationId) fetchReservationDetails,
    required TResult Function() clearReservationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Reservation reservation)? submitReservation,
    TResult? Function(Reservation reservation)? addOrUpdateReservation,
    TResult? Function()? cancelReservation,
    TResult? Function(int reservationId)? fetchReservationDetails,
    TResult? Function()? clearReservationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation reservation)? submitReservation,
    TResult Function(Reservation reservation)? addOrUpdateReservation,
    TResult Function()? cancelReservation,
    TResult Function(int reservationId)? fetchReservationDetails,
    TResult Function()? clearReservationState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitReservation value) submitReservation,
    required TResult Function(_AddOrUpdateReservation value)
        addOrUpdateReservation,
    required TResult Function(_CancelReservation value) cancelReservation,
    required TResult Function(_FetchReservationDetails value)
        fetchReservationDetails,
    required TResult Function(_ClearReservationState value)
        clearReservationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitReservation value)? submitReservation,
    TResult? Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult? Function(_CancelReservation value)? cancelReservation,
    TResult? Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult? Function(_ClearReservationState value)? clearReservationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitReservation value)? submitReservation,
    TResult Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult Function(_CancelReservation value)? cancelReservation,
    TResult Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult Function(_ClearReservationState value)? clearReservationState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationDataEventCopyWith<$Res> {
  factory $ReservationDataEventCopyWith(ReservationDataEvent value,
          $Res Function(ReservationDataEvent) then) =
      _$ReservationDataEventCopyWithImpl<$Res, ReservationDataEvent>;
}

/// @nodoc
class _$ReservationDataEventCopyWithImpl<$Res,
        $Val extends ReservationDataEvent>
    implements $ReservationDataEventCopyWith<$Res> {
  _$ReservationDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ReservationDataEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ReservationDataEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation reservation) submitReservation,
    required TResult Function(Reservation reservation) addOrUpdateReservation,
    required TResult Function() cancelReservation,
    required TResult Function(int reservationId) fetchReservationDetails,
    required TResult Function() clearReservationState,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Reservation reservation)? submitReservation,
    TResult? Function(Reservation reservation)? addOrUpdateReservation,
    TResult? Function()? cancelReservation,
    TResult? Function(int reservationId)? fetchReservationDetails,
    TResult? Function()? clearReservationState,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation reservation)? submitReservation,
    TResult Function(Reservation reservation)? addOrUpdateReservation,
    TResult Function()? cancelReservation,
    TResult Function(int reservationId)? fetchReservationDetails,
    TResult Function()? clearReservationState,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitReservation value) submitReservation,
    required TResult Function(_AddOrUpdateReservation value)
        addOrUpdateReservation,
    required TResult Function(_CancelReservation value) cancelReservation,
    required TResult Function(_FetchReservationDetails value)
        fetchReservationDetails,
    required TResult Function(_ClearReservationState value)
        clearReservationState,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitReservation value)? submitReservation,
    TResult? Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult? Function(_CancelReservation value)? cancelReservation,
    TResult? Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult? Function(_ClearReservationState value)? clearReservationState,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitReservation value)? submitReservation,
    TResult Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult Function(_CancelReservation value)? cancelReservation,
    TResult Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult Function(_ClearReservationState value)? clearReservationState,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReservationDataEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SubmitReservationImplCopyWith<$Res> {
  factory _$$SubmitReservationImplCopyWith(_$SubmitReservationImpl value,
          $Res Function(_$SubmitReservationImpl) then) =
      __$$SubmitReservationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reservation reservation});
}

/// @nodoc
class __$$SubmitReservationImplCopyWithImpl<$Res>
    extends _$ReservationDataEventCopyWithImpl<$Res, _$SubmitReservationImpl>
    implements _$$SubmitReservationImplCopyWith<$Res> {
  __$$SubmitReservationImplCopyWithImpl(_$SubmitReservationImpl _value,
      $Res Function(_$SubmitReservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
  }) {
    return _then(_$SubmitReservationImpl(
      null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
    ));
  }
}

/// @nodoc

class _$SubmitReservationImpl implements _SubmitReservation {
  const _$SubmitReservationImpl(this.reservation);

  @override
  final Reservation reservation;

  @override
  String toString() {
    return 'ReservationDataEvent.submitReservation(reservation: $reservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitReservationImpl &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitReservationImplCopyWith<_$SubmitReservationImpl> get copyWith =>
      __$$SubmitReservationImplCopyWithImpl<_$SubmitReservationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation reservation) submitReservation,
    required TResult Function(Reservation reservation) addOrUpdateReservation,
    required TResult Function() cancelReservation,
    required TResult Function(int reservationId) fetchReservationDetails,
    required TResult Function() clearReservationState,
  }) {
    return submitReservation(reservation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Reservation reservation)? submitReservation,
    TResult? Function(Reservation reservation)? addOrUpdateReservation,
    TResult? Function()? cancelReservation,
    TResult? Function(int reservationId)? fetchReservationDetails,
    TResult? Function()? clearReservationState,
  }) {
    return submitReservation?.call(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation reservation)? submitReservation,
    TResult Function(Reservation reservation)? addOrUpdateReservation,
    TResult Function()? cancelReservation,
    TResult Function(int reservationId)? fetchReservationDetails,
    TResult Function()? clearReservationState,
    required TResult orElse(),
  }) {
    if (submitReservation != null) {
      return submitReservation(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitReservation value) submitReservation,
    required TResult Function(_AddOrUpdateReservation value)
        addOrUpdateReservation,
    required TResult Function(_CancelReservation value) cancelReservation,
    required TResult Function(_FetchReservationDetails value)
        fetchReservationDetails,
    required TResult Function(_ClearReservationState value)
        clearReservationState,
  }) {
    return submitReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitReservation value)? submitReservation,
    TResult? Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult? Function(_CancelReservation value)? cancelReservation,
    TResult? Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult? Function(_ClearReservationState value)? clearReservationState,
  }) {
    return submitReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitReservation value)? submitReservation,
    TResult Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult Function(_CancelReservation value)? cancelReservation,
    TResult Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult Function(_ClearReservationState value)? clearReservationState,
    required TResult orElse(),
  }) {
    if (submitReservation != null) {
      return submitReservation(this);
    }
    return orElse();
  }
}

abstract class _SubmitReservation implements ReservationDataEvent {
  const factory _SubmitReservation(final Reservation reservation) =
      _$SubmitReservationImpl;

  Reservation get reservation;
  @JsonKey(ignore: true)
  _$$SubmitReservationImplCopyWith<_$SubmitReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrUpdateReservationImplCopyWith<$Res> {
  factory _$$AddOrUpdateReservationImplCopyWith(
          _$AddOrUpdateReservationImpl value,
          $Res Function(_$AddOrUpdateReservationImpl) then) =
      __$$AddOrUpdateReservationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reservation reservation});
}

/// @nodoc
class __$$AddOrUpdateReservationImplCopyWithImpl<$Res>
    extends _$ReservationDataEventCopyWithImpl<$Res,
        _$AddOrUpdateReservationImpl>
    implements _$$AddOrUpdateReservationImplCopyWith<$Res> {
  __$$AddOrUpdateReservationImplCopyWithImpl(
      _$AddOrUpdateReservationImpl _value,
      $Res Function(_$AddOrUpdateReservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
  }) {
    return _then(_$AddOrUpdateReservationImpl(
      null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
    ));
  }
}

/// @nodoc

class _$AddOrUpdateReservationImpl implements _AddOrUpdateReservation {
  const _$AddOrUpdateReservationImpl(this.reservation);

  @override
  final Reservation reservation;

  @override
  String toString() {
    return 'ReservationDataEvent.addOrUpdateReservation(reservation: $reservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrUpdateReservationImpl &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrUpdateReservationImplCopyWith<_$AddOrUpdateReservationImpl>
      get copyWith => __$$AddOrUpdateReservationImplCopyWithImpl<
          _$AddOrUpdateReservationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation reservation) submitReservation,
    required TResult Function(Reservation reservation) addOrUpdateReservation,
    required TResult Function() cancelReservation,
    required TResult Function(int reservationId) fetchReservationDetails,
    required TResult Function() clearReservationState,
  }) {
    return addOrUpdateReservation(reservation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Reservation reservation)? submitReservation,
    TResult? Function(Reservation reservation)? addOrUpdateReservation,
    TResult? Function()? cancelReservation,
    TResult? Function(int reservationId)? fetchReservationDetails,
    TResult? Function()? clearReservationState,
  }) {
    return addOrUpdateReservation?.call(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation reservation)? submitReservation,
    TResult Function(Reservation reservation)? addOrUpdateReservation,
    TResult Function()? cancelReservation,
    TResult Function(int reservationId)? fetchReservationDetails,
    TResult Function()? clearReservationState,
    required TResult orElse(),
  }) {
    if (addOrUpdateReservation != null) {
      return addOrUpdateReservation(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitReservation value) submitReservation,
    required TResult Function(_AddOrUpdateReservation value)
        addOrUpdateReservation,
    required TResult Function(_CancelReservation value) cancelReservation,
    required TResult Function(_FetchReservationDetails value)
        fetchReservationDetails,
    required TResult Function(_ClearReservationState value)
        clearReservationState,
  }) {
    return addOrUpdateReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitReservation value)? submitReservation,
    TResult? Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult? Function(_CancelReservation value)? cancelReservation,
    TResult? Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult? Function(_ClearReservationState value)? clearReservationState,
  }) {
    return addOrUpdateReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitReservation value)? submitReservation,
    TResult Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult Function(_CancelReservation value)? cancelReservation,
    TResult Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult Function(_ClearReservationState value)? clearReservationState,
    required TResult orElse(),
  }) {
    if (addOrUpdateReservation != null) {
      return addOrUpdateReservation(this);
    }
    return orElse();
  }
}

abstract class _AddOrUpdateReservation implements ReservationDataEvent {
  const factory _AddOrUpdateReservation(final Reservation reservation) =
      _$AddOrUpdateReservationImpl;

  Reservation get reservation;
  @JsonKey(ignore: true)
  _$$AddOrUpdateReservationImplCopyWith<_$AddOrUpdateReservationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelReservationImplCopyWith<$Res> {
  factory _$$CancelReservationImplCopyWith(_$CancelReservationImpl value,
          $Res Function(_$CancelReservationImpl) then) =
      __$$CancelReservationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelReservationImplCopyWithImpl<$Res>
    extends _$ReservationDataEventCopyWithImpl<$Res, _$CancelReservationImpl>
    implements _$$CancelReservationImplCopyWith<$Res> {
  __$$CancelReservationImplCopyWithImpl(_$CancelReservationImpl _value,
      $Res Function(_$CancelReservationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelReservationImpl implements _CancelReservation {
  const _$CancelReservationImpl();

  @override
  String toString() {
    return 'ReservationDataEvent.cancelReservation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelReservationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation reservation) submitReservation,
    required TResult Function(Reservation reservation) addOrUpdateReservation,
    required TResult Function() cancelReservation,
    required TResult Function(int reservationId) fetchReservationDetails,
    required TResult Function() clearReservationState,
  }) {
    return cancelReservation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Reservation reservation)? submitReservation,
    TResult? Function(Reservation reservation)? addOrUpdateReservation,
    TResult? Function()? cancelReservation,
    TResult? Function(int reservationId)? fetchReservationDetails,
    TResult? Function()? clearReservationState,
  }) {
    return cancelReservation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation reservation)? submitReservation,
    TResult Function(Reservation reservation)? addOrUpdateReservation,
    TResult Function()? cancelReservation,
    TResult Function(int reservationId)? fetchReservationDetails,
    TResult Function()? clearReservationState,
    required TResult orElse(),
  }) {
    if (cancelReservation != null) {
      return cancelReservation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitReservation value) submitReservation,
    required TResult Function(_AddOrUpdateReservation value)
        addOrUpdateReservation,
    required TResult Function(_CancelReservation value) cancelReservation,
    required TResult Function(_FetchReservationDetails value)
        fetchReservationDetails,
    required TResult Function(_ClearReservationState value)
        clearReservationState,
  }) {
    return cancelReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitReservation value)? submitReservation,
    TResult? Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult? Function(_CancelReservation value)? cancelReservation,
    TResult? Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult? Function(_ClearReservationState value)? clearReservationState,
  }) {
    return cancelReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitReservation value)? submitReservation,
    TResult Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult Function(_CancelReservation value)? cancelReservation,
    TResult Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult Function(_ClearReservationState value)? clearReservationState,
    required TResult orElse(),
  }) {
    if (cancelReservation != null) {
      return cancelReservation(this);
    }
    return orElse();
  }
}

abstract class _CancelReservation implements ReservationDataEvent {
  const factory _CancelReservation() = _$CancelReservationImpl;
}

/// @nodoc
abstract class _$$FetchReservationDetailsImplCopyWith<$Res> {
  factory _$$FetchReservationDetailsImplCopyWith(
          _$FetchReservationDetailsImpl value,
          $Res Function(_$FetchReservationDetailsImpl) then) =
      __$$FetchReservationDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reservationId});
}

/// @nodoc
class __$$FetchReservationDetailsImplCopyWithImpl<$Res>
    extends _$ReservationDataEventCopyWithImpl<$Res,
        _$FetchReservationDetailsImpl>
    implements _$$FetchReservationDetailsImplCopyWith<$Res> {
  __$$FetchReservationDetailsImplCopyWithImpl(
      _$FetchReservationDetailsImpl _value,
      $Res Function(_$FetchReservationDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationId = null,
  }) {
    return _then(_$FetchReservationDetailsImpl(
      null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchReservationDetailsImpl implements _FetchReservationDetails {
  const _$FetchReservationDetailsImpl(this.reservationId);

  @override
  final int reservationId;

  @override
  String toString() {
    return 'ReservationDataEvent.fetchReservationDetails(reservationId: $reservationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchReservationDetailsImpl &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchReservationDetailsImplCopyWith<_$FetchReservationDetailsImpl>
      get copyWith => __$$FetchReservationDetailsImplCopyWithImpl<
          _$FetchReservationDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation reservation) submitReservation,
    required TResult Function(Reservation reservation) addOrUpdateReservation,
    required TResult Function() cancelReservation,
    required TResult Function(int reservationId) fetchReservationDetails,
    required TResult Function() clearReservationState,
  }) {
    return fetchReservationDetails(reservationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Reservation reservation)? submitReservation,
    TResult? Function(Reservation reservation)? addOrUpdateReservation,
    TResult? Function()? cancelReservation,
    TResult? Function(int reservationId)? fetchReservationDetails,
    TResult? Function()? clearReservationState,
  }) {
    return fetchReservationDetails?.call(reservationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation reservation)? submitReservation,
    TResult Function(Reservation reservation)? addOrUpdateReservation,
    TResult Function()? cancelReservation,
    TResult Function(int reservationId)? fetchReservationDetails,
    TResult Function()? clearReservationState,
    required TResult orElse(),
  }) {
    if (fetchReservationDetails != null) {
      return fetchReservationDetails(reservationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitReservation value) submitReservation,
    required TResult Function(_AddOrUpdateReservation value)
        addOrUpdateReservation,
    required TResult Function(_CancelReservation value) cancelReservation,
    required TResult Function(_FetchReservationDetails value)
        fetchReservationDetails,
    required TResult Function(_ClearReservationState value)
        clearReservationState,
  }) {
    return fetchReservationDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitReservation value)? submitReservation,
    TResult? Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult? Function(_CancelReservation value)? cancelReservation,
    TResult? Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult? Function(_ClearReservationState value)? clearReservationState,
  }) {
    return fetchReservationDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitReservation value)? submitReservation,
    TResult Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult Function(_CancelReservation value)? cancelReservation,
    TResult Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult Function(_ClearReservationState value)? clearReservationState,
    required TResult orElse(),
  }) {
    if (fetchReservationDetails != null) {
      return fetchReservationDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchReservationDetails implements ReservationDataEvent {
  const factory _FetchReservationDetails(final int reservationId) =
      _$FetchReservationDetailsImpl;

  int get reservationId;
  @JsonKey(ignore: true)
  _$$FetchReservationDetailsImplCopyWith<_$FetchReservationDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearReservationStateImplCopyWith<$Res> {
  factory _$$ClearReservationStateImplCopyWith(
          _$ClearReservationStateImpl value,
          $Res Function(_$ClearReservationStateImpl) then) =
      __$$ClearReservationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearReservationStateImplCopyWithImpl<$Res>
    extends _$ReservationDataEventCopyWithImpl<$Res,
        _$ClearReservationStateImpl>
    implements _$$ClearReservationStateImplCopyWith<$Res> {
  __$$ClearReservationStateImplCopyWithImpl(_$ClearReservationStateImpl _value,
      $Res Function(_$ClearReservationStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearReservationStateImpl implements _ClearReservationState {
  const _$ClearReservationStateImpl();

  @override
  String toString() {
    return 'ReservationDataEvent.clearReservationState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearReservationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation reservation) submitReservation,
    required TResult Function(Reservation reservation) addOrUpdateReservation,
    required TResult Function() cancelReservation,
    required TResult Function(int reservationId) fetchReservationDetails,
    required TResult Function() clearReservationState,
  }) {
    return clearReservationState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Reservation reservation)? submitReservation,
    TResult? Function(Reservation reservation)? addOrUpdateReservation,
    TResult? Function()? cancelReservation,
    TResult? Function(int reservationId)? fetchReservationDetails,
    TResult? Function()? clearReservationState,
  }) {
    return clearReservationState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation reservation)? submitReservation,
    TResult Function(Reservation reservation)? addOrUpdateReservation,
    TResult Function()? cancelReservation,
    TResult Function(int reservationId)? fetchReservationDetails,
    TResult Function()? clearReservationState,
    required TResult orElse(),
  }) {
    if (clearReservationState != null) {
      return clearReservationState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitReservation value) submitReservation,
    required TResult Function(_AddOrUpdateReservation value)
        addOrUpdateReservation,
    required TResult Function(_CancelReservation value) cancelReservation,
    required TResult Function(_FetchReservationDetails value)
        fetchReservationDetails,
    required TResult Function(_ClearReservationState value)
        clearReservationState,
  }) {
    return clearReservationState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitReservation value)? submitReservation,
    TResult? Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult? Function(_CancelReservation value)? cancelReservation,
    TResult? Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult? Function(_ClearReservationState value)? clearReservationState,
  }) {
    return clearReservationState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitReservation value)? submitReservation,
    TResult Function(_AddOrUpdateReservation value)? addOrUpdateReservation,
    TResult Function(_CancelReservation value)? cancelReservation,
    TResult Function(_FetchReservationDetails value)? fetchReservationDetails,
    TResult Function(_ClearReservationState value)? clearReservationState,
    required TResult orElse(),
  }) {
    if (clearReservationState != null) {
      return clearReservationState(this);
    }
    return orElse();
  }
}

abstract class _ClearReservationState implements ReservationDataEvent {
  const factory _ClearReservationState() = _$ClearReservationStateImpl;
}

/// @nodoc
mixin _$ReservationDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationDataStateCopyWith<$Res> {
  factory $ReservationDataStateCopyWith(ReservationDataState value,
          $Res Function(ReservationDataState) then) =
      _$ReservationDataStateCopyWithImpl<$Res, ReservationDataState>;
}

/// @nodoc
class _$ReservationDataStateCopyWithImpl<$Res,
        $Val extends ReservationDataState>
    implements $ReservationDataStateCopyWith<$Res> {
  _$ReservationDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ReservationDataStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReservationDataState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReservationDataState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ReservationDataStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ReservationDataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReservationDataState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String customerName,
      String customerPhone,
      String reservationDate,
      String reservationTime,
      String notes,
      String status,
      String tableNumber});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ReservationDataStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? customerPhone = null,
    Object? reservationDate = null,
    Object? reservationTime = null,
    Object? notes = null,
    Object? status = null,
    Object? tableNumber = null,
  }) {
    return _then(_$LoadedImpl(
      null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == reservationTime
          ? _value.reservationTime
          : reservationTime // ignore: cast_nullable_to_non_nullable
              as String,
      null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      this.customerName,
      this.customerPhone,
      this.reservationDate,
      this.reservationTime,
      this.notes,
      this.status,
      this.tableNumber);

  @override
  final String customerName;
  @override
  final String customerPhone;
  @override
  final String reservationDate;
  @override
  final String reservationTime;
  @override
  final String notes;
  @override
  final String status;
  @override
  final String tableNumber;

  @override
  String toString() {
    return 'ReservationDataState.loaded(customerName: $customerName, customerPhone: $customerPhone, reservationDate: $reservationDate, reservationTime: $reservationTime, notes: $notes, status: $status, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.reservationTime, reservationTime) ||
                other.reservationTime == reservationTime) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerName, customerPhone,
      reservationDate, reservationTime, notes, status, tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(customerName, customerPhone, reservationDate, reservationTime,
        notes, status, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(customerName, customerPhone, reservationDate,
        reservationTime, notes, status, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(customerName, customerPhone, reservationDate,
          reservationTime, notes, status, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ReservationDataState {
  const factory _Loaded(
      final String customerName,
      final String customerPhone,
      final String reservationDate,
      final String reservationTime,
      final String notes,
      final String status,
      final String tableNumber) = _$LoadedImpl;

  String get customerName;
  String get customerPhone;
  String get reservationDate;
  String get reservationTime;
  String get notes;
  String get status;
  String get tableNumber;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ReservationDataStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ReservationDataState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String customerName,
            String customerPhone,
            String reservationDate,
            String reservationTime,
            String notes,
            String status,
            String tableNumber)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ReservationDataState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
