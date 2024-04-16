// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pixabay_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PixaBayImage _$PixaBayImageFromJson(Map<String, dynamic> json) {
  return _PixaBayImage.fromJson(json);
}

/// @nodoc
mixin _$PixaBayImage {
  int get id => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  String get largeImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixaBayImageCopyWith<PixaBayImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixaBayImageCopyWith<$Res> {
  factory $PixaBayImageCopyWith(
          PixaBayImage value, $Res Function(PixaBayImage) then) =
      _$PixaBayImageCopyWithImpl<$Res, PixaBayImage>;
  @useResult
  $Res call({int id, int views, int likes, String largeImageURL});
}

/// @nodoc
class _$PixaBayImageCopyWithImpl<$Res, $Val extends PixaBayImage>
    implements $PixaBayImageCopyWith<$Res> {
  _$PixaBayImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? views = null,
    Object? likes = null,
    Object? largeImageURL = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      largeImageURL: null == largeImageURL
          ? _value.largeImageURL
          : largeImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PixaBayImageImplCopyWith<$Res>
    implements $PixaBayImageCopyWith<$Res> {
  factory _$$PixaBayImageImplCopyWith(
          _$PixaBayImageImpl value, $Res Function(_$PixaBayImageImpl) then) =
      __$$PixaBayImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int views, int likes, String largeImageURL});
}

/// @nodoc
class __$$PixaBayImageImplCopyWithImpl<$Res>
    extends _$PixaBayImageCopyWithImpl<$Res, _$PixaBayImageImpl>
    implements _$$PixaBayImageImplCopyWith<$Res> {
  __$$PixaBayImageImplCopyWithImpl(
      _$PixaBayImageImpl _value, $Res Function(_$PixaBayImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? views = null,
    Object? likes = null,
    Object? largeImageURL = null,
  }) {
    return _then(_$PixaBayImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      largeImageURL: null == largeImageURL
          ? _value.largeImageURL
          : largeImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PixaBayImageImpl implements _PixaBayImage {
  const _$PixaBayImageImpl(
      {required this.id,
      required this.views,
      required this.likes,
      required this.largeImageURL});

  factory _$PixaBayImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PixaBayImageImplFromJson(json);

  @override
  final int id;
  @override
  final int views;
  @override
  final int likes;
  @override
  final String largeImageURL;

  @override
  String toString() {
    return 'PixaBayImage(id: $id, views: $views, likes: $likes, largeImageURL: $largeImageURL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PixaBayImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.largeImageURL, largeImageURL) ||
                other.largeImageURL == largeImageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, views, likes, largeImageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PixaBayImageImplCopyWith<_$PixaBayImageImpl> get copyWith =>
      __$$PixaBayImageImplCopyWithImpl<_$PixaBayImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PixaBayImageImplToJson(
      this,
    );
  }
}

abstract class _PixaBayImage implements PixaBayImage {
  const factory _PixaBayImage(
      {required final int id,
      required final int views,
      required final int likes,
      required final String largeImageURL}) = _$PixaBayImageImpl;

  factory _PixaBayImage.fromJson(Map<String, dynamic> json) =
      _$PixaBayImageImpl.fromJson;

  @override
  int get id;
  @override
  int get views;
  @override
  int get likes;
  @override
  String get largeImageURL;
  @override
  @JsonKey(ignore: true)
  _$$PixaBayImageImplCopyWith<_$PixaBayImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
