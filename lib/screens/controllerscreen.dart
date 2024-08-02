import '../barrel.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({super.key});

  @override
  State<ControllerScreen> createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  void _handleButtonPress(String direction) {
    setState(() {
      // functionality ng mga buttons
      print('$direction button pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text("Controller"),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'measurement here',
                  border: OutlineInputBorder(),
                  enabled: false,
                ),
              ),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      //lalagyan pa
                    },
                    label: const Text("save"),
                    icon: const Icon(Icons.save),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      //lalagyan pa
                    },
                    label: const Text("reset"),
                    icon: const Icon(Icons.replay),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10), // space ng textfield at button
              Container(
                padding: const EdgeInsets.all(20.0), // button group
                child: Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
