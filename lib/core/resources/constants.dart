import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/models/category_model.dart';
import 'package:mini_nft_marketplace/models/collections_model.dart';

import '../../models/topSeller_model.dart';

class Constants {
  static List<CategoryModel> categoryList = [
    CategoryModel(AssetImageManager.categoryHomePage, "Art"),
    CategoryModel(AssetImageManager.categoryMusicHomePage, "Music"),
    CategoryModel(AssetImageManager.categoryVirtualHomePage, "Virtual"),
  ];
  static List<CollectionModel> collectionLists = [
    CollectionModel(AssetImageManager.trendingHomePage1, "3D art", true, 200),
    CollectionModel(
        AssetImageManager.trendingHomePage2, "Portrail Art", false, 300),
    CollectionModel(
        AssetImageManager.trendingHomePage3, "Abstract Art", true, 400),
  ];
  static List<TopSellerModel> topSellerList = [
    TopSellerModel(AssetImageManager.topSellerHomePage1, "Abstract Pink1", "abstract #4678", 300,
        500, true),
    TopSellerModel(AssetImageManager.topSellerHomePage2, "Wave", "wavepi #5267",
        700, 200, false),
    TopSellerModel(AssetImageManager.topSellerHomePage3, "Abstract Pink2",
        "abstract #2538", 300, 100, true),
  ];
}
