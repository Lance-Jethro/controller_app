import '../barrel.dart';

class MyArrowButtons extends StatelessWidget {
  const MyArrowButtons(
      {super.key,
      required this.onpress,
      required this.icon,
      required this.text});

  final VoidCallback onpress;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 95,
            height: 95,
            child: ElevatedButton(
              onPressed: onpress,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.white,
              ),
              child: Icon(
                icon,
                color: Colors.orange,
                size: 40,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
