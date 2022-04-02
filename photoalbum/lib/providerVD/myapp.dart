import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:photoalbum/providerVD/MychangeNotifier.dart';
import 'package:provider/provider.dart';

import 'MycounterPage.dart';

class MycounterApp extends StatelessWidget {
  const MycounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        home: MycounterPage(),
      ),
    );
  }
}
