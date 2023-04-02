//
//  ecocash_app
//  ecocash
//
//  Created by Ngonidzashe Mangudya on 2/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';

import 'ecocash_home.dart';

class EcocashApp extends StatelessWidget {
  const EcocashApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecocash',
      home: EcocashHome(),
    );
  }
}
