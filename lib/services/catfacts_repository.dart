import 'package:cats_app/models/models_facts.dart';
import 'package:cats_app/services/catfacts_api_provider.dart';

class CatFactsRepository {
  CatFactProvider _catfactProvider = CatFactProvider();
  Future<List<CatFacts>> getAllFacts() => _catfactProvider.getCatFact();
}
