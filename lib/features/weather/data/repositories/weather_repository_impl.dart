import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weather_remote_data_source.dart';
import '../models/weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Weather> getWeather(String city) async {
    final weatherModel = await remoteDataSource.getWeather();
    return Weather(description: weatherModel.description, temperature: weatherModel.temperature);
  }
}
