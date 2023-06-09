import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/src/ui/deinit_mode_widget.dart';

import '../provider/gaze_tracker_provider.dart';

class InitializedWidget extends StatelessWidget {
  const InitializedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final consumer = Provider.of<GazeTrackerProvider>(context);
    return GetBuilder<GazeTrackerProvider>(
      builder: (controller) {
        return Column(
          children: <Widget>[
            const DeinitModeWidget(),
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0, top: 16),
              child: Text('Now You can track you gaze!',
                  style: TextStyle(
                      color: Colors.white24,
                      fontSize: 10,
                      decoration: TextDecoration.none)),
            ),
            Container(
              width: double.maxFinite,
              color: Colors.white12,
              child: TextButton(
                  onPressed: () {
                    controller.startTracking();
                  },
                  child: const Text(
                    'Start Tracking',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        );
      },
    );
    // GetBuilder<GazeTrackerProvider>(
    //   create: (context) => GazeTrackerProvider(),
    //   child:
    // );
  }
}
