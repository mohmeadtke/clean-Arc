import 'package:clean_arc/feature/weather/presentation/statemangment/bloc/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arc/injection.dart' as di;
import 'feature/weather/presentation/pages/weatherPage.dart';


void main() {
  runApp(MyApp());
}
//no pain for today , i will start this project and finsh it in 24 hr 
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>di.sl<WeatherBloc>()..add(GetWeatherEvent()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "weatherapp",
        home: Weatherpage(),
      ),);
    
  }
}
