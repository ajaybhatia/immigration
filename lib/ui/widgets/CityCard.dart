import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String imageURL;
  final String cityName;

  CityCard({@required this.imageURL, @required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: 250,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(
              imageURL,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
        left: 20,
        bottom: 20,
        child: Text(
          cityName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
