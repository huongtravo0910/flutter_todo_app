import 'package:flutter/material.dart';
import 'package:flutter_todo_app/utils/app_theme.dart';

class MyCard extends StatelessWidget {
  final Widget child;

  const MyCard({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        constraints: BoxConstraints(minWidth: 100, minHeight: 40),
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45.withOpacity(0.2),
              offset: Offset(0.0, 3.0),
              spreadRadius: 1.0,
              blurRadius: 1.0,
            ),
          ],
          color: AppTheme.of(context).color.canvasColor,
          // color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        ),
      ),
    );
  }
}
