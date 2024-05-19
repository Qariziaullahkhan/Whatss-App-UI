class ChatItem{
  final String name;
  final String message;
  final String image;
  final String time;
  ChatItem({required this.name,required this.message,required this.image,required this.time});

  List<ChatItem>chats = [
ChatItem(name: "zia Ullah", message: "To start ", image: "assets/images/zia.jpg", time: "12 PM"),
  ];
}