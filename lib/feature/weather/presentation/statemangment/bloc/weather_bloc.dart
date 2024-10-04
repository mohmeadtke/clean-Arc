import 'package:bloc/bloc.dart';
import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
import 'package:equatable/equatable.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) {



    });
  }
}
