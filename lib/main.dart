import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:provider_project/number_state.dart";
import "package:provider_project/screen_1.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NumberState()),
        ],
        child: const SafeArea(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Screen1(),
          ),
        ));
  }
}
