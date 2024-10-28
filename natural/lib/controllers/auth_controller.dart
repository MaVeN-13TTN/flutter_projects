import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final username = ''.obs;
  final password = ''.obs;
  final firstName = ''.obs;
  final lastName = ''.obs;
  final phoneNumber = ''.obs;
  final email = ''.obs;

  void login() {
    // TODO: Implement actual login logic
    if (username.value.isNotEmpty && password.value.isNotEmpty) {
      Get.offAllNamed('/dashboard');
    } else {
      Get.snackbar(
        'Error',
        'Please fill in all fields',
        backgroundColor: const Color(0xFFB7E4C7),
        colorText: const Color(0xFF081C15),
      );
    }
  }

  void register() {
    // TODO: Implement actual registration logic
    if (firstName.value.isNotEmpty &&
        lastName.value.isNotEmpty &&
        phoneNumber.value.isNotEmpty &&
        email.value.isNotEmpty) {
      Get.offAllNamed('/login');
      Get.snackbar(
        'Success',
        'Registration successful! Please login.',
        backgroundColor: const Color(0xFFB7E4C7),
        colorText: const Color(0xFF081C15),
      );
    } else {
      Get.snackbar(
        'Error',
        'Please fill in all fields',
        backgroundColor: const Color(0xFFB7E4C7),
        colorText: const Color(0xFF081C15),
      );
    }
  }
}
