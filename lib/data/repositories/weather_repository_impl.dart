import 'dart:io';

import 'package:custom_painter_sample/core/error/exception.dart';
import 'package:custom_painter_sample/core/error/failure.dart';
import 'package:custom_painter_sample/data/data_sources/weather_remote_data_source.dart';
import 'package:custom_painter_sample/domain/entities/weather.dart';
import 'package:custom_painter_sample/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherRepositoryImpl({required this.weatherRemoteDataSource});

  @override
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(
      String cityName) async {
    try {
      final result = await weatherRemoteDataSource.getCurrentWeather(cityName);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure('An error has occurred'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
