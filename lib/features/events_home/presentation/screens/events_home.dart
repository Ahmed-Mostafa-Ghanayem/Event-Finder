import 'package:flutter/material.dart';

import '../widgets/event_large_cell.dart';
import '../widgets/event_list_cell.dart';

class EventsHome extends StatelessWidget {
  const EventsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FA),
      appBar: _buildEventsAppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
          children: [
            _buildSearchTextField(),
            const SizedBox(height: 24),
            _buildMyEventsList(),
            const SizedBox(height: 24),
            _buildEventsForMeHeader(),
            const SizedBox(height: 12),
            const EventListCell(),
            const SizedBox(height: 12),
            const EventListCell(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  PreferredSizeWidget _buildEventsAppBar() {
    return AppBar(
      toolbarHeight: 64,
      elevation: 0,
      title: _buildAppBarTitle(),
      actions: [
        _buildProfileImage(),
      ],
      backgroundColor: Colors.transparent,
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedItemColor: const Color(0xFFFE6C03),
      unselectedItemColor: Colors.black26,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outline_rounded),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_rounded),
          label: "",
        ),
      ],
    );
  }

  Widget _buildEventsForMeHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Event For You",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        TextButton(
          onPressed: () => {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.black26,
          ),
          child: const Text(
            "View More",
            style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }

  Widget _buildMyEventsList() {
    return SizedBox(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          EventLargeCell(),
          SizedBox(
            width: 16,
          ),
          EventLargeCell(),
        ],
      ),
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      cursorColor: const Color(0xFFFE6C03),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        hintText: "Search for Event",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: Color(0xFFFE6C03),
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
          "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_400,c_scale,q_auto/cnnarabic/2019/06/28/images/130170.webp",
        ),
      ),
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
}
