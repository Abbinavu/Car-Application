import 'package:application/payment/payment.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  final Map<String, String> car;

  BookingScreen({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book ${car['name']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Booking Details for ${car['name']}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset(
                car['image']!,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                car['price']!,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                'Enter your details to book ${car['name']}',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Customer name
              TextField(
                decoration: InputDecoration(
                  labelText: 'Customer Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              // Address
              TextField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              // Phone Number
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              // District
              TextField(
                decoration: InputDecoration(
                  labelText: 'District',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentPage(),
                          ));
                },
                child: Text('Book Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
