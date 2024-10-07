import 'package:equatable/equatable.dart';

class Weatherentites extends Equatable{
  final String country ;
  final String region ;
  final double temp ;
  final double wind ;
  final double uv ;
  final double humidity;

  const Weatherentites({
    required this.country,
     required this.region,
      required this.temp,
       required this.wind,
        required this.uv,
         required this.humidity
         });
         
  @override

  List<Object?> get props => [country,region,temp,wind,uv,humidity];

}