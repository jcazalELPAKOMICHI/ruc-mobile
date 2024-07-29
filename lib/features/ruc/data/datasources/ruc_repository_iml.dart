import 'package:injectable/injectable.dart';
import 'package:ruc/core/api/http.dart';
import 'package:ruc/features/ruc/data/models/generic_search_response.dart';
import 'package:ruc/features/ruc/domain/repositories/ruc_repository.dart';

@Injectable(as: RucRepository)
class RucRepositoryIml implements RucRepository {
  final Http http;

  RucRepositoryIml({required this.http});

  @override
  Future<DT<GenericSearchResponse>> searchRuc(
      {required String search, required int page}) async {
    const path = 'api/contribuyente/search';
    return await http.get(path,
        fromJsonFunction: GenericSearchResponse.fromJson,
        queryParameters: {
          'search': search,
          'page': page,
        });
  }
}
