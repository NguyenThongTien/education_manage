// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_server.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorServer {
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'error')
  ErrorBean? get error;

  /// Create a copy of ErrorServer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorServerCopyWith<ErrorServer> get copyWith =>
      _$ErrorServerCopyWithImpl<ErrorServer>(this as ErrorServer, _$identity);

  /// Serializes this ErrorServer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorServer &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, error);

  @override
  String toString() {
    return 'ErrorServer(status: $status, error: $error)';
  }
}

/// @nodoc
abstract mixin class $ErrorServerCopyWith<$Res> {
  factory $ErrorServerCopyWith(
          ErrorServer value, $Res Function(ErrorServer) _then) =
      _$ErrorServerCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'error') ErrorBean? error});

  $ErrorBeanCopyWith<$Res>? get error;
}

/// @nodoc
class _$ErrorServerCopyWithImpl<$Res> implements $ErrorServerCopyWith<$Res> {
  _$ErrorServerCopyWithImpl(this._self, this._then);

  final ErrorServer _self;
  final $Res Function(ErrorServer) _then;

  /// Create a copy of ErrorServer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorBean?,
    ));
  }

  /// Create a copy of ErrorServer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorBeanCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $ErrorBeanCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ErrorServer].
extension ErrorServerPatterns on ErrorServer {
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
    TResult Function(_ErrorServer value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorServer() when $default != null:
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
    TResult Function(_ErrorServer value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorServer():
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
    TResult? Function(_ErrorServer value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorServer() when $default != null:
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
    TResult Function(@JsonKey(name: 'status') String? status,
            @JsonKey(name: 'error') ErrorBean? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorServer() when $default != null:
        return $default(_that.status, _that.error);
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
    TResult Function(@JsonKey(name: 'status') String? status,
            @JsonKey(name: 'error') ErrorBean? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorServer():
        return $default(_that.status, _that.error);
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
    TResult? Function(@JsonKey(name: 'status') String? status,
            @JsonKey(name: 'error') ErrorBean? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorServer() when $default != null:
        return $default(_that.status, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ErrorServer implements ErrorServer {
  const _ErrorServer(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'error') this.error});
  factory _ErrorServer.fromJson(Map<String, dynamic> json) =>
      _$ErrorServerFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'error')
  final ErrorBean? error;

  /// Create a copy of ErrorServer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorServerCopyWith<_ErrorServer> get copyWith =>
      __$ErrorServerCopyWithImpl<_ErrorServer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ErrorServerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorServer &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, error);

  @override
  String toString() {
    return 'ErrorServer(status: $status, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ErrorServerCopyWith<$Res>
    implements $ErrorServerCopyWith<$Res> {
  factory _$ErrorServerCopyWith(
          _ErrorServer value, $Res Function(_ErrorServer) _then) =
      __$ErrorServerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'error') ErrorBean? error});

  @override
  $ErrorBeanCopyWith<$Res>? get error;
}

/// @nodoc
class __$ErrorServerCopyWithImpl<$Res> implements _$ErrorServerCopyWith<$Res> {
  __$ErrorServerCopyWithImpl(this._self, this._then);

  final _ErrorServer _self;
  final $Res Function(_ErrorServer) _then;

  /// Create a copy of ErrorServer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_ErrorServer(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorBean?,
    ));
  }

  /// Create a copy of ErrorServer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorBeanCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $ErrorBeanCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc
mixin _$ErrorBean {
  @JsonKey(name: 'code')
  String? get code;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors;

  /// Create a copy of ErrorBean
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorBeanCopyWith<ErrorBean> get copyWith =>
      _$ErrorBeanCopyWithImpl<ErrorBean>(this as ErrorBean, _$identity);

  /// Serializes this ErrorBean to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorBean &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'ErrorBean(code: $code, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $ErrorBeanCopyWith<$Res> {
  factory $ErrorBeanCopyWith(ErrorBean value, $Res Function(ErrorBean) _then) =
      _$ErrorBeanCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'errors') Map<String, List<String>>? errors});
}

/// @nodoc
class _$ErrorBeanCopyWithImpl<$Res> implements $ErrorBeanCopyWith<$Res> {
  _$ErrorBeanCopyWithImpl(this._self, this._then);

  final ErrorBean _self;
  final $Res Function(ErrorBean) _then;

  /// Create a copy of ErrorBean
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_self.copyWith(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _self.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ErrorBean].
extension ErrorBeanPatterns on ErrorBean {
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
    TResult Function(_ErrorBean value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorBean() when $default != null:
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
    TResult Function(_ErrorBean value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorBean():
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
    TResult? Function(_ErrorBean value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorBean() when $default != null:
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
            @JsonKey(name: 'code') String? code,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'errors') Map<String, List<String>>? errors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorBean() when $default != null:
        return $default(_that.code, _that.message, _that.errors);
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
            @JsonKey(name: 'code') String? code,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'errors') Map<String, List<String>>? errors)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorBean():
        return $default(_that.code, _that.message, _that.errors);
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
            @JsonKey(name: 'code') String? code,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'errors') Map<String, List<String>>? errors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorBean() when $default != null:
        return $default(_that.code, _that.message, _that.errors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ErrorBean implements ErrorBean {
  const _ErrorBean(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'errors') final Map<String, List<String>>? errors})
      : _errors = errors;
  factory _ErrorBean.fromJson(Map<String, dynamic> json) =>
      _$ErrorBeanFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final Map<String, List<String>>? _errors;
  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ErrorBean
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorBeanCopyWith<_ErrorBean> get copyWith =>
      __$ErrorBeanCopyWithImpl<_ErrorBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ErrorBeanToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorBean &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_errors));

  @override
  String toString() {
    return 'ErrorBean(code: $code, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$ErrorBeanCopyWith<$Res>
    implements $ErrorBeanCopyWith<$Res> {
  factory _$ErrorBeanCopyWith(
          _ErrorBean value, $Res Function(_ErrorBean) _then) =
      __$ErrorBeanCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'errors') Map<String, List<String>>? errors});
}

/// @nodoc
class __$ErrorBeanCopyWithImpl<$Res> implements _$ErrorBeanCopyWith<$Res> {
  __$ErrorBeanCopyWithImpl(this._self, this._then);

  final _ErrorBean _self;
  final $Res Function(_ErrorBean) _then;

  /// Create a copy of ErrorBean
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_ErrorBean(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

// dart format on
