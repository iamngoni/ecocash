//
//  ecocash_home
//  ecocash
//
//  Created by Ngonidzashe Mangudya on 2/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';
import '../widgets/account_actions_widget.dart';
import '../widgets/account_balance_widget.dart';
import '../widgets/account_information_widget.dart';
import '../widgets/netx_payments_list.dart';

class EcocashHome extends StatelessWidget {
  const EcocashHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Scaffold(
        backgroundColor: EcocashColors.darkBlue,
        body: Container(
          height: context.height,
          child: Stack(
            children: [
              Container(
                height: context.height,
                width: context.width,
                padding: EdgeInsets.symmetric(
                  horizontal: sx(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: sy(40),
                    ),
                    const AccountInformationWidget(),
                    SizedBox(
                      height: sy(15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Account',
                          style: TextStyle(
                            color: EcocashColors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w400,
                            fontSize: sy(9),
                          ),
                        ),
                        Icon(
                          CupertinoIcons.chevron_forward,
                          color: EcocashColors.white.withOpacity(0.8),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sy(15),
                    ),
                    const AccountBalanceWidget(),
                    SizedBox(
                      height: sy(10),
                    ),
                    AccountActionsWidget(),
                    SizedBox(
                      height: sy(15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Next Payment',
                          style: TextStyle(
                            color: EcocashColors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w400,
                            fontSize: sy(9),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'View All',
                              style: TextStyle(
                                color: EcocashColors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            SizedBox(
                              width: sx(10),
                            ),
                            Icon(
                              CupertinoIcons.chevron_forward,
                              color: EcocashColors.white.withOpacity(0.8),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const NextPaymentsList(),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: context.width,
                  padding: EdgeInsets.symmetric(
                    horizontal: sx(20),
                    vertical: sy(10),
                  ),
                  decoration: BoxDecoration(
                    color: EcocashColors.lighterBlue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Menu',
                            style: TextStyle(
                              color: EcocashColors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: sy(11),
                            ),
                          ),
                          Container(
                            width: sx(90),
                            height: sy(3),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.question_circle,
                            color: EcocashColors.black,
                            size: sy(18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sy(15),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: sx(10),
                                vertical: sy(10),
                              ),
                              decoration: BoxDecoration(
                                color:
                                    EcocashColors.lighterBlue3.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.bolt_circle,
                                    color: EcocashColors.darkBlue,
                                  ),
                                  SizedBox(
                                    height: sy(5),
                                  ),
                                  Text(
                                    'Top Up',
                                    style: TextStyle(
                                      color: EcocashColors.darkBlue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: sy(9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sx(15),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: sx(10),
                                vertical: sy(10),
                              ),
                              decoration: BoxDecoration(
                                color:
                                    EcocashColors.lighterBlue3.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.wifi,
                                    color: EcocashColors.darkBlue,
                                  ),
                                  SizedBox(
                                    height: sy(10),
                                  ),
                                  Text(
                                    'Airtime',
                                    style: TextStyle(
                                      color: EcocashColors.darkBlue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: sy(9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sx(15),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: sx(10),
                                vertical: sy(10),
                              ),
                              decoration: BoxDecoration(
                                color:
                                    EcocashColors.lighterBlue3.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.archivebox,
                                    color: EcocashColors.darkBlue,
                                  ),
                                  SizedBox(
                                    height: sy(5),
                                  ),
                                  Text(
                                    'Banking',
                                    style: TextStyle(
                                      color: EcocashColors.darkBlue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: sy(9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: sx(10),
                                vertical: sy(10),
                              ),
                              decoration: BoxDecoration(
                                color:
                                    EcocashColors.lighterBlue3.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons
                                        .arrow_counterclockwise_circle,
                                    color: EcocashColors.darkBlue,
                                  ),
                                  SizedBox(
                                    height: sy(5),
                                  ),
                                  Text(
                                    'History',
                                    style: TextStyle(
                                      color: EcocashColors.darkBlue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: sy(9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sx(15),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: sx(10),
                                vertical: sy(10),
                              ),
                              decoration: BoxDecoration(
                                color:
                                    EcocashColors.lighterBlue3.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.car_detailed,
                                    color: EcocashColors.darkBlue,
                                  ),
                                  SizedBox(
                                    height: sy(10),
                                  ),
                                  Text(
                                    'Ride-Hailing',
                                    style: TextStyle(
                                      color: EcocashColors.darkBlue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: sy(9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sx(15),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: sx(10),
                                vertical: sy(10),
                              ),
                              decoration: BoxDecoration(
                                color:
                                    EcocashColors.lighterBlue3.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.money_dollar_circle,
                                    color: EcocashColors.darkBlue,
                                  ),
                                  SizedBox(
                                    height: sy(5),
                                  ),
                                  Text(
                                    'Savings',
                                    style: TextStyle(
                                      color: EcocashColors.darkBlue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: sy(9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sy(10),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
