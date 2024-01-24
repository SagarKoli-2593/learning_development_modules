// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_data_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeDataApiResponse _$$_YoutubeDataApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$_YoutubeDataApiResponse(
      kind: json['kind'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_YoutubeDataApiResponseToJson(
        _$_YoutubeDataApiResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'items': instance.items,
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'statistics': instance.statistics,
    };

_$_Statistics _$$_StatisticsFromJson(Map<String, dynamic> json) =>
    _$_Statistics(
      viewCount: json['viewCount'] as String?,
      likeCount: json['likeCount'] as String?,
      favoriteCount: json['favoriteCount'] as String?,
      commentCount: json['commentCount'] as String?,
    );

Map<String, dynamic> _$$_StatisticsToJson(_$_Statistics instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
      'likeCount': instance.likeCount,
      'favoriteCount': instance.favoriteCount,
      'commentCount': instance.commentCount,
    };
