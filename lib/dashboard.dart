import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends GetResponsiveView {
  @override
  Widget phone() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sheru Mail',
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }

  @override
  Widget tablet() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sheru Mail',
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Text(
            'Hello World',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: Text('Log In'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget desktop() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sheru Mail',
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Log In'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
