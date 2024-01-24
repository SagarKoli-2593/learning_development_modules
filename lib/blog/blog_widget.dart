import 'package:custom_painter_sample/blog/blog_footer_section.dart';
import 'package:custom_painter_sample/blog/blog_youtube_player_notifer.dart';
import 'package:custom_painter_sample/blog/colour_utils.dart';
import 'package:custom_painter_sample/blog/youtube_api_data_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BlogWidgets extends HookConsumerWidget {
  const BlogWidgets({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(initateLandingVideoProvider);

    controller.whenData((value) {
      ref.read(youtubeApiDataNotifierProvider);
    });

    return controller.when(
        data: (data) {
          return YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: data,
              bottomActions: const [],
            ),
            builder: (context, player) {
              return Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorUtils.blackBluish)),
                      child: player,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const BlogFooterSection()
                  ],
                ),
              );
            },
          );
        },
        error: (e, stack) {
          return const SizedBox.shrink();
        },
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
