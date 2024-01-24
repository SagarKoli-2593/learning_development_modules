import 'package:custom_painter_sample/data/models/weather_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_current_weather_notifier.g.dart';

@riverpod
class GetWeatherByNameApiNotifier extends _$GetWeatherByNameApiNotifier {
  @override
  FutureOr<WeatherModel?> build() {

    return null;
  }
}
