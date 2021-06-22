import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/data.dart';

class ReceiveData extends StatelessWidget {
  const ReceiveData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final providerData = Provider.of<Data>(context);

    return Scaffold(
      body: Center(child: Text(providerData.value.toString())),
    );
  }
}