import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/app_screens/profile.dart';
import 'package:tenant_management_app_landlordview/models/maintenance_contractor_model.dart';

class MaintenanceContractorCardWidget extends StatefulWidget {
  final MaintenanceContractorModel maintenanceContractor;

  const MaintenanceContractorCardWidget({Key key, this.maintenanceContractor})
      : super(key: key);

  @override
  State<StatefulWidget> createState() =>
      _MaintenanceContractorCardWidgetState();
}

class _MaintenanceContractorCardWidgetState
    extends State<MaintenanceContractorCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        dense: true,
        trailing: IconButton(
          icon: Icon(Icons.send),
          onPressed: () => {
            print('Send request')
          },
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Material(
            elevation: 10,
            shape: CircleBorder(),
            shadowColor: widget.maintenanceContractor.color.withOpacity(0.4),
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
                    backgroundImage:
                        AssetImage(widget.maintenanceContractor.imgPath),
                  )),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              widget.maintenanceContractor.name,
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
              Text('Expertise: ' + widget.maintenanceContractor.expertise,
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
