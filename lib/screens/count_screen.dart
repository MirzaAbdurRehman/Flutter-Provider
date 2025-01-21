import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class Count_Screen extends StatefulWidget {
  const Count_Screen({super.key});

  @override
  State<Count_Screen> createState() => _Count_ScreenState();
}

class _Count_ScreenState extends State<Count_Screen> {
  @override
  Widget build(BuildContext context) {

    final countProvider = Provider.of<Count_Provider>(context, listen: false); // listen false must bcz listen
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '"Counter App'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Consumer<Count_Provider>(builder: (context, value, child){
              print('only this widget is rebuild');
              return Text('Counter Value: '+ value.count.toString(),style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 32
              ),);

            }),

            SizedBox(height: MediaQuery.of(context).size.height * 0.1),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    countProvider.setCountIncreament();
                  },
                  child: Text("Increment"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                  countProvider.setCountDecreament();
                  },
                  child: Text("Decrement"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
