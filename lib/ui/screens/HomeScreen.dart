import 'package:flutter/material.dart';
import 'package:immigration/ui/widgets/CityCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adventure",
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network('https://i.pravatar.cc/150?img=51'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Text(
                "Malaysia is waiting for you",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFACD3C),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "What would you like to discover?",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CityCard(
                    imageURL:
                        "http://static.asiawebdirect.com/m/.imaging/1080x720/website/kl/portals/malaysia-hotels-net/homepage/culturalcities/pagePropertiesImage.jpg",
                    cityName: "Kaula Lumpur",
                  ),
                  CityCard(
                    imageURL:
                        "http://static.asiawebdirect.com/m/.imaging/1080x720/website/kl/portals/penang-ws/homepage/areas/georgetown/pagePropertiesImage.jpg",
                    cityName: "Georgetown",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CityCard(
                    imageURL:
                        "http://static.asiawebdirect.com/m/.imaging/1080x720/website/kl/portals/malacca-ws/homepage/malacca-city/pagePropertiesImage.jpg",
                    cityName: "Malacca",
                  ),
                  CityCard(
                    imageURL:
                        "http://static.asiawebdirect.com/m/.imaging/1080x720/website/kl/portals/malaysia-hotels-net/homepage/culturalcities/johor-bahru/pagePropertiesImage.jpg",
                    cityName: "Johor Bahru",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
