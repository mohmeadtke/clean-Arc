// import 'package:clean_arc/feature/weather/domain/entites/weatherentites.dart';
// import 'package:clean_arc/feature/weather/presentation/statemangment/bloc/weather_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class WeatherPage extends StatelessWidget {
//   const WeatherPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text("Weather App")),
//       ),
//       body: Column(
//         children: [
//           Center(child: Text("Data")),
//           // In the WeatherPage widget

//         BlocBuilder<WeatherBloc, WeatherState>(
//   builder: (context, state) {
//     if (state is LodingWetherState) {
//       return const CircularProgressIndicator();
//     } else if (state is LoadedWetherState) {
//       final data = state.weather;

//       // Debug: Check if data is properly loaded
//       print("Loaded Data in UI: $data");

//       return Expanded(
//         child: ListView.builder(
//           itemCount: data.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text("Temperature: ${data[index].temp.toString()}°C"),
//               subtitle: Text("${data[index].region}, ${data[index].country}"),
//             );
//           },
//         ),
//       );
//     } else {
//       // Debug: Print message if no data
//       print("No data available in UI state.");
//       return const Text("No data available");
//     }
//   },
// )

//         ],
//       ),
//     );
//   }
// }
