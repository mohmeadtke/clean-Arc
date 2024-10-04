import 'dart:convert';
import 'package:clean_arc/core/errors/Exception.dart';
import 'package:clean_arc/feature/weather/data/model/weathermodel.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http ;

abstract class WeatherRemoteData {
  Future<List<Weathermodel>> getAllWeatherData() ;
  Future<Unit> updateWeatherData();
}

const url = 'http://api.weatherapi.com/v1/current.json?key=c14e6834322b4e8f9d372148242909&q=iraq&aqi=no';

class WeatherremotedataImpl implements WeatherRemoteData {
  final http.Client client ;

  WeatherremotedataImpl({required this.client});
  @override
  Future<List<Weathermodel>> getAllWeatherData()async {
    
    final response =await client.get(Uri.parse(url));
    if (response.statusCode ==200) {
 
   

      final List decodedJson = json.decode(response.body) as List;
      final List<Weathermodel> weathermodel = decodedJson.map<Weathermodel>((jsonWeathermodel) => Weathermodel.fromJson(jsonWeathermodel)).toList();

        return weathermodel;

      } else {
        throw ServerException();
      }
    
    
  }
  @override
  Future<Unit> updateWeatherData() {
  
    throw UnimplementedError();
  }
  
}