import 'dart:convert';

class Category {
  final int id;
  final String name;
  final String iconPath;
  Category({
    required this.id,
    required this.name,
    required this.iconPath,
  });

  Category copyWith({
    int? id,
    String? name,
    String? iconPath,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      iconPath: iconPath ?? this.iconPath,
    );
  }

  @override
  String toString() => 'Category(id: $id, name: $name, iconPath: $iconPath)';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'iconPath': iconPath,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      iconPath: map['iconPath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));
}

List<Category> dummyCategories = [
  Category(id: 1, name: 'Chair', iconPath: 'assets/icons/chair-icon.png'),
  Category(id: 2, name: 'Table', iconPath: 'assets/icons/table-icon.png'),
  Category(id: 3, name: 'Cupboard', iconPath: 'assets/icons/cupboard-icon.png'),
  Category(id: 4, name: 'Sofa', iconPath: 'assets/icons/sofa-icon.png'),
];
