import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/contact.dart';
import 'package:whatsapp/updates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI Design',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 28, 139, 86)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'WhatsApp UI Design'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              print("More options pressed");
            },
          ),
        ],
        backgroundColor:const Color.fromARGB(255, 28, 139, 86),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(children: [
        Container(
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backgr.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListView(children: const [
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/a/a8/Shahid_Afridi_in_2017.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Muzzammil"),
                subtitle: Text('Hi.'),
                
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/dhonii.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Abdullah"),
                subtitle: Text('kese hoo'),
                trailing: Icon(Icons.notifications_active_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/baber.jpeg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Ali"),
                subtitle: Text('All Good'),
                
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/kholi.jpeg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Fahad"),
                subtitle: Text('Kal ajana'),
                trailing: Icon(Icons.notifications_off_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/a/a8/Shahid_Afridi_in_2017.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Mubashair"),
                subtitle: Text('ok done'),
                trailing: Icon(Icons.notifications_off_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/baber.jpeg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Misbah"),
                subtitle: Text('hmm'),
                trailing: Icon(Icons.notifications_active_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/kholi.jpeg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Huzaifa"),
                subtitle: Text('good'),
                trailing: Icon(Icons.notifications_off_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/dhonii.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Hamza"),
                subtitle: Text('Assalam o Alaikum'),
                
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/a/a8/Shahid_Afridi_in_2017.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Shahmir"),
                subtitle: Text('Sahi hai'),
                trailing: Icon(Icons.notifications_active_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/baber.jpeg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Tariq"),
                subtitle: Text('Thank You'),
                trailing: Icon(Icons.notifications_off_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/kholi.jpeg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Khalid"),
                subtitle: Text(''),
              
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/dhonii.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Amir"),
                subtitle: Text('Ok'),
                trailing: Icon(Icons.notifications_off_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/dhonii.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Anwer"),
                subtitle: Text('All...'),
                trailing: Icon(Icons.notifications_active_outlined),
              ),
            ],
          ),
        ]),
      ]),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('MUZAMMIL'),
              accountEmail: Text('muzammil@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/a/a8/Shahid_Afridi_in_2017.jpg"),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ),
                );
              },
              leading: const Icon(Icons.chat),
              title: const Text('Chats'),
              trailing: const Icon(Icons.arrow_forward),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Updates(),
                  ),
                );
              },
              leading: const Icon(Icons.circle_rounded),
              title: const Text('Status'),
              trailing: const Icon(Icons.arrow_forward),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Calls(),
                  ),
                  
                );
              },
              leading: const Icon(Icons.call_sharp),
              title: const Text('Calls'),
              trailing: const Icon(Icons.arrow_forward),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactsScreen(),
                  ),
                  
                );
              },
              leading: const Icon(Icons.people_outline_sharp),
              title: const Text('Contact'),
              trailing: const Icon(Icons.arrow_forward),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor:const Color.fromARGB(255, 28, 139, 86),
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}

Widget customContainer(double height, Color color, Title title) {
  return Container(
    height: height,
  );
}
