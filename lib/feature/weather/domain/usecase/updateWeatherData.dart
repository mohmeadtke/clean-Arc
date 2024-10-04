import 'package:clean_arc/core/errors/Failure.dart';
import 'package:clean_arc/feature/weather/domain/repo/weatherRepo.dart';
import 'package:dartz/dartz.dart';

class Updateweatherdata {
  final Weatherrepo weatherrepo ;

  Updateweatherdata({required this.weatherrepo});
  
  Future<Either<Failure,Unit>> call(String country,String region)async{
    return await weatherrepo.updateWeatherData(country, region);
  }
}