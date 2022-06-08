import 'package:flutter/material.dart';
import 'package:open_erp/components/forms/new_product.dart';
import 'package:open_erp/components/static/nothing_to_show.dart';

import '../../components/buttons/neuromorph_button.dart';

class ProdusctsAdd extends StatefulWidget {
  const ProdusctsAdd({Key? key}) : super(key: key);

  @override
  _ProdusctsAddState createState() => _ProdusctsAddState();
}

class _ProdusctsAddState extends State<ProdusctsAdd> {

  static String title = 'New Product';
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        width: width,
        height: height,
        color: Colors.grey[300],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 4,
              child: NewProductForm(
                width: width*0.9,
                height: height*0.6,
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.4,
                    child: Center(
                      child: NeuromorphButton(
                        width * 0.4,
                        width * 0.3,
                        Colors.grey,
                        Icons.cancel_outlined,
                        'Cancel',
                            () => {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.4,
                    child: Center(
                      child: NeuromorphButton(
                        width * 0.4,
                        width * 0.3,
                        Colors.blue,
                        Icons.check_circle_outline,
                        'Confirm',
                            () => {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
