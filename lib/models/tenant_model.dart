import 'package:flutter/material.dart';

class TenantModel {
  String _name, _propertyNo, _imgPath;
  int _rentalsIdx;
  Color _color;
  bool _paid;

  TenantModel(this._color, this._name, this._propertyNo, this._imgPath, this._rentalsIdx,
      this._paid);

  String get name => _name;

  String get propertyNo => _propertyNo;

  String get imgPath => _imgPath;

  int get rentalIdx => _rentalsIdx;

  Color get color => _color;

  bool get paid => _paid;
}
