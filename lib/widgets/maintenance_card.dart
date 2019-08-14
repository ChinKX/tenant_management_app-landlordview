import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/app_screens/maintenance_details.dart';
import 'package:tenant_management_app_landlordview/app_screens/payment_form.dart';
import 'package:tenant_management_app_landlordview/models/maintenance_model.dart';

class MaintenanceCardWidget extends StatefulWidget {
  final MaintenanceModel maintenance;

  const MaintenanceCardWidget({Key key, this.maintenance}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MaintenanceCardWidgetState();
}

class _MaintenanceCardWidgetState extends State<MaintenanceCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      child: ListTile(
        dense: true,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "${widget.maintenance.completed ? "Done" : "In Progress"}",
              style: TextStyle(
                  inherit: true, fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
            IconButton(
              onPressed: widget.maintenance.completed
                  ? () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => PaymentForm()));
                    }
                  : null,
              icon: !widget.maintenance.completed
                  ? Icon(
                      Icons.assignment,
                      color: Colors.blueAccent,
                    )
                  : Icon(
                      Icons.payment,
                      color: Colors.green,
                    ),
            )
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Material(
            elevation: 10,
            shape: CircleBorder(),
            shadowColor: widget.maintenance.color.withOpacity(0.4),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: widget.maintenance.color,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Icon(
                  widget.maintenance.icon,
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
              widget.maintenance.name,
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
              Text(widget.maintenance.date,
                  style: TextStyle(
                      inherit: true, fontSize: 12.0, color: Colors.black45)),
              SizedBox(
                width: 20,
              ),
              Text(widget.maintenance.hour,
                  style: TextStyle(
                      inherit: true, fontSize: 12.0, color: Colors.black45)),
              Spacer(),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => MaintenanceDetails(widget.maintenance)));
      },
    ));
  }
}
