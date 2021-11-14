// Project imports:

// Project imports:
import 'abstract_entity.dart';

class AssetEntity extends Entity {
  final String key;
  final String path;

  AssetEntity({required this.path})
      : key = path.split('/')[path.split('/').length - 1].split('.')[0];

  @override
  // TODO: implement props
  List<Object?> get props => [key, path];
}
