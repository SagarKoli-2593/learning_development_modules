import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_data_api_response.freezed.dart';
part 'youtube_data_api_response.g.dart';

@Freezed(toJson: true)
class YoutubeDataApiResponse with _$YoutubeDataApiResponse {
  const factory YoutubeDataApiResponse({String? kind, List<Items>? items}) =
      _YoutubeDataApiResponse;

  factory YoutubeDataApiResponse.fromJson(Map<String, dynamic> json) =>
      _$YoutubeDataApiResponseFromJson(json);
}

@Freezed(toJson: true)
class Items with _$Items {
  const factory Items({Statistics? statistics}) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@Freezed(toJson: true)
class Statistics with _$Statistics {
  const factory Statistics(
      {String? viewCount,
        String? likeCount,
        String? favoriteCount,
        String? commentCount}) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);
}
