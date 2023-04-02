//
//  next_payment_item
//  ecocash
//
//  Created by Ngonidzashe Mangudya on 2/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class NextPaymentItem extends StatelessWidget {
  const NextPaymentItem({
    required this.title,
    required this.amount,
    required this.assetPath,
    super.key,
  });

  final String title;
  final double amount;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Container(
        margin: EdgeInsets.only(
          bottom: sy(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage(assetPath),
                  width: sx(120),
                ),
                SizedBox(
                  width: sx(30),
                ),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: EcocashColors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w400,
                      fontSize: sy(10),
                    ),
                  ),
                ),
                Text(
                  '\$${amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: EcocashColors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w600,
                    fontSize: sy(10),
                  ),
                )
              ],
            ),
            SizedBox(
              height: sy(10),
            ),
            Divider(
              color: EcocashColors.white,
            ),
          ],
        ),
      );
    });
  }
}
