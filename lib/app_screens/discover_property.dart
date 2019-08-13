import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tenant_management_app_landlordview/app_screens/property_details.dart';
import 'package:tenant_management_app_landlordview/app_screens/settings.dart';

class DiscoverProperty extends StatefulWidget {
  @override
  _DiscoverPropertyState createState() => _DiscoverPropertyState();
}

class _DiscoverPropertyState extends State<DiscoverProperty> {
  List allImgs = ['assets/images/pic1.jpg', 'assets/images/pic2.jpg'];
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Rent house',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Search..."),
                        onSubmitted: (String place) {
                          if (place.isNotEmpty) {
                            //performSearch(place);
                          }
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SettingsScreen('search')));
                      },
                      child: Icon(
                        FontAwesomeIcons.slidersH,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Text('Rent',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                          _buildCard('Chris', 'assets/images/chris.jpg',
                              '2,800', 'Alam Nusantara, Setia Alam', '3', '2', 'Unit'),
                          _buildCard('Hugh', 'assets/images/hugh.jpg', '2,200',
                              'The Lake Residence, Puchong', '5', '3', 'Room')
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  _buildCard(String name, String imgPath, String rental, String location,
      String noOfRooms, String noOfBathrooms, String rentType) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return PropertyDetails(
                name: name, imgPath: imgPath, rental: rental, location: location, noOfRooms: noOfRooms, noOfBathrooms: noOfBathrooms, rentType: rentType,);
          }));
        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2.0)
                  ]),
              child: Column(children: <Widget>[
                SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: MediaQuery.of(context).size.width - 25.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 5.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(name,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text('6 minutes ago',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 11.0,
                                      color: Colors.grey))
                            ],
                          )
                        ],
                      )),
                      Text(
                        'RM' + rental + '/month',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            color: Color(0xFFFE6643)),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            Text(location,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.0,
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: customListTile(noOfRooms, noOfBathrooms, rentType),
                        )
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 125.0,
                          width: (MediaQuery.of(context).size.width) / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/pic1.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 5.0),
                        Column(children: <Widget>[
                          Container(
                            height: 60.0,
                            width:
                                (MediaQuery.of(context).size.width - 90.0) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/pic1.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(height: 5.0),
                          Container(
                            height: 60.0,
                            width:
                                (MediaQuery.of(context).size.width - 90.0) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/pic1.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ])
                      ],
                    ))
              ])),
        ));
  }

  Widget customListTile(String noOfRooms, String noOfBathrooms, String rentType) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.hotel),
          SizedBox(
            width: 5.0,
          ),
          Text(noOfRooms + ' | '),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.hot_tub),
          SizedBox(
            width: 5.0,
          ),
          Text(noOfBathrooms),
          SizedBox(
            width: 5.0,
          ),
          Text(' | ' + rentType)
        ],
      ),
    );
  }
}
