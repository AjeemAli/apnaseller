import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import '../../../utils/common/colors.dart';
import '../../../utils/common/data/auth_hive/signupdata.dart';
import '../../../utils/common/form_field_frave.dart';
import '../../../utils/common/helper/validate_form/validate_form.dart';
import '../../../utils/common/reusable_btn.dart';
import '../../../utils/common/text_custom.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _contactController;
  late TextEditingController _addressController;
  late TextEditingController _workExpController;
  late TextEditingController _educationController;
  late TextEditingController _passwordController;

  final _keyForm = GlobalKey<FormState>();
  final Logger _logger = Logger();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _contactController = TextEditingController();
    _addressController = TextEditingController();
    _workExpController = TextEditingController();
    _educationController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _contactController.dispose();
    _addressController.dispose();
    _workExpController.dispose();
    _educationController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _saveSignupData() async {
    if (_keyForm.currentState!.validate()) {
      final _signupBox = Hive.box('signupBox');
      final signupData = SignupData(
        name: _nameController.text,
        email: _emailController.text,
        contact: _contactController.text,
        address: _addressController.text,
        workExperience: _workExpController.text,
        education: _educationController.text,
        password: _passwordController.text,
      );
      print('Registration ok');
      _logger.i('Signup data saved: ${signupData.toString()}');
      await _signupBox.put('signupData', signupData);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Signup saved successfully!'),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      );
      Get.to(LoginScreen());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Sorry, try again.'),
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _keyForm,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            children: [
              Image.asset('assets/images/logo.png', height: 70),
              const SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                child: const TextCustom(
                  text: 'Registration!',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff14222E),
                ),
              ),
              const SizedBox(height: 5.0),
              FormFieldFrave(
                icon: Icons.person,
                controller: _nameController,
                hintText: 'Name',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20.0),
              FormFieldFrave(
                icon: Icons.person,
                controller: _emailController,
                hintText: 'email@frave.com',
                keyboardType: TextInputType.emailAddress,
                validator: validatedEmail,
              ),
              const SizedBox(height: 20.0),
              FormFieldFrave(
                icon: Icons.phone,
                controller: _contactController,
                hintText: 'Contact Number',
                keyboardType: TextInputType.phone,
                validator: validatedPhoneForm,
              ),
              const SizedBox(height: 20.0),
              FormFieldFrave(
                icon: Icons.location_on,
                controller: _addressController,
                hintText: 'Address',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20.0),
              FormFieldFrave(
                icon: Icons.school,
                controller: _workExpController,
                hintText: 'Work Experience',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20.0),
              FormFieldFrave(
                icon: Icons.cast_for_education,
                controller: _educationController,
                hintText: 'Education',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20.0),
              FormFieldFrave(
                icon: Icons.lock,
                controller: _passwordController,
                hintText: '********',
                isPassword: true,
                validator: passwordValidator,
              ),
              const SizedBox(height: 20.0),
              const TextCustom(
                text: 'Upload Documents',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10.0),
              UploadDocumentField(
                icon: Icons.file_present,
                text: 'Upload Aadhar Card',
                isMultiple: true,
                onTap: () {
                  // Implement your file upload logic here
                },
              ),
              const SizedBox(height: 10.0),
              UploadDocumentField(
                icon: Icons.file_present,
                text: 'Upload PAN Card',
                onTap: () {
                  // Implement your file upload logic here
                },
              ),
              const SizedBox(height: 10.0),
              UploadDocumentField(
                icon: Icons.file_present,
                text: 'Upload Driving License',
                onTap: () {
                  // Implement your file upload logic here
                },
              ),
              const SizedBox(height: 10.0),
              UploadDocumentField(
                icon: Icons.file_present,
                text: 'Upload Vehicle Information',
                onTap: () {
                  // Implement your file upload logic here
                },
              ),
              const SizedBox(height: 40.0),
              BtnFrave(
                color: kPrimary,
                text: 'Submit',
                fontSize: 21,
                height: 50,
                fontWeight: FontWeight.w500,
                onPressed: () {
                  // if (_keyForm.currentState!.validate()) {
                  //   authBloc.add(LoginEvent(_emailController.text, _passwordController.text));
                  // }
                },
              ),
              // BtnFrave(
              //   text: 'Signup',
              //   color: kPrimary,
              //   fontSize: 21,
              //   height: 50,
              //   fontWeight: FontWeight.w500,
              //   onPressed: _saveSignupData,
              // ),
               const SizedBox(height: 20.0),
              BtnFrave(
                text: 'Back to Login',
                fontSize: 30,
                height: 50,
                fontWeight: FontWeight.w500,
                onPressed: () {
                  Navigator.pop(context);
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

class UploadDocumentField extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isMultiple;
  final VoidCallback onTap;

  const UploadDocumentField({
    Key? key,
    required this.icon,
    required this.text,
    this.isMultiple = false,
    required this.onTap,
  }) : super(key: key);

  @override
  _UploadDocumentFieldState createState() => _UploadDocumentFieldState();
}

class _UploadDocumentFieldState extends State<UploadDocumentField> {
  List<XFile>? _images;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    if (widget.isMultiple) {
      final List<XFile>? images = await _picker.pickMultiImage();
      if (images != null) {
        setState(() {
          _images = images;
        });
      }
    } else {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _images = [image];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      shadowColor: Colors.grey.withOpacity(0.5),
      borderRadius: BorderRadius.circular(8.0),
      child: InkWell(
        onTap: _pickImage,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Icon(widget.icon, color: Colors.grey),
              const SizedBox(width: 15.0),
              Expanded(
                child: Text(
                  widget.text,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              if (_images != null && _images!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: _images!.map((image) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.file(
                          File(image.path),
                          width: 50,
                          height: 50,
                        ),
                      );
                    }).toList(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
