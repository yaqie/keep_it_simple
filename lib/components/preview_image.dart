import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PreviewImage extends StatelessWidget {
  final String? image;
  final Color? bgColor;
  final Color? appBarColor;
  final Color? iconBackColor;
  const PreviewImage(
      {super.key,
      required this.image,
      this.appBarColor,
      this.iconBackColor,
      this.bgColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor ?? Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: iconBackColor ?? Colors.black,
            )),
      ),
      body: GestureDetector(
        child: Center(
          child: PhotoView(
            backgroundDecoration: BoxDecoration(color: bgColor ?? Colors.white),
            imageProvider: NetworkImage(image.toString()),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
