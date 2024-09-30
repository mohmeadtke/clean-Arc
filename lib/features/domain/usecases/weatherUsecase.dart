import 'package:clean_arc/features/domain/entities/weatherinfo_entities.dart';
import 'package:clean_arc/features/domain/repositories_domain/weatherRepositories.dart';

class WeatherUsecase {
  final WeatherRepositories weatherRepositories ;

  WeatherUsecase({required this.weatherRepositories});

  Future<Weatherinfo> call(String city){
    // return weatherRepositories.getCurrentweather(city);
  }
  
}