import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/multiple_screen_provider.dart';

class Multiple_provider extends StatefulWidget {
  const Multiple_provider({super.key});

  @override
  State<Multiple_provider> createState() => _Multiple_providerState();
}

class _Multiple_providerState extends State<Multiple_provider> {

  @override
  Widget build(BuildContext context) {

    final MultiScreenProvider = Provider.of<Multiple_screen_provider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Multiple Provider'
      ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer <Multiple_screen_provider>(builder: (context, value, child){
            return Slider(value: value.value, onChanged: (val){
              value.setValue(val);
            });
          }),

          Consumer <Multiple_screen_provider>(builder: (context, value, child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    color: Colors.green.withOpacity(value.value),
                    child: Center(child: Text('Container 1')),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    color: Colors.red.withOpacity(value.value),
                    child: Center(child: Text('Container 2',)),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
