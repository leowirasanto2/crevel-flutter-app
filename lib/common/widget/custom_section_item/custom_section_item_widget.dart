import 'package:crevel_app/common/widget/custom_section_item/custom_section_item_model.dart';
import 'package:crevel_app/modules/landing_page/landing_page.dart';
import 'package:flutter/material.dart';

class CustomSectionItemWidget extends StatelessWidget {
  CustomSectionItemModel section;

  CustomSectionItemWidget({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 26,
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(
            section.title ?? '',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 232,
          child: ListView.builder(
            itemBuilder: (context, index) {
              List<DummyItems> casted = section.elements as List<DummyItems>;
              return Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    casted[index].url,
                    fit: BoxFit.cover,
                    height: 200,
                    width: 150,
                  ),
                ),
              );
            },
            padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
            itemCount: section.elements.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
          ),
        ),
      ],
    );
  }
}
