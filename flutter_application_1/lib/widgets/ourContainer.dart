import 'package:flutter/material.dart';

class OurContainer extends StatelessWidget {
  final Widget child;

  const OurContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10.0,
              offset: Offset(4.0, 1.0),
            )
          ]),
      child: child,
    );
  }
}
