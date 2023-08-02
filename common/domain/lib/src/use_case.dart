import 'package:equatable/equatable.dart';

import '../domain.dart';
// TODO: Improve this by adding support for Isolates and handling Result.Loading and Result.Error
abstract class StreamUseCase<Type, Params> {
  Stream<Result<Type>> execute(Params params);
  Stream<Result<Type>> call(Params params) {
    return execute(params);
  }
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
