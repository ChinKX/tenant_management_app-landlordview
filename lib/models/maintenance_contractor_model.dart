import 'package:flutter/material.dart';

class MaintenanceContractorModel {
  String _id, _name, _propertyNo, _imgPath, _expertise;
  Color _color;

  MaintenanceContractorModel(this._id, this._name, this._imgPath, this._propertyNo, this._expertise, this._color);

  String get id => _id;

  String get name => _name;

  String get propertyNo => _propertyNo;

  String get imgPath => _imgPath;

  String get expertise => _expertise;

  Color get color => _color;
}
