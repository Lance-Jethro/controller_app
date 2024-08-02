import 'package:flutter/material.dart';

class Connectionscreen extends StatefulWidget {
  const Connectionscreen({super.key});

  @override
  State<Connectionscreen> createState() => _ConnectionscreenState();
}

class _ConnectionscreenState extends State<Connectionscreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageSize = screenWidth * 0.8;
    double textSize = screenWidth * 0.1;
    double paddingSize = screenWidth * 0.05;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: imageSize,
                height: imageSize * 0.8,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/wifisymbol.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: paddingSize),
            Text(
              "Connect",
              style: TextStyle(
                color: const Color(0xFFF24B0F),
                fontSize: textSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("Connect to MeasuringBot"),
            SizedBox(height: paddingSize * 2),
            Container(
              color: const Color(0xFFF24B0F),
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: const Text(
                "Available device:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: paddingSize),
            Table(
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
              },
              border: TableBorder.all(color: Colors.transparent),
              children: [
                TableRow(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      child: const Text(
                        "Bluetooth Device",
                        style: TextStyle(
                          color: Color.fromARGB(255, 46, 14, 3),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add connect button functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF24B0F),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Connect"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
