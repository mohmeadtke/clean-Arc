import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/weather/presentation/bloc/weather_bloc.dart';
import 'features/weather/presentation/screens/weather_screen.dart';
import 'injection_container.dart' as di;

void main() {
  di.init();
  runApp(MyApp());
}
//just pain 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: BlocProvider(
        create: (context) => di.sl<WeatherBloc>(),
        child: WeatherScreen(),
      ),
    );
  }
}
