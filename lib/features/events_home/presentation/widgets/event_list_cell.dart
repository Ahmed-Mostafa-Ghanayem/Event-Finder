import 'package:flutter/material.dart';

class EventListCell extends StatelessWidget {
  const EventListCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://pbs.twimg.com/media/FVZcFttWYAENFzs?format=jpg&name=large",
                    width: 64,
                    height: 64,
                    fit: BoxFit.fill,
                    color: Colors.black38,
                    colorBlendMode: BlendMode.srcOver,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Nov",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(
                          text: "\n20",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 64,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "FIFA World Cup",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "09:00 AM to 03:00 PM",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "Qatar, Qr",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.black12,
                foregroundColor: Colors.black26,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: const Text(
                "Join",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
