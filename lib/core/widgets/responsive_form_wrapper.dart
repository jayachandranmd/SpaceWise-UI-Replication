// Flutter imports:
import "package:flutter/material.dart";

class ResponsiveFormWrapper extends StatelessWidget {
  const ResponsiveFormWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
          ),
          child: IntrinsicHeight(
            child: child,
          ),
        ),
      );
    });
  }
}
