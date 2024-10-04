import 'package:clean_arc/core/errors/Failure.dart';
import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
import 'package:dartz/dartz.dart';

abstract class Weatherrepo {
Future<Either<Failure,List<Weatherentites>>> getAllWeatherData() ;
Future<Either<Failure,Unit>> updateWeatherData(String country,String region);
}