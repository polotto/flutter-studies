import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrdersBloc extends BlocBase {
  final _ordersController = BehaviorSubject<List>();
  List<DocumentSnapshot> _orders = [];
  Firestore _firestore = Firestore.instance;

  Stream<List> get outOrders => _ordersController.stream;

  OrdersBloc() {
    _addOrdersListener();
  }

  @override
  void dispose() {
    _ordersController.close();
  }

  void _addOrdersListener() {
    _firestore.collection("orders").snapshots().listen((docs) {
      docs.documentChanges.forEach((change) {
        String oid = change.document.documentID;
        switch(change.type) {
          case DocumentChangeType.added:
            _orders.add(change.document);
            break;
          case DocumentChangeType.modified:
            _orders.removeWhere((order) => order.documentID == oid);
            _orders.add(change.document);
            break;
          case DocumentChangeType.removed:
            _orders.removeWhere((order) => order.documentID == oid);
            break;
        }
      });

      _ordersController.add(_orders);
    });
  }
}