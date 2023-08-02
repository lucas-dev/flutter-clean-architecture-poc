import 'package:common_ui/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
                'ANABIN demo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
            ),
            LoadingWidget(),
          ],
        ),
      ),
    );
  }
}