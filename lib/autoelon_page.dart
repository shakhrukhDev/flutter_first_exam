import 'package:flutter/material.dart';

import 'car.dart';

class AutoElonPage extends StatelessWidget {
  const AutoElonPage({Key? key}) : super(key: key);

  static List<Car> carList = [
    Car("Tahoe", "black", 100000, 220, "assets/tahoe.jpg"),
    Car("Urus", "green", 320000, 240, "assets/urus.jpeg"),
    Car("Ferrari", "red", 450000, 300, "assets/ferrari.jpeg"),
    Car("Toyota", "blue", 70000, 200, "assets/toyota.jpg"),
    Car("Audi", "black", 250000, 220, "assets/audi.jpg"),
    Car("BMW", "grey", 200000, 260, "assets/bmw.jpg"),
    Car("Genesis", "black", 500000, 220, "assets/genesis.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Autoelon")),
      body: ListView(
        children: [
          cars(carList[0]),
          cars(carList[1]),
          cars(carList[2]),
          cars(carList[3]),
          cars(carList[4]),
          cars(carList[5]),
          cars(carList[6]),
        ],
      ),
    );
  }

  Widget cars(Car car) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          // elevation: 48,
          width: 200,
          height: 120,
          child: Image.asset(car.carUrl),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Model: ${car.model}",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Color: ${car.color}",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Cost: ${car.cost}",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "MaxSpeed: ${car.maxSpeed}",
              style: TextStyle(fontSize: 16),
            ),
          ],
        )
      ],
    );
  }
}
