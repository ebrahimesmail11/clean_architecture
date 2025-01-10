import 'package:clean_architecture/core/errors/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.error(ErrorHandler errorHandler) = Error<T>;
}
