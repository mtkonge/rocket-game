import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double posX = 0;
  double posY = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: posX,
              top: posY,
              child: Container(
                color: Colors.black,
                width: 50,
                height: 50,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => setState(() {
                            posX -= 5;
                          }),
                      child: const Text("left")),
                  ElevatedButton(
                      onPressed: () => setState(() {
                            posY -= 5;
                          }),
                      child: const Text("up")),
                  ElevatedButton(
                      onPressed: () => setState(() {
                            posY += 5;
                          }),
                      child: const Text("down")),
                  ElevatedButton(
                      onPressed: () => setState(() {
                            posX += 5;
                          }),
                      child: const Text("right")),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
