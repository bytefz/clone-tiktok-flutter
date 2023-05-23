import 'package:flutter/material.dart';

class VideoBrackground extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;

  const VideoBrackground({
    super.key,
    this.colors = const [
      Colors.transparent,
      Colors.black87,
    ],
    this.stops = const [0.0, 1.0],
  }) : assert(
          colors.length == stops.length,
          ' Stops and Colors must bu same length',
        );

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: stops,
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
