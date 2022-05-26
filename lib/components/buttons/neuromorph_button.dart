import 'package:flutter/material.dart';

class NeuromorphButton extends StatefulWidget {
  NeuromorphButton(
      this.width, this.height, this.color, this.text, this.function,
      {Key? key})
      : super(key: key);

  double width;
  double height;
  Color color;
  String text;
  Function function;

  @override
  _NeuromorphButtonState createState() => _NeuromorphButtonState();
}

class _NeuromorphButtonState extends State<NeuromorphButton> {
  bool isElevated = true;

  @override
  Widget build(BuildContext context) {
    bool borderSize = false;

    if (widget.width >= widget.height) {
      borderSize = true;
    } else {
      borderSize = false;
    }
    return GestureDetector(
      onTap: () async {
        setState(() {
          isElevated = false;
        });
        widget.function();
        await Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            isElevated = true;
          });
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8.0),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
                borderSize ? widget.height * 0.2 : widget.width * 0.2),
          ),
          boxShadow: isElevated
              ? [
                  const BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: isElevated ? Colors.white : Colors.black,
            ),
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: isElevated ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
