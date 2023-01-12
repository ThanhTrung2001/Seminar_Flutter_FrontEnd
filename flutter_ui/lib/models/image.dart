class Image {
  String? id;
  String? userId;
  String? type;
  String? imageId;
  String? imageUrl;

  Image({this.id, this.userId, this.type, this.imageId, this.imageUrl});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    userId = json['userId'];
    type = json['type'];
    imageId = json['imageId'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['userId'] = this.userId;
    data['type'] = this.type;
    data['imageId'] = this.imageId;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}

List<Image?> listImage = [];

Image? cccdFr;
Image? cccdB;
Image? bhytFr;
Image? bhytB;
Image? blxFr;
Image? blxB;
