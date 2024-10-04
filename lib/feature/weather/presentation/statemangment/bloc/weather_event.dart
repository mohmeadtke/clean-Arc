part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetWeatherEvent extends WeatherEvent{}

class UpdateWeatherEvet extends WeatherEvent{
  final Weatherentites weatherentites ;

  UpdateWeatherEvet({required this.weatherentites});

  @override
  List<Object> get props => [weatherentites];
}

class RefrieshWeatherEvent extends WeatherEvent{}
