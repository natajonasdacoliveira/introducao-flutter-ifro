import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    // var container = Container(
    //   height: 150,
    //   width: 150,
    //   color: Colors.grey,
    //   child: Center(
    //     child: Container(
    //       height: 50,
    //       width: 50,
    //       color: Colors.blue,
    //       child: Icon(Icons.remove_circle_outline),
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('App AIDS'),
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDark,
          onChanged: (value) {
            AppController.instance.ChangeTheme();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
