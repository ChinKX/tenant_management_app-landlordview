import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/app_screens/maintenance_contractor.dart';
import 'package:tenant_management_app_landlordview/models/maintenance_model.dart';

class MaintenanceDetails extends StatefulWidget {
  MaintenanceModel maintenance;

  MaintenanceDetails(this.maintenance);
  
  @override
  _MaintenanceDetailsState createState() => _MaintenanceDetailsState();
}

class _MaintenanceDetailsState extends State<MaintenanceDetails> {

  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maintenance ' + widget.maintenance.id),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Issue:", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              subtitle: Text(widget.maintenance.name),
            ),
            Divider(),
            ListTile(
              title: Text("Maintenance Type:", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              subtitle: Text(widget.maintenance.type)
            ),
            Divider(),
            ListTile(
              title: Text("Scheduled Date:", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              subtitle: Text(widget.maintenance.date),
            ),
            Divider(),
            ListTile(
              title: Text("Scheduled Time:", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              subtitle: Text(widget.maintenance.hour),
            ),
            Divider(),
            ListTile(
              title: Text("Assigned Maintenance Contractor:", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              subtitle: widget.maintenance.scheduled ? Text(widget.maintenance.maintenanceContractor.name) : Text('-'),
              trailing: !widget.maintenance.scheduled ? Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Assign'),
                  IconButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => MaintenanceContractor())),
                    icon:Icon(Icons.assignment_ind),
                  )
                ],
              ) : null
            ),
            Divider(),
            ListTile(
              title: Text("Property Involved:", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              subtitle: Text(widget.maintenance.property.propertyNo)
            ),
            Divider(),
            ListTile(
              title: Text("Status:", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              subtitle: widget.maintenance.completed ? Text('Done') : Text('In Progress'),
            ),
          ],
        ),
      ),
    );
  }
}
