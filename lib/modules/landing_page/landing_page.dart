import 'package:crevel_app/common/models/view_model/landing_section_view_model.dart';
import 'package:crevel_app/common/widget/custom_grouped_list/image_carousel/image_carousel_model.dart';
import 'package:crevel_app/common/widget/custom_grouped_list/image_carousel/image_carousel_widget.dart';
import 'package:crevel_app/common/widget/custom_grouped_list/vertical_list/group_vertical_list_model.dart';
import 'package:crevel_app/common/widget/custom_section_item/custom_section_item_widget.dart';
import 'package:crevel_app/modules/landing_page/widgets/landing_header_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = createSection();
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          slivers: [
            const SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: LandingHeaderWidget(),
              ),
              expandedHeight: 230,
              pinned: false,
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                final item = data.section[index];
                if (item is ImageCarouselModel) {
                  return ImageCarouselWidget(itemHeight: 200, section: data.section[index]);
                }
                if (item is GroupVerticalListModel) {
                  return ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.amberAccent,
                          child: Text(item.elements[index]),
                        ),
                      );
                    },
                    itemCount: item.elements.length,
                  );
                }
                return null;
              },
              itemCount: data.section.length,
            ),
          ],
        ),
      ),
    );
  }

  LandingSectionViewModel createSection() {
    return LandingSectionViewModel(
      section: [
        ImageCarouselModel(
          title: "Viral Destinations",
          elements: [
            "https://picsum.photos/200",
            "https://picsum.photos/200",
            "https://picsum.photos/200",
            "https://picsum.photos/200",
          ],
        ),
        GroupVerticalListModel(
          title: "All Destinations",
          elements: [
            "this is the text for the first item ya",
            "this is the text for the second item ya, this is the most long long long long long long long long long long long long long long long long long long long long text",
            "this is the additional text for the third item ya, very long text",
            "this is the text for the fourth item ya. Hey my middle name is loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong loooooooooong ",
            "this is the text for the item ya",
            "this is the text for the item ya",
            "this is the text for the item ya",
            "this is the text for the item ya",
            "this is the text for the item ya",
          ],
        ),
      ],
    );
  }
}
