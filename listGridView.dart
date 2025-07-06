import 'package:flutter/material.dart';

class listGridView extends StatelessWidget{
  final List<String> fruits = [
    "Apple", "Banana", "Cherry", "Date", "Fig", "Grapes", "Kiwi", "Lemon"
  ];
  final List<String> assetImages = [
    'assets/img1.jpeg',
    'assets/img2.jpeg',
    'assets/img3.jpeg',
    'assets/img4.jpeg',
    'assets/img5.jpeg',
    'assets/img6.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView & GridView with Assets")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("ListView Example",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.food_bank),
                    title: Text(fruits[index]),
                  );
                },
              ),
            ),
            Divider(),
            Text("GridView Example",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
              height: 300,
              padding: EdgeInsets.all(8),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: assetImages.map((assetPath) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(assetPath, fit: BoxFit.cover),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}