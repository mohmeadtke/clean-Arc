import 'package:clean_arc/core/errors/Failure.dart';
import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
import 'package:clean_arc/feature/weather/domain/repo/weatherRepo.dart';
import 'package:dartz/dartz.dart';

class Getallweatherdata {
  final Weatherrepo weatherrepo ;

  Getallweatherdata(this.weatherrepo);


  Future<Either<Failure,Weatherentites>>call() async{
    return await weatherrepo.getAllWeatherData() ;
  }

}