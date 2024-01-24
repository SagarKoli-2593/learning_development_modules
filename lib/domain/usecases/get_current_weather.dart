import 'package:dartz/dartz.dart';
import 'package:custom_painter_sample/core/error/failure.dart';
import 'package:custom_painter_sample/domain/entities/weather.dart';
import 'package:custom_painter_sample/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository);

  Future<Either<Failure, WeatherEntity>> execute(String cityName) {
    return weatherRepository.getCurrentWeather(cityName);
  }
}
