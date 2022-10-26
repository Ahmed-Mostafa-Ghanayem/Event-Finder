import 'package:flutter/material.dart';
import 'package:test_flutter/event_large_cell.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
        body: SafeArea(
          child: EventLargeCell(),
        ),
      ),
    ),
  );
}
