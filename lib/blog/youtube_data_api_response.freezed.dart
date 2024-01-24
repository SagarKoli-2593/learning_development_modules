// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_data_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeDataApiResponse _$YoutubeDataApiResponseFromJson(
    Map<String, dynamic> json) {
  return _YoutubeDataApiResponse.fromJson(json);
}

/// @nodoc
mixin _$YoutubeDataApiResponse {
  String? get kind => throw _privateConstructorUsedError;
  List<Items>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeDataApiResponseCopyWith<YoutubeDataApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeDataApiResponseCopyWith<$Res> {
  factory $YoutubeDataApiResponseCopyWith(YoutubeDataApiResponse value,
          $Res Function(YoutubeDataApiResponse) then) =
      _$YoutubeDataApiResponseCopyWithImpl<$Res, YoutubeDataApiResponse>;
  @useResult
  $Res call({String? kind, List<Items>? items});
}

/// @nodoc
class _$YoutubeDataApiResponseCopyWithImpl<$Res,
        $Val extends YoutubeDataApiResponse>
    implements $YoutubeDataApiResponseCopyWith<$Res> {
  _$YoutubeDataApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeDataApiResponseCopyWith<$Res>
    implements $YoutubeDataApiResponseCopyWith<$Res> {
  factory _$$_YoutubeDataApiResponseCopyWith(_$_YoutubeDataApiResponse value,
          $Res Function(_$_YoutubeDataApiResponse) then) =
      __$$_YoutubeDataApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? kind, List<Items>? items});
}

/// @nodoc
class __$$_YoutubeDataApiResponseCopyWithImpl<$Res>
    extends _$YoutubeDataApiResponseCopyWithImpl<$Res,
        _$_YoutubeDataApiResponse>
    implements _$$_YoutubeDataApiResponseCopyWith<$Res> {
  __$$_YoutubeDataApiResponseCopyWithImpl(_$_YoutubeDataApiResponse _value,
      $Res Function(_$_YoutubeDataApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_YoutubeDataApiResponse(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeDataApiResponse implements _YoutubeDataApiResponse {
  const _$_YoutubeDataApiResponse({this.kind, final List<Items>? items})
      : _items = items;

  factory _$_YoutubeDataApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeDataApiResponseFromJson(json);

  @override
  final String? kind;
  final List<Items>? _items;
  @override
  List<Items>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'YoutubeDataApiResponse(kind: $kind, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeDataApiResponse &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kind, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeDataApiResponseCopyWith<_$_YoutubeDataApiResponse> get copyWith =>
      __$$_YoutubeDataApiResponseCopyWithImpl<_$_YoutubeDataApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeDataApiResponseToJson(
      this,
    );
  }
}

abstract class _YoutubeDataApiResponse implements YoutubeDataApiResponse {
  const factory _YoutubeDataApiResponse(
      {final String? kind,
      final List<Items>? items}) = _$_YoutubeDataApiResponse;

  factory _YoutubeDataApiResponse.fromJson(Map<String, dynamic> json) =
      _$_YoutubeDataApiResponse.fromJson;

  @override
  String? get kind;
  @override
  List<Items>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeDataApiResponseCopyWith<_$_YoutubeDataApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  Statistics? get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call({Statistics? statistics});

  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $StatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$_ItemsCopyWith(_$_Items value, $Res Function(_$_Items) then) =
      __$$_ItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Statistics? statistics});

  @override
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res, _$_Items>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statistics = freezed,
  }) {
    return _then(_$_Items(
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Items implements _Items {
  const _$_Items({this.statistics});

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  final Statistics? statistics;

  @override
  String toString() {
    return 'Items(statistics: $statistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statistics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      __$$_ItemsCopyWithImpl<_$_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items({final Statistics? statistics}) = _$_Items;

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  Statistics? get statistics;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  String? get viewCount => throw _privateConstructorUsedError;
  String? get likeCount => throw _privateConstructorUsedError;
  String? get favoriteCount => throw _privateConstructorUsedError;
  String? get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call(
      {String? viewCount,
      String? likeCount,
      String? favoriteCount,
      String? commentCount});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
    Object? favoriteCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_value.copyWith(
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteCount: freezed == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatisticsCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$_StatisticsCopyWith(
          _$_Statistics value, $Res Function(_$_Statistics) then) =
      __$$_StatisticsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? viewCount,
      String? likeCount,
      String? favoriteCount,
      String? commentCount});
}

/// @nodoc
class __$$_StatisticsCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$_Statistics>
    implements _$$_StatisticsCopyWith<$Res> {
  __$$_StatisticsCopyWithImpl(
      _$_Statistics _value, $Res Function(_$_Statistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
    Object? favoriteCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_$_Statistics(
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteCount: freezed == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Statistics implements _Statistics {
  const _$_Statistics(
      {this.viewCount, this.likeCount, this.favoriteCount, this.commentCount});

  factory _$_Statistics.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsFromJson(json);

  @override
  final String? viewCount;
  @override
  final String? likeCount;
  @override
  final String? favoriteCount;
  @override
  final String? commentCount;

  @override
  String toString() {
    return 'Statistics(viewCount: $viewCount, likeCount: $likeCount, favoriteCount: $favoriteCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Statistics &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, viewCount, likeCount, favoriteCount, commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      __$$_StatisticsCopyWithImpl<_$_Statistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {final String? viewCount,
      final String? likeCount,
      final String? favoriteCount,
      final String? commentCount}) = _$_Statistics;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$_Statistics.fromJson;

  @override
  String? get viewCount;
  @override
  String? get likeCount;
  @override
  String? get favoriteCount;
  @override
  String? get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}
