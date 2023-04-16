import 'package:mobx/mobx.dart';

part 'loading_store.g.dart';

class LoadingStore = _LoadingStore with _$LoadingStore;

abstract class _LoadingStore with Store {
  @observable
  bool isLoading = false;


  @action
  void setLoading(bool value) {
    isLoading = value;
  }
}
