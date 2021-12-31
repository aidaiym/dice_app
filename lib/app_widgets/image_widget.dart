import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    @required this.image,
    @required this.ontap,
    Key key,
  }) : super(key: key);
  final GestureTapCallback ontap;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: image,
        ),
      ),
    );
  }
}
