// 所有 BLoCs 的通用接口
import 'package:rxdart/rxdart.dart';

abstract class BaseBloc<T> {
  final _subject$ = BehaviorSubject<T>();
  BehaviorSubject<T> get stream => _subject$.stream;
  Function(T) get add => _subject$.sink.add;

  void dispose() {
    _subject$?.close();
  }
}
