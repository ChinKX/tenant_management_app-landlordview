import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/app_screens/tenancy_form.dart';
import 'package:tenant_management_app_landlordview/models/tenancy_model.dart';

class TenancyCardWidget extends StatefulWidget {
  final TenancyModel tenancy;

  const TenancyCardWidget({Key key, this.tenancy}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TenancyCardWidgetState();
}

class _TenancyCardWidgetState extends State<TenancyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        dense: true,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "${widget.tenancy.completed ? "Signed" : "Pending"}",
              style: TextStyle(
                  inherit: true, fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
            IconButton(
              onPressed: !widget.tenancy.completed
                  ? () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => TenancyForm()));
                    }
                  : null,
              icon: !widget.tenancy.completed
                  ? Icon(
                      Icons.assignment,
                      color: Colors.blueAccent,
                    )
                  : Icon(
                      Icons.assignment_turned_in,
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
            shadowColor: widget.tenancy.color.withOpacity(0.4),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: widget.tenancy.color,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Icon(
                  widget.tenancy.icon,
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
              widget.tenancy.name,
              style: TextStyle(
                  inherit: true, fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Contract Duration: ',
                  style: TextStyle(
                      inherit: true, fontSize: 14.0, color: Colors.black45)),
              Text('From: ' + widget.tenancy.from,
                  style: TextStyle(
                      inherit: true, fontSize: 12.0, color: Colors.black45)),
              SizedBox(
                width: 20,
              ),
              Text('To: ' + widget.tenancy.to,
                  style: TextStyle(
                      inherit: true, fontSize: 12.0, color: Colors.black45)),
            ],
          ),
        ),
      ),
    );
  }
}
