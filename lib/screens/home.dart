import 'package:flutter/material.dart';
import 'package:open_erp/components/buttons/neuromorph_button.dart';
import 'package:open_erp/components/drawer/navigation_drawer.dart';
import 'package:open_erp/components/static/neuromorph_flutter_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome, user!',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: NavigationDrawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width*0.4,
                    child: Center(
                      child: NeuromorphButton(
                        width * 0.25,
                        width * 0.25,
                        Colors.blue,
                        'New Sale',
                        () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width*0.4,
                    child: Center(
                      child: NeuromorphButton(
                        width * 0.25,
                        width * 0.25,
                        Colors.blue,
                        'New buy',
                        () => {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width*0.4,
                    child: Center(
                      child: NeuromorphButton(
                        width * 0.25,
                        width * 0.25,
                        Colors.blue,
                        'Add Client',
                        () => {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width*0.4,
                    child: Center(
                      child: NeuromorphButton(
                        width * 0.25,
                        width * 0.25,
                        Colors.blue,
                        'Add Product',
                        () => {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 6,
                child: NeuromorphFlutterLogo(
                  width * 0.3,
                  width * 0.3,
                ))
          ],
        ),
      ),
    );
  }
}
