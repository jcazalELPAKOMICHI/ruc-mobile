import 'package:ruc/core/api/http.dart';
import 'package:ruc/features/ruc/data/models/generic_search_response.dart';

abstract class RucRepository {
  Future<DT<GenericSearchResponse>> searchRuc({
    required String search,
    required int page,
  });
}
