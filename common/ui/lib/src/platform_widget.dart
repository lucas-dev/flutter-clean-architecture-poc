import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

abstract class PlatformWidget extends StatelessWidget {
  const PlatformWidget({super.key});

  Widget buildCupertino(BuildContext context);
  Widget buildMaterial(BuildContext context);

  Widget? buildWrapper(BuildContext context, Widget child) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final isCupertino = Platform.isIOS;
    late Widget child;

    if (isCupertino) {
      child = buildCupertino(context);
    } else {
      child = buildMaterial(context);
    }

    final wrapper = buildWrapper(context, child);

    if (wrapper == null) {
      return child;
    } else {
      return wrapper;
    }
  }
}
