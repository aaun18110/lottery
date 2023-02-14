// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'bg_image.dart';
import 'dart:math';

void main() {
  runApp(const LotterApp());
}

class LotterApp extends StatefulWidget {
  const LotterApp({super.key});

  @override
  State<LotterApp> createState() => _LotterAppState();
}

class _LotterAppState extends State<LotterApp> {
  int count = 0;
  Random random = Random();
  // void counter() {
  //   count++;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Lottery App",
            ),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          count == 4
              ? const BGImage()
              : const Icon(
                  Icons.face_retouching_off_sharp,
                  size: 100,
                  color: Colors.red,
                ),
          const Center(
            child: Text(
              "My Lottery Number is 4",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //All Widgets are use Ternary Operators (Condtion {ture} ? Statment : return{false}).
          Container(
            height: 200,
            width: count == 4 ? 300 : 280,
            decoration: BoxDecoration(
                color: count == 4
                    ? Colors.amberAccent[100]
                    : Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: count == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Congragulation You are win the Lotter",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Better Luck Next Time : $count\n try Again",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // counter();
            count = random.nextInt(6);
            print(count);
            setState(() {});
          },
          //Ternary Opreator(Condition ? Widget : Widget)
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
