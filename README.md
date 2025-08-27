
# Fahman

Folder Structure:

| Folder| Description |
| ----------- | ----------- |
| core      | Contains all the app core classes (Recently added) |
| data   | This folder works as the data layer, all the models + APIs declared here.|
| extensions| Any Dart extension method defined here         |
| managers| Any Manager(Typically Singleton) defined here        |
| pages| Contains all the pages, following the MVVM pattern|
| providers| Any global Riverpod Provider Defined here|
| theme| app theme + theme utils related are defined here         |
| utils| All the utilities classes are defined here, such as assets utils, date utils,...        |
| widgets| contains the all the core app widgets, the naming convention is main_{widget_name}|

Dependencies:
| Package| Description |
| ----------- | ----------- |
| flutter_svg| used to render the svg assets|
| responsive_framework| -- Used to make the app UI responsive to screen sizes automatically|
| flutter_riverpod| the main state management library in the project|
| dio| the http client in the app|
| json_annotation| defines the annotations used by json_serializable to create code for JSON serialization and deserialization.|
| shared_preferences| used to save user prefs and settings|
| logger| the logging library used in the app(better than print) + can be disabled in the production|
| easy_localization| the localization solution used in the app|
| pin_code_fields| A flutter package which will help you to generate pin code fields with beautiful design and animations|
| palette_generator| used to extract some colors from image|
| page_transition| set of page transitions ready to use|
| just_audio| the main audio player in the app|
| just_audio_background| not used and can be removed - we are using audio_service|
| intl| Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text.|
| pdfx| the main pdf viewer used in the app, we are using this library to read the pdf file pages as a bytes then convert them to images then render them in PageView|
| firebase_auth| used to verify phone number|
| curved_nav_bar| this package was forked from pub.dev to customize it as app needs, it is available at ahmadzakariamediaplus account|
| google_sign_in| to sign a user with google|
| flutter_html| used to render some html content in flutter, mainly in the settings pages|
| equatable| to make equality compression easy in Dart|
| shimmer| to render a shimmer effect|
| audioplayers| used to play some audio effects using SoundManager|
| lottie| used to play lottie animatino files|
| firebase_messaging| to get FCM token for the user|
| sign_in_with_apple| to sign a user with apple|
| flutter_facebook_auth| to sign a user with facebook|
| top_snackbar_flutter| to show Toast messages - look at toast_utils.dart|
| open_store| to open the app stores|
| package_info_plus| provides an API for querying information about an application package - used to force the user to update the app|
| firebase_analytics| recently added to send custom events to google analytics|
| synchronized| basic lock mechanism to prevent concurrent access to asynchronous code|
| encrypt| used to encrypt and decrypt the book pdf file|
| flutter_dotenv| used to save some env variables|
| audio_service| recently added to run the audio in the background look at the audio_player_handler.dart|
| get_it| recently added + used as a service locator, better than singleton, we can easily mock the implementations. |
| audio_session| recently added to solve the audio interruption when we click at a button which case the just_audio player to fade out + the solution not worked so for now we decide to stop other sounds when there is a audio book playing + this plugin informs the operating system of the nature of your audio app (e.g. game, media player, assistant, etc.) and how your app will handle and initiate audio interruptions (e.g. phone call interruptions) |  