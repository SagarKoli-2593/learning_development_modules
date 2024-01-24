import 'package:custom_painter_sample/data/data_sources/weather_remote_data_source.dart';
import 'package:custom_painter_sample/data/repositories/weather_repository_impl.dart';
import 'package:custom_painter_sample/domain/repositories/weather_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'test_helper.mocks.dart';

@GenerateMocks([WeatherRepository, WeatherRemoteDataSource],
    customMocks: [MockSpec<http.Client>(as: #MockHttpClient)])
void main() {
  MockWeatherRemoteDataSource mockWeatherRemoteDataSource;
  WeatherRepositoryImpl weatherRemoteDataSourceImpl;

  setUp(() {
    mockWeatherRemoteDataSource = MockWeatherRemoteDataSource();
    weatherRemoteDataSourceImpl = WeatherRepositoryImpl(
        weatherRemoteDataSource: mockWeatherRemoteDataSource);
  });
}
