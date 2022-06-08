import 'package:flutter/material.dart';
import 'package:open_erp/components/static/neuromorph_informer.dart';
import 'package:open_erp/screens/products/add.dart';

import '../../components/buttons/neuromorph_button.dart';

class ProductsMain extends StatefulWidget {
  const ProductsMain({Key? key}) : super(key: key);

  @override
  _ProductsMainState createState() => _ProductsMainState();
}

class _ProductsMainState extends State<ProductsMain> {
  final String title = 'Products';

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
        width: width,
        color: Colors.grey[300],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeuromorphInformer(
                    height: height * 0.13,
                    width: width * 0.4,
                    title: 'Sold Products',
                    value: '52',
                  ),
                  NeuromorphInformer(
                    height: height * 0.13,
                    width: width * 0.4,
                    title: 'Total Products',
                    value: '163',
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: NeuromorphInformer(
                height: height * 0.13,
                width: width * 0.75,
                title: 'Best Selling Product',
                value: 'ABC - VMB.co',
              ),
            ),
            Flexible(
              flex: 1,
              child: NeuromorphInformer(
                height: height * 0.13,
                width: width * 0.75,
                title: 'Most Profitable Product',
                value: 'ABC - VMB.co',
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
                        width * 0.25,
                        Colors.blue,
                        Icons.list,
                        'Products List',
                        () => {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.4,
                    child: Center(
                      child: NeuromorphButton(
                        width * 0.4,
                        width * 0.25,
                        Colors.blue,
                        Icons.add,
                        'Add Product',
                        () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ProdusctsAdd(),
                            ),
                          )
                        },
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
