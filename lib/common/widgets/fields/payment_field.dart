// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:activities_time_tracker/features/add_activity/widgets/add_activity_body.dart';
import 'package:activities_time_tracker/utils/colors.dart';

class PaymentTextField extends StatelessWidget {
  final DoubleCallback onPaymentSubmitted;
  const PaymentTextField({
    Key? key,
    required this.onPaymentSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 2, left: 6),
          child: Text(
            'Payment',
            style: TextStyle(fontSize: 16),
          ),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return null;
            }
            onPaymentSubmitted(double.parse(value));
            return null;
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: 'Payment amount',
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                '€ ',
                style: TextStyle(fontSize: 18),
              ),
            ),
            prefixIconConstraints: BoxConstraints(minWidth: 28),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            filled: true,
            fillColor: secondaryBackColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(color: principalColorLight, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(color: accentColor),
            ),
            contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          ),
          cursorColor: accentColor,
        ),
      ],
    );
  }
}
