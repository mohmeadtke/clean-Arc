import 'package:clean_arc/features/domain/entities/weatherinfo_entities.dart';

abstract class WeatherRepositories {
Future<Weatherinfo> getthedta(String city) ;
}