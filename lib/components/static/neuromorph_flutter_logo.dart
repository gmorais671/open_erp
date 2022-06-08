import 'package:flutter/material.dart';

class NeuromorphFlutterLogo extends StatelessWidget {
  const NeuromorphFlutterLogo(this.height, this.width, {Key? key})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(35)),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]),
      child: Center(
        child: FlutterLogo(
          size: 80,
        ),
      ),
    );
  }
}
