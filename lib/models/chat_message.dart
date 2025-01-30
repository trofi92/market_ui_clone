class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUrl;

  ChatMessage({
    required this.sender,
    required this.profileImage,
    required this.location,
    required this.sendDate,
    required this.message,
    this.imageUrl,
  });
}

List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: "세영",
    profileImage: "https://picsum.photos/200",
    location: "망원동",
    sendDate: "1일전",
    message: "네고가능한가요??",
  ),
  ChatMessage(
    sender: "다른세영",
    profileImage: "https://placehold.co/600x400",
    location: "좌동",
    sendDate: "1시간 전",
    message: "아직 판매중이면 답변 부탁드려요",
    imageUrl: "https://placehold.co/600x400",
  ),
];
