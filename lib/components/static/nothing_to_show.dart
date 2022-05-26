import 'package:flutter/material.dart';

class NothingToShow extends StatelessWidget {
  const NothingToShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Icon(
            Icons.warning_rounded,
            size: 64,
          ),
          Text('Nothing to show'),
        ],
      ),
    );
  }
}
