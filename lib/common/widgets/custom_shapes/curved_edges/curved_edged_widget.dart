import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class MyCurvedEdgesWidget extends StatelessWidget {
  const MyCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomCurvedEdges(),
      child: child,
    );
  }
}
