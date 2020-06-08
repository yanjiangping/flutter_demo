import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatefulWidget {
  @override
  _ConstrainedBoxPageState createState() => _ConstrainedBoxPageState();
}

class _ConstrainedBoxPageState extends State<ConstrainedBoxPage> {

  Widget redBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),  //父
        child: UnconstrainedBox( //“去除”父级限制
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
            child: redBox,
          ),
        )
    );
  }
}
