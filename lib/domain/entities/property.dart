class PropertyModel extends Property {
  PropertyModel({
    required super.id,
    required super.name,
    required super.location,
    required super.imageUrl,
    required super.price,
    required super.bedrooms,
    required super.bathrooms,
    required super.gallery,
     

  });

  static List<PropertyModel> sampleList() {
    return [
      PropertyModel(
        id: '1',
        name: 'Dreamsville House',
        location: 'Jl. Sultan Iskandar Muda',
        imageUrl: 'assets/images/home1.jpg',
        price: 2500000000,
        bedrooms: 6,
        bathrooms: 4,
        gallery: [
          'https://via.placeholder.com/100x100',
          'https://via.placeholder.com/100x100',
          'https://via.placeholder.com/100x100'
        ],
      ),
      PropertyModel(
        id: '2',
        name: 'Ascot House',
        location: 'Jl. Cilandak Tengah',
        imageUrl: 'assets/images/home2.jpg',
        price: 2000000000,
        bedrooms: 5,
        bathrooms: 3,
        gallery: [
          'https://via.placeholder.com/100x100',
          'https://via.placeholder.com/100x100'
        ],
      ),
    ];
  }
}

class Property {
  final String id;
  final String name;
  final String location;
  final String imageUrl;
  final int price;
  final int bedrooms;
  final int bathrooms;
  final List<String> gallery;
   

  Property({
    required this.id,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.gallery,
       
  });
}