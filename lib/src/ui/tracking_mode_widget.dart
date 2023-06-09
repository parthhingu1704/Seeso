import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/src/model/app_stage.dart';
import 'package:test_flutter/src/provider/gaze_tracker_provider.dart';

// import 'package:test_flutter/src/ui/start_focus_page.dart';
import 'deinit_mode_widget.dart';
// import 'saved_dialog_widget.dart';

class TrackingModeWidget extends StatelessWidget {
  const TrackingModeWidget({Key? key}) : super(key: key);

//   void _showSavedDialog(BuildContext context) {
//     var state = Provider.of<GazeTrackerProvider>(context, listen: false);
//     showCupertinoDialog(
//         context: context,
//         builder: (_) => ChangeNotifierProvider<GazeTrackerProvider>.value(
//               value: state,
//               child: const SaveDataDialogWidget(),
//             ));
//   }

  @override
  Widget build(BuildContext context) {
    // final consumer = Provider.of<GazeTrackerProvider>(context);
    // return Consumer<GazeTrackerProvider>(builder: (context, state, child) {
    //   return
    // });
    return GetBuilder<GazeTrackerProvider>(
      //   create: (context) => GazeTrackerProvider(),
      builder: (controller) {
        return Column(
          children: <Widget>[
            const DeinitModeWidget(),

            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Tracking is On!!',
                style: TextStyle(
                  color: Colors.white24,
                  fontSize: 10,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              color: Colors.white12,
              child: TextButton(
                onPressed: () {
                  //   state.stopTracking();
                  controller.stopTracking();
                },
                child: const Text(
                  'Stop tracking',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 16.0, top: 16),
              child: Text(
                  'And also you can improve accuaracy through calibration',
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
                    controller.startCalibration();
                    //   Provider.of<GazeTrackerProvider>(context, listen: false)
                    //   .startCalibration();
                  },
                  child: Text(
                    (controller.state == GazeTrackerState.calibrating)
                        ? 'Calibration started!'
                        : 'Start Calibration',
                    style: const TextStyle(color: Colors.white),
                  )),
            ),
            // Container(
            //   width: double.maxFinite,
            //   height: 1,
            //   color: Colors.white24,
            // ),
            // Container(
            //   width: double.maxFinite,
            //   color: Colors.white12,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       const Text(
            //         'Calibration Type',
            //         style: TextStyle(
            //             fontSize: 12,
            //             color: Colors.white,
            //             fontWeight: FontWeight.w600,
            //             decoration: TextDecoration.none),
            //       ),
            //       const SizedBox(
            //         width: 60,
            //       ),
            //       CupertinoSegmentedControl(
            //         children: const {
            //           1: Text(" ONE_POINT ",
            //               style: TextStyle(
            //                   color: Colors.white24,
            //                   fontSize: 10,
            //                   decoration: TextDecoration.none)),
            //           5: Text(" FIVE_POINT ",
            //               style: TextStyle(
            //                   color: Colors.white24,
            //                   fontSize: 10,
            //                   decoration: TextDecoration.none)),
            //         },
            //         onValueChanged: (newValue) {
            //           debugPrint('value changed : $newValue');
            //           controller.changeCalibrationType(newValue as int);
            //         },
            //         groupValue: controller.calibrationType,
            //         unselectedColor: Colors.white12,
            //         selectedColor: Colors.white38,
            //         pressedColor: Colors.white38,
            //         borderColor: Colors.white12,
            //         padding: const EdgeInsets.all(8),
            //       )
            //     ],
            //   ),
            // ),
            // if (consumer.hasCaliData)
            //   Container(
            //     width: double.maxFinite,
            //     height: 1,
            //     color: Colors.white24,
            //   ),
            // if (consumer.hasCaliData)
            //   Container(
            //     width: double.maxFinite,
            //     color: Colors.white12,
            //     child: TextButton(
            //         onPressed: () {
            //           consumer.saveCalibrationData();
            //           _showSavedDialog(context);
            //         },
            //         child: const Text(
            //           'Save Calibration Data to local',
            //           style: TextStyle(color: Colors.white),
            //         )),
            //   ),
            // const Text(
            //     '(Calibration only can be done while gae tracking is activated)',
            //     style: TextStyle(
            //         color: Colors.white24,
            //         fontSize: 10,
            //         decoration: TextDecoration.none)),
            // Container(
            //   height: 10,
            // ),
            // if (consumer.isUserOption)
            //  Column(
            //    children: [

            //       const SizedBox(height: 16,),

            //        StartFocusTestCase(),

            //  const Padding(
            //           padding:  EdgeInsets.only(top:16.0),
            //           child: UserSatatusWidget(),
            //         ),
            //    ],
            //  ),
          ],
        );
      },
    );
  }
}
