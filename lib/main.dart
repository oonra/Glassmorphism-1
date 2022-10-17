import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() => runApp(const MaterialApp(
  home: GlassmorphismOne(),
));

class GlassmorphismOne extends StatelessWidget {
  const GlassmorphismOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundrocket.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 35.0,
                    spreadRadius: 12.0,
                    color: Colors.black.withOpacity(0.4)
                  )
                ]
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 26.0,
                          sigmaY: 26.0
                      ),
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                                width:1.5,
                                color: Colors.white.withOpacity(0.325)
                            )
                        ),
                        child: Center(
                          child: GradientText(
                            "Glassmorphism",
                            colors: const [
                              Colors.white54,
                              Colors.white38,
                              Colors.white10
                            ],
                            style: const TextStyle(
                              fontFamily: "Press Start 2P",
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      )
                  )
              )
          )
        ),
      )
    );
  }
}

