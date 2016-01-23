
enum SKDownloadState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Waiting
  case Active
  case Paused
  case Finished
  case Failed
  case Cancelled
}
var SKDownloadTimeRemainingUnknown: NSTimeInterval
class SKDownload : NSObject {
  var downloadState: SKDownloadState { get }
  var contentLength: Int64 { get }
  var contentIdentifier: String { get }
  var contentURL: NSURL? { get }
  var contentVersion: String { get }
  var error: NSError? { get }
  var progress: Float { get }
  var timeRemaining: NSTimeInterval { get }
  var transaction: SKPaymentTransaction { get }
  init()
}
let SKErrorDomain: String
var SKErrorUnknown: Int { get }
var SKErrorClientInvalid: Int { get }
var SKErrorPaymentCancelled: Int { get }
var SKErrorPaymentInvalid: Int { get }
var SKErrorPaymentNotAllowed: Int { get }
var SKErrorStoreProductNotAvailable: Int { get }
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  convenience init(product: SKProduct)
  var productIdentifier: String { get }
  @NSCopying var requestData: NSData? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  var simulatesAskToBuyInSandbox: Bool { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
class SKMutablePayment : SKPayment {
  var applicationUsername: String
  var productIdentifier: String
  var quantity: Int
  @NSCopying var requestData: NSData?
  var simulatesAskToBuyInSandbox: Bool
  convenience init(product: SKProduct)
  init()
}
class SKPaymentQueue : NSObject {
  class func defaultQueue() -> Self
  class func canMakePayments() -> Bool
  func addPayment(payment: SKPayment)
  func restoreCompletedTransactions()
  func restoreCompletedTransactionsWithApplicationUsername(username: String?)
  func finishTransaction(transaction: SKPaymentTransaction)
  func startDownloads(downloads: [SKDownload])
  func pauseDownloads(downloads: [SKDownload])
  func resumeDownloads(downloads: [SKDownload])
  func cancelDownloads(downloads: [SKDownload])
  func addTransactionObserver(observer: SKPaymentTransactionObserver)
  func removeTransactionObserver(observer: SKPaymentTransactionObserver)
  var transactions: [SKPaymentTransaction] { get }
  init()
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: NSError)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
enum SKPaymentTransactionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Purchasing
  case Purchased
  case Failed
  case Restored
  case Deferred
}
class SKPaymentTransaction : NSObject {
  var error: NSError? { get }
  var originalTransaction: SKPaymentTransaction? { get }
  var payment: SKPayment { get }
  var downloads: [SKDownload] { get }
  var transactionDate: NSDate? { get }
  var transactionIdentifier: String? { get }
  var transactionState: SKPaymentTransactionState { get }
  init()
}
class SKProduct : NSObject {
  var localizedDescription: String { get }
  var localizedTitle: String { get }
  var price: NSDecimalNumber { get }
  var priceLocale: NSLocale { get }
  var productIdentifier: String { get }
  var downloadable: Bool { get }
  var downloadContentLengths: [NSNumber] { get }
  var downloadContentVersion: String { get }
  init()
}
protocol SKProductsRequestDelegate : SKRequestDelegate {
  func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse)
}
class SKProductsRequest : SKRequest {
  init(productIdentifiers: Set<String>)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
class SKProductsResponse : NSObject {
  var products: [SKProduct] { get }
  var invalidProductIdentifiers: [String] { get }
  init()
}
class SKReceiptRefreshRequest : SKRequest {
  init(receiptProperties properties: [String : AnyObject]?)
  var receiptProperties: [String : AnyObject]? { get }
  init()
}
func SKTerminateForInvalidReceipt()
let SKReceiptPropertyIsExpired: String
let SKReceiptPropertyIsRevoked: String
let SKReceiptPropertyIsVolumePurchase: String
class SKRequest : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  func cancel()
  func start()
  init()
}
protocol SKRequestDelegate : NSObjectProtocol {
  optional func requestDidFinish(request: SKRequest)
  optional func request(request: SKRequest, didFailWithError error: NSError)
}
class SKStoreProductViewController : UIViewController {
  unowned(unsafe) var delegate: @sil_unmanaged SKStoreProductViewControllerDelegate?
  func loadProductWithParameters(parameters: [String : AnyObject], completionBlock block: ((Bool, NSError?) -> Void)?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol SKStoreProductViewControllerDelegate : NSObjectProtocol {
  optional func productViewControllerDidFinish(viewController: SKStoreProductViewController)
}
let SKStoreProductParameterITunesItemIdentifier: String
let SKStoreProductParameterAffiliateToken: String
let SKStoreProductParameterCampaignToken: String
let SKStoreProductParameterProviderToken: String
