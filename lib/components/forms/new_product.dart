import 'package:flutter/material.dart';

class NewProductForm extends StatefulWidget {
  NewProductForm({Key? key, required this.height, required this.width})
      : super(key: key);

  double width;
  double height;

  @override
  _NewProductFormState createState() => _NewProductFormState();
}

class _NewProductFormState extends State<NewProductForm> {
  @override
  Widget build(BuildContext context) {

    double fieldsSpacement = 12.0;
    return Container(
      width: widget.width,
      height: widget.height,
      padding: EdgeInsets.all(12.0),
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
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]),
      child: SizedBox(
        width: widget.width*0.4,
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Product Name'),
              ),
              SizedBox(height: fieldsSpacement,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Class'),
              ),
              SizedBox(height: fieldsSpacement,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Producer'),
              ),
              SizedBox(height: fieldsSpacement,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Product photo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
