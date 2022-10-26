import 'package:flutter/material.dart';

class EventLargeCell extends StatelessWidget {
  const EventLargeCell({Key? key}) : super(key: key);

  final _dimen = 280.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildEventDetails(),
            const SizedBox(height: 16),
            buildJoinersWidget(),
          ],
        ),
      ),
    );
  }

  SizedBox buildEventDetails() {
    return SizedBox(
      width: _dimen,
      height: _dimen,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.srgbToLinearGamma(),
            image: NetworkImage(
              "https://pbs.twimg.com/media/FVZcFttWYAENFzs?format=jpg&name=large",
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
                text: const TextSpan(
                    text: "01",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                    children: [
                      TextSpan(
                        text: "\nNovember",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      )
                    ]),
              ),
              const Text(
                "Qatar\nFIFA\nWorld Cup",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              const Text(
                "Qatar, Qr",
                style: TextStyle(
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

  SizedBox buildJoinersWidget() {
    return SizedBox(
      width: _dimen,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "43 Joined",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: 119,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                      "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_400,c_scale,q_auto/cnnarabic/2019/06/28/images/130170.webp",
                    ),
                  ),
                  const Positioned(
                    left: 33,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_400,c_scale,q_auto/cnnarabic/2019/06/28/images/130170.webp",
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 63,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_400,c_scale,q_auto/cnnarabic/2019/06/28/images/130170.webp",
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
                      child: const Text(
                        "8",
                        style: TextStyle(color: Colors.white, fontSize: 13),
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
