import 'package:flutter/material.dart';

abstract class FooWidget extends StatefulWidget {
  const FooWidget({Key? key}) : super(key: key);

  @override
  _FooWidgetState createState();
}

abstract class _FooWidgetState extends State<FooWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/// now to be able to extend this you must extend both the widget and the state

class ImplementedFooWidget extends FooWidget {
  const ImplementedFooWidget({Key? key}) : super(key: key);

  @override
  _ImplementedFooWidgetState createState() => _ImplementedFooWidgetState();
}

class _ImplementedFooWidgetState extends _FooWidgetState {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/// But if we use the generic we can just extend the widget and have our own custom state

abstract class BarWidget extends StatefulWidget {
  const BarWidget({Key? key, required this.someRequiredString})
      : super(key: key);

  final String someRequiredString;

  @override
  State<BarWidget> createState();
}

class ImplementedBarWidget extends BarWidget {
  const ImplementedBarWidget({Key? key, required String someRequiredString})
      : super(
          key: key,
          someRequiredString: someRequiredString,
        );

  @override
  _ImplementedBarWidgetState createState() => _ImplementedBarWidgetState();
}

class _ImplementedBarWidgetState extends State<ImplementedBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
