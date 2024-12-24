import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, 
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/picofme.jpg"),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Yotsanon Meagungree AKA Pan",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildSectionTitle("Hobby"),
              Text(
                "Sleep more sleep then how much i sleep",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey[600]),
              ),
              SizedBox(height: 20),
              buildSectionTitle("Favorite Food"),
              Text(
                "Time",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey[600]),
              ),
              SizedBox(height: 20),
              buildSectionTitle("Birthplace"),
              Text(
                "Uttaradit",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey[600]),
              ),
              SizedBox(height: 30),
              buildSectionTitle("Education"),
              Divider(thickness: 1),
              educationItem("Elementary", "Anuban Uttaradit School", "Year: 52"),
              educationItem("Primary", "Uttaradit School", "Year: 59"),
              educationItem("High School", "Uttaradit School", "Year: 62"),
              educationItem("Undergrad", "Naresuan University", "Year: 65"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey[800],
      ),
    );
  }

  Widget educationItem(String level, String school, String year) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Text(
              level,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[800]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              school,
              style: TextStyle(fontSize: 16, color: Colors.blueGrey[600]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              year,
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
