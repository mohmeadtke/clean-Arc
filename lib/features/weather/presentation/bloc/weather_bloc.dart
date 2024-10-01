import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_weather.dart';

class WeatherEvent {}

class FetchWeatherEvent extends WeatherEvent {
  final String city;

  FetchWeatherEvent(this.city);
}

class WeatherState {
  final String? description;
  final double? temperature;
  final String? error;

  WeatherState({this.description, this.temperature, this.error});
}

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeather getWeather;

  WeatherBloc(this.getWeather) : super(WeatherState());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is FetchWeatherEvent) {
      yield WeatherState(); // Loading state
      try {
        final weather = await getWeather(event.city);
        yield WeatherState(description: weather.description, temperature: weather.temperature);
      } catch (e) {
        yield WeatherState(error: "Could not fetch weather data");
      }
    }
  }
}
