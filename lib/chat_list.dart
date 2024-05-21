class ChatItem{
  final String name;
  final String message;
  final String image;
  final String time;
  ChatItem({required this.name,required this.message, this.image = "",required this.time});
}

  List<ChatItem>chats = [
ChatItem(name: "zia Ullah", message: "Hello Zia ", image: "assets/images/zia.jpg", time: "12 PM"),
ChatItem(name: "Muhammad Abid", message: "I am working ", image: "assets/images/abid.jpg", time: "2 PM"),
ChatItem(name: "Ahmad Ali", message: "To comming Eid ", image: "assets/images/ahmad.jpg", time: "2 AM"),
ChatItem(name: "Dr. Muhammad Hamza", message: "To start the bussines", image: "assets/images/hamza.jpg", time: "6 PM"),
ChatItem(name: "Dr. Muhammad Ismail", message: "To finish the work ", image: "assets/images/ismail.jpg", time: "5 PM"),
ChatItem(name: "wahaj Ali", message: "To watch the TV ", image: "assets/images/wahaj.jpg", time: "3 PM"),
ChatItem(name: "Dr. waqas khan", message: "To take a medicine ", image: "assets/images/waqas.jpg", time: "5 AM"),
ChatItem(name: "Salman khan", message: "Good  ", image: "assets/images/salman.jpg", time: "6 AM"),

ChatItem(name: "zia Ullah", message: "To Everything is finish ", image: "assets/images/zia.jpg", time: "7 PM"),

  ];
