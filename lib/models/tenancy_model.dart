import 'package:flutter/material.dart';

class TenancyModel {
  IconData _icon;
  String _name, _from, _to;
  String _duration;
  Color _color;
  double _amount;
  bool _completed;

  TenancyModel(this._icon, this._color, this._name, this._from, this._to,
      this._duration, this._amount, this._completed);

  String get name => _name;

  String get from => _from;

  String get to => _to;

  double get amount => _amount;

  String get duration => _duration;

  IconData get icon => _icon;

  Color get color => _color;

  bool get completed => _completed;
}