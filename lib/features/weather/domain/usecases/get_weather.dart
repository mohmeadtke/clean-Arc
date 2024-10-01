import '../../../../core/usecases/usecase.dart';
import '../repositories/weather_repository.dart';
import '../entities/weather.dart';

class GetWeather implements UseCase<Weather, String> {
  final WeatherRepository repository;

  GetWeather(this.repository);

  @override
  Future<Weather> call(String city) async {
    return await repository.getWeather(city);
  }
}
