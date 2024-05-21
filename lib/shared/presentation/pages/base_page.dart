import 'package:flutter/material.dart';

import '../../design_system/custom_colors.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    this.body,
    this.appBar,
    this.bottomBar,
  });

  final Widget? appBar;
  final Widget? bottomBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.primary,
      bottomNavigationBar: bottomBar,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            if (appBar != null) appBar!,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: DSColors.contrastBase[400]!,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
