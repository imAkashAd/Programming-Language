import 'package:flutter/material.dart';
import 'services/weather_service.dart'; 

void main() {
  runApp(const WeatherApp()); 
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Center(
                child: FutureBuilder<Map<String, dynamic>>(
                  future: WeatherService.getWeather('Dhaka'),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } 
                    else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}'); 
                    }
                    else {
                      final weather = snapshot.data!;
                      final temp = weather['main']['temp'];
                      final description = weather['weather'][0]['description'];
                      
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Temperature: $temp°C', style: TextStyle(fontSize: 24)),
                          Text('Description: ${description.toString().capitalize()}', 
                               style: TextStyle(fontSize: 20)),
                        ],
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Extension for string capitalization
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}