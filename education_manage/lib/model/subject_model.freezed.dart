// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubjectModel {
  @JsonKey(name: 'id')
  int? get subjectId;
  @JsonKey(name: 'nameSubject')
  String? get nameSubject;
  @JsonKey(name: 'codeSubject')
  int? get codeSubject;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'activeSubject')
  bool? get activeSubject;

  /// Create a copy of SubjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubjectModelCopyWith<SubjectModel> get copyWith =>
      _$SubjectModelCopyWithImpl<SubjectModel>(
          this as SubjectModel, _$identity);

  /// Serializes this SubjectModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubjectModel &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.nameSubject, nameSubject) ||
                other.nameSubject == nameSubject) &&
            (identical(other.codeSubject, codeSubject) ||
                other.codeSubject == codeSubject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.activeSubject, activeSubject) ||
                other.activeSubject == activeSubject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subjectId, nameSubject,
      codeSubject, description, activeSubject);

  @override
  String toString() {
    return 'SubjectModel(subjectId: $subjectId, nameSubject: $nameSubject, codeSubject: $codeSubject, description: $description, activeSubject: $activeSubject)';
  }
}

/// @nodoc
abstract mixin class $SubjectModelCopyWith<$Res> {
  factory $SubjectModelCopyWith(
          SubjectModel value, $Res Function(SubjectModel) _then) =
      _$SubjectModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? subjectId,
      @JsonKey(name: 'nameSubject') String? nameSubject,
      @JsonKey(name: 'codeSubject') int? codeSubject,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'activeSubject') bool? activeSubject});
}

/// @nodoc
class _$SubjectModelCopyWithImpl<$Res> implements $SubjectModelCopyWith<$Res> {
  _$SubjectModelCopyWithImpl(this._self, this._then);

  final SubjectModel _self;
  final $Res Function(SubjectModel) _then;

  /// Create a copy of SubjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = freezed,
    Object? nameSubject = freezed,
    Object? codeSubject = freezed,
    Object? description = freezed,
    Object? activeSubject = freezed,
  }) {
    return _then(_self.copyWith(
      subjectId: freezed == subjectId
          ? _self.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      nameSubject: freezed == nameSubject
          ? _self.nameSubject
          : nameSubject // ignore: cast_nullable_to_non_nullable
              as String?,
      codeSubject: freezed == codeSubject
          ? _self.codeSubject
          : codeSubject // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSubject: freezed == activeSubject
          ? _self.activeSubject
          : activeSubject // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SubjectModel].
extension SubjectModelPatterns on SubjectModel {
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
    TResult Function(_SubjectModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubjectModel() when $default != null:
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
    TResult Function(_SubjectModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubjectModel():
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
    TResult? Function(_SubjectModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubjectModel() when $default != null:
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
            @JsonKey(name: 'id') int? subjectId,
            @JsonKey(name: 'nameSubject') String? nameSubject,
            @JsonKey(name: 'codeSubject') int? codeSubject,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'activeSubject') bool? activeSubject)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubjectModel() when $default != null:
        return $default(_that.subjectId, _that.nameSubject, _that.codeSubject,
            _that.description, _that.activeSubject);
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
            @JsonKey(name: 'id') int? subjectId,
            @JsonKey(name: 'nameSubject') String? nameSubject,
            @JsonKey(name: 'codeSubject') int? codeSubject,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'activeSubject') bool? activeSubject)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubjectModel():
        return $default(_that.subjectId, _that.nameSubject, _that.codeSubject,
            _that.description, _that.activeSubject);
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
            @JsonKey(name: 'id') int? subjectId,
            @JsonKey(name: 'nameSubject') String? nameSubject,
            @JsonKey(name: 'codeSubject') int? codeSubject,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'activeSubject') bool? activeSubject)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubjectModel() when $default != null:
        return $default(_that.subjectId, _that.nameSubject, _that.codeSubject,
            _that.description, _that.activeSubject);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SubjectModel implements SubjectModel {
  const _SubjectModel(
      {@JsonKey(name: 'id') this.subjectId,
      @JsonKey(name: 'nameSubject') this.nameSubject,
      @JsonKey(name: 'codeSubject') this.codeSubject,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'activeSubject') this.activeSubject});
  factory _SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? subjectId;
  @override
  @JsonKey(name: 'nameSubject')
  final String? nameSubject;
  @override
  @JsonKey(name: 'codeSubject')
  final int? codeSubject;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'activeSubject')
  final bool? activeSubject;

  /// Create a copy of SubjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubjectModelCopyWith<_SubjectModel> get copyWith =>
      __$SubjectModelCopyWithImpl<_SubjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubjectModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubjectModel &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.nameSubject, nameSubject) ||
                other.nameSubject == nameSubject) &&
            (identical(other.codeSubject, codeSubject) ||
                other.codeSubject == codeSubject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.activeSubject, activeSubject) ||
                other.activeSubject == activeSubject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subjectId, nameSubject,
      codeSubject, description, activeSubject);

  @override
  String toString() {
    return 'SubjectModel(subjectId: $subjectId, nameSubject: $nameSubject, codeSubject: $codeSubject, description: $description, activeSubject: $activeSubject)';
  }
}

/// @nodoc
abstract mixin class _$SubjectModelCopyWith<$Res>
    implements $SubjectModelCopyWith<$Res> {
  factory _$SubjectModelCopyWith(
          _SubjectModel value, $Res Function(_SubjectModel) _then) =
      __$SubjectModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? subjectId,
      @JsonKey(name: 'nameSubject') String? nameSubject,
      @JsonKey(name: 'codeSubject') int? codeSubject,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'activeSubject') bool? activeSubject});
}

/// @nodoc
class __$SubjectModelCopyWithImpl<$Res>
    implements _$SubjectModelCopyWith<$Res> {
  __$SubjectModelCopyWithImpl(this._self, this._then);

  final _SubjectModel _self;
  final $Res Function(_SubjectModel) _then;

  /// Create a copy of SubjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subjectId = freezed,
    Object? nameSubject = freezed,
    Object? codeSubject = freezed,
    Object? description = freezed,
    Object? activeSubject = freezed,
  }) {
    return _then(_SubjectModel(
      subjectId: freezed == subjectId
          ? _self.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      nameSubject: freezed == nameSubject
          ? _self.nameSubject
          : nameSubject // ignore: cast_nullable_to_non_nullable
              as String?,
      codeSubject: freezed == codeSubject
          ? _self.codeSubject
          : codeSubject // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSubject: freezed == activeSubject
          ? _self.activeSubject
          : activeSubject // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
