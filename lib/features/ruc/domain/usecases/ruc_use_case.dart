import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ruc/core/api/http.dart';
import 'package:ruc/features/ruc/domain/entities/ruc_entity.dart';
import 'package:ruc/features/ruc/domain/repositories/ruc_repository.dart';

@injectable
class RucUseCase {
  final RucRepository rucRepository;

  RucUseCase({required this.rucRepository});

  Future<DT<List<RucEntity>>> searchRuc({
    required String search,
    required int page,
  }) async {
    final response = await rucRepository.searchRuc(search: search, page: page);
    List<RucEntity> rucList = [];
    return response.fold(
      (error) {
        return Left(error);
      },
      (success) {
        for (var it in success.data.contribuyentes) {
          rucList.add(RucEntity(
            ruc: it.ruc,
            razonSocial: it.razonSocial,
            estado: it.estado,
            paginas: success.data.paginas,
          ));
        }

        rucList.sort(
          (a, b) => a.razonSocial.compareTo(b.razonSocial),
        );

        return Right(rucList);
      },
    );
  }
}
