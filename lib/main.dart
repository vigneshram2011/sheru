import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Dialog"),
            backgroundColor: Colors.green,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Show Dialog"),
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      middleText: "This is dialog middle text.",
                      middleTextStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      backgroundColor: Colors.orange,
                      radius: 60,
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Text("Data Loading...",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ],
                      ),
                      textCancel: "Cancel",
                      cancelTextColor: Colors.black,
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.black,
                      onCancel: () {},
                      onConfirm: () {},
                      buttonColor: Colors.greenAccent,
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}
