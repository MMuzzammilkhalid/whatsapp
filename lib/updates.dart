import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

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
        backgroundColor:Color.fromARGB(255, 28, 139, 86),
        title: Text(
          'Status',
          style: const TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100, // Height of the horizontal list
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildAvatar(context, 'assets/dhonii.jpg', 'User 1'),
              _buildAvatar(context, 'assets/kholi.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/baber.jpeg', 'User 3'),
              _buildAvatar(context, 'assets/dhonii.jpg', 'User 4'),
               _buildAvatar(context, 'assets/kholi.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/baber.jpeg', 'User 3'),
              _buildAvatar(context, 'assets/dhonii.jpg', 'User 1'),
              _buildAvatar(context, 'assets/kholi.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/baber.jpeg', 'User 3'),
              _buildAvatar(context, 'assets/dhonii.jpg', 'User 1'),
              _buildAvatar(context, 'assets/kholi.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/baber.jpeg', 'User 3'),
              _buildAvatar(context, 'assets/dhonii.jpg', 'User 1'),
              _buildAvatar(context, 'assets/kholi.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/baber.jpeg', 'User 3'),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar(BuildContext context, String imagePath, String userName) {
    return GestureDetector(
      onTap: () {
      
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImageViewScreen(imagePath: imagePath, userName: userName),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 30, 
            ),
            const SizedBox(height: 5),
            Text(
              userName,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageViewScreen extends StatelessWidget {
  final String imagePath;
  final String userName;

  const ImageViewScreen({Key? key, required this.imagePath, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
