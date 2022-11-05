class Book {
  final String? id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String media;
  final bool isFavorite;
  Book({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.media,
    required this.imageUrl,
    this.isFavorite = false,
  });
  Book copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    String? imageUrl,
    String? media,
    bool? isFavorite,
  }) {
    return Book(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      media: media ?? this.media,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
