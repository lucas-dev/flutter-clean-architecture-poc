import 'package:common_ui/src/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends PlatformWidget {
  final int length;
  final String Function(int) text;
  final void Function(int) onTapCallback;

  ListViewWidget(
      {required this.length, required this.text, required this.onTapCallback});

  @override
  Widget buildCupertino(BuildContext context) {
    return SliverToBoxAdapter(
        child: CupertinoFormSection(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => onTapCallback(index),
                  child: CupertinoFormRow(
                    prefix: Text(text(index)),
                    helper: null,
                    child: const Icon(
                      CupertinoIcons.chevron_right,
                      color: Color.fromARGB(255, 45, 118, 234),
                      size: 20,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
    );
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return ListView.separated(
      itemCount: length,
      itemBuilder: (context, index) {
        return InkWell(
          // Add the ripple effect
          onTap: () {},
          child: ListTile(
            title: Text(
              text(index),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            // Use Material Design 3 colors
            trailing: Icon(
              Icons.chevron_right,
              color: Theme.of(context).colorScheme.primary,
            ),
            onTap: () => {
              onTapCallback(index)
            },
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
