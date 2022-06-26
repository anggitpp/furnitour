import 'dart:convert';

class Product {
  final int id;
  final int categoryId;
  final String name;
  final String placement;
  final double price;
  final String material;
  final String imagePath;
  final bool isWishlist;
  Product({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.placement,
    required this.price,
    required this.material,
    required this.imagePath,
    required this.isWishlist,
  });

  Product copyWith({
    int? id,
    int? categoryId,
    String? name,
    String? placement,
    double? price,
    String? material,
    String? imagePath,
    bool? isWishlist,
  }) {
    return Product(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      placement: placement ?? this.placement,
      price: price ?? this.price,
      material: material ?? this.material,
      imagePath: imagePath ?? this.imagePath,
      isWishlist: isWishlist ?? this.isWishlist,
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, categoryId: $categoryId, name: $name, placement: $placement, price: $price, material: $material, imagePath: $imagePath, isWishlist: $isWishlist)';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'categoryId': categoryId,
      'name': name,
      'placement': placement,
      'price': price,
      'material': material,
      'imagePath': imagePath,
      'isWishlist': isWishlist,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id']?.toInt() ?? 0,
      categoryId: map['categoryId']?.toInt() ?? 0,
      name: map['name'] ?? '',
      placement: map['placement'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      material: map['material'] ?? '',
      imagePath: map['imagePath'] ?? '',
      isWishlist: map['isWishlist'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}

List<Product> dummyChair = [
  Product(
    id: 1,
    name: 'Vedbo Chair',
    categoryId: 1,
    placement: 'Living Room',
    price: 10000,
    material: '2-seat sofa, knisa dark gray',
    isWishlist: true,
    imagePath: 'assets/images/chair/vedbo-chair.png',
  ),
  Product(
    id: 2,
    name: 'Sakarias Chair',
    categoryId: 1,
    placement: 'Living Room',
    price: 20000,
    isWishlist: false,
    imagePath: 'assets/images/chair/sakarias-chair.png',
    material: 'Swivel chair, black murum',
  ),
  Product(
    id: 3,
    name: 'Poang Cream Chair',
    categoryId: 1,
    placement: 'Living Room',
    price: 20000,
    isWishlist: false,
    material: 'Swivel chair, black murum',
    imagePath: 'assets/images/chair/poang-cream-chair.png',
  ),
  Product(
    id: 4,
    name: 'Poang Black Chair',
    categoryId: 1,
    placement: 'Living Room',
    price: 20000,
    isWishlist: false,
    material: 'Swivel chair, black murum',
    imagePath: 'assets/images/chair/poang-black-chair.png',
  ),
];
