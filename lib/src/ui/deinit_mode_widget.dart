import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/src/provider/gaze_tracker_provider.dart';

class DeinitModeWidget extends StatelessWidget {
  const DeinitModeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<GazeTrackerProvider>(builder: (controller) {
      return Column(children: <Widget>[
        const Text('GazeTracker is activated.',
            style: TextStyle(
                color: Colors.white24,
                fontSize: 10,
                decoration: TextDecoration.none)),
        Container(
          height: 10,
        ),
        Container(
          width: double.maxFinite,
          color: Colors.white12,
          child: TextButton(
              onPressed: () {
                controller.deinitGazeTracker();
              },
              child: const Text(
                'Stop GazeTracker',
                style: TextStyle(color: Colors.white),
              )),
        ),
        Container(
          width: double.maxFinite,
          height: 1,
          color: Colors.white24,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Text(
              'You can init GazeTracker With UserOption! \n (need to restart GazeTracker)',
              style: TextStyle(
                  color: Colors.white24,
                  fontSize: 10,
                  decoration: TextDecoration.none)),
        ),
      ]);
    });
  }
}
