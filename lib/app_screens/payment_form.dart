import 'package:flutter/material.dart';

class PaymentForm extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
    return _PaymentFormState();
  }
}

class _PaymentFormState extends State<PaymentForm> {

	final double  _minimumPadding = 5.0;
  double _payment = 0.0;

	@override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
//			resizeToAvoidBottomPadding: false,
	    appBar: AppBar(
		    title: Text('Simple Interest Calculator'),
	    ),

	    body: Container(
		    margin: EdgeInsets.all(_minimumPadding * 2),
		    child: ListView(
			    children: <Widget>[

				    getImageAsset(),

				    Padding(
					    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
					    child: TextField(
					    keyboardType: TextInputType.number,
              style: textStyle,
					    decoration: InputDecoration(
						    labelText: 'Payment Amount',
						    hintText: 'Enter Amount e.g. 120',
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
							    labelText: 'Name on card',
							    labelStyle: textStyle,
                  border: OutlineInputBorder(
									    borderRadius: BorderRadius.circular(5.0)
							    )
					    ),
				    )),

				    Padding(
					    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
					    child: Row(
					    children: <Widget>[

						    Expanded(child: TextField(
							    keyboardType: TextInputType.number,
                  style: textStyle,
							    decoration: InputDecoration(
									    labelText: 'Card Number',
                      labelStyle: textStyle,
									    border: OutlineInputBorder(
											    borderRadius: BorderRadius.circular(5.0)
									    )
							    ),
						    )),
					    ],
				    )),
				    Padding(
					    padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
					    child: Row(children: <Widget>[
                Expanded(child: TextField(
							    keyboardType: TextInputType.number,
                  style: textStyle,
							    decoration: InputDecoration(
									    labelText: 'Expiry date',     
						          hintText: 'MM/YY',
                      labelStyle: textStyle,
									    border: OutlineInputBorder(
											    borderRadius: BorderRadius.circular(5.0)
									    )
							    ),
						    )),
                Expanded(child: TextField(
							    keyboardType: TextInputType.number,
                  style: textStyle,
							    decoration: InputDecoration(
									    labelText: 'Security Number',
                      labelStyle: textStyle,
									    border: OutlineInputBorder(
											    borderRadius: BorderRadius.circular(5.0)
									    )
							    ),
						    )),
				    ],)),
            Padding(
					    padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
					    child: Row(children: <Widget>[
				    	Expanded(
						    child: RaisedButton(
                  color: Theme.of(context).accentColor,
							    child: Text('Pay', textScaleFactor: 1.5,),
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

  Widget getImageAsset() {

		AssetImage assetImage = AssetImage('assets/images/stripe_payment.png');
		Image image = Image(image: assetImage, width: 125.0, height: 125.0,);

		return Container(child: image, margin: EdgeInsets.all(_minimumPadding * 10),);
  }
}
