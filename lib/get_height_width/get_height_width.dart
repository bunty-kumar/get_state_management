import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetHeightWidth extends StatefulWidget {
  const GetHeightWidth({super.key});

  @override
  State<GetHeightWidth> createState() => _GetHeightWidthState();
}

class _GetHeightWidthState extends State<GetHeightWidth> {
  double width = 0.1;
  double width2 = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Height Width"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("shape 1 :- ${width.toStringAsFixed(2)}"),
            Slider(
              value: width,
              min: 0.1,
              max: 0.5,
              onChanged: (val) {
                setState(() {
                  width = val;
                });
              },
            ),
            Container(
              color: Colors.red,
              height: Get.height * width,
              width: Get.width * width,
            ),
            Text("shape 2 :-  ${width2.toStringAsFixed(2)}"),
            Slider(
              value: width2,
              min: 0.1,
              max: 0.5,
              onChanged: (val) {
                setState(() {
                  width2 = val;
                });
              },
            ),
            Container(
              color: Colors.red,
              height: Get.height * width2,
              width: Get.width * width2,
            ),
          ],
        ),
      ),
    );
  }
}
