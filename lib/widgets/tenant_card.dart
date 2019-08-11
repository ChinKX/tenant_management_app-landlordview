import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/app_screens/payment.dart';
import 'package:tenant_management_app_landlordview/models/tenant_model.dart';

class TenantCardWidget extends StatefulWidget {
  final TenantModel tenant;

  const TenantCardWidget({Key key, this.tenant}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TenantCardWidgetState();
}

class _TenantCardWidgetState extends State<TenantCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        dense: true,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Payment(rentalIdx: widget.tenant.rentalIdx)));
              },
              icon: !widget.tenant.paid
                  ? Icon(
                    Icons.priority_high,
                    color: Colors.red,
                  )
                  : Icon(
                    Icons.done,
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
            shadowColor: widget.tenant.color.withOpacity(0.4),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      widget.tenant.imgPath
                    ),
                  )
                ),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              widget.tenant.name,
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
              Text(widget.tenant.propertyNo,
                  style: TextStyle(
                      inherit: true, fontSize: 12.0, color: Colors.black45)),
              SizedBox(
                width: 20,
              ),
              Text("Status:  ${widget.tenant.paid ? "Paid" : "Overdue"}",
                  style: TextStyle(
                      inherit: true, fontSize: 12.0, color: Colors.black45)),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
