import 'package:flutter/material.dart';
Widget miFabButton({
  bool readOnly1=false,
  bool readOnly2=false,
  required BuildContext context,
  required IconData fabIcon,
  required String fabText,
  required String label1,
  required String error1,
  required String label2,
  required String error2,
  required Function()? onConfirm,
  TextInputType keyBoardType1=TextInputType.text,
  TextInputType keyBoardType2=TextInputType.text,
  Future Function()? onTap1,
  Future Function()? onTap2,
  required IconData iconData1,
  required IconData iconData2,
  required TextEditingController controller1,
  required TextEditingController controller2,
  required final GlobalKey<FormState> formKey,
}) {
  return FloatingActionButton.extended(
    backgroundColor: Colors.black54,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(10.0),
            topLeft: Radius.circular(10.0))),
    onPressed: ()
    {},
    label:  Row(
      children: [
        Icon(
          fabIcon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 7.0,
        ),
        Text(
          fabText,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        )
      ],
    ),
  );
}