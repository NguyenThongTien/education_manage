// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get id;
  @HiveField(1)
  @JsonKey(name: 'firstName')
  String? get firstName;
  @HiveField(2)
  @JsonKey(name: 'lastName')
  String? get lastName;
  @HiveField(3)
  @JsonKey(name: 'avatar')
  String? get avatar;
  @HiveField(4)
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber;
  @HiveField(5)
  @JsonKey(name: 'role')
  RoleModel? get role;
  @HiveField(6)
  @JsonKey(name: 'birthDate')
  String? get birthDate;
  @HiveField(7)
  @JsonKey(name: 'username')
  String? get username;
  @HiveField(8)
  @JsonKey(name: 'email')
  String? get email;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<UserModel> get copyWith =>
      _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, avatar,
      phoneNumber, role, birthDate, username, email);

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, avatar: $avatar, phoneNumber: $phoneNumber, role: $role, birthDate: $birthDate, username: $username, email: $email)';
  }
}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) =
      _$UserModelCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int? id,
      @HiveField(1) @JsonKey(name: 'firstName') String? firstName,
      @HiveField(2) @JsonKey(name: 'lastName') String? lastName,
      @HiveField(3) @JsonKey(name: 'avatar') String? avatar,
      @HiveField(4) @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @HiveField(5) @JsonKey(name: 'role') RoleModel? role,
      @HiveField(6) @JsonKey(name: 'birthDate') String? birthDate,
      @HiveField(7) @JsonKey(name: 'username') String? username,
      @HiveField(8) @JsonKey(name: 'email') String? email});

  $RoleModelCopyWith<$Res>? get role;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? phoneNumber = freezed,
    Object? role = freezed,
    Object? birthDate = freezed,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleModel?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoleModelCopyWith<$Res>? get role {
    if (_self.role == null) {
      return null;
    }

    return $RoleModelCopyWith<$Res>(_self.role!, (value) {
      return _then(_self.copyWith(role: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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
    TResult Function(_UserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
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
    TResult Function(_UserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel():
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
    TResult? Function(_UserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
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
            @HiveField(0) @JsonKey(name: 'id') int? id,
            @HiveField(1) @JsonKey(name: 'firstName') String? firstName,
            @HiveField(2) @JsonKey(name: 'lastName') String? lastName,
            @HiveField(3) @JsonKey(name: 'avatar') String? avatar,
            @HiveField(4) @JsonKey(name: 'phoneNumber') String? phoneNumber,
            @HiveField(5) @JsonKey(name: 'role') RoleModel? role,
            @HiveField(6) @JsonKey(name: 'birthDate') String? birthDate,
            @HiveField(7) @JsonKey(name: 'username') String? username,
            @HiveField(8) @JsonKey(name: 'email') String? email)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
        return $default(
            _that.id,
            _that.firstName,
            _that.lastName,
            _that.avatar,
            _that.phoneNumber,
            _that.role,
            _that.birthDate,
            _that.username,
            _that.email);
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
            @HiveField(0) @JsonKey(name: 'id') int? id,
            @HiveField(1) @JsonKey(name: 'firstName') String? firstName,
            @HiveField(2) @JsonKey(name: 'lastName') String? lastName,
            @HiveField(3) @JsonKey(name: 'avatar') String? avatar,
            @HiveField(4) @JsonKey(name: 'phoneNumber') String? phoneNumber,
            @HiveField(5) @JsonKey(name: 'role') RoleModel? role,
            @HiveField(6) @JsonKey(name: 'birthDate') String? birthDate,
            @HiveField(7) @JsonKey(name: 'username') String? username,
            @HiveField(8) @JsonKey(name: 'email') String? email)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel():
        return $default(
            _that.id,
            _that.firstName,
            _that.lastName,
            _that.avatar,
            _that.phoneNumber,
            _that.role,
            _that.birthDate,
            _that.username,
            _that.email);
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
            @HiveField(0) @JsonKey(name: 'id') int? id,
            @HiveField(1) @JsonKey(name: 'firstName') String? firstName,
            @HiveField(2) @JsonKey(name: 'lastName') String? lastName,
            @HiveField(3) @JsonKey(name: 'avatar') String? avatar,
            @HiveField(4) @JsonKey(name: 'phoneNumber') String? phoneNumber,
            @HiveField(5) @JsonKey(name: 'role') RoleModel? role,
            @HiveField(6) @JsonKey(name: 'birthDate') String? birthDate,
            @HiveField(7) @JsonKey(name: 'username') String? username,
            @HiveField(8) @JsonKey(name: 'email') String? email)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
        return $default(
            _that.id,
            _that.firstName,
            _that.lastName,
            _that.avatar,
            _that.phoneNumber,
            _that.role,
            _that.birthDate,
            _that.username,
            _that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserModel implements UserModel {
  const _UserModel(
      {@HiveField(0) @JsonKey(name: 'id') this.id,
      @HiveField(1) @JsonKey(name: 'firstName') this.firstName,
      @HiveField(2) @JsonKey(name: 'lastName') this.lastName,
      @HiveField(3) @JsonKey(name: 'avatar') this.avatar,
      @HiveField(4) @JsonKey(name: 'phoneNumber') this.phoneNumber,
      @HiveField(5) @JsonKey(name: 'role') this.role,
      @HiveField(6) @JsonKey(name: 'birthDate') this.birthDate,
      @HiveField(7) @JsonKey(name: 'username') this.username,
      @HiveField(8) @JsonKey(name: 'email') this.email});
  factory _UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int? id;
  @override
  @HiveField(1)
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @HiveField(2)
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @HiveField(3)
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @HiveField(4)
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @override
  @HiveField(5)
  @JsonKey(name: 'role')
  final RoleModel? role;
  @override
  @HiveField(6)
  @JsonKey(name: 'birthDate')
  final String? birthDate;
  @override
  @HiveField(7)
  @JsonKey(name: 'username')
  final String? username;
  @override
  @HiveField(8)
  @JsonKey(name: 'email')
  final String? email;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, avatar,
      phoneNumber, role, birthDate, username, email);

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, avatar: $avatar, phoneNumber: $phoneNumber, role: $role, birthDate: $birthDate, username: $username, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) _then) =
      __$UserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int? id,
      @HiveField(1) @JsonKey(name: 'firstName') String? firstName,
      @HiveField(2) @JsonKey(name: 'lastName') String? lastName,
      @HiveField(3) @JsonKey(name: 'avatar') String? avatar,
      @HiveField(4) @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @HiveField(5) @JsonKey(name: 'role') RoleModel? role,
      @HiveField(6) @JsonKey(name: 'birthDate') String? birthDate,
      @HiveField(7) @JsonKey(name: 'username') String? username,
      @HiveField(8) @JsonKey(name: 'email') String? email});

  @override
  $RoleModelCopyWith<$Res>? get role;
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? phoneNumber = freezed,
    Object? role = freezed,
    Object? birthDate = freezed,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_UserModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleModel?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoleModelCopyWith<$Res>? get role {
    if (_self.role == null) {
      return null;
    }

    return $RoleModelCopyWith<$Res>(_self.role!, (value) {
      return _then(_self.copyWith(role: value));
    });
  }
}

// dart format on
