import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/auth_controller.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8F3DC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              ClipOval(
                child: Image.asset(
                  'assets/images/icons/icon.jpeg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 50),
              CustomTextField(
                hint: 'Username',
                onChanged: (value) => controller.username.value = value,
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hint: 'Password',
                onChanged: (value) => controller.password.value = value,
                isPassword: true,
                icon: Icons.lock_outline,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Login',
                onPressed: controller.login,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () => Get.toNamed('/register'),
                child: const Text(
                  'Create an account',
                  style: TextStyle(
                    color: Color(0xFF2D6A4F),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
