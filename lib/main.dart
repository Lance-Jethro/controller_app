import 'package:flutter/material.dart';
import 'buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: controller());
  }
}

class controller extends StatefulWidget {
  const controller({super.key});

  @override
  State<controller> createState() => _controllerState();
}

class _controllerState extends State<controller> {
  void _handleButtonPress(String direction) {
    setState(() {
      // Handle the button press logic here
      print('$direction button pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(
      //   title: Text("Hello World"),
      //   backgroundColor: Colors.green,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyArrowButtons(
              icon: Icons.keyboard_double_arrow_up,
              onpress: () {
                _handleButtonPress('Up');
              },
              text: 'Forward',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyArrowButtons(
                  icon: Icons.keyboard_double_arrow_left,
                  onpress: () {
                    _handleButtonPress('Left');
                  },
                  text: 'Left',
                ),
                MyArrowButtons(
                  icon: Icons.keyboard_double_arrow_right,
                  onpress: () {
                    _handleButtonPress('Right');
                  },
                  text: 'Right',
                ),
              ],
            ),
            MyArrowButtons(
              icon: Icons.keyboard_double_arrow_down,
              onpress: () {
                _handleButtonPress('Down');
              },
              text: 'Downward',
            ),
          ],
        ),
      ),
    );
  }
}
