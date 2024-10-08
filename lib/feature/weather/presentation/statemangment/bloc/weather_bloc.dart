// import 'package:bloc/bloc.dart';
// import 'package:clean_arc/core/errors/Exception.dart';
// import 'package:clean_arc/core/errors/Failure.dart';
// import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
// import 'package:clean_arc/feature/weather/domain/usecase/getAllWeatherData.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// part 'weather_event.dart';
// part 'weather_state.dart';

// class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

//   final Getallweatherdata getallweatherdata ;

//   WeatherBloc({required this.getallweatherdata}) : super(WeatherInitial()) {
//     on<WeatherEvent>((event, emit) async{

//       if (event is GetWeatherEvent || event is RefrieshWeatherEvent) {
//         emit(LodingWetherState());

//         try {
//         final failuerOrWeather = await  getallweatherdata();
//         emit(_mapFailuerOrWeatherToState(failuerOrWeather));
//         } catch (e) {
//           throw e;
//         }
        
//       } else if(event is UpdateWeatherEvet) {
//         emit(LodingWetherState());

//       }

//     });
//   }

//   WeatherState _mapFailuerOrWeatherToState(Either<Failure, List<Weatherentites>> either) {

//     return either.fold(
//       (failure)=> const ErrorWeatherState(message: " data dont work check the issue") ,
//        (wether)=> LoadedWetherState(weather: wether)  ) ;

//   }
// }
