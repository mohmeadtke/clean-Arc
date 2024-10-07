import 'package:clean_arc/core/network/network.dart';
import 'package:clean_arc/feature/weather/data/datasources/weatherRemoteData.dart';
import 'package:clean_arc/feature/weather/data/repoImpl/weatherRepoImpl.dart';
import 'package:clean_arc/feature/weather/domain/repo/weatherRepo.dart';
import 'package:clean_arc/feature/weather/domain/usecase/getAllWeatherData.dart';
import 'package:clean_arc/feature/weather/presentation/statemangment/bloc/weather_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http ;

final sl = GetIt.instance ;

Future init()async{

//bloc

sl.registerFactory(()=>WeatherBloc(getallweatherdata: sl()));

//UseCases 

sl.registerLazySingleton(()=>Getallweatherdata(sl()));

//Repository
sl.registerLazySingleton<Weatherrepo>(()=>Weatherrepoimpl(weatherRemoteData: sl(), networkInfo: sl()));
//DataSources
sl.registerLazySingleton<WeatherRemoteData>(()=>WeatherremotedataImpl(client: sl()));

//Core

sl.registerLazySingleton<NetworkInfo>(()=>NetworkInfoImpl(sl()));

//External

  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());


}