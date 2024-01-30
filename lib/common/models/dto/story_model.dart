import 'package:crevel_app/common/models/dto/destination_model.dart';

class StoryModel {
  String id;
  DestinationModel destination;
  String? caption;
  String? imageUrl;

  StoryModel(
      {required this.id,
      required this.destination,
      this.caption,
      this.imageUrl});
}
