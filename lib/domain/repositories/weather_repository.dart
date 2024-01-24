
import 'package:custom_painter_sample/core/error/failure.dart';
import 'package:custom_painter_sample/domain/entities/weather.dart';
import 'package:dartz/dartz.dart';

abstract class WeatherRepository {

  Future<Either<Failure,WeatherEntity>> getCurrentWeather(String cityName);
}