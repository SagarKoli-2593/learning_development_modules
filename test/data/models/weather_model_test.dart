import 'dart:convert';

import 'package:custom_painter_sample/data/models/weather_model.dart';
import 'package:custom_painter_sample/domain/entities/weather.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/json_reader.dart';

void main() {
  const testWeatherModel = WeatherModel(
      cityName: 'Mumbai',
      main: 'Smoke',
      description: 'smoke',
      iconCode: '50d',
      temperature: 302.14,
      pressure: 1013,
      humidity: 28);

  test('should be subclass of Weather Entity', () {
    expect(testWeatherModel, isA<WeatherEntity>());
  });

  test('should return valid model from json', () async {
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/dummy_weather_response.json'));

    var result = WeatherModel.fromJson(jsonMap);

    expect(result, equals(testWeatherModel));
  });

  test(
    'should return a json map containing proper data',
    () async {
      // act
      final result = testWeatherModel.toJson();

      // assert
      final expectedJsonMap = {
        'weather': [
          {
            'main': 'Smoke',
            'description': 'smoke',
            'icon': '50d',
          }
        ],
        'main': {
          'temp': 302.14,
          'pressure': 1013,
          'humidity': 28,
        },
        'name': 'Mumbai',
      };

      expect(result, equals(expectedJsonMap));
    },
  );
}
