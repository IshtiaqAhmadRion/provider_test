import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/data.dart';
import 'package:provider_test/receive.dart';

void main() {
  // ignore: non_constant_identifier_names
  runApp(ChangeNotifierProvider(create: (Context) => Data(), child: MyApp()));
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
    final providerData = Provider.of<Data>(context);
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
            RaisedButton(onPressed: () {
              providerData.increment();
            }),
            SizedBox(height: 10),
            // ignore: deprecated_member_use
            RaisedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReceiveData()));
            }),
            // ignore: deprecated_member_use
            RaisedButton(onPressed: () {
              providerData.adder();
            }),
            SizedBox(height: 10),
            Text(
              providerData.add.toString(),
            ),
          ],
        ),
      ),
    ));
  }
}
