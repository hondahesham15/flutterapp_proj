import 'package:flutter/material.dart';
import 'package:flutter_app/data/locations.dart';
import 'package:flutter_app/item_screen.dart';
import 'package:flutter_app/models/location.dart';

class ItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Location> locations = locationsAll().listobj;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: ListView.builder(itemCount: locations.length,itemBuilder: (context,index) {
        final Location location = locations[index];
        return GestureDetector(onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return ItemScreen(location: location);
          }));
        },
          child: Card(
            child: Column(
              children: [
                Image.network(location.imageUrl),
                Text(location.name),
                Text(location.theme,style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        );
      },
      ),
    );
  }
}
