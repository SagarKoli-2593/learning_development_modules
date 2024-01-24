import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'blog_youtube_player_notifer.g.dart';

@riverpod
class IsLandingYoutubeVideoController
    extends _$IsLandingYoutubeVideoController {
  @override
  YoutubePlayerController build() {
    return YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=sOq53uFz64s")!, //ODLiJ2_CGXI
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }
}

@riverpod
Future<YoutubePlayerController> initateLandingVideo(ref) async {
  return await ref.read(isLandingYoutubeVideoControllerProvider);
}
