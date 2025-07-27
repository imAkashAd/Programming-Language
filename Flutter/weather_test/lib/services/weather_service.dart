import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String _apiKey = '5e0c2a958e5c6e5f35c7cc051c6197f3';
  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  static Future<Map<String, dynamic>> getWeather(String city) async {
    final response = await http.get(
      Uri.parse('$_baseUrl?q=$city&appid=$_apiKey&units=metric'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load weather: ${response.statusCode}');
    }
  }
}