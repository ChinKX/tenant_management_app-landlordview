import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tenant_management_app_landlordview/app_screens/tenancy.dart';
import 'package:tenant_management_app_landlordview/models/property_model.dart';


class PropertyTenancyCardWidget extends StatefulWidget {
  final PropertyModel property;

  const PropertyTenancyCardWidget({Key key, this.property}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PropertyTenancyCardWidgetState();
}

class _PropertyTenancyCardWidgetState extends State<PropertyTenancyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: ListTile(
          dense: true,
          trailing: Icon(
            FontAwesomeIcons.list
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Material(
              elevation: 10,
              shape: CircleBorder(),
              shadowColor: Color(0xFFff415f).withOpacity(0.4),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFff415f),
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Icon(
                    FontAwesomeIcons.building,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Property ' + widget.property.propertyNo,
                style: TextStyle(
                    inherit: true, fontWeight: FontWeight.w700, fontSize: 16.0),
              ),
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Pending; ' + widget.property.pendingTenancyContracts.toString(),
                    style: TextStyle(
                        inherit: true, fontSize: 12.0, color: Colors.black45)),
                SizedBox(
                  width: 20,
                ),
                Text('Signed: ' + widget.property.signedTenancyContracts.toString(),
                    style: TextStyle(
                        inherit: true, fontSize: 12.0, color: Colors.black45)),
                Spacer(),
              ],
            ),
          ),
        ),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => Tenancy(propertyNo: widget.property.propertyNo))),
      )
    );
  }
}