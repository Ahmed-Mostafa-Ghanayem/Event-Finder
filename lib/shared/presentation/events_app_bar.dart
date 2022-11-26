import 'package:flutter/material.dart';

class EventsAppBar extends StatelessWidget {
  final String profileImage;

  const EventsAppBar({super.key, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return _buildEventsAppBar(profileImage);
  }

  PreferredSizeWidget _buildEventsAppBar(String profileImage) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 64,
      elevation: 0,
      title: _buildAppBarTitle(),
      actions: [
        _buildProfileImage(profileImage),
      ],
      backgroundColor: Colors.transparent,
    );
  }

  Widget _buildAppBarTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Current Location",
          style: TextStyle(
            color: Colors.black45,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          children: const [
            Icon(
              Icons.location_on_rounded,
              size: 16,
              color: Color(0xFFFE6C03),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Qatar, QA",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileImage(String profileImage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
          profileImage,
        ),
      ),
    );
  }
}
