import 'package:flutter/material.dart';
import 'package:social_architecture_example/utils/result.dart';

class Command<T> extends ChangeNotifier {
  Command(this._action);
  final Future<Result<T>> Function() _action;
  bool _isLoading = false;
  Exception? _error;
  bool _completed = false;

  bool get completed => _completed;
  bool get isLoading => _isLoading;
  Exception? get error => _error;
  Future<Result<T>> execute() async {
    if (_isLoading) {
      return Result.ok(null as T);
    }
    clearState();
    notifyListeners();
    try {
      _isLoading = true;
      final result = await _action();
      _completed = true;
      return result;
    } on Exception catch (e) {
      _error = e;
      return Result.error(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void clearState() {
    _isLoading = true;
    _error = null;
    _completed = false;
  }
}
