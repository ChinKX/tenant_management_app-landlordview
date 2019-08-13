import 'package:flutter/material.dart';

class CreateListing extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
    return _CreateListingState();
  }
}

class _CreateListingState extends State<CreateListing> {

	final double  _minimumPadding = 5.0;

  int _radioValue = 0;
  var _noOfBedrooms = ['2', '3', '4', '5', '6+'];
  var _noOfBathrooms = ['2', '3', '4+'];

	@override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
	    appBar: AppBar(
        title: Text(
            'Create Listing',
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
		    margin: EdgeInsets.all(_minimumPadding * 2),
		    child: ListView(
			    children: <Widget>[
            Text(
              'Rent Type',
              style: textStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text('Unit'),
                new Radio(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text('Room'),
              ]
            ),
				    Padding(
					    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
					    child: TextField(
					    keyboardType: TextInputType.multiline,
              maxLines: 4,
              style: textStyle,
					    decoration: InputDecoration(
						    labelText: 'Location',
                labelStyle: textStyle,
						    border: OutlineInputBorder(
							    borderRadius: BorderRadius.circular(5.0)
						    )
					    ),
				    )),
				    Padding(
					    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
					    child: TextField(
					    keyboardType: TextInputType.number,
              style: textStyle,
					    decoration: InputDecoration(
							    labelText: 'Rental per month',
							    labelStyle: textStyle,
                  border: OutlineInputBorder(
									    borderRadius: BorderRadius.circular(5.0)
							    )
					    ),
				    )),
            ListTile(
              title: Text("Number of Bedrooms"),
              trailing: DropdownButton<String>(
                items: _noOfBedrooms.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: '2',
                onChanged: (String newValueSelected) {
                  // Your code to execute, when a menu item is selected from dropdown
                },
              ),
            ),
            ListTile(
              title: Text("Number of Bathrooms"),
              trailing: DropdownButton<String>(
                items: _noOfBathrooms.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: '2',
                onChanged: (String newValueSelected) {
                  // Your code to execute, when a menu item is selected from dropdown
                },
              ),
            ),
            Padding(
					    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
					    child: TextField(
					    keyboardType: TextInputType.multiline,
              maxLines: 4,
              style: textStyle,
					    decoration: InputDecoration(
							    labelText: 'Other Descriptions',
							    labelStyle: textStyle,
                  border: OutlineInputBorder(
									    borderRadius: BorderRadius.circular(5.0)
							    )
					    ),
				    )),
            Padding(
					    padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
					    child: Row(children: <Widget>[
				    	Expanded(
						    child: RaisedButton(
                  color: Colors.amberAccent,
							    child: Text('Save', textScaleFactor: 2.0,),
							    onPressed: () {

							    },
						    ),
					    ),
				    ],)),
			    ],
		    ),
	    ),
    );
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }
}
