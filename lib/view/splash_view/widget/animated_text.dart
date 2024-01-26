import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.slideingAnimation,
  });

  final Animation<Offset> slideingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slideingAnimation,
            child: Text(
              'أطِبَّاء بطُورس',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.09,
              ),
            ),
          );
        });
  }
}
