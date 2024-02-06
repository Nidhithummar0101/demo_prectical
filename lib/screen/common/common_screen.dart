import 'package:flutter/material.dart';

Widget textFormFiled({TextEditingController? controller,String? hintText,String? Function(String?)? validator}){
  return TextFormField(
    controller:controller ,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      )
    ),
    validator: validator,
  );
}