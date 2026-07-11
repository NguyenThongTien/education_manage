// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSubjectResponse {
  @JsonKey(name: 'code')
  int? get code;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'data')
  List<SubjectModel>? get data;

  /// Create a copy of GetSubjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetSubjectResponseCopyWith<GetSubjectResponse> get copyWith =>
      _$GetSubjectResponseCopyWithImpl<GetSubjectResponse>(
          this as GetSubjectResponse, _$identity);

  /// Serializes this GetSubjectResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetSubjectResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'GetSubjectResponse(code: $code, status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GetSubjectResponseCopyWith<$Res> {
  factory $GetSubjectResponseCopyWith(
          GetSubjectResponse value, $Res Function(GetSubjectResponse) _then) =
      _$GetSubjectResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SubjectModel>? data});
}

/// @nodoc
class _$GetSubjectResponseCopyWithImpl<$Res>
    implements $GetSubjectResponseCopyWith<$Res> {
  _$GetSubjectResponseCopyWithImpl(this._self, this._then);

  final GetSubjectResponse _self;
  final $Res Function(GetSubjectResponse) _then;

  /// Create a copy of GetSubjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubjectModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetSubjectResponse].
extension GetSubjectResponsePatterns on GetSubjectResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GetSubjectResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSubjectResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GetSubjectResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSubjectResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GetSubjectResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSubjectResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') List<SubjectModel>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSubjectResponse() when $default != null:
        return $default(_that.code, _that.status, _that.message, _that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') List<SubjectModel>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSubjectResponse():
        return $default(_that.code, _that.status, _that.message, _that.data);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') List<SubjectModel>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSubjectResponse() when $default != null:
        return $default(_that.code, _that.status, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetSubjectResponse implements GetSubjectResponse {
  const _GetSubjectResponse(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<SubjectModel>? data})
      : _data = data;
  factory _GetSubjectResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSubjectResponseFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<SubjectModel>? _data;
  @override
  @JsonKey(name: 'data')
  List<SubjectModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of GetSubjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetSubjectResponseCopyWith<_GetSubjectResponse> get copyWith =>
      __$GetSubjectResponseCopyWithImpl<_GetSubjectResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetSubjectResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSubjectResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message,
      const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'GetSubjectResponse(code: $code, status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$GetSubjectResponseCopyWith<$Res>
    implements $GetSubjectResponseCopyWith<$Res> {
  factory _$GetSubjectResponseCopyWith(
          _GetSubjectResponse value, $Res Function(_GetSubjectResponse) _then) =
      __$GetSubjectResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SubjectModel>? data});
}

/// @nodoc
class __$GetSubjectResponseCopyWithImpl<$Res>
    implements _$GetSubjectResponseCopyWith<$Res> {
  __$GetSubjectResponseCopyWithImpl(this._self, this._then);

  final _GetSubjectResponse _self;
  final $Res Function(_GetSubjectResponse) _then;

  /// Create a copy of GetSubjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_GetSubjectResponse(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubjectModel>?,
    ));
  }
}

// dart format on
