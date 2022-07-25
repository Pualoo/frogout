// URLs
const kAPIurl = 'http://zssn-backend-example.herokuapp.com/api';

// Shared Preferences
const String kUser = 'user';
const String kUserID = 'userId';
const String kListContacts = 'userContacts';

// Error Message
const String kServerFailureMessage = 'Server Failure';
const String kCacheFailureMessage = 'Cache Failure';
const String kLocationFailureMessage = 'Get Location Failure';
const String kNetworkFailureMessage = 'No internet connection ';
const String kAddContactFailureMessage = 'Add new contact failed';
const String kTagInfectFailureMessage = 'Tag infect failed';
const String kScanFailureMessage = 'QR code reading failed';

// enums
enum SelectedContactOption {
  makeTradeWithContact,
  tagContact,
}
