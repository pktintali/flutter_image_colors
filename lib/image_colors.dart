import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class ImageColors extends StatefulWidget {
  const ImageColors({
    Key? key,
    required this.image,
    this.imageSize,
  }) : super(key: key);

  final ImageProvider image;
  final Size? imageSize;

  @override
  State<ImageColors> createState() {
    return _ImageColorsState();
  }
}

class _ImageColorsState extends State<ImageColors> {
  PaletteGenerator? paletteGenerator;
  Color bgColor = const Color(0xffa0a0a0);

  Future<void> _updatePaletteGenerator() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      widget.image,
      size: widget.imageSize,
      region: Rect.fromLTRB(
          0, 0, widget.imageSize!.width, widget.imageSize!.height),
      maximumColorCount: 20,
    );
    setState(() {});
  }

  @override
  void initState() {
    _updatePaletteGenerator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paletteGenerator != null
          ? paletteGenerator!.vibrantColor != null
              ? paletteGenerator!.vibrantColor!.color
              : bgColor
          : bgColor,
      // appBar: AppBar(
      //   title: const Text('Image Colors'),
      // ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {
                _updatePaletteGenerator();
              },
              child: Center(
                child: Image(
                  image: widget.image,
                  width: widget.imageSize?.width,
                  height: widget.imageSize?.height,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
