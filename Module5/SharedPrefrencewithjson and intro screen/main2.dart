import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main()
{
  runApp(MaterialApp(home:IntroScreenDemo(),));
}

class IntroScreenDemo extends StatefulWidget
{
  @override
  State<IntroScreenDemo> createState() => _IntroScreenDemoState();
}

class _IntroScreenDemoState extends State<IntroScreenDemo> {
  // 1. Define a `GlobalKey` as part of the parent widget's state
  final _introKey = GlobalKey<IntroductionScreenState>();
  String _status = 'Waiting...';

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      // 2. Pass that key to the `IntroductionScreen` `key` param
      key: _introKey,
      pages: [
        PageViewModel(
            title: 'Page One',
            bodyWidget: Column(
              children: [
                Text(_status),
                ElevatedButton(
                    onPressed: () {
                      setState(() => _status = 'Going to the next page...');

                      // 3. Use the `currentState` member to access functions defined in `IntroductionScreenState`
                      Future.delayed(const Duration(seconds: 3),
                              () => _introKey.currentState?.next());
                    },
                    child: const Text('Start'))
              ],
            )),
        PageViewModel
          (
            title: 'Page Two', bodyWidget: const Text('That\'s all folks'))
      ],
      showNextButton: false,
      showDoneButton: false,
    );
  }
}