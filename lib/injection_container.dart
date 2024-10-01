import 'package:get_it/get_it.dart';
import 'features/weather/data/datasources/weather_remote_data_source.dart';
import 'features/weather/data/repositories/weather_repository_impl.dart';
import 'features/weather/domain/repositories/weather_repository.dart';
import 'features/weather/domain/usecases/get_weather.dart';
import 'features/weather/presentation/bloc/weather_bloc.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

void init() {
  // Data sources
  sl.registerLazySingleton<WeatherRemoteDataSource>(() => WeatherRemoteDataSourceImpl(client: sl()));

  // Repositories
  sl.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl(remoteDataSource: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetWeather(sl()));

  // BLoC
  sl.registerFactory(() => WeatherBloc(sl()));

  // External
  sl.registerLazySingleton(() => http.Client());
}
