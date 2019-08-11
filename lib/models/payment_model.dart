import 'package:flutter/material.dart';

class PaymentModel {
  IconData _icon;
  String _name, _issueDate, _paidDate;
  Color _color;
  double _amount;
  String _paymentType;
  bool _completed;

  PaymentModel(this._icon, this._color, this._name, this._issueDate, this._paidDate,
      this._amount, this._paymentType, this._completed);

  String get name => _name;

  String get issueDate => _issueDate;

  String get paidDate => _paidDate;

  double get amount => _amount;

  String get type => _paymentType;

  IconData get icon => _icon;

  Color get color => _color;

  bool get completed => _completed;
}