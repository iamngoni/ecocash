//
//  netx_payments_list
//  ecocash
//
//  Created by Ngonidzashe Mangudya on 2/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';

import 'next_payment_item.dart';

class NextPaymentsList extends StatelessWidget {
  const NextPaymentsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: [
          NextPaymentItem(
            title: 'DStv Premium',
            amount: 80,
            assetPath: 'assets/multichoice.png',
          ),
          NextPaymentItem(
            title: 'Liquid Power Pack',
            amount: 112,
            assetPath: 'assets/liquid.png',
          ),
        ],
      ),
    );
  }
}
