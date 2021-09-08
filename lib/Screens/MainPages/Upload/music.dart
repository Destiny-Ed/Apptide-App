import 'package:apptide/Screens/MainPages/Upload/steps/step_one.dart';
import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

class MusicUpload extends StatefulWidget {
  const MusicUpload({Key? key}) : super(key: key);

  @override
  _MusicUploadState createState() => _MusicUploadState();
}

class _MusicUploadState extends State<MusicUpload> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Theme(
                data: ThemeData(
                    accentColor: Colors.white,
                    primarySwatch: Colors.amber,

                ),
                child: Stepper(
                  controlsBuilder: (BuildContext context,
                      {VoidCallback? onStepContinue,
                      VoidCallback? onStepCancel}) {
                    return GestureDetector(
                      onTap: onStepContinue,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 35),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: black,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Save & Continue",
                              style: TextStyle(color: white),
                            ),
                            Image.asset(
                              "assets/arrow.png",
                              color: white,
                              width: 16,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  type: StepperType.horizontal,
                  currentStep: _index,
                  onStepTapped: (int index) {
                    setState(() {
                      _index = index;
                    });
                  },
                  steps: <Step>[
                    Step(
                      title: const Text(""),
                      content: StepOne(),
                      isActive: true
                    ),
                    const Step(
                      title: Text(''),
                      content: Text('Content for Step 2'),
                    ),
                    const Step(
                      title: Text(''),
                      content: Text('Content for Step 3'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
