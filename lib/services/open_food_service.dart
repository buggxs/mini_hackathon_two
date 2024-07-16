import 'package:openfoodfacts/openfoodfacts.dart';

class OpenFoodService {
  final User user = const User(userId: '', password: '');

  OpenFoodService();

  Future getProductFromBarcode(String barcode) async {
    final ProductQueryConfiguration configuration = ProductQueryConfiguration(
      barcode,
      language: OpenFoodFactsLanguage.GERMAN,
      fields: [ProductField.ALL],
      version: ProductQueryVersion.v3,
    );
    try {
      final ProductResultV3 result =
          await OpenFoodAPIClient.getProductV3(configuration);
      if (result.status == ProductResultV3.statusSuccess) {
        return result.product;
      }
    } catch (e) {
      throw Exception('Failed to get product from barcode');
    }
  }

  Future getProductsByName(String name) async {
    final ProductQueryConfiguration configuration = ProductQueryConfiguration(
      name,
      language: OpenFoodFactsLanguage.GERMAN,
      fields: [ProductField.NAME],
      version: ProductQueryVersion.v3,
    );
    SearchResult result =
        await OpenFoodAPIClient.searchProducts(user, configuration);
    return result.products?[0];
  }
}
