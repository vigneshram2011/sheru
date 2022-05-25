import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom Sheet",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Bottom Sheet"),
            backgroundColor: Colors.green,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Bottom Sheet"),
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        child: Wrap(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.wb_sunny_outlined),
                              title: Text("Light Theme"),
                              onTap: () => {
                                Get.changeTheme(ThemeData.light()),
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.wb_sunny),
                              title: Text("Dark Theme"),
                              onTap: () => {
                                Get.changeTheme(ThemeData.dark()),
                              },
                            ),
                          ],
                        ),
                      ),
                      barrierColor: Colors.greenAccent.shade100,
                      backgroundColor: Colors.purpleAccent,
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text("Change Theme"),
                  onPressed: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                ),
              ],
            ),
          )),
    );
  }
}
