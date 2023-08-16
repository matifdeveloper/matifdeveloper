class Project {
  final String? title, description, playstore, appstore, web, screenshot;
  final int? totalScreenshots;

  Project({
    this.title,
    this.description,
    this.playstore,
    this.appstore,
    this.web,
    this.screenshot,
    this.totalScreenshots,
  });
}

List<Project> demoProjects = [
  Project(
    title: 'Gaia - AI Dream Interpreter',
    description:
        '''The aim of this app is to Unlock the secrets of your subconscious with GAIA, your AI-powered dream analyst. Inspired by the profound theories of Carl Jung, GAIA dives into the labyrinth of your dreams, revealing hidden insights and messages tailor-made for you.

The main functionalities I have used in this app are:
1. Social Auths (Google, Facebook, Microsoft, and Apple).
2. ChatGPT integration
3. Dalle Integration
4. In-App Purchases
    ''',
    playstore: 'https://play.google.com/store/apps/details?id=com.metasense.gaia',
    appstore: 'https://apps.apple.com/us/app/gaia-ai-dream-interpretor/id6450891063',
  ),
  Project(
    title: 'ImageAI - Art Generator',
    description:
        '''ImageAI – Art Generator is a groundbreaking app that harnesses the power of artificial intelligence to transform your imagination into stunning visual reality. With ImageAI, you can now create captivating and unique images simply by describing them in text form. Unleash your creativity, explore uncharted territories, and bring your wildest visions to life like never before.

The main functionalities I have used in this app are:
1. Dalle Api
2. Local Database (Hive)
3. Google Ads
    ''',
    playstore: 'https://play.google.com/store/apps/details?id=com.noorisofttech.ai_art_generator',
  ),
  Project(
    title: "Nest - Your Al Parenting Companion",
    description:
        '''Nest is a revolutionary application designed to assist pregnant mothers throughout their journey. Powered by cutting-edge technologies such as OpenAl and Firebase, Nest offers a seamless and intelligent backend system. Through our innovative prompts, we have tailored the user experience to be akin to a patient conversing with a healthcare professional.
The application features a comprehensive chat section, providing users with the opportunity to engage with "Ada," our virtual doctor. Ada's responses emulate natural conversation, much like the familiar interaction experienced with GPT-4, while possessing a keen memory of past discussions and user information to ensure personalized interactions.
Daily check-ins with Ada offer a valuable means of tracking and monitoring your child's progress. Additionally, users' partners can actively participate by accessing and managing their child's data, facilitating seamless collaboration and communication.
Nest empowers users with the ability to discover and select suitable names for their children, as well as accommodate multiple child profiles within the application. Moreover, inviting one's fiancé allows for shared management of child-related information, promoting a sense of togetherness and parental partnership.
For those seeking the full spectrum of premium features, Nest offers In-App Purchase integration. Subscribing through Google Pay or Apple Pay grants access to exclusive benefits and enhanced functionalities, ensuring an unparalleled parenting experience.
With Nest - Your Al Parenting Companion, we strive to provide expectant mothers with a supportive and intuitive platform, combining advanced Al technologies with personalized care to enrich their parenting journey like never before.''',
    playstore:
        'https://play.google.com/store/apps/details?id=com.metasense.nest',
  ),
  Project(
    title: "HD Wallpapers 2023",
    description: 'HD Wallpapers is a free wallpaper app that contains high-definition backgrounds for everyone.',
    playstore: 'https://play.google.com/store/apps/details?id=com.noorisofttech.hd_wallpapers',
  ),
  Project(
    title: "Taj Personal Care",
    description: 'Taj Personal Care offers the best AL Taj AL Malaki therapeutic Spa and Treatment in Dubai Taj Spa professional therapists are from AL Taj AL Malaki therapeutic Spa is a complete combination of Asian Treatment therapists’ expertise, a blend of world aroma, mythological roots, and fascinating ambiance.',
    playstore: 'https://play.google.com/store/apps/details?id=com.metasense.taj_spa',
  ),
  Project(
    title: "Mana Care",
    description: '''The Pet Sitters and Baby Sitter app – a seamless and intuitive solution designed for both Android and iOS platforms. This app harnesses the power of modern technology to connect caregivers and pet owners, as well as parents and babysitters, ensuring convenience, peace of mind, and efficient communication.
    
The main functionalities I have used in this app are:
  1. Social Auths
  2. Cloud Firestore
  3. Firebase Messaging
  4. Notification
  5. Firebase Storage
  6. One 2 One Chat
    ''',
  ),
  Project(
    title: "Hesett Restaurant",
    description:
        "Hesett Restaurant helps restaurants reach a new level and also provides customers with a smart and innovative way to order their food.",
  ),
  Project(
    title: "Hesett Restaurant Web App",
    description:
        "The Hesett Restaurant web app helps restaurants reach a new level. Restaurants can upload their menus along with all other details, Customers can view the menu app, etc.",
    web: 'https://lordwide-restaurant-ab977.web.app/#/',
  ),
];
