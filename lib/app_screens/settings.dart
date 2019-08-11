import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  String _screenType;

  SettingsScreen(this._screenType);
  
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _rentType = ['Unit', 'Room'];
  var _location = '';
  //var _priceRange = '';
  var _bedrooms = [2, 3, 4, 5];
  //var _bathrooms = [2, 3];
  //var _leaseTerm = ['One Year', 'Two Years or More', 'Flexible'];

  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Rent Type"),
              trailing: DropdownButton<String>(
                items: _rentType.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: 'Unit',
                onChanged: (String newValueSelected) {
                  // Your code to execute, when a menu item is selected from dropdown
                },
              ),
            ),
            Divider(),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Location',
                      hintText: 'Enter desired location',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Divider(),
            ListTile(
              title: Text("Bedrooms"),
              trailing: DropdownButton<String>(
                items: _bedrooms.map((int value) {
                  return DropdownMenuItem<String>(
                    value: value.toString(),
                    child: Text(value.toString()),
                  );
                }).toList(),
                value: '2',
                onChanged: (String newValueSelected) {
                  // Your code to execute, when a menu item is selected from dropdown
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: widget._screenType == 'set_prefs' ? Icon(Icons.add_alert) : Icon(Icons.search),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
