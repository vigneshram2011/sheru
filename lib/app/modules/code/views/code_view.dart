// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import '../controllers/code_controller.dart';

class CodeView extends GetView<CodeController> {
  const CodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code Screen'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      backgroundColor: Colors.black.withBlue(100),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.9,
              width: width,
              color: Colors.blue.shade100,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 60),
                            height: width * 0.1,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 60),
                            height: width * 0.1,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 60),
                            height: width * 0.1,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 60),
                            height: width * 0.1,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.white,
                              child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('1'),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('2'),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('3'),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.white,
                              child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('4'),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('5'),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('6'),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              color: Colors.white,
                              child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('7'),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('8'),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('9'),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Icon(Icons.backspace_outlined),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Text('0'),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    child: const Icon(Icons.check),
                                    onPressed: () => Get.toNamed(Routes.NAME),
                                  ),
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
