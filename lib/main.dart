

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/data.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (Context)=> Data(),

    
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              providerData.value.toString(),
            ),
            SizedBox(height: 10), 
            // ignore: deprecated_member_use
            RaisedButton(onPressed: () {}),
            SizedBox(height: 10),
            // ignore: deprecated_member_use
            RaisedButton(onPressed: () {})
          ],
        ),
      ),
    ));
  }
}
