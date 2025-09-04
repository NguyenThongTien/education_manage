// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoleModel {
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get roleId;
  @HiveField(1)
  @JsonKey(name: 'name')
  String? get roleName;

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RoleModelCopyWith<RoleModel> get copyWith =>
      _$RoleModelCopyWithImpl<RoleModel>(this as RoleModel, _$identity);

  /// Serializes this RoleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoleModel &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roleId, roleName);

  @override
  String toString() {
    return 'RoleModel(roleId: $roleId, roleName: $roleName)';
  }
}

/// @nodoc
abstract mixin class $RoleModelCopyWith<$Res> {
  factory $RoleModelCopyWith(RoleModel value, $Res Function(RoleModel) _then) =
      _$RoleModelCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int? roleId,
      @HiveField(1) @JsonKey(name: 'name') String? roleName});
}

/// @nodoc
class _$RoleModelCopyWithImpl<$Res> implements $RoleModelCopyWith<$Res> {
  _$RoleModelCopyWithImpl(this._self, this._then);

  final RoleModel _self;
  final $Res Function(RoleModel) _then;

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = freezed,
    Object? roleName = freezed,
  }) {
    return _then(_self.copyWith(
      roleId: freezed == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      roleName: freezed == roleName
          ? _self.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RoleModel].
extension RoleModelPatterns on RoleModel {
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
    TResult Function(_RoleModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RoleModel() when $default != null:
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
    TResult Function(_RoleModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoleModel():
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
    TResult? Function(_RoleModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoleModel() when $default != null:
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
    TResult Function(@HiveField(0) @JsonKey(name: 'id') int? roleId,
            @HiveField(1) @JsonKey(name: 'name') String? roleName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RoleModel() when $default != null:
        return $default(_that.roleId, _that.roleName);
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
    TResult Function(@HiveField(0) @JsonKey(name: 'id') int? roleId,
            @HiveField(1) @JsonKey(name: 'name') String? roleName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoleModel():
        return $default(_that.roleId, _that.roleName);
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
    TResult? Function(@HiveField(0) @JsonKey(name: 'id') int? roleId,
            @HiveField(1) @JsonKey(name: 'name') String? roleName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoleModel() when $default != null:
        return $default(_that.roleId, _that.roleName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RoleModel implements RoleModel {
  const _RoleModel(
      {@HiveField(0) @JsonKey(name: 'id') this.roleId,
      @HiveField(1) @JsonKey(name: 'name') this.roleName});
  factory _RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int? roleId;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  final String? roleName;

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RoleModelCopyWith<_RoleModel> get copyWith =>
      __$RoleModelCopyWithImpl<_RoleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RoleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoleModel &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roleId, roleName);

  @override
  String toString() {
    return 'RoleModel(roleId: $roleId, roleName: $roleName)';
  }
}

/// @nodoc
abstract mixin class _$RoleModelCopyWith<$Res>
    implements $RoleModelCopyWith<$Res> {
  factory _$RoleModelCopyWith(
          _RoleModel value, $Res Function(_RoleModel) _then) =
      __$RoleModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int? roleId,
      @HiveField(1) @JsonKey(name: 'name') String? roleName});
}

/// @nodoc
class __$RoleModelCopyWithImpl<$Res> implements _$RoleModelCopyWith<$Res> {
  __$RoleModelCopyWithImpl(this._self, this._then);

  final _RoleModel _self;
  final $Res Function(_RoleModel) _then;

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roleId = freezed,
    Object? roleName = freezed,
  }) {
    return _then(_RoleModel(
      roleId: freezed == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      roleName: freezed == roleName
          ? _self.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
