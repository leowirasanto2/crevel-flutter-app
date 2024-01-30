import 'package:crevel_app/common/models/dto/location_model.dart';
import 'package:crevel_app/common/models/dto/tag_model.dart';

class DestinationModel {
  String id;
  String? name;
  String? description;
  String? imageUrl;
  LocationModel location;
  List<TagModel> tags;
  int? rating;

  DestinationModel(
      {required this.id,
      this.name,
      this.description,
      this.imageUrl,
      required this.location,
      required this.tags,
      this.rating});
}
