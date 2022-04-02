import 'package:flutter/cupertino.dart';

class SanPham{

}
class QLSanPham extends ChangeNotifier{
  late List<SanPham> listSP;

  List<SanPham> get list => _list;

  void xoaSP(int index){
    list.removeAt(index);
    notifyListeners();
  }
  void capnhat(SanPham moi, SanPham cu){
    // cap nhat
    notifyListeners();
  }
  void themmoi(SanPham sanPham){
    list.add(sanPham);
    notifyListeners();
  }
}