import 'package:get_it/get_it.dart';
import 'package:mini_hackathon_two/services/open_food_service.dart';

final GetIt app = GetIt.instance;

void setup() {
  app.allowReassignment = true;

  app.registerLazySingleton<OpenFoodService>(() => OpenFoodService());
}
