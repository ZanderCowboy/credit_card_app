import 'package:flutter/material.dart';

/// A [TextFormField] to enter credit card details
class CreditCardFormField extends StatelessWidget {
  /// Constructor
  const CreditCardFormField({
    required TextEditingController textController,
    required String labelText,
    required String hintText,
    required void Function(String) onChanged,
    super.key,
    bool readOnly = false,
    bool autofocus = true,
    void Function()? onTap,
  })  : _textController = textController,
        _labelText = labelText,
        _hintText = hintText,
        _onChanged = onChanged,
        _readOnly = readOnly,
        _autofocus = autofocus,
        _onTap = onTap;

  final TextEditingController _textController;
  final String _labelText;
  final String _hintText;
  final void Function(String) _onChanged;
  final bool _readOnly;
  final bool _autofocus;
  final void Function()? _onTap;
  // final void Function(PointerDownEvent)? _onTapOutside;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textController,
      decoration: InputDecoration(
        labelText: _labelText,
        hintText: _hintText,
        hintStyle: const TextStyle(color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
      ),
      onChanged: _onChanged,
      readOnly: _readOnly,
      autofocus: _autofocus,
      onTap: _onTap,
      // onTapOutside: _onTapOutside,
    );
  }
}
