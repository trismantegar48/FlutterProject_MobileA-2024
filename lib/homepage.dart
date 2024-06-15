import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          title: const Text('Hai, Trisman Tegar Wiratama!'),
          actions: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text(
              "Foto Favorit Selama 4 Semester",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 500,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: List.generate(
                  10,
                  (index) => ScrollViewItem(
                    width: 300,
                    height: 400,
                    imagePath: 'image/${index + 1}.jpg',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollViewItem extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;

  const ScrollViewItem({
    Key? key,
    required this.width,
    required this.height,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 253, 216, 96),
        borderRadius: BorderRadius.circular(10),
      ),
      width: width,
      height: height,
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
