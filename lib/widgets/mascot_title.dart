import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MascotTitle extends StatefulWidget {
  const MascotTitle({super.key});

  @override
  State<MascotTitle> createState() => _MascotTitleState();
}

class _MascotTitleState extends State<MascotTitle> {
  late RiveAnimation anim;
  late StateMachineController ctrl;

  @override
  void initState() {
    super.initState();

    anim = RiveAnimation.asset(
      'assets/animations/mascot.riv',
      artboard: 'allbubblestitle',
      fit: BoxFit.contain,
      onInit: onRiveInit,
    );
  }

  void onRiveInit(Artboard artbord) {
    ctrl = StateMachineController.fromArtboard(artbord, 'allbubblestitle')!;
    artbord.addController(ctrl);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100, width: 300, child: anim);
  }
}
