
enum PKAddPassButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Black
  case BlackOutline
}
class PKAddPassButton : UIButton {
  convenience init(style addPassButtonStyle: PKAddPassButtonStyle)
  init(addPassButtonStyle style: PKAddPassButtonStyle)
  var addPassButtonStyle: PKAddPassButtonStyle
  convenience init(type buttonType: UIButtonType)
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol PKAddPassesViewControllerDelegate : NSObjectProtocol {
  optional func addPassesViewControllerDidFinish(controller: PKAddPassesViewController)
}
class PKAddPassesViewController : UIViewController {
  init(pass: PKPass)
  init(passes: [PKPass])
  class func canAddPasses() -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged PKAddPassesViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum PKAddPaymentPassError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unsupported
  case UserCancelled
  case SystemCancelled
}
class PKAddPaymentPassRequestConfiguration : NSObject {
  init?(encryptionScheme: String)
  var encryptionScheme: String { get }
  var cardholderName: String?
  var primaryAccountSuffix: String?
  var localizedDescription: String?
  var primaryAccountIdentifier: String?
  var paymentNetwork: String?
  convenience init()
}
class PKAddPaymentPassRequest : NSObject {
  init()
  @NSCopying var encryptedPassData: NSData?
  @NSCopying var activationData: NSData?
  @NSCopying var ephemeralPublicKey: NSData?
  @NSCopying var wrappedKey: NSData?
}
protocol PKAddPaymentPassViewControllerDelegate : NSObjectProtocol {
  func addPaymentPassViewController(controller: PKAddPaymentPassViewController, generateRequestWithCertificateChain certificates: [NSData], nonce: NSData, nonceSignature: NSData, completionHandler handler: (PKAddPaymentPassRequest) -> Void)
  func addPaymentPassViewController(controller: PKAddPaymentPassViewController, didFinishAddingPaymentPass pass: PKPaymentPass?, error: NSError?)
}
class PKAddPaymentPassViewController : UIViewController {
  class func canAddPaymentPass() -> Bool
  init?(requestConfiguration configuration: PKAddPaymentPassRequestConfiguration, delegate: PKAddPaymentPassViewControllerDelegate?)
  weak var delegate: @sil_weak PKAddPaymentPassViewControllerDelegate?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
let PKEncryptionSchemeECC_V2: String
let PKPaymentNetworkAmex: String
let PKPaymentNetworkChinaUnionPay: String
let PKPaymentNetworkDiscover: String
let PKPaymentNetworkInterac: String
let PKPaymentNetworkMasterCard: String
let PKPaymentNetworkPrivateLabel: String
let PKPaymentNetworkVisa: String
class PKContact : NSObject {
  var name: NSPersonNameComponents?
  var postalAddress: CNPostalAddress?
  var emailAddress: String?
  var phoneNumber: CNPhoneNumber?
  var supplementarySubLocality: String?
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
class PKObject : NSObject {
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
  init(data: NSData, error: NSErrorPointer)
  var passType: PKPassType { get }
  unowned(unsafe) var paymentPass: @sil_unmanaged PKPaymentPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  @NSCopying var webServiceURL: NSURL? { get }
  var authenticationToken: String? { get }
  @NSCopying var icon: UIImage { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  @NSCopying var relevantDate: NSDate? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @NSCopying var passURL: NSURL { get }
  var remotePass: Bool { get }
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
enum PKAutomaticPassPresentationSuppressionResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotSupported
  case AlreadyPresenting
  case Denied
  case Cancelled
  case Success
}
typealias PKSuppressionRequestToken = Int
class PKPassLibrary : NSObject {
  class func isPassLibraryAvailable() -> Bool
  class func requestAutomaticPassPresentationSuppressionWithResponseHandler(responseHandler: (PKAutomaticPassPresentationSuppressionResult) -> Void) -> PKSuppressionRequestToken
  class func endAutomaticPassPresentationSuppressionWithRequestToken(requestToken: PKSuppressionRequestToken)
  class func isSuppressingAutomaticPassPresentation() -> Bool
  class func isPaymentPassActivationAvailable() -> Bool
  func isPaymentPassActivationAvailable() -> Bool
  func passes() -> [PKPass]
  func passWithPassTypeIdentifier(identifier: String, serialNumber: String) -> PKPass?
  func passesOfType(passType: PKPassType) -> [PKPass]
  func remotePaymentPasses() -> [PKPaymentPass]
  func removePass(pass: PKPass)
  func containsPass(pass: PKPass) -> Bool
  func replacePassWithPass(pass: PKPass) -> Bool
  func addPasses(passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)?)
  func openPaymentSetup()
  func canAddPaymentPassWithPrimaryAccountIdentifier(primaryAccountIdentifier: String) -> Bool
  func activatePaymentPass(paymentPass: PKPaymentPass, withActivationData activationData: NSData, completion: ((Bool, NSError) -> Void)?)
  func activatePaymentPass(paymentPass: PKPaymentPass, withActivationCode activationCode: String, completion: ((Bool, NSError) -> Void)?)
  init()
}
let PKPassLibraryDidChangeNotification: String
let PKPassLibraryRemotePaymentPassesDidChangeNotification: String
let PKPassLibraryAddedPassesUserInfoKey: String
let PKPassLibraryReplacementPassesUserInfoKey: String
let PKPassLibraryRemovedPassInfosUserInfoKey: String
let PKPassLibraryPassTypeIdentifierUserInfoKey: String
let PKPassLibrarySerialNumberUserInfoKey: String
class PKPayment : NSObject {
  var token: PKPaymentToken { get }
  var billingAddress: ABRecord? { get }
  var billingContact: PKContact? { get }
  var shippingAddress: ABRecord? { get }
  var shippingContact: PKContact? { get }
  var shippingMethod: PKShippingMethod? { get }
  init()
}
enum PKPaymentAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case Failure
  case InvalidBillingPostalAddress
  case InvalidShippingPostalAddress
  case InvalidShippingContact
  case PINRequired
  case PINIncorrect
  case PINLockout
}
protocol PKPaymentAuthorizationViewControllerDelegate : NSObjectProtocol {
  func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion: (PKPaymentAuthorizationStatus) -> Void)
  func paymentAuthorizationViewControllerDidFinish(controller: PKPaymentAuthorizationViewController)
  optional func paymentAuthorizationViewControllerWillAuthorizePayment(controller: PKPaymentAuthorizationViewController)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectShippingMethod shippingMethod: PKShippingMethod, completion: (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem]) -> Void)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectShippingAddress address: ABRecord, completion: (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact, completion: (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectPaymentMethod paymentMethod: PKPaymentMethod, completion: ([PKPaymentSummaryItem]) -> Void)
}
class PKPaymentAuthorizationViewController : UIViewController {
  class func canMakePayments() -> Bool
  class func canMakePaymentsUsingNetworks(supportedNetworks: [String]) -> Bool
  class func canMakePaymentsUsingNetworks(supportedNetworks: [String], capabilities capabilties: PKMerchantCapability) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged PKPaymentAuthorizationViewControllerDelegate?
  init(paymentRequest request: PKPaymentRequest)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum PKPaymentButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case White
  case WhiteOutline
  case Black
}
enum PKPaymentButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case Buy
  case SetUp
}
class PKPaymentButton : UIButton {
  convenience init(type buttonType: PKPaymentButtonType, style buttonStyle: PKPaymentButtonStyle)
  init(paymentButtonType type: PKPaymentButtonType, paymentButtonStyle style: PKPaymentButtonStyle)
  convenience init(type buttonType: UIButtonType)
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class PKPaymentMethod : NSObject {
  var displayName: String? { get }
  var network: String? { get }
  var type: PKPaymentMethodType { get }
  var paymentPass: PKPaymentPass? { get }
  init()
}
struct PKPaymentMethodType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Unknown: PKPaymentMethodType { get }
  static var Debit: PKPaymentMethodType { get }
  static var Credit: PKPaymentMethodType { get }
  static var Prepaid: PKPaymentMethodType { get }
  static var Store: PKPaymentMethodType { get }
}
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
  init(data: NSData, error: NSErrorPointer)
  init()
}
struct PKMerchantCapability : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Capability3DS: PKMerchantCapability { get }
  static var CapabilityEMV: PKMerchantCapability { get }
  static var CapabilityCredit: PKMerchantCapability { get }
  static var CapabilityDebit: PKMerchantCapability { get }
}
struct PKAddressField : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: PKAddressField { get }
  static var PostalAddress: PKAddressField { get }
  static var Phone: PKAddressField { get }
  static var Email: PKAddressField { get }
  static var Name: PKAddressField { get }
  static var All: PKAddressField { get }
}
enum PKShippingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Shipping
  case Delivery
  case StorePickup
  case ServicePickup
}
enum PKPaymentSummaryItemType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Final
  case Pending
}
class PKPaymentSummaryItem : NSObject {
  convenience init(label: String, amount: NSDecimalNumber)
  convenience init(label: String, amount: NSDecimalNumber, type: PKPaymentSummaryItemType)
  var label: String
  @NSCopying var amount: NSDecimalNumber
  var type: PKPaymentSummaryItemType
  init()
}
class PKShippingMethod : PKPaymentSummaryItem {
  var identifier: String?
  var detail: String?
  convenience init(label: String, amount: NSDecimalNumber)
  convenience init(label: String, amount: NSDecimalNumber, type: PKPaymentSummaryItemType)
  init()
}
class PKPaymentRequest : NSObject {
  var merchantIdentifier: String
  var countryCode: String
  var supportedNetworks: [String]
  var merchantCapabilities: PKMerchantCapability
  var paymentSummaryItems: [PKPaymentSummaryItem]
  var currencyCode: String
  var requiredBillingAddressFields: PKAddressField
  unowned(unsafe) var billingAddress: @sil_unmanaged ABRecord?
  var billingContact: PKContact?
  var requiredShippingAddressFields: PKAddressField
  unowned(unsafe) var shippingAddress: @sil_unmanaged ABRecord?
  var shippingContact: PKContact?
  var shippingMethods: [PKShippingMethod]?
  var shippingType: PKShippingType
  @NSCopying var applicationData: NSData?
  init()
}
class PKPaymentToken : NSObject {
  var paymentMethod: PKPaymentMethod { get }
  var paymentInstrumentName: String { get }
  var paymentNetwork: String { get }
  var transactionIdentifier: String { get }
  var paymentData: NSData { get }
  init()
}
