import 'package:clean_arc/core/errors/Failure.dart';
import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
import 'package:clean_arc/feature/weather/domain/repo/weatherRepo.dart';
import 'package:dartz/dartz.dart';

class Getallweatherdata {
  final Weatherrepo weatherrepo ;

  Getallweatherdata({required this.weatherrepo});


  Future<Either<Failure,List<Weatherentites>>>call() async{
    return await weatherrepo.getAllWeatherData() ;
  }

}