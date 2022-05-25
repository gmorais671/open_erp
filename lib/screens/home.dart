import 'package:flutter/material.dart';
import 'package:open_erp/components/nothing_to_show.dart';

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
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text('Products'),
            ),
            ListTile(
              title: Text('Clients'),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 2,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text('Botão 1'),

                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text('Botão 2'),
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
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text('Botão 3'),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text('Botão 4'),
                ),
              ],
            ),
          ),
          const Flexible(
            flex: 6,
            child: FlutterLogo(
              size: 100,
            ),
          )
        ],
      ),
    );
  }
}
