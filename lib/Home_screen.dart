import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_ui/chat_list.dart';
import 'package:whatsapp_ui/conversation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
           foregroundColor: Colors.white,
              backgroundColor: Colors.teal,
              title:  const Text("Whatsapp"),
               bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.groups,
                color: Colors.white,),),
              Text('Chats', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Updates', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Calls', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ]),
            actions: [
              Icon(Icons.camera_alt_outlined),
              const Gap(15),
              Icon(Icons.search),
              PopupMenuButton(
                surfaceTintColor: Colors.white,
                icon: Icon(Icons.more_vert),
                itemBuilder: (context)=>[
                PopupMenuItem(
                  value: "1",
                  child:Text("New Group"),
                  
                  padding: EdgeInsets.only(left: 20,right: 20), ),
                  PopupMenuItem(
                    value: "2",
                    child: Text("New broadcast"),
                    ),
                     PopupMenuItem(
                    value: "3",
                    child: Text("Linked devices"),
                    ),
                     PopupMenuItem(
                    value: "4",
                    child: Text("Starred Messages"),
                    ),
                     PopupMenuItem(
                    value: "5",
                    child: Text("setting"),
                    ),
              ]),
              const Gap(10),
            ],
        ),
        body: TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         const Gap(20),
         ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.group),
            
          ),
          title: Text("Community"),
         ),
          Divider(thickness: .5,),
          Gap(10),
           ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal.withOpacity(.5),
                      child: Icon(Icons.notifications_active),
                     // backgroundImage: AssetImage('assets/images/ahsan.png'),
                    ),
                    title: Text('Announcements'),
                    subtitle: Text("Group 'Flutter B..."),
                    trailing: Text('Yesterday'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                     backgroundImage: AssetImage('assets/images/flutterGroup.jpg',),
                    ),
                    title: Text('Flutter Bootcamp'),
                    subtitle: Text('Top 10 widgets in flutter'),
                  ),
            ],
            
          ),
          ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context,index){
              ChatItem Chats = chats[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(Chats.image),
                ),
                 title: Text(Chats.name, style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(Chats.message),
                    trailing: Text(Chats.time),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ConversationScreen() ));
                    },
              );
            }),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Gap(15),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 20),
                   child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                    Text('Status', style: TextStyle(fontSize: 20, ),),
                        Icon(Icons.more_vert),
                                  ],
                                  ),
                 ),
                 ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/zia.jpg'),
                    ),
                    title: Text('My status', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Tap to add status update'),
                 ),
                 const Gap(10),
                     Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Recent updates',),
                    
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: chats.length,
                      itemBuilder: (context,index){
                        ChatItem Chats = chats[index];
                        return ListTile(
                           leading: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.teal,
                                width: 2,
                              
                              ),
                              borderRadius: BorderRadius.circular(20),
                    
                            ),
                            child: CircleAvatar(
                                backgroundImage: AssetImage(Chats.image),
                              
                            ),
                            
                            
                           ),
                                              
                                   title: Text(Chats.name, style: TextStyle(fontWeight: FontWeight.bold),),
                                   subtitle: Text(Chats.time),
                            );
                      }),
                  )
              ],
            ),
            Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  const Gap(10),
  ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.teal,
                          child: Icon(Icons.link, 
                          color: Colors.white,),
                        ),
                        title: Text('Create call link'),
                        subtitle: Text('Share a link for your WhatsApp call'),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text('Recent', style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                            Expanded(
                  child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (context, index){
                      ChatItem chat = chats[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(chat.image),
                        ),
                        title: Text(chat.name),
                        subtitle: Text('13 January, '+chat.time),
                        trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      );
                  }),
                ),
              ],
            )
        ]),
        floatingActionButton: FloatingActionButton(onPressed: (){},
         foregroundColor: Colors.white,
            backgroundColor: Colors.teal,
        child: Icon(Icons.chat),
        
        ),
      ),
      
    );
  }
}