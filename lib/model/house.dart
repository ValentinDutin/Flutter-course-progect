class Facilities{
  String countBathroom;
  String countBedroom;
  String countParking;
  String kitchenSquare;

  Facilities({this.countBathroom, this.countBedroom, this.countParking, this.kitchenSquare});
}

class House{
  String name;
  String address;
  String description;
  List<String> photoUrlList;
  String square;
  String price;
  Facilities facilities;

  House({this.name,this.address, this.description, this.photoUrlList, this.facilities, this.price, this.square});

}