import 'package:injectable/injectable.dart';
import 'package:ruc/core/api/http.dart';
import 'package:ruc/features/ruc/data/models/generic_search_response.dart';
import 'package:ruc/features/ruc/domain/repositories/ruc_repository.dart';

@injectable
class RucUseCase {
  final RucRepository rucRepository;

  RucUseCase({required this.rucRepository});

  Future<DT<GenericSearchResponse>> searchRuc({
    required String search,
    required int page,
  }) async {
    return await rucRepository.searchRuc(search: search, page: page);
  }
}
