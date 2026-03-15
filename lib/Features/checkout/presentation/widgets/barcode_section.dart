import 'package:flutter/material.dart';
import 'package:flutter_payment/core/styles/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarcodeSection extends StatelessWidget {
  const BarcodeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const FaIcon(
            FontAwesomeIcons.barcode,
            size: 64,
          ),
          Container(
            width: 114,
            height: 58,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                'PAID',
                style: Styles.style24.copyWith(
                  color: const Color(0xFF34A853),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
