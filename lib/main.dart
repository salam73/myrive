/* import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(
  MaterialApp(debugShowCheckedModeBanner: false, home: MyRiveAnimation()),
);

class MyRiveAnimation extends StatelessWidget {
  const MyRiveAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 193, 213, 9),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: RiveAnimation.asset(
                  artboard: 'bdayhat',
                  'assets/animations/mascot.riv',

                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: RiveAnimation.asset(
                  artboard: 'caphat',
                  'assets/animations/mascot.riv',

                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: InkWell(
                  onTap: () {
                    print('bdayhat');
                  },
                  child: RiveAnimation.asset(
                    artboard: 'mascoticon',
                    //artboard: 'fullbody2',
                    'assets/animations/mascot.riv',

                    // fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: RiveAnimation.asset(
                  artboard: 'funhat',
                  'assets/animations/mascot.riv',

                  // fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*  return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('widget.title')),
      body: FlareActor(
        "assets/Teddy.flr",

        // color: Colors.blue,
        alignment: Alignment.center,
        // isPaused: _isPaused,
        // fit: BoxFit.cover,
        animation: "walk",
        // controller: this,
      ),
    );
  } */
}
 */

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myrive/widgets/mascot.dart';

import 'pages/landing_page.dart';
import 'pages/mascot_page.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => LandingPage(),
        '/': (context) => MascotPage(),
      },
    );
  }
}
