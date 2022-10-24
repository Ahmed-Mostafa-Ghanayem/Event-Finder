import 'package:flutter/material.dart';

class SnapChat extends StatelessWidget {
  const SnapChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFFF14D)),
        child: Column(
          verticalDirection: VerticalDirection.up,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SnapChatButton(
              text: "SIGN UP",
              backgroundColor: const Color(0xff40A7FD),
              textColor: Colors.white,
              onPressed: () => {},
            ),
            SnapChatButton(
              text: "LOG IN",
              backgroundColor: const Color(0xffED5B5C),
              textColor: Colors.white,
              onPressed: () => {},
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/snap/snap_chat.png",
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SnapChatButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final VoidCallback onPressed;

  const SnapChatButton(
      {required this.text,
      required this.backgroundColor,
      required this.textColor,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(),
            backgroundColor: backgroundColor,
            padding: const EdgeInsets.all(0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              letterSpacing: 3),
        ),
      ),
    );
  }
}
