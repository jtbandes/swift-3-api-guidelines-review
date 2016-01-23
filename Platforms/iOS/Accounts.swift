
class ACAccount : NSObject {
  init!(accountType type: ACAccountType!)
  var identifier: String! { get }
  var accountType: ACAccountType!
  var accountDescription: String!
  var username: String!
  var userFullName: String! { get }
  var credential: ACAccountCredential!
  convenience init()
}
class ACAccountCredential : NSObject {
  init!(OAuthToken token: String!, tokenSecret secret: String!)
  init!(OAuth2Token token: String!, refreshToken: String!, expiryDate: NSDate!)
  var oauthToken: String!
  init()
}
enum ACAccountCredentialRenewResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Renewed
  case Rejected
  case Failed
}
typealias ACAccountStoreSaveCompletionHandler = (Bool, NSError!) -> Void
typealias ACAccountStoreRemoveCompletionHandler = (Bool, NSError!) -> Void
typealias ACAccountStoreRequestAccessCompletionHandler = (Bool, NSError!) -> Void
typealias ACAccountStoreCredentialRenewalHandler = (ACAccountCredentialRenewResult, NSError!) -> Void
class ACAccountStore : NSObject {
  var accounts: [AnyObject]! { get }
  func accountWithIdentifier(identifier: String!) -> ACAccount!
  func accountTypeWithAccountTypeIdentifier(typeIdentifier: String!) -> ACAccountType!
  func accountsWithAccountType(accountType: ACAccountType!) -> [AnyObject]!
  func saveAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreSaveCompletionHandler!)
  func requestAccessToAccountsWithType(accountType: ACAccountType!, options: [NSObject : AnyObject]!, completion: ACAccountStoreRequestAccessCompletionHandler!)
  func renewCredentialsForAccount(account: ACAccount!, completion completionHandler: ACAccountStoreCredentialRenewalHandler!)
  func removeAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreRemoveCompletionHandler!)
  init()
}
let ACAccountStoreDidChangeNotification: String
let ACAccountTypeIdentifierTwitter: String
let ACAccountTypeIdentifierFacebook: String
let ACAccountTypeIdentifierSinaWeibo: String
let ACAccountTypeIdentifierTencentWeibo: String
let ACFacebookAppIdKey: String
let ACFacebookPermissionsKey: String
let ACFacebookAudienceKey: String
let ACFacebookAudienceEveryone: String
let ACFacebookAudienceFriends: String
let ACFacebookAudienceOnlyMe: String
let ACTencentWeiboAppIdKey: String
class ACAccountType : NSObject {
  var accountTypeDescription: String! { get }
  var identifier: String! { get }
  var accessGranted: Bool { get }
  init()
}
let ACErrorDomain: String
struct ACErrorCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var ACErrorUnknown: ACErrorCode { get }
var ACErrorAccountMissingRequiredProperty: ACErrorCode { get }
var ACErrorAccountAuthenticationFailed: ACErrorCode { get }
var ACErrorAccountTypeInvalid: ACErrorCode { get }
var ACErrorAccountAlreadyExists: ACErrorCode { get }
var ACErrorAccountNotFound: ACErrorCode { get }
var ACErrorPermissionDenied: ACErrorCode { get }
var ACErrorAccessInfoInvalid: ACErrorCode { get }
var ACErrorClientPermissionDenied: ACErrorCode { get }
var ACErrorAccessDeniedByProtectionPolicy: ACErrorCode { get }
var ACErrorCredentialNotFound: ACErrorCode { get }
var ACErrorFetchCredentialFailed: ACErrorCode { get }
var ACErrorStoreCredentialFailed: ACErrorCode { get }
var ACErrorRemoveCredentialFailed: ACErrorCode { get }
var ACErrorUpdatingNonexistentAccount: ACErrorCode { get }
var ACErrorInvalidClientBundleID: ACErrorCode { get }
var ACErrorDeniedByPlugin: ACErrorCode { get }
var ACErrorCoreDataSaveFailed: ACErrorCode { get }
var ACErrorFailedSerializingAccountInfo: ACErrorCode { get }
var ACErrorInvalidCommand: ACErrorCode { get }
var ACErrorMissingTransportMessageID: ACErrorCode { get }
var ACErrorCredentialItemNotFound: ACErrorCode { get }
var ACErrorCredentialItemNotExpired: ACErrorCode { get }
