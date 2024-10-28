import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/auth_controller.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8F3DC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF40916C),
        title: const Text('Register'),
        foregroundColor: const Color(0xFFD8F3DC),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextField(
                hint: 'First Name',
                onChanged: (value) => controller.firstName.value = value,
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hint: 'Last Name',
                onChanged: (value) => controller.lastName.value = value,
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hint: 'Phone Number',
                onChanged: (value) => controller.phoneNumber.value = value,
                icon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hint: 'Email',
                onChanged: (value) => controller.email.value = value,
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Register',
                onPressed: controller.register,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
