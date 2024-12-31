import 'package:application/car%20details/carDetails.dart';
import 'package:application/settings/settings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Booking App (Community)'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.new_releases),
              title: Text('New Cars'),
              onTap: () {
                // Handle navigation to new cars screen
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Used Cars'),
              onTap: () {
                // Handle navigation to used cars screen
              },
            ),
            ListTile(
              leading: Icon(Icons.sell),
              title: Text('Sell Car'),
              onTap: () {
                // Handle navigation to sell car screen
              },
            ),
            ListTile(
              leading: Icon(Icons.compare_arrows),
              title: Text('Compare Cars'),
              onTap: () {
                // Handle navigation to compare cars screen
              },
            ),
            ListTile(
              leading: Icon(Icons.newspaper),
              title: Text('News & Review'),
              onTap: () {
                // Handle navigation to news and review screen
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_car_filled),
              title: Text('Connected Cars'),
              onTap: () {
                // Handle navigation to connected cars screen
              },
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Explore More'),
              onTap: () {
                // Handle navigation to explore more screen
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOptionCard('New Cars', 'with exciting offer', Icons.new_releases, Colors.purple),
                  _buildOptionCard('Used Cars', 'Pre-owned Cars', Icons.directions_car, Colors.blue),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOptionCard('Sell Car', 'from your home', Icons.sell, Colors.blue),
                  _buildOptionCard('News', 'to keep you updated', Icons.newspaper, Colors.red),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Recommended Cars for You',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildCarRecommendationList(context),
          ],
        ),
      ),
     bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.more_horiz),
      label: 'More',
    ),
  ],
  onTap: (index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsScreen()),
      );
    } else if (index == 2) {
      Scaffold.of(context).openDrawer();
    }
  },
),

    );
  }

  Widget _buildOptionCard(String title, String subtitle, IconData icon, Color color) {
    return Card(
      child: Container(
        width: 150,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(subtitle),
          ],
        ),
      ),
    );
  }

  Widget _buildCarRecommendationList(BuildContext context) {
    List<Map<String, String>> cars = [
      {'name': 'Hyundai i20', 'price': '₹ 7.19 - 11.83 Lakh*', 'image': 'assets/Hyundai i20.jpg'},
      {'name': 'Maruti Swift', 'price': '₹ 5.81 - 8.56 Lakh*', 'image': 'assets/Maruti Swift.jpg'},
      {'name': 'Tata Nexon', 'price': '₹ 7.60 - 14.08 Lakh*', 'image': 'assets/Tata Nexon.jpg'},
      {'name': 'Kia Seltos', 'price': '₹ 9.95 - 18.10 Lakh*', 'image': 'assets/Kia Seltos.jpg'},
      {'name': 'Toyota Fortuner', 'price': '₹ 32.59 - 50.34 Lakh*', 'image': 'assets/Toyota Fortuner.jpg'},
      {'name': 'Honda City', 'price': '₹ 11.57 - 15.52 Lakh*', 'image': 'assets/Honda City.jpg'},
      {'name': 'MG Hector', 'price': '₹ 14.43 - 22.28 Lakh*', 'image': 'assets/MG Hector.jpg'},
      {'name': 'Ford Endeavour', 'price': '₹ 29.99 - 36.26 Lakh*', 'image': 'assets/Ford Endeavour.jpg'},
      {'name': 'Volkswagen Polo', 'price': '₹ 6.45 - 10.25 Lakh*', 'image': 'assets/Volkswagen Polo.jpg'},
      {'name': 'Renault Duster', 'price': '₹ 9.86 - 14.25 Lakh*', 'image': 'assets/Renault Duster.jpg'},
    ];

    return Column(
      children: cars.map((car) => _buildCarRecommendation(context, car)).toList(),
    );
  }

  Widget _buildCarRecommendation(BuildContext context, Map<String, String> car) {
    return Card(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailScreen(car: car),
                ),
              );
            },
            child: Image.asset(
              car['image']!,
              height: 150,
            ),
          ),
          SizedBox(height: 10),
          Text(
            car['name']!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(car['price']!),
        ],
      ),
    );
  }
}
