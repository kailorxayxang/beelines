class ProductItemModel {
  String desc;
  String type;
  String name;
  String imageUrl;

  ProductItemModel({this.desc, this.type, this.name, this.imageUrl});

  //usig json formate
  factory ProductItemModel.fromeJson(dynamic json){
    return ProductItemModel(
      desc: json['desc'],
      type: json['type'],
      name: json['name'],
      imageUrl: json['imageUrl']
    );
  }
}


class ProductListModel {
  List<ProductItemModel> data;
  ProductListModel(this.data);

  factory ProductListModel.fromeJson(List json){
    return ProductListModel(
      json.map((i)=>ProductItemModel.fromeJson((i))).toList()
    );
  }
}
