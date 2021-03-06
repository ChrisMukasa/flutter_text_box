library flutter_text_box;

import 'package:flutter/material.dart';

class TextBoxLabel extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorText;
  final double? radius;
  final Color? accent;
  final TextInputType inputType;
  final bool obscure;
  final ValueChanged<String>? onSaved;
  const TextBoxLabel({Key? key, required this.label, required this.hint, required this.errorText, this.radius, this.accent = Colors.blue, this.inputType = TextInputType.text, this.obscure = false, required this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: inputType,
        obscureText: obscure,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          labelText: label,
          hintText: hint,
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: accent!.withOpacity(.2)),
            gapPadding: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: accent!.withOpacity(.2)),
            gapPadding: 16,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: accent!.withOpacity(.2)),
            gapPadding: 16,
          ),
        ),
        onSaved: (value) => onSaved!(value!),
        validator: (value) {
          if (value!.isEmpty) return errorText;
          return null;
        },
      )
    );
  }
}

class TextBoxIcon extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final String? hint;
  final String? errorText;
  final double radius;
  final Color? accent;
  final TextInputType inputType;
  final bool obscure;
  final ValueChanged<String>? onSaved;

  const TextBoxIcon({ Key? key, required this.icon, required this.label, required this.hint, required this.errorText, this.radius = 4, this.accent = Colors.blue, this.inputType = TextInputType.text, this.obscure = false, required this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: inputType,
        obscureText: obscure,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          labelText: label,
          hintText: hint,
          suffixIcon: Icon(icon, color: accent, size: 16),
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: accent!.withOpacity(.2)),
            gapPadding: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: accent!.withOpacity(.2)),
            gapPadding: 16,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: accent!.withOpacity(.2)),
            gapPadding: 16,
          ),
        ),
        onSaved: (value) => onSaved!(value!),
        validator: (value) {
          if (value!.isEmpty) return errorText;
          return null;
        },
      )
    );
  }
}