
let PKEncryptionSchemeECC_V2: String
let PKPaymentNetworkAmex: String
let PKPaymentNetworkDiscover: String
let PKPaymentNetworkMasterCard: String
let PKPaymentNetworkPrivateLabel: String
let PKPaymentNetworkVisa: String
class PKContact : Object {
  var name: PersonNameComponents?
  var postalAddress: CNPostalAddress?
  var emailAddress: String?
  var phoneNumber: CNPhoneNumber?
  init()
}
let PKPassKitErrorDomain: String
enum PKPassKitErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case InvalidDataError
  case UnsupportedVersionError
  case InvalidSignature
  case NotEntitledError
}
extension PKPassKitErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
class PKObject : Object {
  init()
}
enum PKPassType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Barcode
  case Payment
  case Any
}
class PKPass : PKObject {
  init(data: Data, error: ErrorPointer)
  var passType: PKPassType { get }
  unowned(unsafe) var paymentPass: @sil_unmanaged PKPaymentPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  @NSCopying var webServiceURL: URL? { get }
  var authenticationToken: String? { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  @NSCopying var relevantDate: Date? { get }
  var userInfo: [Object : AnyObject]? { get }
  @NSCopying var passURL: URL { get }
  var isRemotePass: Bool { get }
  var deviceName: String { get }
  func localizedValueForFieldKey(key: String) -> AnyObject?
  init()
}
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DidAddPasses
  case ShouldReviewPasses
  case DidCancelAddPasses
}
typealias PKSuppressionRequestToken = Int
class PKPassLibrary : Object {
  class func isPassLibraryAvailable() -> Bool
  class func isPaymentPassActivationAvailable() -> Bool
  func isPaymentPassActivationAvailable() -> Bool
  func passes() -> [PKPass]
  func passWithPassTypeIdentifier(identifier: String, serialNumber: String) -> PKPass?
  func passesOf(passType: PKPassType) -> [PKPass]
  func remotePaymentPasses() -> [PKPaymentPass]
  func removePass(pass: PKPass)
  func containsPass(pass: PKPass) -> Bool
  func replacePassWith(pass: PKPass) -> Bool
  func addPasses(passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)? = nil)
  func canAddPaymentPassWithPrimaryAccountIdentifier(primaryAccountIdentifier: String) -> Bool
  init()
}
let PKPassLibraryDidChangeNotification: String
let PKPassLibraryRemotePaymentPassesDidChangeNotification: String
let PKPassLibraryAddedPassesUserInfoKey: String
let PKPassLibraryReplacementPassesUserInfoKey: String
let PKPassLibraryRemovedPassInfosUserInfoKey: String
let PKPassLibraryPassTypeIdentifierUserInfoKey: String
let PKPassLibrarySerialNumberUserInfoKey: String
enum PKPaymentPassActivationState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Activated
  case RequiresActivation
  case Activating
  case Suspended
  case Deactivated
}
class PKPaymentPass : PKPass {
  var primaryAccountIdentifier: String { get }
  var primaryAccountNumberSuffix: String { get }
  var deviceAccountIdentifier: String { get }
  var deviceAccountNumberSuffix: String { get }
  var activationState: PKPaymentPassActivationState { get }
  init(data: Data, error: ErrorPointer)
  init()
}
