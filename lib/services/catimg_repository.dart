import 'package:cats_app/models/models_image.dart';
import 'package:cats_app/services/catimg_api_provider.dart';

class CatImgRepository {
  CatImgProvider _catimgProvider = CatImgProvider();
  Future<List<CatImg>> getAllImg() => _catimgProvider.getCatImg();
}
