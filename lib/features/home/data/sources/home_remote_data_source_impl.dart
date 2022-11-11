import '../models/event_model.dart';
import '../models/home_model.dart';
import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  @override
  Future<HomeModel> getEventsHome() async {
    return Future.delayed(
      const Duration(seconds: 3),
      () => _createEventsHomeModel(),
    );
  }

  HomeModel _createEventsHomeModel() {
    return HomeModel(
      profileImage:
          "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_400,c_scale,q_auto/cnnarabic/2019/06/28/images/130170.webp",
      myEvents: [
        _createMyEventModel(),
        _createMyEventModel(),
      ],
      suggestedEvents: [
        _createSuggestedEventModel(),
        _createSuggestedEventModel(),
      ],
    );
  }

  EventModel _createMyEventModel() {
    return EventModel(
      day: "20",
      month: "November",
      title: "Qatar\nFIFA\nWorld Cup",
      location: "Qatar, QA",
      image:
          "https://pbs.twimg.com/media/FVZcFttWYAENFzs?format=jpg&name=large",
      startTime: "9:00 AM",
      endTime: "3:00 PM",
      joiners: [
        for (int i = 0; i < 11; i++)
          "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_400,c_scale,q_auto/cnnarabic/2019/06/28/images/130170.webp"
      ],
    );
  }

  EventModel _createSuggestedEventModel() {
    return const EventModel(
      day: "20",
      month: "November",
      title: "Qatar FIFA World Cup",
      location: "Qatar, QA",
      image:
          "https://pbs.twimg.com/media/FVZcFttWYAENFzs?format=jpg&name=large",
      startTime: "9:00 AM",
      endTime: "3:00 PM",
    );
  }
}
