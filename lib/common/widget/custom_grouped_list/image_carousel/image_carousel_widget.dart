import 'package:crevel_app/common/widget/custom_grouped_list/image_carousel/image_carousel_model.dart';
import 'package:flutter/material.dart';

class ImageCarouselWidget extends StatelessWidget {
  ImageCarouselModel section;
  double itemHeight;

  ImageCarouselWidget({super.key, required this.section, required this.itemHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Text(
            section.title ?? '',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: itemHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 16,
                  bottom: 16,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    section.elements[index],
                    fit: BoxFit.cover,
                    width: 150,
                  ),
                ),
              );
            },
            itemCount: section.elements.length,
            shrinkWrap: true,
          ),
        ),
      ],
    );
  }
}
