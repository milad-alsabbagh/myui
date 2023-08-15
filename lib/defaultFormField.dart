import 'package:flutter/material.dart';
Widget miFormField({
  required String label,
  required String error,
  bool readOnly = false,
  required IconData prefix,
  required TextEditingController controller,
  Future? Function()? onTap,
  bool isSecure = false,
  TextInputType keyboard = TextInputType.text,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
    child: TextFormField(
      readOnly: readOnly,
      keyboardType: keyboard,
      controller: controller,
      obscureText: isSecure,
      onTap: onTap,
      style:const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
      validator: (String? value) {
        if (value != null && value.isEmpty)
          return error;
        else {
          return null;
        }
      },
      decoration: InputDecoration(
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20)
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(20)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(20.0)),
        label: Text(
          label,
          style: const TextStyle(color: Colors.white70),
        ),
        prefixIcon: Icon(prefix, color: Colors.white),
      ),
    ),
  );
}
//change colors to match app colors
