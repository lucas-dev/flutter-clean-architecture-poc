import 'package:common_ui/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends PlatformWidget {
  final TextEditingController controller;
  final void Function(String)? onChangedCallback;
  final void Function()? onClearCallback;

  SearchView({required this.controller, required this.onChangedCallback, required this.onClearCallback});

  @override
  Widget buildCupertino(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16), child: CupertinoSearchTextField(
      controller: controller,
      keyboardType: TextInputType.text,
      onChanged: ((query) => onChangedCallback!(query)),
      onSuffixTap: () {
        controller.clear();
        onClearCallback!();
      },
      placeholder: "Search",
    ));
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      onChanged: ((query) => onChangedCallback!(query)),
      decoration: InputDecoration(
        hintText: "Search",
        suffix: IconButton(
          onPressed: () {
            controller.clear();
            onClearCallback!();
          },
          icon: const Icon(Icons.clear),
        ),
        contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
