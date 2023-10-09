import 'package:flutter/material.dart';

class CreditCardFormField extends StatelessWidget {
  CreditCardFormField({
    super.key,
    required this.textController,
    required this.labelText,
    required this.hintText,
    required this.onChanged,
    this.readOnly = false,
    this.autofocus = true,
    this.onTap,
    this.onTapOutside,
  });

  final TextEditingController textController;
  final String labelText;
  final String hintText;
  final void Function(String) onChanged;
  final bool readOnly;
  final bool autofocus;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
      onChanged: onChanged,
      readOnly: readOnly,
      onTap: onTap,
      // onTapOutside: onTapOutside,
      autofocus: autofocus,
    );
  }
}
