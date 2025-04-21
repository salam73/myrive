import 'package:flutter/material.dart';
import 'package:myrive/widgets/mascot_title.dart';
import 'package:rive/rive.dart' hide LinearGradient;

class Mascot extends StatefulWidget {
  const Mascot({super.key});

  @override
  State<Mascot> createState() => _MascotState();
}

class _MascotState extends State<Mascot> {
  late RiveAnimation anim;
  late StateMachineController ctrl;

  @override
  void initState() {
    super.initState();

    anim = RiveAnimation.asset(
      'assets/animations/mascot.riv',
      artboard: 'mascot',
      fit: BoxFit.contain,
      onInit: onRiveInit,
    );
  }

  void onRiveInit(Artboard artbord) {
    ctrl = StateMachineController.fromArtboard(artbord, 'mascot')!;
    artbord.addController(ctrl);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: anim);
  }
}
