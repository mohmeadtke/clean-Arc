import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
class Weathermodel extends Weatherentites{
  Weathermodel({
    required super.country,
     required super.region,
      required super.temp,
       required super.wind,
        required super.uv,
         required super.humidity
         }) ;
    factory  Weathermodel.fromJson(Map<String,dynamic> json){
        return Weathermodel(
        country: json['country'],
         region: json['region'],
          temp: json['temp'],
           wind: json['wind'],
            uv: json['uv'],
             humidity: json['humidity']
             );
    }
    Map<String,dynamic> toJson(){
        return {
            "country":country,
            "region":region ,
            "temp":temp ,
            "wind":wind ,
            "uv":uv ,
            "humidity":humidity ,
            };
    }
}