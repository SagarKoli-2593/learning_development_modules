import 'package:custom_painter_sample/blog/utils.dart';
import 'package:custom_painter_sample/blog/youtube_api_data_notifier.dart';
import 'package:custom_painter_sample/blog/youtube_data_api_response.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BlogFooterSection extends HookConsumerWidget {
  const BlogFooterSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final responseYoutube = ref.watch(youtubeApiDataNotifierProvider);

    return responseYoutube.when(
      data: (YoutubeDataApiResponse? data) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text("Views : "),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(YoutubeUtils.formatToIndianHumanReadable(
                      num.parse(data?.items?[0].statistics?.viewCount ?? '0')))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  const Text("Likes : "),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(YoutubeUtils.formatToIndianHumanReadable(
                      num.parse(data?.items?[0].statistics?.likeCount ?? '0')))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  const Text("Comments : "),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(YoutubeUtils.formatToIndianHumanReadable(
                      num.parse(data?.items?[0].statistics?.commentCount ?? '0')))
                ],
              )
            ],
          ),
        );
      },
      error: (Object error, StackTrace stackTrace) {
        return const SizedBox.shrink();
      },
      loading: () {
        return const CircularProgressIndicator();
      },
    );
  }
}
