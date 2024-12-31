import 'package:application/booking/booking.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final Map<String, String> car;

  CarDetailScreen({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingScreen(car: car),
                  ),
                );
              },
              child: Image.asset(
                car['image']!,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              car['name']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              car['price']!,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              'Detailed information about ${car['name']} will go here.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
