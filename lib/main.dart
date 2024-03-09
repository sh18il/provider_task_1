import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taska/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Change(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<Change>(builder: (context, provider, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(provider.value.text),
              ),
              TextField(
                controller: provider.value,
                onChanged: (newValue) {
                  provider.valuePass(newValue);
                },
              )
            ],
          );
        }),
      ),
    );
  }
}
