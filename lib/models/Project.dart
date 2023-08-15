class Project {
  final String? title, description, playstore, appstore, web;

  Project({
    this.title,
    this.description,
    this.playstore,
    this.appstore,
    this.web,
  });
}

List<Project> demoProjects = [
  Project(
    title: "Nest - Your Al Parenting Companion",
    description:
        '''Nest is a revolutionary application designed to assist pregnant mothers throughout their journey. Powered by cutting-edge technologies such as OpenAl and Firebase, Nest offers a seamless and intelligent backend system. Through our innovative prompts, we have tailored the user experience to be akin to a patient conversing with a healthcare professional.
The application features a comprehensive chat section, providing users with the opportunity to engage with "Ada," our virtual doctor. Ada's responses emulate natural conversation, much like the familiar interaction experienced with GPT-4, while possessing a keen memory of past discussions and user information to ensure personalized interactions.
Daily check-ins with Ada offer a valuable means of tracking and monitoring your child's progress. Additionally, users' partners can actively participate by accessing and managing their child's data, facilitating seamless collaboration and communication.
Nest empowers users with the ability to discover and select suitable names for their children, as well as accommodate multiple child profiles within the application. Moreover, inviting one's fiancé allows for shared management of child-related information, promoting a sense of togetherness and parental partnership.
For those seeking the full spectrum of premium features, Nest offers In-App Purchase integration. Subscribing through Google Pay or Apple Pay grants access to exclusive benefits and enhanced functionalities, ensuring an unparalleled parenting experience.
With Nest - Your Al Parenting Companion, we strive to provide expectant mothers with a supportive and intuitive platform, combining advanced Al technologies with personalized care to enrich their parenting journey like never before.''',
    playstore: 'https://play.google.com/store/apps/details?id=com.metasense.nest',
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
