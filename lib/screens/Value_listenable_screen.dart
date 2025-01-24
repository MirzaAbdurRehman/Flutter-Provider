import 'package:flutter/material.dart';

class Value_Listenable_Screen extends StatelessWidget {
   Value_Listenable_Screen({super.key});

  ValueNotifier<int> _count = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Value Listenable Screen'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: _count,
              builder: (context, value, child){
                return Center(child: Text(_count.value.toString(),style: TextStyle(fontSize: 57),));
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _count.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
