import 'package:controller_app/barrel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _screens = [
    const Connectionscreen(),
    const MyHomePageBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        // title: const Text('My Home Page'),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              radius: 20, // Adjust the radius as needed
              backgroundImage:
                  AssetImage('images/maloi.jpg'), // Path to your image
            ),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'images/maloi.jpg'), // Adjust the path to your image
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Handle navigation or other functionality
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Handle navigation or other functionality
              },
            ),
            // Add more ListTiles as needed
            const Spacer(), // To push the Sign Out button to the bottom
            ListTile(
              title: const Text('Sign Out'),
              onTap: () {
                // Handle sign out functionality
              },
            ),
          ],
        ),
      ),
      body: _screens[currentIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.wifi), label: 'Connect'),
          NavigationDestination(icon: Icon(Icons.folder), label: 'Projects'),
          NavigationDestination(icon: Icon(Icons.info), label: 'About'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
