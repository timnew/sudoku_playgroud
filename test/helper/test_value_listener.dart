import 'package:flutter/foundation.dart';

class TestValueListener<T> extends Iterable<T> {
  List<T> values = List();
  ValueListenable<T> listenable;

  TestValueListener([this.listenable]) {
    if (listenable != null) listenable.addListener(onChanged);
  }

  void listenTo(ValueListenable listenable) {
    this.listenable = listenable;
    listenable.addListener(onChanged);
  }

  void detach() {
    listenable.removeListener(onChanged);
  }

  void onChanged() {
    values.add(listenable.value);
  }

  @override
  Iterator<T> get iterator => values.iterator;
}
