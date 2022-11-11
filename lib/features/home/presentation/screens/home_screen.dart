import 'package:events_finder/features/home/presentation/state/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/event_entity.dart';
import '../widgets/event_large_cell.dart';
import '../widgets/event_list_cell.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _getHomeData() => BlocProvider.of<HomeCubit>(context).getHomeData();

  @override
  void initState() {
    super.initState();
    _getHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is Error) {
          return Container(
            color: Colors.white,
            child: Center(
              child: TextButton(
                onPressed: () {
                  _getHomeData();
                },
                child: Text(
                  state.message,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        } else if (state is Data) {
          final homeData = state.homeData;
          return Scaffold(
            backgroundColor: const Color(0xFFF9F9FA),
            appBar: _buildEventsAppBar(homeData.profileImage),
            body: SafeArea(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                children: [
                  _buildSearchTextField(),
                  if (homeData.myEvents?.isNotEmpty ?? false)
                    ..._buildMyEventsSection(homeData.myEvents!),
                  if (homeData.suggestedEvents?.isNotEmpty ?? false)
                    ..._buildSuggestedEventsSection(
                        homeData.suggestedEvents!),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomNavigationBar(),
          );
        } else {
          return Container(
            color: Colors.white,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  PreferredSizeWidget _buildEventsAppBar(String profileImage) {
    return AppBar(
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

  List<Widget> _buildMyEventsSection(List<EventEntity> myEvents) {
    return [
      const SizedBox(height: 20),
      SizedBox(
        height: 350,
        child: ListView.separated(
          itemCount: myEvents.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 16,
          ),
          itemBuilder: (BuildContext context, int index) =>
              EventLargeCell(event: myEvents[index]),
        ),
      ),
    ];
  }

  List<Widget> _buildSuggestedEventsSection(List<EventEntity> suggestedEvents) {
    return [
      const SizedBox(height: 20),
      Row(
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
      ),
      for (int i = 0; i < suggestedEvents.length; i++)
        ..._buildSuggestedEventItem(suggestedEvents[i])
    ];
  }

  List<Widget> _buildSuggestedEventItem(EventEntity event) {
    return [
      const SizedBox(height: 16),
      EventListCell(event: event),
    ];
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
}
