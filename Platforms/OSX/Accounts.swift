
class ACAccount : Object {
  init!(accountType type: ACAccountType!)
  var identifier: String! { get }
  var accountType: ACAccountType!
  var accountDescription: String!
  var username: String!
  var credential: ACAccountCredential!
  convenience init()
}
class ACAccountCredential : Object {
  init!(oAuthToken token: String!, tokenSecret secret: String!)
  init!(oAuth2Token token: String!, refreshToken: String!, expiryDate: Date!)
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
typealias ACAccountStoreSaveCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreRemoveCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreRequestAccessCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreCredentialRenewalHandler = (ACAccountCredentialRenewResult, Error!) -> Void
class ACAccountStore : Object {
  var accounts: [AnyObject]! { get }
  func accountWithIdentifier(identifier: String!) -> ACAccount!
  func accountTypeWithAccountTypeIdentifier(typeIdentifier: String!) -> ACAccountType!
  func accountsWith(accountType: ACAccountType!) -> [AnyObject]!
  func saveAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreSaveCompletionHandler!)
  func requestAccessToAccountsWith(accountType: ACAccountType!, options: [Object : AnyObject]! = [:], completion: ACAccountStoreRequestAccessCompletionHandler!)
  func renewCredentialsFor(account: ACAccount!, completion completionHandler: ACAccountStoreCredentialRenewalHandler!)
  func removeAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreRemoveCompletionHandler!)
  init()
}
let ACAccountStoreDidChangeNotification: String
let ACAccountTypeIdentifierTwitter: String
let ACAccountTypeIdentifierFacebook: String
let ACAccountTypeIdentifierSinaWeibo: String
let ACAccountTypeIdentifierTencentWeibo: String
let ACAccountTypeIdentifierLinkedIn: String
let ACFacebookAppIdKey: String
let ACFacebookPermissionsKey: String
let ACFacebookAudienceKey: String
let ACFacebookAudienceEveryone: String
let ACFacebookAudienceFriends: String
let ACFacebookAudienceOnlyMe: String
let ACLinkedInAppIdKey: String
let ACLinkedInPermissionsKey: String
let ACTencentWeiboAppIdKey: String
class ACAccountType : Object {
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
