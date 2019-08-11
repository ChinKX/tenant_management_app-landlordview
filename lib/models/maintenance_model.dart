import 'package:flutter/material.dart';

class MaintenanceModel {
  IconData _icon;
  String _name, _date, _hour;
  Color _color;
  double _amount;
  String _maintenanceType;
  bool _completed;

  MaintenanceModel(this._icon, this._color, this._name, this._date, this._hour,
      this._amount, this._maintenanceType, this._completed);

  String get name => _name;

  String get date => _date;

  String get hour => _hour;

  double get amount => _amount;

  String get type => _maintenanceType;

  IconData get icon => _icon;

  Color get color => _color;

  bool get completed => _completed;
}