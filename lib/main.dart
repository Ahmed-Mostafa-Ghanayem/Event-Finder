import 'package:flutter/material.dart';
import 'package:test_flutter/features/events_home/presentation/screens/events_home.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: EventsHome(),
    ),
  );
}
