// import 'package:apnademanddelivery/common/btn_frave.dart';
// import 'package:flutter/material.dart';
//
//
// import '../login_screen.dart';
//
// class ForgotPasswordScreen extends StatefulWidget {
//   @override
//   _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
// }
//
// class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
//   late TextEditingController _emailController;
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   void initState() {
//     _emailController = TextEditingController();
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _emailController.clear();
//     _emailController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const TextCustom(
//             text: 'Reset Password', fontSize: 21, fontWeight: FontWeight.w500),
//         centerTitle: true,
//         leadingWidth: 80,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           //  onTap: () => Navigator.pushReplacement(context, routeFrave(page: LoginScreen())),
//           child: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.arrow_back_ios_new_rounded,
//                   size: 18, color: ColorsFrave.primaryColor),
//               TextCustom(
//                   text: 'Back', color: ColorsFrave.primaryColor, fontSize: 16)
//             ],
//           ),
//         ),
//         actions: const [
//           Icon(Icons.help_outline_outlined, color: Colors.black),
//           SizedBox(width: 15.0),
//         ],
//       ),
//       body: SafeArea(
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//             children: [
//               const TextCustom(
//                 text:
//                     'Enter the email associated with your account and well send an email with instructions to reset your password.',
//                 maxLine: 4,
//                 color: Colors.grey,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 50.0),
//               const TextCustom(text: 'Email Address'),
//               const SizedBox(height: 10.0),
//               FormFieldFrave(
//                 icon: Icons.lock,
//                 controller: _emailController,
//                 hintText: 'example@frave.com',
//                 validator: validatedEmail,
//               ),
//               const SizedBox(height: 30.0),
//               BtnFrave(
//                 text: 'Send Instructions',
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//                 onPressed: () {
//                   // Navigator.push(context, routeFrave(page: CheckEmailScreen()));
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
