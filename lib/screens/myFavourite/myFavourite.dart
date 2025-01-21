import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourite_provider.dart';

class myFavourite extends StatefulWidget {
  const myFavourite({super.key});

  @override
  State<myFavourite> createState() => _myFavouriteState();
}

class _myFavouriteState extends State<myFavourite> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Favourites"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favouriteProvider.selectedItem.length,
              itemBuilder: (context, index) {
                final item = favouriteProvider.selectedItem[index]; // Get the actual item
                return ListTile(
                  onTap: () {
                    // Remove the item from favorites
                    favouriteProvider.removeItem(item);
                  },
                  title: Text('Item: $item'),
                  trailing: const Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  ),
                );
              },
            ),
          ),
          if (favouriteProvider.selectedItem.isEmpty)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "No favorite items yet.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
