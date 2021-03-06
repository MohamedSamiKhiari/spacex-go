/// URL FILE
/// It has all urls used in the app as static const strings.
class Url {
  //Base URLs
  static const String spacexBaseUrl = 'https://api.spacexdata.com/v3';

  // Home page lists
  static const String rocketList = '$spacexBaseUrl/rockets';
  static const String capsuleList = '$spacexBaseUrl/dragons';
  static const String roadsterPage = '$spacexBaseUrl/roadster';
  static const String upcomingList = '$spacexBaseUrl/launches/upcoming';
  static const String launchesList = '$spacexBaseUrl/launches/past?order=desc';
  static const String shipsList = '$spacexBaseUrl/ships?active=true';

  // Upcoming launch for Home screen
  static const String nextLaunch = '$spacexBaseUrl/launches/next';

  // FH maiden launch
  static const String roadsterVideo = 'https://youtu.be/wbSwFU6tY1c';

  // Details dialogs
  static const String coreDialog = '$spacexBaseUrl/cores/';
  static const String capsuleDialog = '$spacexBaseUrl/capsules/';
  static const String launchpadDialog = '$spacexBaseUrl/launchpads/';
  static const String landingpadDialog = '$spacexBaseUrl/landpads/';

  // SpaceX related info
  static const String spacexCompany = '$spacexBaseUrl/info';
  static const String spacexAchievements = '$spacexBaseUrl/history';

  // Map URL
  static const String mapView =
      'https://cartodb-basemaps-{s}.global.ssl.fastly.net/dark_all/{z}/{x}/{y}.png';

  // Share details message
  static const String shareDetails = '#spacexGO $cherryStore';

  // About page
  static const String authorReddit = 'https://www.reddit.com/user/jesusrp98';
  static const String authorStore =
      'https://play.google.com/store/apps/developer?id=Jes%C3%BAs+Rodr%C3%ADguez+P%C3%A9rez';
  static const String cherryStore =
      'https://play.google.com/store/apps/details?id=com.chechu.cherry';
  static const String patreonPage = 'https://www.patreon.com/jesusrp98';
  static const String cherryGithub = 'https://github.com/jesusrp98/spacex-go';
  static const Map<String, String> email = {
    'subject': 'About SpaceX GO!',
    'address': 'spacex.go.app@gmail.com',
  };
  static const String apiGithub = 'https://github.com/r-spacex/SpaceX-API';
  static const String internationalSystem =
      'https://en.wikipedia.org/wiki/International_System_of_Units';
  static const String spacexPage = 'https://www.spacex.com/';
  static const String flutterPage = 'https://flutter.dev/';
}
