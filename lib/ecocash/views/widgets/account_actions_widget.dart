//
//  account_actions_widget
//  ecocash
//
//  Created by Ngonidzashe Mangudya on 2/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class AccountActionsWidget extends StatelessWidget {
  const AccountActionsWidget({
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
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  CupertinoIcons.reply_all,
                  color: EcocashColors.white,
                ),
                SizedBox(
                  height: sy(7),
                ),
                Text(
                  'Request',
                  style: TextStyle(
                    color: EcocashColors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                    fontSize: sy(8),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  CupertinoIcons.badge_plus_radiowaves_right,
                  color: EcocashColors.white,
                ),
                SizedBox(
                  height: sy(7),
                ),
                Text(
                  'Send',
                  style: TextStyle(
                    color: EcocashColors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                    fontSize: sy(8),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  CupertinoIcons.rectangle_dock,
                  color: EcocashColors.white,
                ),
                SizedBox(
                  height: sy(7),
                ),
                Text(
                  'Payment',
                  style: TextStyle(
                    color: EcocashColors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                    fontSize: sy(8),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    });
  }
}
