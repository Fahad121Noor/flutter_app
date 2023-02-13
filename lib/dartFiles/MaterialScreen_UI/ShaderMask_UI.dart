import 'package:flutter/material.dart';

class ShaderMask_UI extends StatefulWidget {
  const ShaderMask_UI({Key? key}) : super(key: key);

  @override
  State<ShaderMask_UI> createState() => _ShaderMask_UIState();
}

class _ShaderMask_UIState extends State<ShaderMask_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                      colors: [Colors.red, Colors.blue],
                      stops: [0, 0.5]).createShader(rect);
                },
                blendMode: BlendMode.srcIn,
                child:  const FlutterLogo(
                  size: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
