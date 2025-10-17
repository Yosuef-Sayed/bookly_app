import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with API Server!");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with API Server!");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with API Server!");
      case DioExceptionType.badCertificate:
        return ServerFailure("BadCertificate with API Server!");
      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(e.response!.statusCode, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to API Server was canceled!");
      case DioExceptionType.connectionError:
        return ServerFailure("No Internet connection!");
      case DioExceptionType.unknown:
        return ServerFailure("Oops! There's an error, Please try again!");
    }
    return ServerFailure("There's an error... Please try again!");
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode! == 404) {
      return ServerFailure("Request was not found, Please try later!");
    } else if (statusCode >= 500) {
      return ServerFailure("Server issues, Please try later!");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else {
      return ServerFailure("There's an error, Please try again!");
    }
  }
}
