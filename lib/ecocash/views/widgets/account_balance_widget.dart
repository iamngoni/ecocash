//
//  account_balance_widget
//  ecocash
//
//  Created by Ngonidzashe Mangudya on 2/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class AccountBalanceWidget extends StatelessWidget {
  const AccountBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: sx(20),
          vertical: sy(10),
        ),
        decoration: BoxDecoration(
          color: EcocashColors.lightBlue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: r'$50,000',
                  style: TextStyle(
                    color: EcocashColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: sy(17),
                  ),
                ),
                WidgetSpan(
                  child: Transform.translate(
                    offset: Offset(sx(7), -sy(6)),
                    child: Text(
                      'USD',
                      //superscript is usually smaller in size
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: EcocashColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: sy(10),
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Image(
              image: AssetImage('assets/ecocash.png'),
              width: sx(150),
            ),
          ],
        ),
      );
    });
  }
}
