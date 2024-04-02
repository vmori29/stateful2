import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double tamanho = 300;

  var red = 0;
  var green = 0;
  var blue = 0;
  double rvalue = 0;
  double gvalue = 0;
  double bvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if (tamanho <= 50) {
                  } else {
                    tamanho -= 50;
                  }
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  tamanho = 50;
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  tamanho = 300;
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  tamanho = 500;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if (tamanho >= 500) {
                  } else {
                    tamanho += 50;
                  }
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: tamanho,
                  color: Color.fromRGBO(red, green, blue, 1.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: rvalue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          red = value.toInt();
                          rvalue = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    red.toString(),
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: gvalue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          green = value.toInt();
                          gvalue = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    green.toString(),
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: bvalue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          blue = value.toInt();
                          bvalue = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    blue.toString(),
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
