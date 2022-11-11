import 'package:flutter/material.dart';
import '../../domain/entities/event_entity.dart';

class EventListCell extends StatelessWidget {
  final EventEntity event;

  const EventListCell({Key? key, required this.event}) : super(key: key);

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
                    event.image,
                    width: 64,
                    height: 64,
                    fit: BoxFit.fill,
                    color: Colors.black38,
                    colorBlendMode: BlendMode.srcOver,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: event.month,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(
                          text: "\n${event.day}",
                          style: const TextStyle(
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
                children: [
                  Text(
                    event.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "${event.startTime} to ${event.endTime}",
                    style: const TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    event.location,
                    style: const TextStyle(
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
