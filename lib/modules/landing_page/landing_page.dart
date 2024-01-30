import 'package:crevel_app/common/widget/custom_section_item/custom_section_item_model.dart';
import 'package:crevel_app/common/widget/custom_section_item/custom_section_item_widget.dart';
import 'package:crevel_app/modules/landing_page/widgets/landing_header_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomSectionItemModel> sections = [
      CustomSectionItemModel(
        title: "Viral Destinations",
        elements: createDummies(),
      ),
      CustomSectionItemModel(
        title: "Most Recent Destinations",
        elements: createDummies(),
      ),
      CustomSectionItemModel(
        title: "Green Destinations",
        elements: createDummies(),
      ),
      CustomSectionItemModel(
        title: "Other Destinations",
        elements: createDummies(),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                return CustomSectionItemWidget(section: sections[index]);
              },
              itemCount: sections.length,
            ),
          ],
        ),
      ),
    );
  }

  List<DummyItems> createDummies() {
    return [
      DummyItems('https://picsum.photos/200'),
      DummyItems('https://picsum.photos/200'),
      DummyItems('https://picsum.photos/200'),
      DummyItems('https://picsum.photos/200'),
      DummyItems('https://picsum.photos/200'),
      DummyItems('https://picsum.photos/200'),
    ];
  }
}

class DummyItems {
  String url;

  DummyItems(this.url);
}
