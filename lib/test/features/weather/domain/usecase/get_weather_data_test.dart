import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
import 'package:clean_arc/feature/weather/domain/usecase/getAllWeatherData.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import '../../../../../feature/weather/domain/repo/weatherRepo.dart';
import 'package:flutter_test/flutter_test.dart';


class MockWeatherrepo extends Mock implements Weatherrepo{}

void main (){
 late Getallweatherdata usecase ;
 late MockWeatherrepo mockWeatherrepo ;

setUp((){

mockWeatherrepo =MockWeatherrepo();
usecase = Getallweatherdata(mockWeatherrepo);

});

const  weatherEntites =  Weatherentites (
  country: "country",
   region: "region",
    temp: 2.5,
     wind: 2.5,
      uv: 2.5,
       humidity: 2.5);

test(
  'is all the usecase get the data',
  ()async {
  //arrange
  when(mockWeatherrepo.getAllWeatherData())
  .thenAnswer((_) async => const Right(weatherEntites));
  //act
  final result =await usecase();
  //assert
  expect(result, const Right(weatherEntites));
  verify(mockWeatherrepo.getAllWeatherData());
  verifyNoMoreInteractions(mockWeatherrepo);

  },
);

}