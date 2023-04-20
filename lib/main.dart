import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user/screens/home/provider/random_provider.dart';
import 'package:random_user/screens/home/view/random_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => RandomProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => RandomView(),
        },
      ),
    ),
  );
}
