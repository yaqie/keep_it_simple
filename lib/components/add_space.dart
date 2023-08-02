import 'package:flutter/material.dart';

class AddHeight extends StatelessWidget {
  final dynamic data;
  const AddHeight(
    this.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.parse(data.toString()),
    );
  }
}

class AddWidth extends StatelessWidget {
  final dynamic data;
  const AddWidth(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.parse(data.toString()),
    );
  }
}
