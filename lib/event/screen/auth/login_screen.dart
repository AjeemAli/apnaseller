import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../../../utils/common/colors.dart';
import '../../../utils/common/data/auth_hive/signupdata.dart';
import '../../../utils/common/form_field_frave.dart';
import '../../../utils/common/helper/validate_form/validate_form.dart';
import '../../../utils/common/reusable_btn.dart';
import '../../../utils/common/text_custom.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  final _keyForm = GlobalKey<FormState>();


  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _checkLoginCredentials() {
    final _signupBox = Hive.box('signupBox');
    final storedSignupData = _signupBox.get('signupData') as SignupData?;
    if (storedSignupData != null &&
        storedSignupData.email == _emailController.text &&
        storedSignupData.password == _passwordController.text) {
      // Get.offAll(MainScreen());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Incorrect email or password.'),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfaf5e3),
      body: SafeArea(
        child: Form(
          key: _keyForm,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            children: [
              Image.asset('assets/images/logo.png', height: 50),
              Image.asset('assets/images/onbording3.jpg', height: 200),
              const SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                child: const TextCustom(
                  text: 'Login',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff14222E),
                ),
              ),
              const SizedBox(height: 5.0),
              FormFieldFrave(
                icon: Icons.person,
                controller: _emailController,
                hintText: 'email@frave.com',
                keyboardType: TextInputType.emailAddress,
                validator: validatedEmail,
              ),
              const SizedBox(height: 20.0),
              FormFieldFrave(
                icon: Icons.lock,
                controller: _passwordController,
                hintText: '********',
                isPassword: true,
                validator: passwordValidator,
              ),
              const SizedBox(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => ForgotPasswordScreen(),
                    //   ),
                    // );
                  },
                  child: const TextCustom(
                    text: 'Forgot Password?',
                    fontSize: 14,
                    color: kTertiary,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              BtnFrave(
                text: 'Login',
                color: kPrimary,
                fontSize: 21,
                height: 50,
                fontWeight: FontWeight.w500,
                onPressed: _checkLoginCredentials,
              ),
              const SizedBox(height: 20.0),
              BtnFrave(
                text: 'Registration',
                fontSize: 30,
                height: 50,
                fontWeight: FontWeight.w500,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
