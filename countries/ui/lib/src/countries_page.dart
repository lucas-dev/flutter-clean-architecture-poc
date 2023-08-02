import 'dart:io';

import 'package:countries_ui/src/widgets/countries_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountriesPage extends StatelessWidget {
  CountriesPage({Key? key}) : super(key: key);

  static Page page() {
    return Platform.isAndroid
        ? MaterialPage<void>(
            child: CountriesPage(),
          )
        : CupertinoPage<void>(child: CountriesPage());
  }

  @override
  Widget build(BuildContext context) {
    return CountriesScaffold(
      title: 'Countries',
    );
  }
}
