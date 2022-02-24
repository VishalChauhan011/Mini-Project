import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void onLED() {
  http.get(
    Uri.parse('http://192.168.54.48/2/on'),
  );
}

void offLED() {
  http.get(
    Uri.parse('http://192.168.54.48/2/off'),
  );
}

void main() {
  runApp(const SmartHome());
}

class SmartHome extends StatelessWidget {
  const SmartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Smart Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ElevatedButton(
                onPressed: onLED,
                child: SizedBox(
                  height: 30,
                  width: 50,
                  child: Center(
                    child: Text(
                      'ON',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: offLED,
                child: SizedBox(
                  // decoration: const BoxDecoration(
                  //   border:
                  // ),
                  height: 30,
                  width: 50,
                  child: Center(
                    child: Text(
                      'OFF',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
