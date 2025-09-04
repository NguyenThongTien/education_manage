// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: 'code')
  int? get code;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'data')
  DataBean? get data;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      _$LoginResponseCopyWithImpl<LoginResponse>(
          this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  @override
  String toString() {
    return 'LoginResponse(code: $code, status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) _then) =
      _$LoginResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataBean? data});

  $DataBeanCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

  /// Create a copy of LoginResponse
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
              as DataBean?,
    ));
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataBeanCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataBeanCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
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
    TResult Function(_LoginResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResponse() when $default != null:
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
    TResult Function(_LoginResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponse():
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
    TResult? Function(_LoginResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponse() when $default != null:
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
            @JsonKey(name: 'data') DataBean? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResponse() when $default != null:
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
            @JsonKey(name: 'data') DataBean? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponse():
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
            @JsonKey(name: 'data') DataBean? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponse() when $default != null:
        return $default(_that.code, _that.status, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LoginResponse implements LoginResponse {
  const _LoginResponse(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final DataBean? data;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  @override
  String toString() {
    return 'LoginResponse(code: $code, status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(
          _LoginResponse value, $Res Function(_LoginResponse) _then) =
      __$LoginResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataBean? data});

  @override
  $DataBeanCopyWith<$Res>? get data;
}

/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_LoginResponse(
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
              as DataBean?,
    ));
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataBeanCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataBeanCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$DataBean {
  @JsonKey(name: 'userDTO')
  UserModel? get userDTO;
  @JsonKey(name: 'accessToken')
  String? get accessToken;

  /// Create a copy of DataBean
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataBeanCopyWith<DataBean> get copyWith =>
      _$DataBeanCopyWithImpl<DataBean>(this as DataBean, _$identity);

  /// Serializes this DataBean to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataBean &&
            (identical(other.userDTO, userDTO) || other.userDTO == userDTO) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userDTO, accessToken);

  @override
  String toString() {
    return 'DataBean(userDTO: $userDTO, accessToken: $accessToken)';
  }
}

/// @nodoc
abstract mixin class $DataBeanCopyWith<$Res> {
  factory $DataBeanCopyWith(DataBean value, $Res Function(DataBean) _then) =
      _$DataBeanCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'userDTO') UserModel? userDTO,
      @JsonKey(name: 'accessToken') String? accessToken});

  $UserModelCopyWith<$Res>? get userDTO;
}

/// @nodoc
class _$DataBeanCopyWithImpl<$Res> implements $DataBeanCopyWith<$Res> {
  _$DataBeanCopyWithImpl(this._self, this._then);

  final DataBean _self;
  final $Res Function(DataBean) _then;

  /// Create a copy of DataBean
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDTO = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_self.copyWith(
      userDTO: freezed == userDTO
          ? _self.userDTO
          : userDTO // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      accessToken: freezed == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DataBean
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userDTO {
    if (_self.userDTO == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.userDTO!, (value) {
      return _then(_self.copyWith(userDTO: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DataBean].
extension DataBeanPatterns on DataBean {
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
    TResult Function(_DataBean value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DataBean() when $default != null:
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
    TResult Function(_DataBean value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataBean():
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
    TResult? Function(_DataBean value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataBean() when $default != null:
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
    TResult Function(@JsonKey(name: 'userDTO') UserModel? userDTO,
            @JsonKey(name: 'accessToken') String? accessToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DataBean() when $default != null:
        return $default(_that.userDTO, _that.accessToken);
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
    TResult Function(@JsonKey(name: 'userDTO') UserModel? userDTO,
            @JsonKey(name: 'accessToken') String? accessToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataBean():
        return $default(_that.userDTO, _that.accessToken);
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
    TResult? Function(@JsonKey(name: 'userDTO') UserModel? userDTO,
            @JsonKey(name: 'accessToken') String? accessToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataBean() when $default != null:
        return $default(_that.userDTO, _that.accessToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DataBean implements DataBean {
  const _DataBean(
      {@JsonKey(name: 'userDTO') this.userDTO,
      @JsonKey(name: 'accessToken') this.accessToken});
  factory _DataBean.fromJson(Map<String, dynamic> json) =>
      _$DataBeanFromJson(json);

  @override
  @JsonKey(name: 'userDTO')
  final UserModel? userDTO;
  @override
  @JsonKey(name: 'accessToken')
  final String? accessToken;

  /// Create a copy of DataBean
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataBeanCopyWith<_DataBean> get copyWith =>
      __$DataBeanCopyWithImpl<_DataBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DataBeanToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataBean &&
            (identical(other.userDTO, userDTO) || other.userDTO == userDTO) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userDTO, accessToken);

  @override
  String toString() {
    return 'DataBean(userDTO: $userDTO, accessToken: $accessToken)';
  }
}

/// @nodoc
abstract mixin class _$DataBeanCopyWith<$Res>
    implements $DataBeanCopyWith<$Res> {
  factory _$DataBeanCopyWith(_DataBean value, $Res Function(_DataBean) _then) =
      __$DataBeanCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userDTO') UserModel? userDTO,
      @JsonKey(name: 'accessToken') String? accessToken});

  @override
  $UserModelCopyWith<$Res>? get userDTO;
}

/// @nodoc
class __$DataBeanCopyWithImpl<$Res> implements _$DataBeanCopyWith<$Res> {
  __$DataBeanCopyWithImpl(this._self, this._then);

  final _DataBean _self;
  final $Res Function(_DataBean) _then;

  /// Create a copy of DataBean
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userDTO = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_DataBean(
      userDTO: freezed == userDTO
          ? _self.userDTO
          : userDTO // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      accessToken: freezed == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DataBean
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userDTO {
    if (_self.userDTO == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.userDTO!, (value) {
      return _then(_self.copyWith(userDTO: value));
    });
  }
}

// dart format on
