import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apnademandseller/utils/common/colors.dart';


class FormFieldFrave extends StatelessWidget {

  final TextEditingController? controller;
  final String? hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final int maxLine;
  final bool readOnly;
  final IconData icon;
  final FormFieldValidator<String>? validator;

  const FormFieldFrave({super.key,
    this.controller,
    this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.maxLine = 1,
    this.readOnly = false,
    this.validator, required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: kSecondaryLight,
      borderRadius: BorderRadius.circular(8.0),
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.getFont('Roboto', fontSize: 14),
        obscureText: isPassword,
        maxLines: maxLine,
        readOnly: readOnly,
        keyboardType: keyboardType,
        textAlign:  TextAlign.justify,
        decoration: InputDecoration(

          border: InputBorder.none,
         enabledBorder: InputBorder.none,
         // enabledBorder:  OutlineInputBorder(borderSide: BorderSide(width: 0.5, color: Colors.grey.withOpacity(0.5))),
          contentPadding: const EdgeInsets.only(left: 15.0,top: 10),
          hintText: hintText,
          hintStyle: GoogleFonts.getFont('Roboto', color: Colors.grey),
          prefixIcon: Icon(icon,size: 20,),
        ),
        validator: validator,
      ),
    );
  }
}
