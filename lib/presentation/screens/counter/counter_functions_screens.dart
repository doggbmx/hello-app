import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter Functions',
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded),
            ),
          ],
        ),
        body: Center(
          child: Column(
            //cheeky
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
              child: const Icon(
                Icons.refresh_outlined,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
              child: const Icon(
                Icons.plus_one_sharp,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
              child: const Icon(
                Icons.exposure_minus_1,
              ),
            ),
          ],
        ));
  }
}
