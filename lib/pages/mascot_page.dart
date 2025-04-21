import 'package:flutter/material.dart';
import 'package:myrive/models/enums.dart';
import 'package:myrive/widgets/mascot.dart';
import 'package:myrive/widgets/mascot_hat.dart';
import 'package:myrive/widgets/mascot_title.dart';
import 'package:myrive/widgets/mascotbutton.dart';

class MascotPage extends StatelessWidget {
  const MascotPage({super.key});

  @override
  Widget build(BuildContext context) {
    final hats =
        MascotHatOptions.values
            .where((e) => e != MascotHatOptions.none)
            .toList();
    return Scaffold(
      // backgroundColor: Colors.grey,
      // appBar: AppBar(title: Text('widget.title')),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Color.fromARGB(255, 15, 159, 216)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MascotTitle(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 400,
                  child: Mascot(),
                ),

                SizedBox(height: 16),

                Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(hats.length, (index) {
                    final hat = hats[index];
                    return MascotHat(hat: hat, onHatSelected: (p0) {});
                  }),
                ),
                SizedBox(height: 16),
                Stack(
                  children: [
                    MascotButton(
                      action: MascotActions.jump,
                      onAction: (p0) {
                        print('wave');
                      },
                      label: 'abc',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
