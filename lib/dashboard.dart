import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends GetResponsiveView {
  @override
  Widget phone() {
    if (GetPlatform.isIOS) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sheru Mail',
          ),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.pink,
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
    if (GetPlatform.isAndroid) {
      debugPrint('android called');
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sheru Mail',
          ),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
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
                height: 20,
              ),
              FloatingActionButton(
                child: Text(
                  'Log In',
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      );
    }
    return Container();
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
            Text(
              'Email: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Password: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
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
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello World',
                style: TextStyle(fontSize: 60, color: Colors.orange)),
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
