import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../models/enums.dart';
import '../helpers/rive_helper.dart';

extension _TextExtension on Artboard {
  TextValueRun? textRun(String name) => component<TextValueRun>(name);
}

class MascotButton extends StatefulWidget {
  final String label;
  final MascotActions action;
  final Function(MascotActions action) onAction;
  const MascotButton({
    super.key,
    required this.action,
    required this.onAction,
    required this.label,
  });

  @override
  State<MascotButton> createState() => _MascotButtonState();
}

class _MascotButtonState extends State<MascotButton> {
  late RiveAnimation anim;
  late StateMachineController ctrl;
  late TextValueRun buttonLabel;

  @override
  void initState() {
    super.initState();

    anim = RiveAnimation.asset(
      'assets/animations/mascot.riv',
      artboard: '${widget.action.name}btn',
      fit: BoxFit.contain,
      onInit: onRiveInit,
    );
  }

  void onRiveInit(Artboard ab) {
    ctrl = StateMachineController.fromArtboard(ab, '${widget.action.name}btn')!;
    ab.addController(ctrl);

    buttonLabel = ab.textRun('${widget.action.name}Label')!;
    buttonLabel.text = widget.label.isEmpty ? widget.action.name : widget.label;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) {
        widget.onAction(widget.action);
      },

      child: SizedBox(width: 380, height: 120, child: anim),
    );
  }
}
