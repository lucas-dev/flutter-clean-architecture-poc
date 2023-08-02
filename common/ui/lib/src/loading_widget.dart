import 'package:common_ui/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends PlatformWidget {
  @override
  Widget buildCupertino(BuildContext context) {
    return CupertinoActivityIndicator();
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return CircularProgressIndicator();
  }

}
