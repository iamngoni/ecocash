//
//  account_information_widget
//  ecocash
//
//  Created by Ngonidzashe Mangudya on 2/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class AccountInformationWidget extends StatelessWidget {
  const AccountInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Row(
        children: [
          Container(
            height: sy(30),
            width: sy(30),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ngoni.JPG'),
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: sx(20),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: TextStyle(
                    color: EcocashColors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                    fontSize: sy(9),
                  ),
                ),
                Text(
                  'Ngonidzashe Mangudya',
                  style: TextStyle(
                    color: EcocashColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: sy(10),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            CupertinoIcons.bell,
            color: EcocashColors.white,
            size: sy(18),
          ),
        ],
      );
    });
  }
}
