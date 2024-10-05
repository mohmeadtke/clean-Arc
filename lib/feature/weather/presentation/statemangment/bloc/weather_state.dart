part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();
  
  @override
  List<Object> get props => [];
}

 class WeatherInitial extends WeatherState {}

 class LodingWetherState extends WeatherState {}

 class LoadedWetherState extends WeatherState{
  final List<Weatherentites> weather ;

  LoadedWetherState({required this.weather});

   @override
  List<Object> get props => [weather];
 }

 class ErrorWeatherState extends WeatherState{
  final String message ;
  

  ErrorWeatherState({required this.message});

    @override
  List<Object> get props => [message];

 }