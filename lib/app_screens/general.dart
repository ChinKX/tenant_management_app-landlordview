import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/app_screens/maintenance.dart';
import 'package:tenant_management_app_landlordview/app_screens/profile.dart';
import 'package:tenant_management_app_landlordview/app_screens/property_listings.dart';
import 'package:tenant_management_app_landlordview/app_screens/tenancy.dart';
import 'package:tenant_management_app_landlordview/data/data.dart';
import 'package:tenant_management_app_landlordview/models/maintenance_model.dart';
import 'package:tenant_management_app_landlordview/models/tenancy_model.dart';
import 'package:tenant_management_app_landlordview/utils/screen_size.dart';

class GeneralPage extends StatelessWidget {
  MaintenanceModel maintenance = getMaintenancesCard()[0];
  TenancyModel tenancy = getTenanciesCard()[0];

  String name = 'Chris';
  String imgPath = 'assets/images/chris.jpg';
  String rental = '2,800';
  String location = 'Alam Nusantara, Setia Alam';
  String noOfRooms = '3';
  String noOfBathrooms = '2';

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 20,
          top: 70,
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Overview",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Icon(Icons.home)),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Current Lease",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              inherit: true,
              letterSpacing: 0.4,
            ),
          ),
          Row(
            children: <Widget>[
              colorCard("Property Listings", '2 Listed Properties',
                  context, Color(0xFFF67280), Icons.location_on),
              colorCard("Number of Tenants", '2 Tenants', context, Color(0xFFC06C84),
                  Icons.person),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Maintenance Requests",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Varela",
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Maintenance())),
            child: Container(
              margin: EdgeInsets.only(
                top: 15,
                right: 20,
              ),
              height: screenAwareSize(
                  _media.longestSide <= 775 ? 180 : 130, context),
              decoration: BoxDecoration(
                color: Color(0xff6C5B7B),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    blurRadius: 6,
                    spreadRadius: 10,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin:
                          EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            maintenance.name,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.build,
                            color: Colors.white,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Status:  ${maintenance.completed ? "Completed" : "In Progress"}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Maintenance Type:  ' + maintenance.type,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Scheduled Date: ' + maintenance.date,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 30.0),
                          Text(
                            'Time: ' + maintenance.hour,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Tenancy Agreements",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Varela",
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => Tenancy())),
            child: Container(
              margin: EdgeInsets.only(
                top: 15,
                right: 20,
              ),
              height:
                  screenAwareSize(_media.longestSide <= 775 ? 180 : 130, context),
              decoration: BoxDecoration(
                color: Color(0xff355C7D),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    blurRadius: 6,
                    spreadRadius: 10,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            tenancy.name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.library_books,
                            color: Colors.white,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Status:  ${tenancy.completed ? "Completed" : "Pending"}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Contract Duration:  ' + tenancy.duration,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'From: ' + tenancy.from,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 30.0),
                          Text(
                            'To: ' + tenancy.to,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget colorCard(String text, String subtitle, BuildContext context,
      Color color, IconData icon) {
    final _media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => text == 'Property Listings'
              ? PropertyListings()
              : ProfileScreen(name, imgPath))),
      child: Container(
        margin: EdgeInsets.only(top: 15, right: 15),
        padding: EdgeInsets.all(15),
        height: screenAwareSize(100, context),
        width: _media.width / 2 - 25,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: color.withOpacity(0.4),
                  blurRadius: 16,
                  spreadRadius: 0.2,
                  offset: Offset(0, 8)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 115.0,
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  icon,
                  color: Colors.white60,
                )
              ],
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
