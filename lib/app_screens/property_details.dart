import 'package:flutter/material.dart';

class PropertyDetails extends StatelessWidget {
  String name;
  String imgPath;
  String rental;
  String location;
  String noOfRooms;
  String noOfBathrooms;

  PropertyDetails({@required this.name, @required this.imgPath, @required this.rental, @required this.location,
     @required this.noOfRooms, @required this.noOfBathrooms});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .44,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/pic1.jpg'),
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.hardLight,
                  ),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: MediaQuery.of(context).size.height * .4 - 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage(this.imgPath),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(this.name,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .6 + 50,
              top: MediaQuery.of(context).size.height * .4 - 50,
              child: Container(
                padding: const EdgeInsets.only(left: 30, right: 20, top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                  ),
                  color: Colors.white,
                ),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'RM' + this.rental + '/month',
                              style: TextStyle(
                                color: Color(0xff632bbf),
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.bookmark_border,
                              size: 26,
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            this.location,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            customListTile(noOfRooms, noOfBathrooms),
                            Text('1,200 sq.ft')
                          ],
                        ),
                        SizedBox(height: 15),
                        Divider(
                          color: Colors.grey,
                          height: 2,
                        ),
                        SizedBox(height: 15),
                        Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Description",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Details of the property here.'
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          "Location",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            height: 145.0,
                            width: (MediaQuery.of(context).size.width),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/google_map.png'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: <Widget>[
                            _buildExpandedBtn('Ask a Question'),
                            SizedBox(width: 10),
                            _buildExpandedBtn('Express Interest'),
                          ],
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildExpandedBtn(String msg) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        height: 30,
        decoration: BoxDecoration(
          color: Color(0xFFe2d7f5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Text(
          msg,
          style: TextStyle(
            color: Color(0xff6732c1),
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget customListTile(String noOfRooms, String noOfBathrooms) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.hotel,
            size: 20.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(noOfRooms),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.hot_tub,
            size: 20.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(noOfBathrooms)
        ],
      ),
    );
  }
}
