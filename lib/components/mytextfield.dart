import 'package:flutter/material.dart';

class mytextField extends StatelessWidget {
  final String hintText;
  final bool checkit;
  final TextEditingController controller;
  final FocusNode? focusNode;
  const mytextField({
    super.key,
    required this.hintText,
    required this.checkit,
    required this.controller,
    this.focusNode,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: checkit,
        controller:controller,
        focusNode: focusNode,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
