import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourite_provider.dart';
import 'myFavourite.dart';


class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {


  @override
  Widget build(BuildContext context) {

    final favouriteProvider = Provider.of<FavouriteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Favourite Provider'
        ),
        centerTitle: true,
        actions: [

          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>myFavourite()));
          }, icon:Icon(Icons.favorite,color: Colors.redAccent,), )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1000,
                itemBuilder: (context,index){
              return Consumer<FavouriteProvider>(builder: (context, value, child){
                return ListTile(

                  onTap: (){

                    if(value.selectedItem.contains(index)){
                      value.removeItem(index);
                    }else{
                      value.addItem(index);
                    }

                  },
                  title: Text('Items: '+index.toString()),
                  trailing: Icon(
                      value.selectedItem.contains(index) ? Icons.favorite : Icons.favorite_border_outlined,
                    color: value.selectedItem.contains(index) ? Colors.redAccent : Colors.grey,
                  ),
                );
              });
            }),
          )
        ],
      ),
    );
  }
}
