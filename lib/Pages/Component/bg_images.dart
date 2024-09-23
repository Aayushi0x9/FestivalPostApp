import 'package:festival_post_app/headers.dart';

import 'heading.dart';

Widget bgImage({
  required Size size,
  required String selectedImage, // Ensure correct type
  required VoidCallback getsetstate, // Callback passed from parent
  required int index,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      heading(heading: 'Background Image'),
      SizedBox(
        height: size.height * 0.02,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: festival[index].thumb.map((image) {
            return GestureDetector(
              onTap: () {
                selectedImage = image; // Change the image
                getsetstate(); // Trigger parent rebuild
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: size.width * 0.4,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.white,
                    width: selectedImage == image
                        ? 3
                        : 1, // Highlight selected image
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ],
  );
}
