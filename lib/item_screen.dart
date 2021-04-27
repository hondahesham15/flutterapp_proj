import 'package:flutter/material.dart';
import 'package:flutter_app/models/location.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemScreen extends StatelessWidget {

  ItemScreen({this.location});

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      //  Using SingleChildScrollView to avoid text overflow issues
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(location.name,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Image.network(location.imageUrl),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(location.description),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_on),
        onPressed: () async{
          await launch(location.locationUrl);
        },
      ),
    );
  }
}
