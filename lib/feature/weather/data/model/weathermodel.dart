// import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
// class Weathermodel extends Weatherentites {
//   const Weathermodel({
//     required super.country,
//     required super.region,
//     required super.temp,
//     required super.wind,
//     required super.uv,
//     required super.humidity,
//   });

//   factory Weathermodel.fromJson(Map<String, dynamic> json) {
//     // Debug: Check the JSON parsing for each field
//     print("Parsing Weathermodel from JSON...");

//     return Weathermodel(
//       country: json['location']['country'] ?? "N/A",
//       region: json['location']['region'] ?? "N/A",
//       temp: json['current']['temp_c']?.toDouble() ?? 0.0,
//       wind: json['current']['wind_kph']?.toDouble() ?? 0.0,
//       uv: json['current']['uv']?.toDouble() ?? 0.0,
//       humidity: json['current']['humidity']?.toDouble() ?? 0.0,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       "country": country,
//       "region": region,
//       "temp": temp,
//       "wind": wind,
//       "uv": uv,
//       "humidity": humidity,
//     };
//   }
// }

