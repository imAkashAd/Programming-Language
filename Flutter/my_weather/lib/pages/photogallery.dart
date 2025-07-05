import 'package:flutter/material.dart';

class Photogallery extends StatelessWidget {
  const Photogallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My photos'),),
      body: Column(
        children: [
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8KQK1OJRFQSZlIObdppmvdJLb91MjRFBI-Q&s')
        ],
      ),
    );
  }
}