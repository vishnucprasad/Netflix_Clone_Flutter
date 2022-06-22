// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i7;
import '../../../application/fast_laugh/fastlaugh_bloc.dart' as _i8;
import '../../../application/search/search_bloc.dart' as _i9;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i4;
import '../../../infrastructure/search/search_implementation.dart' as _i6;
import '../../downloads/i_downloaads_repo.dart' as _i3;
import '../../search/search_service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.DownloadsRepository());
  gh.lazySingleton<_i5.SearchService>(() => _i6.SearchImplementetion());
  gh.factory<_i7.DownloadsBloc>(
      () => _i7.DownloadsBloc(get<_i3.IDownloadsRepo>()));
  gh.factory<_i8.FastlaughBloc>(
      () => _i8.FastlaughBloc(get<_i3.IDownloadsRepo>()));
  gh.factory<_i9.SearchBloc>(() =>
      _i9.SearchBloc(get<_i5.SearchService>(), get<_i3.IDownloadsRepo>()));
  return get;
}
