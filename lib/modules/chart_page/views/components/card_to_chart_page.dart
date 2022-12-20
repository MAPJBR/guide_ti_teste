import 'package:flutter/material.dart';

class CardChart extends StatelessWidget {
  final String title;
  final int value;
  // ignore: use_key_in_widget_constructors
  const CardChart({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("$title%"),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
          child: Container(
            width: 36,
            height: value.roundToDouble(),
            decoration: BoxDecoration(
              color: const Color(0xFF00837F),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
