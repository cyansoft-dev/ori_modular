import 'package:injectable/injectable.dart';

abstract class KursetLocalDataSource {}

@Named("kursetLocalDataSource")
@LazySingleton(as: KursetLocalDataSource)
class KursetLocalDataSourceImpl implements KursetLocalDataSource {}
