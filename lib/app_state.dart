import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _menuRedution = false;
  bool get menuRedution => _menuRedution;
  set menuRedution(bool value) {
    _menuRedution = value;
  }

  bool _menuAtivo = false;
  bool get menuAtivo => _menuAtivo;
  set menuAtivo(bool value) {
    _menuAtivo = value;
  }

  List<ListaProdutosStruct> _listaCompras = [];
  List<ListaProdutosStruct> get listaCompras => _listaCompras;
  set listaCompras(List<ListaProdutosStruct> value) {
    _listaCompras = value;
  }

  void addToListaCompras(ListaProdutosStruct value) {
    listaCompras.add(value);
  }

  void removeFromListaCompras(ListaProdutosStruct value) {
    listaCompras.remove(value);
  }

  void removeAtIndexFromListaCompras(int index) {
    listaCompras.removeAt(index);
  }

  void updateListaComprasAtIndex(
    int index,
    ListaProdutosStruct Function(ListaProdutosStruct) updateFn,
  ) {
    listaCompras[index] = updateFn(_listaCompras[index]);
  }

  void insertAtIndexInListaCompras(int index, ListaProdutosStruct value) {
    listaCompras.insert(index, value);
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  List<String> _eventos = ['Evento 1', 'Evendo 2', 'Evento 3'];
  List<String> get eventos => _eventos;
  set eventos(List<String> value) {
    _eventos = value;
  }

  void addToEventos(String value) {
    eventos.add(value);
  }

  void removeFromEventos(String value) {
    eventos.remove(value);
  }

  void removeAtIndexFromEventos(int index) {
    eventos.removeAt(index);
  }

  void updateEventosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    eventos[index] = updateFn(_eventos[index]);
  }

  void insertAtIndexInEventos(int index, String value) {
    eventos.insert(index, value);
  }

  int _visivel = 0;
  int get visivel => _visivel;
  set visivel(int value) {
    _visivel = value;
  }

  List<int> _nuber = [30, 70];
  List<int> get nuber => _nuber;
  set nuber(List<int> value) {
    _nuber = value;
  }

  void addToNuber(int value) {
    nuber.add(value);
  }

  void removeFromNuber(int value) {
    nuber.remove(value);
  }

  void removeAtIndexFromNuber(int index) {
    nuber.removeAt(index);
  }

  void updateNuberAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    nuber[index] = updateFn(_nuber[index]);
  }

  void insertAtIndexInNuber(int index, int value) {
    nuber.insert(index, value);
  }

  String _menuOption = 'vazia';
  String get menuOption => _menuOption;
  set menuOption(String value) {
    _menuOption = value;
  }

  String _submenu = 'vazia';
  String get submenu => _submenu;
  set submenu(String value) {
    _submenu = value;
  }

  String _telasVisivel = 'vazio';
  String get telasVisivel => _telasVisivel;
  set telasVisivel(String value) {
    _telasVisivel = value;
  }
}
