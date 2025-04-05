import 'package:flutter/material.dart';

class PlayCta extends StatelessWidget {
  const PlayCta({super.key, this.onPress, this.btnText = "Start Playing"});
  final VoidCallback? onPress;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          btnText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
