import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String name;
  final void Function()? onTap;
  const myButton({super.key,required this.name,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,borderRadius: BorderRadius.circular(8.0)),
          padding: const EdgeInsets.all(24),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(child: Text(name)),
        ),
    );
  }
}
