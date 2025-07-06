import 'package:flutter/material.dart';
import 'package:myfirstapp/UI/user_input.dart';
import 'UI/aboutus.dart';
import 'UI/contactus.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Free Tutorial TV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Create a Clickable Image Icon link
            GestureDetector(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('About Us')));
              },
              child: Image.asset('lib/Image/aboutus.jpg',
                width: 100,
                height: 100,
              ),


            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder:(_) => AboutUsPage()),
              );
            },
                child: Text('About Us'),),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder:(_) => ContactUsPage()),
              );
            },
              child: Text('Contact Us'),),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder:(_) => UserInput()),
              );
            },
              child: Text('User Input Form'),),
          ],
        ),
      ),
    );
  }
}
