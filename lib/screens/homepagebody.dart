import 'package:controller_app/barrel.dart';

class MyHomePageBody extends StatefulWidget {
  const MyHomePageBody({super.key});

  @override
  State<MyHomePageBody> createState() => _MyHomePageBodyState();
}

class _MyHomePageBodyState extends State<MyHomePageBody> {
  void _showProjectDetailsDialog(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // To allow scrolling within the dialog
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title, // Project Title
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF24B0F),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Project Description: This is a detailed description of the project.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              const Text(
                "Location: Example Location",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              const Text(
                "Date: Example Date",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: const Color(0xFFF24B0F),
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Measurements",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add, color: Color(0xFFF24B0F)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ControllerScreen()), // Adjust to your route
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
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
                            vertical: 8.0, horizontal: 16.0),
                        child: const Text(
                          "Point A to B",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "0.00m", // Example measurement value
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Add more TableRow widgets if needed
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // measuringbot banner
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/dpwbanner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Heading below the banner
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "My Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF24B0F),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Tiles of projects
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Card(
                  elevation: 5,
                  color: const Color(0xFFF24B0F),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    title: Text("Project Title $index"),
                    subtitle: Text("Project Subtitle $index"),
                    leading: const Icon(Icons.folder),
                    onTap: () {
                      _showProjectDetailsDialog(
                          context, "Project Title $index");
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
