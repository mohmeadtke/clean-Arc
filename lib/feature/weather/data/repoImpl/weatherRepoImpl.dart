import 'package:clean_arc/core/errors/Exception.dart';
import 'package:clean_arc/core/errors/Failure.dart';
import 'package:clean_arc/core/network/network.dart';
import 'package:clean_arc/feature/weather/data/datasources/weatherRemoteData.dart';
import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
import 'package:clean_arc/feature/weather/domain/repo/weatherRepo.dart';
import 'package:dartz/dartz.dart';

class Weatherrepoimpl implements Weatherrepo{

  final WeatherRemoteData weatherRemoteData ;
  final NetworkInfo networkInfo ;

  Weatherrepoimpl({
    required this.weatherRemoteData,
     required this.networkInfo });


  @override
  Future<Either<Failure, List<Weatherentites>>> getAllWeatherData() async{

    if (await networkInfo.isConnected) {
        try {
          
        final remotData = weatherRemoteData.getAllWeatherData();

        return Right(remotData as List<Weatherentites>);
        } on ServerException {
          return Left(ServerFailure());
        }
      
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateWeatherData(String country, String region) {
    
    throw UnimplementedError();
  }
  
}