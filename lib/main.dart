import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int index = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('facebook', style: TextStyle(color: Color(0xff0165E1), fontSize: 25, fontWeight: FontWeight.w900),),
              backgroundColor: Colors.white,
              bottom: const TabBar(
                tabs: [
                  Tab(child: Icon(FontAwesomeIcons.house)),
                  Tab(child: Icon(FontAwesomeIcons.youtube)),
                  Tab(child: Icon(FontAwesomeIcons.userGroup)),
                  Tab(child: Icon(FontAwesomeIcons.store)),
                  Tab(child: Icon(FontAwesomeIcons.bell)),
                  Tab(child: Icon(FontAwesomeIcons.bars)),
                ],
              ),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.circlePlus)),
                IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.search)),
                IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.facebookMessenger)),
              ],
            ),
            backgroundColor: Colors.white,
            body: TabBarView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 80,
                                child: Row(
                                  children: <Widget>[
                                    const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.teal,
                                      backgroundImage:
                                      AssetImage('assets/images/junaid-khan.jpg'),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderSide: const BorderSide(width: 3, color: Colors.grey),
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                            hintText: " What's on your mind?",
                                            hintStyle: const TextStyle(color: Colors.grey)
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20,),
                                    Transform(
                                      transform: Matrix4.diagonal3Values(0.7, 1.2, 1.0), // Scale width and height
                                      child: const Icon(
                                        FontAwesomeIcons.image,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    )

                                  ],
                                ),
                              ),
                              Container(
                                height: 10, // Adjust the height to your desired thickness
                                color: Colors.grey[400], // Light grey color for the separator
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                height: 180,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    makeStory(
                                        storyImage: 'assets/images/story/story-1.jpg',
                                        userImage: 'assets/images/junaid-khan.jpg',
                                        userName: 'Create Story'
                                    ),
                                    makeStory(
                                        storyImage: 'assets/images/story/story-2.jpg',
                                        userImage: 'assets/images/aiony-haust.jpg',
                                        userName: 'Aiony Haust'
                                    ),
                                    makeStory(
                                        storyImage: 'assets/images/story/story-3.jpg',
                                        userImage: 'assets/images/averie-woodard.jpg',
                                        userName: 'Averie Woodard'
                                    ),
                                    makeStory(
                                        storyImage: 'assets/images/story/story-4.jpg',
                                        userImage: 'assets/images/azamat-zhanisov.jpg',
                                        userName: 'Azamat Zhanisov'
                                    ),
                                    makeStory(
                                        storyImage: 'assets/images/story/story-1.jpg',
                                        userImage: 'assets/images/azamat-zhanisov.jpg',
                                        userName: 'Azamat Zhanisov'
                                    ),
                                    makeStory(
                                        storyImage: 'assets/images/story/story-5.jpg',
                                        userImage: 'assets/images/foto-sushi.jpg',
                                        userName: 'Foto Sushi'
                                    ),
                                    makeStory(
                                        storyImage: 'assets/images/story/story-6.jpg',
                                        userImage: 'assets/images/jurica-koletic.jpg',
                                        userName: 'Jurica Koletic'
                                    ),
                                    makeStory(
                                        storyImage: 'assets/images/story/story-3.jpg',
                                        userImage: 'assets/images/lucas-sankey.jpg',
                                        userName: 'Lukas Sankey'
                                    ),
                                    makeStory(
                                        storyImage: 'assets/images/story/story-2.jpg',
                                        userImage: 'assets/images/michael-frattaroli.jpg',
                                        userName: 'Michael Frattaroli'
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15,),
                              makeFeed(
                                  userName: 'Aatik Tasneem',
                                  userImage: 'assets/images/aatik-tasneem.jpg',
                                  feedTime: '1 hr ago',
                                  feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                                  feedImage: 'assets/images/story/story-2.jpg'
                              ),
                              makeFeed(
                                  userName: 'Aiony Haust',
                                  userImage: 'assets/images/aiony-haust.jpg',
                                  feedTime: '2 mins ago',
                                  feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                  feedImage: ''
                              ),
                              makeFeed(
                                  userName: 'Averie Woodard',
                                  userImage: 'assets/images/averie-woodard.jpg',
                                  feedTime: '6 hrs ago',
                                  feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                  feedImage: 'assets/images/story/story-3.jpg'
                              ),
                              makeFeed(
                                  userName: 'Azamat Zhanisov',
                                  userImage: 'assets/images/azamat-zhanisov.jpg',
                                  feedTime: '3 hrs ago',
                                  feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                  feedImage: 'assets/images/story/story-4.jpg'
                              ),
                              makeFeed(
                                  userName: 'Foto Sushi',
                                  userImage: 'assets/images/foto-sushi.jpg',
                                  feedTime: '3 mins ago',
                                  feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                  feedImage: 'assets/images/story/story-5.jpg'
                              ),
                              makeFeed(
                                  userName: 'Jurica Koletic',
                                  userImage: 'assets/images/jurica-koletic.jpg',
                                  feedTime: '20 mins ago',
                                  feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                  feedImage: 'assets/images/story/story-6.jpg'
                              ),
                              makeFeed(
                                  userName: 'Lucas Sankey',
                                  userImage: 'assets/images/lucas-sankey.jpg',
                                  feedTime: '24 mins ago',
                                  feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                  feedImage: 'assets/images/story/story-1.jpg'
                              ),
                              makeFeed(
                                  userName: 'Michael Frattaroli',
                                  userImage: 'assets/images/michael-frattaroli.jpg',
                                  feedTime: '3 days ago',
                                  feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                  feedImage: 'assets/images/story/story-2.jpg'
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
        ));
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text(userName, style: const TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 10, // Adjust the height to your desired thickness
            color: Colors.grey[400], // Light grey color for the separator
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          userName,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          feedTime,
                          style: const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30,
                      color: Colors.grey[600],
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.xmark,
                      size: 30,
                      color: Colors.grey[600],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            feedText,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[800],
              height: 1.5,
              letterSpacing: .7,
            ),
          ),
          const SizedBox(height: 20),
          feedImage != ''
              ? Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              ),
            ),
          )
              : Container(),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded( // Expands the first Row to occupy available space
                child: Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                      offset: const Offset(-5, 0),
                      child: makeLove(),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "2.5K",
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
              Text(
                "400 comments",
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
              ),
              const SizedBox(width: 10), // Optional space between comments and shares
              Text(
                "2 shares",
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
              ),
            ],
          ),

          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeSendButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }


  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.thumbsUp, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            const SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.comment, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeSendButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.whatsapp, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Send", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }


}

