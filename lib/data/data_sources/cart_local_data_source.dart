import '../../domain/entities/cart/cart_item.dart';

abstract class CartLocalDataSource {
  Future<List<CartItem>> getCart();
  Future<void> saveCartItem(CartItem cartItem);
  Future<bool> clearCart();
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  List<CartItem> _items = [];

  @override
  Future<List<CartItem>> getCart() async {
    return _items;
  }

  @override
  Future<void> saveCartItem(CartItem cartItem) async {
    _items = _items.toList()..add(cartItem);
  }

  @override
  Future<bool> clearCart() async {
    _items.clear();

    return true;
  }
}
