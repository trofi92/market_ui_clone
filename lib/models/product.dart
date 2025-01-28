class Product {
  String title;
  String author;
  String address;
  String urlToImage;
  String publishedAt;
  String price;
  int heartCount;
  int commentCount;

  Product({
    required this.title,
    required this.author,
    required this.address,
    required this.urlToImage,
    required this.publishedAt,
    required this.price,
    required this.heartCount,
    required this.commentCount,
  });
}

List<Product> productList = [
  Product(
      title: "니트 조끼",
      author: "author_1",
      urlToImage:
          "https://cdn.pixabay.com/photo/2017/10/17/17/48/boy-2861547_1280.jpg",
      publishedAt: "2시간 전",
      heartCount: 8,
      price: "35000",
      address: "삼성동",
      commentCount: 3),
  Product(
      title: "성경",
      author: "author_2",
      urlToImage:
          "https://cdn.pixabay.com/photo/2017/03/02/05/14/bible-2110439_1280.jpg",
      publishedAt: "3시간 전",
      heartCount: 3,
      price: "18000",
      address: "망원동",
      commentCount: 1),
  Product(
      title: "책상",
      author: "author_3",
      urlToImage:
          "https://cdn.pixabay.com/photo/2023/11/10/20/37/desk-8380078_1280.jpg",
      publishedAt: "4시간 전",
      heartCount: 1,
      price: "100000",
      address: "좌동",
      commentCount: 1),
  Product(
      title: "가죽 파우치",
      author: "author_4",
      urlToImage:
          'https://cdn.pixabay.com/photo/2016/11/19/15/02/arrows-1839724_1280.jpg',
      publishedAt: "1주일 전",
      heartCount: 23,
      price: "50000",
      address: "우동",
      commentCount: 7),
  Product(
      title: "노트북",
      author: "author_5",
      urlToImage:
          'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_1280.jpg',
      publishedAt: "5일 전",
      heartCount: 23,
      price: "1150000",
      address: "삼성동",
      commentCount: 7),
  Product(
      title: "태블릿",
      author: "author_6",
      urlToImage:
          'https://cdn.pixabay.com/photo/2020/01/15/06/37/black-4766996_1280.jpg',
      publishedAt: "1주일 전",
      heartCount: 3,
      price: "250000",
      address: "우동",
      commentCount: 2),
];
