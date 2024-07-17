import 'package:openfoodfacts/openfoodfacts.dart';

class OpenFoodService {
  final User user = const User(userId: '', password: '');

  OpenFoodService();

  Future<Product> getProductFromBarcode(String barcode) async {
    final ProductQueryConfiguration configuration = ProductQueryConfiguration(
      barcode,
      language: OpenFoodFactsLanguage.GERMAN,
      fields: [ProductField.ALL],
      version: ProductQueryVersion.v3,
    );
    final ProductResultV3 result =
        await OpenFoodAPIClient.getProductV3(configuration);
    if (result.status == ProductResultV3.statusSuccess &&
        result.product != null) {
      return result.product!;
    }
    throw Exception('Product not found');
  }

  Future<List<Product>> getProductsByName(String name) async {
    final ProductQueryConfiguration configuration = ProductQueryConfiguration(
      name,
      language: OpenFoodFactsLanguage.GERMAN,
      fields: [ProductField.NAME],
      version: ProductQueryVersion.v3,
    );
    SearchResult result =
        await OpenFoodAPIClient.searchProducts(user, configuration);
    if (result.products == null) {
      return [];
    } else {
      return result.products!;
    }
  }
}
