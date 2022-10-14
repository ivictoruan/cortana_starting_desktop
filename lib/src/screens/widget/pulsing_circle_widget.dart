import 'package:flutter/material.dart';

class PulsingCircleWidget extends StatefulWidget {
  const PulsingCircleWidget({Key? key}) : super(key: key);

  @override
  State<PulsingCircleWidget> createState() => _PulsingCircleWidgetState();
}

class _PulsingCircleWidgetState extends State<PulsingCircleWidget>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    // STARTING CONTROLLER
    animationController = AnimationController(
      vsync: this,
      // animationBehavior: AnimationBehavior.preserve,
      duration: const Duration(seconds: 10),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Container(
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: Colors.lightBlueAccent.withOpacity(0.55),
            ),
            child: Padding(
              padding: EdgeInsets.all(animationController.value + 7),
              child: child,
            ),
          );
        },
        child: Container(
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
            color: Color.fromARGB(255, 46, 146, 227),
          ),
          child: Container(
            margin: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: const CircleAvatar(
              radius: 12,
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
