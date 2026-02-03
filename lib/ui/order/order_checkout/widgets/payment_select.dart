import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/domain/models/payment/payment.dart';

class PaymentSelect extends StatefulWidget {
  const PaymentSelect({
    super.key,
    this.paymentId,
    required this.paymentList,
    this.onChanged,
  });

  final int? paymentId;
  final List<Payment> paymentList;
  final ValueChanged<int?>? onChanged;

  @override
  State<PaymentSelect> createState() => _PaymentSelectState();
}

class _PaymentSelectState extends State<PaymentSelect> {
  int? paymentId;

  @override
  initState() {
    super.initState();
    paymentId = widget.paymentId;
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('请选择配送方式', style: KtextStyle.titleText),
        Expanded(
          child: RadioGroup<int>(
            key: ValueKey('payment'),
            groupValue: paymentId,
            onChanged: (int? value) {
              setState(() {
                paymentId = value;
              });
            },
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: widget.paymentList.length,
              itemBuilder: (context, index) {
                final payment = widget.paymentList[index];
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  title: Text(
                    payment.typeTitle!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    payment.typeDesc!,
                    style: TextStyle(fontSize: 12, color: Color(0xFF666666)),
                  ),
                  trailing: Radio<int>(value: payment.id!),
                  onTap: () {
                    setState(() {
                      paymentId = payment.id;
                    });
                  },
                );
              },
              separatorBuilder: (context, index) =>
                  const Divider(height: 1, color: Color(0xFFF2F2F2)),
            ),
          ),
        ),
        SizedBox(height: 16),
        FilledButton(
          onPressed: () {
            widget.onChanged?.call(paymentId);
            Navigator.pop(context);
          },
          style: FilledButton.styleFrom(minimumSize: Size(double.infinity, 44)),
          child: Text('确定'),
        ),
      ],
    );
  }
}
