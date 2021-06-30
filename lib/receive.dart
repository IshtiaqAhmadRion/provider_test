import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/data.dart';
import 'package:provider_test/add.dart';

class ReceiveData extends StatelessWidget {
  const ReceiveData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(providerData.value.toString())),
          SizedBox(height: 20),

          // ignore: deprecated_member_use
          RaisedButton(onPressed: () {
            providerData.adder();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Added()));
          })
        ],
      )),
    );
  }
}
