// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pixabay_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PixaBayResponse _$PixaBayResponseFromJson(Map<String, dynamic> json) {
  return _PixaBayResponse.fromJson(json);
}

/// @nodoc
mixin _$PixaBayResponse {
  int get total => throw _privateConstructorUsedError;
  int get totalHits => throw _privateConstructorUsedError;
  List<PixaBayImage> get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixaBayResponseCopyWith<PixaBayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixaBayResponseCopyWith<$Res> {
  factory $PixaBayResponseCopyWith(
          PixaBayResponse value, $Res Function(PixaBayResponse) then) =
      _$PixaBayResponseCopyWithImpl<$Res, PixaBayResponse>;
  @useResult
  $Res call({int total, int totalHits, List<PixaBayImage> hits});
}

/// @nodoc
class _$PixaBayResponseCopyWithImpl<$Res, $Val extends PixaBayResponse>
    implements $PixaBayResponseCopyWith<$Res> {
  _$PixaBayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalHits = null,
    Object? hits = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: null == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<PixaBayImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PixaBayResponseImplCopyWith<$Res>
    implements $PixaBayResponseCopyWith<$Res> {
  factory _$$PixaBayResponseImplCopyWith(_$PixaBayResponseImpl value,
          $Res Function(_$PixaBayResponseImpl) then) =
      __$$PixaBayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int totalHits, List<PixaBayImage> hits});
}

/// @nodoc
class __$$PixaBayResponseImplCopyWithImpl<$Res>
    extends _$PixaBayResponseCopyWithImpl<$Res, _$PixaBayResponseImpl>
    implements _$$PixaBayResponseImplCopyWith<$Res> {
  __$$PixaBayResponseImplCopyWithImpl(
      _$PixaBayResponseImpl _value, $Res Function(_$PixaBayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalHits = null,
    Object? hits = null,
  }) {
    return _then(_$PixaBayResponseImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: null == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      hits: null == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<PixaBayImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PixaBayResponseImpl implements _PixaBayResponse {
  const _$PixaBayResponseImpl(
      {required this.total,
      required this.totalHits,
      required final List<PixaBayImage> hits})
      : _hits = hits;

  factory _$PixaBayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixaBayResponseImplFromJson(json);

  @override
  final int total;
  @override
  final int totalHits;
  final List<PixaBayImage> _hits;
  @override
  List<PixaBayImage> get hits {
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hits);
  }

  @override
  String toString() {
    return 'PixaBayResponse(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixaBayResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalHits,
      const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PixaBayResponseImplCopyWith<_$PixaBayResponseImpl> get copyWith =>
      __$$PixaBayResponseImplCopyWithImpl<_$PixaBayResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PixaBayResponseImplToJson(
      this,
    );
  }
}

abstract class _PixaBayResponse implements PixaBayResponse {
  const factory _PixaBayResponse(
      {required final int total,
      required final int totalHits,
      required final List<PixaBayImage> hits}) = _$PixaBayResponseImpl;

  factory _PixaBayResponse.fromJson(Map<String, dynamic> json) =
      _$PixaBayResponseImpl.fromJson;

  @override
  int get total;
  @override
  int get totalHits;
  @override
  List<PixaBayImage> get hits;
  @override
  @JsonKey(ignore: true)
  _$$PixaBayResponseImplCopyWith<_$PixaBayResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
