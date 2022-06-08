import 'package:flutter/material.dart';

class NeuromorphInformer extends StatelessWidget {
  const NeuromorphInformer(
      {Key? key,
      required this.height,
      required this.width,
      required this.title,
      required this.value})
      : super(key: key);

  final double height;
  final double width;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    bool borderSize = false;

    if (width >= height) {
      borderSize = true;
    } else {
      borderSize = false;
    }

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderSize ? height * 0.3 : width * 0.3,
            ),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.blue,
              border: Border.all(
                width: 2,
                color: Colors.blue,
              ),
            ),
            child: Text(
              value,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
