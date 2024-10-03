import 'package:beauty_salon/features/data/repos/partnership_repo.dart';
import 'package:get_it/get_it.dart';

import '../database/network_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  //********** */ Register services ********** */
  locator.registerLazySingleton(() => NetworkService());
   locator.registerLazySingleton(() => PartnershipRepository());
}
