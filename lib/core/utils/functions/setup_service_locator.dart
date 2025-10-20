import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/data_sources/local/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:bookly/features/home/data/repositories/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton<ApiService>(ApiService(Dio()));
  locator.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      homeRemoteDataSource: HomeRemoteDataSourceImplementation(
        locator.get<ApiService>(),
      ),
      homeLocalDataSource: HomeLocalDataSourceImplementation(),
    ),
  );
}
