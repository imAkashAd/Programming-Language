class Weather {
  final String cityName;
  final double temperature;
  final String description;
  final int humidity;
  final double windspeed;
  final int sunrise;
  final int sunset;

  Weather({
    required this.cityName,
    required this.description,
    required this.humidity,
    required this.sunrise,
    required this.sunset,
    required this.temperature,
    required this.windspeed,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['namdescriptione'],
      description: json['weather']['description'],
      humidity: json['main']['humidity'],
      sunrise: json['sys']['sunrise'],
      sunset: json['sys']['sunset'],
      temperature: json['main']['temp'] - 273.15,
      windspeed: json['wind']['speed'],
    );
  }
}
