import 'package:flutter/material.dart';

Widget AddHeight(dynamic data) {
  return SizedBox(
    height: double.parse(data.toString()),
  );
}

Widget AddWidth(dynamic data) {
  return SizedBox(
    width: double.parse(data.toString()),
  );
}
