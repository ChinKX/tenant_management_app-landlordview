import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/models/maintenance_contractor_model.dart';
import 'package:tenant_management_app_landlordview/models/property_model.dart';

class MaintenanceModel {
  IconData _icon;
  String _name, _date, _hour;
  Color _color;
  double _amount;
  String _maintenanceType;
  bool _completed;
  String _id;
  bool _scheduled;
  PropertyModel _property;
  MaintenanceContractorModel _maintenanceContractor;

  MaintenanceModel(this._icon, this._name, this._date, this._hour, this._color,
      this._amount, this._maintenanceType, this._completed, this._id, this._scheduled, this._property, this._maintenanceContractor);

  String get name => _name;

  String get date => _date;

  String get hour => _hour;

  double get amount => _amount;

  String get type => _maintenanceType;

  IconData get icon => _icon;

  Color get color => _color;

  bool get completed => _completed;

  String get id => _id;

  bool get scheduled => _scheduled;

  PropertyModel get property => _property;

  MaintenanceContractorModel get maintenanceContractor => _maintenanceContractor;
}