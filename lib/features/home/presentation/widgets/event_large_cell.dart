import 'package:events_finder/features/home/domain/entities/event_entity.dart';
import 'package:flutter/material.dart';

class EventLargeCell extends StatelessWidget {
  final EventEntity event;
  final double dimen;

  const EventLargeCell({super.key, required this.event, required this.dimen});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          direction: Axis.vertical,
          spacing: 16,
          children: [
            _buildEventDetails(),
            _buildJoinersWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildEventDetails() {
    return SizedBox(
      width: dimen,
      height: dimen,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              event.image,
            ),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: event.day,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    TextSpan(
                      text: "\n${event.month}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                event.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              Text(
                event.location,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJoinersWidget() {
    return SizedBox(
      width: dimen,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${event.joiners?.length ?? 0} Joined",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: 119,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                      event.joiners![0],
                    ),
                  ),
                  Positioned(
                    left: 33,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        event.joiners![1],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 63,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        event.joiners![2],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 93,
                    child: Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        "${event.joiners!.length - 3}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
