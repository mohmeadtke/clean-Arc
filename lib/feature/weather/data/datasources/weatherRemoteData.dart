// import 'dart:convert';
// import 'package:clean_arc/core/errors/Exception.dart';
// import 'package:clean_arc/feature/weather/data/model/weathermodel.dart';
// import 'package:dartz/dartz.dart';
// import 'package:http/http.dart' as http ;

// abstract class WeatherRemoteData {
//   Future<List<Weathermodel>> getAllWeatherData() ;
//   Future<Unit> updateWeatherData();
// }

// const url = 'http://api.weatherapi.com/v1/current.json?key=c14e6834322b4e8f9d372148242909&q=iraq&aqi=no';

// class WeatherremotedataImpl implements WeatherRemoteData {
//   final http.Client client;

//   WeatherremotedataImpl({required this.client});

//   @override
//   Future<List<Weathermodel>> getAllWeatherData() async {
//     try {
//       final response = await client.get(Uri.parse(url));

//       if (response.statusCode == 200) {
//         // Debug: Print the raw API response to check if data is coming
//         print("API Response: ${response.body}");

//         final decodedJson = json.decode(response.body);

//         // Debug: Check if the decoded JSON matches expected structure
//         print("Decoded JSON: $decodedJson");

//         // Ensure correct parsing for single weather object
//         final weathermodel = Weathermodel.fromJson(decodedJson);

//         return [weathermodel]; // Return list as expected
//       } else {
//         throw ServerException();
//       }
//     } catch (e) {
//       print("Error fetching data: $e");
//       throw ServerException();
//     }
//   }

//   @override
//   Future<Unit> updateWeatherData() {
//     throw UnimplementedError();
//   }
// }
