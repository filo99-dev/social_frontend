import 'package:flutter/material.dart';
import 'package:social_architecture_example/utils/result.dart';

//definisco un alias per una funzione con 0 parametri che restituisca un Future con Result<T>
typedef CommandAction0<T> = Future<Result<T>> Function();
//definisco un alias per una funzione con 1 parametr0 di tipo A che restituisca un Future con Result<T>
typedef CommandAction1<T, ParamType> = Future<Result<T>> Function(ParamType);

abstract class Command<T> extends ChangeNotifier {
  Command();

  bool _running = false;
  bool get running => _running;

  //risultato opzionale
  Result<T>? _result;

  Result? get result => _result;

  bool get error => result is Err;
  bool get completed => result is Ok;

  void clearResult() {
    _result = null;
    notifyListeners();
  }

  //esegue l'azione con 0 parametri
  //verra' usato come empty function anche per eseguire
  //il command con 1 parametro
  Future<void> _execute(CommandAction0<T> action) async {
    //eivita che il comando venga eseguito spammando un bottone
    if (_running) {
      return;
    }

    _running = true;
    clearResult();

    try {
      _result = await action();
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}

class Command0<T> extends Command<T> {
  Command0(this._action);
  final CommandAction0<T> _action;

  Future<void> execute() async {
    await _execute(_action);
  }
}

class Command1<T, ParamType> extends Command {
  Command1(this._action);
  final CommandAction1<T, ParamType> _action;
  Future<void> execute(ParamType param) async {
    await _execute(() => _action(param));
  }
}
