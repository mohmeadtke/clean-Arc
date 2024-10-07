import 'package:clean_arc/feature/weather/presentation/statemangment/bloc/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Weatherpage extends StatelessWidget {
  const Weatherpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const  Center(child: Text("Weather App"),),
      ),
      body:   Column(
        children: [
          Center(child: Text("data"),),
          BlocBuilder(
            builder: (context, state) {
              
              if (state is LodingWetherState){
                return const CircularProgressIndicator(); 
              }
              else if(state is LoadedWetherState){
                final data = state.weather ;
                return Text("${data.temp.toString()}");
              }
              return const Text("null");
            }, ),
        ],
      ),


    );
  }
}