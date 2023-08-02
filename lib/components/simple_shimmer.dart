import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SimpleShimmer extends StatelessWidget {
  final int? looping;
  final Color? bgColor;
  final dynamic height;
  final bool? isCircle;
  const SimpleShimmer(
      {super.key,
      this.looping,
      this.bgColor,
      this.height,
      this.isCircle = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isCircle!
          ? height == null
              ? 50
              : double.parse(height.toString())
          : double.infinity,
      height: isCircle!
          ? height == null
              ? 50
              : double.parse(height.toString())
          : null,
      child: Shimmer.fromColors(
        baseColor: bgColor ?? const Color.fromARGB(255, 232, 232, 232),
        highlightColor: Colors.white,
        child: ListView.builder(
            padding: const EdgeInsets.only(top: 0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // scrollDirection: Axis.vertical,
            itemCount: looping ?? 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(isCircle! ? 1000 : 5),
                  ),
                  width: isCircle!
                      ? double.parse(height.toString())
                      : double.infinity,
                  height: height == null ? 50 : double.parse(height.toString()),
                ),
              );
            }),
      ),
    );
  }
}
