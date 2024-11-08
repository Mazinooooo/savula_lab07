import 'package:flutter/material.dart';

class V2 extends StatefulWidget {
  @override
  State<V2> createState() => _V2State();
}

class _V2State extends State<V2> {
  double _width = 150.0;
  double _height = 150.0;
  double _topLeftRadius = 0.0;
  double _topRightRadius = 0.0;
  double _bottomLeftRadius = 0.0;
  double _bottomRightRadius = 0.0;

  _onChangeTopLeftRadius(double value) {
    setState(() {
      _topLeftRadius = value;
    });
  }

  _onChangeTopRightRadius(double value) {
    setState(() {
      _topRightRadius = value;
    });
  }

  _onChangeBottomLeftRadius(double value) {
    setState(() {
      _bottomLeftRadius = value;
    });
  }

  _onChangeBottomRightRadius(double value) {
    setState(() {
      _bottomRightRadius = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text("TL: "),
                Text(
                  _topLeftRadius.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _topLeftRadius,
              min: 0,
              max: 100,
              onChanged: _onChangeTopLeftRadius,
            ),

            Row(
              children: [
                const Text("TR: "),
                Text(
                  _topRightRadius.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _topRightRadius,
              min: 0,
              max: 100,
              onChanged: _onChangeTopRightRadius,
            ),

            Row(
              children: [
                const Text("BL: "),
                Text(
                  _bottomLeftRadius.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _bottomLeftRadius,
              min: 0,
              max: 100,
              onChanged: _onChangeBottomLeftRadius,
            ),

            Row(
              children: [
                const Text("BR: "),
                Text(
                  _bottomRightRadius.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _bottomRightRadius,
              min: 0,
              max: 100,
              onChanged: _onChangeBottomRightRadius,
            ),

            const SizedBox(height: 20),
            Center(
              child: Container(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_topLeftRadius),
                    topRight: Radius.circular(_topRightRadius),
                    bottomLeft: Radius.circular(_bottomLeftRadius),
                    bottomRight: Radius.circular(_bottomRightRadius),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
