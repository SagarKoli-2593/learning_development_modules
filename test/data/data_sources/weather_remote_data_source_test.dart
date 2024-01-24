import 'package:custom_painter_sample/core/constants/contants.dart';
import 'package:custom_painter_sample/core/error/exception.dart';
import 'package:custom_painter_sample/data/data_sources/weather_remote_data_source.dart';
import 'package:custom_painter_sample/data/models/weather_model.dart';
import 'package:custom_painter_sample/data/repositories/weather_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockHttpClient mockHttpClient;
  late WeatherRemoteDataSourceImpl weatherRemoteDataSourceImpl;


  const testCityName = 'Mumbai';
  setUp(() {
    mockHttpClient = MockHttpClient();
    weatherRemoteDataSourceImpl =
        WeatherRemoteDataSourceImpl(client: mockHttpClient);

  });

  group('get current weather from api', () {
    test('should return weather model when the response code is 200', () async {
      when(mockHttpClient
              .get(Uri.parse(Urls.currentWeatherByName(testCityName))))
          .thenAnswer((realInvocation) async {
        return http.Response(
            readJson('helpers/dummy_data/dummy_weather_response.json'), 200);
      });

      final result =
          await weatherRemoteDataSourceImpl.getCurrentWeather(testCityName);

      expect(result, isA<WeatherModel>());
    });

    test('should return weather model when the response code is 404', () async {
      when(mockHttpClient
              .get(Uri.parse(Urls.currentWeatherByName(testCityName))))
          .thenAnswer((realInvocation) async {
        return http.Response('Not found', 404);
      });

      final result =
          await weatherRemoteDataSourceImpl.getCurrentWeather(testCityName);

      expect(result, throwsA(isA<ServerException>()));
    });
  });
}
