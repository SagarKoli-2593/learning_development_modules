import 'package:custom_painter_sample/blog/network/app_exception.dart';
import 'package:custom_painter_sample/blog/youtube_data_api_response.dart';
import 'package:dio/dio.dart';

class CallStatistics {
  final client = Dio();

  Future<YoutubeDataApiResponse> getYoutubeData() async {

    const url =
        'https://www.googleapis.com/youtube/v3/videos?id=sOq53uFz64s&key=AIzaSyAzgISeEKSZ4EOTWEcKmPMbZgsl6LlQR5c&part=statistics';

    try {

      final response = await client.get(url);

      if (response.data != null && response.statusCode == 200) {
        return YoutubeDataApiResponse.fromJson(response.data);
      } else {
        throw const ServerException(
          type: ServerExceptionType.notFound,
          message: 'getYoutubeData Data not found.',
        );
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return YoutubeDataApiResponse.fromJson(e.response?.data);
      }
      rethrow;
    } catch (error) {
      throw ServerException(
        type: ServerExceptionType.notFound,
        message: '$error',
      );
    }
  }
}
