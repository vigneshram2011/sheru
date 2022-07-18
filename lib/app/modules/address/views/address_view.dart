// ignore_for_file: avoid_web_libraries_in_flutter, unused_import, depend_on_referenced_packages

import 'dart:js';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';
import '../controllers/address_controller.dart';

const googleApiKey = 'AIzaSyARq3lIWaDnlepdOd2alXdFzuTcd-PyGdY';

class AddressView extends GetView<AddressController> {
  const AddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Address'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                onTap: () async {
                  Prediction? p = await PlacesAutocomplete.show(
                      context: context,
                      apiKey: googleApiKey,
                      mode: Mode.overlay,
                      language: "en",
                      decoration: InputDecoration(
                        hintText: 'Enter Your Address Here...',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      components: [Component(Component.country, "au")]);
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: const Text('Continue'),
              onPressed: () => Get.toNamed(Routes.SSN),
            ),
          ],
        ),
      ),
    );
  }
}
