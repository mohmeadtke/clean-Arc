import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/weather_bloc.dart';

class WeatherScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather App')),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(hintText: 'Enter city'),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<WeatherBloc>(context).add(FetchWeatherEvent(controller.text));
            },
            child: Text('Get Weather'),
          ),
          BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state.error != null) {
                return Text(state.error!);
              }
              if (state.description != null && state.temperature != null) {
                return Text('Weather: ${state.description}, Temperature: ${state.temperature}°C');
              }
              return Container(); // Empty state
            },
          ),
        ],
      ),
    );
  }
}
