import 'package:common_ui/src/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PullToRefreshList extends PlatformWidget {
  final Widget listview;
  final Future<void> Function() onRefreshCallback;

  PullToRefreshList({required this.listview, required this.onRefreshCallback});

  @override
  Widget buildCupertino(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: onRefreshCallback,
        ),
        listview,
      ],
    );
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () async => onRefreshCallback(),
        child: listview);
  }
}
