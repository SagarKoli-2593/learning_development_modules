import 'package:custom_painter_sample/domain/entities/weather.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_painter_sample/domain/usecases/get_current_weather.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetCurrentWeatherUseCase getCurrentWeatherUseCase;
  late MockWeatherRepository mockWeatherRepository;

  const testWeatherDetail = WeatherEntity(
      cityName: 'Mumbai',
      main: 'Clouds',
      description: 'Smokey',
      iconCode: '0i1',
      temperature: 302.44,
      pressure: 1009,
      humidity: 45);

  const testCityName = 'Mumbai';

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    getCurrentWeatherUseCase = GetCurrentWeatherUseCase(mockWeatherRepository);
  });

  test(
    'should get current weather repository from the repo',
    () async {
      when(mockWeatherRepository.getCurrentWeather(testCityName))
          .thenAnswer((realInvocation) async => const Right(testWeatherDetail));

      final result = await getCurrentWeatherUseCase.execute(testCityName);

      expect(result, const Right(testWeatherDetail));
    },
  );
}
