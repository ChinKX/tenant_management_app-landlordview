import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/app_screens/payment_form.dart';
import 'package:tenant_management_app_landlordview/models/payment_model.dart';

class PaymentCardWidget extends StatefulWidget {
  final PaymentModel payment;

  const PaymentCardWidget({Key key, this.payment}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PaymentCardWidgetState();
}

class _PaymentCardWidgetState extends State<PaymentCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        dense: true,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "RM ${widget.payment.amount}",
              style: TextStyle(
                  inherit: true, fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
            IconButton(
              onPressed: !widget.payment.completed ? () {
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => PaymentForm()));
              } : null,
              icon: !widget.payment.completed ? Icon(
                  Icons.priority_high,
                  color: Colors.red,
                ) : Icon(
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
            shadowColor: widget.payment.color.withOpacity(0.4),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: widget.payment.color,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Icon(
                  widget.payment.icon,
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
              widget.payment.name,
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
              Text('Issued: '),
              Text(widget.payment.issueDate,
                  style: TextStyle(
                      inherit: true, fontSize: 12.0, color: Colors.black45)),
              SizedBox(
                width: 20,
              ),
              Text('Paid: '),
              Text("${widget.payment.paidDate == '' ? "-" : widget.payment.paidDate}",
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
