class CatImg {
  String url;

  CatImg({this.url});

  factory CatImg.fromJson(Map<String, dynamic> json) {
    return CatImg(url: json['url']);
  }
}
