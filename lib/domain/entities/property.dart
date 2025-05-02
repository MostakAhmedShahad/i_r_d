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
    required super.ownerName,
     
     

  });

  static List<PropertyModel> sampleList() {
    return [
      PropertyModel(
        id: '1',
        name: 'Dreamsville House',
        ownerName: 'Garry Allen',
        location: 'Jl. Sultan Iskandar Muda',
        imageUrl: 'assets/images/home1.jpg',
        price: 2500000000,
        bedrooms: 6,
        bathrooms: 4,
         
        gallery: [
          'assets/images/room1.jpg',
          'assets/images/room2.jpg',
          'assets/images/room3.jpg',
          'assets/images/room4.jpg',
          'assets/images/room5.jpg',
        ],
      ),
      PropertyModel(
        id: '2',
        name: 'Ascot House',
        ownerName: 'Sakib',
        location: 'Jl. Cilandak Tengah',
        imageUrl: 'assets/images/home2.jpg',
        price: 2000000000,
        bedrooms: 5,
        bathrooms: 3,
        gallery: [
          'assets/images/room1.jpg',
          'assets/images/room2.jpg',
          'assets/images/room3.jpg',
          'assets/images/room4.jpg',
          'assets/images/room5.jpg',
        ],
      ),
      PropertyModel(
        id: '3',
        name: 'Shahad House',
        ownerName: 'Rahman',
        location: 'Mohakhali, Dhaka',
        imageUrl: 'assets/images/home3.jpg',
        price: 2900000000,
        bedrooms: 6,
        bathrooms: 4,
        gallery: [
          'assets/images/room1.jpg',
          'assets/images/room2.jpg',
          'assets/images/room3.jpg',
          'assets/images/room4.jpg',
          'assets/images/room5.jpg',
        ],
      ),
      PropertyModel(
        id: '4',
        name: 'Mostak House',
        location: 'Gulshan, Dhaka',
        ownerName: 'ali',
        imageUrl: 'assets/images/home4.jpg',
        price: 4000000000,
        bedrooms: 6,
        bathrooms: 6,
        gallery: [
          'assets/images/room1.jpg',
          'assets/images/room2.jpg',
          'assets/images/room3.jpg',
          'assets/images/room4.jpg',
          'assets/images/room5.jpg',
        ],
      ),
    ];
  }
}

class Property {
  final String id;
  final String name;
  final String ownerName;
  final String location;
  final String imageUrl;
  final int price;
  final int bedrooms;
  final int bathrooms;
  final List<String> gallery;
   

  Property({
    required this.id,
    required this.name,
    required this.ownerName,
    required this.location,
    required this.imageUrl,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.gallery,

       
  });
}