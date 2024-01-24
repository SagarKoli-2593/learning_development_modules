import 'package:custom_painter_sample/blog/network/call_youtube_data_statistics.dart';
import 'package:custom_painter_sample/blog/youtube_data_api_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'youtube_api_data_notifier.g.dart';

@riverpod
class YoutubeApiDataNotifier extends _$YoutubeApiDataNotifier {
  @override
  FutureOr<YoutubeDataApiResponse?> build() async {
    try {
      CallStatistics callStatistics = CallStatistics();
      var response = await callStatistics.getYoutubeData();

      state = AsyncValue.data(response);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      rethrow;
    }
    return state.value;
    //return state;
  }
}
