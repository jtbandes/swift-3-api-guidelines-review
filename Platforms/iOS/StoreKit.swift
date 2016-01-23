
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
var SKDownloadTimeRemainingUnknown: TimeInterval
class SKDownload : Object {
  var downloadState: SKDownloadState { get }
  var contentLength: Int64 { get }
  var contentIdentifier: String { get }
  var contentURL: URL? { get }
  var contentVersion: String { get }
  var error: Error? { get }
  var progress: Float { get }
  var timeRemaining: TimeInterval { get }
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
class SKPayment : Object, Copying, MutableCopying {
  convenience init(product: SKProduct)
  var productIdentifier: String { get }
  @NSCopying var requestData: Data? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  var simulatesAskToBuyInSandbox: Bool { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class SKMutablePayment : SKPayment {
  var applicationUsername: String
  var productIdentifier: String
  var quantity: Int
  @NSCopying var requestData: Data?
  var simulatesAskToBuyInSandbox: Bool
  convenience init(product: SKProduct)
  init()
}
class SKPaymentQueue : Object {
  class func defaultQueue() -> Self
  class func canMakePayments() -> Bool
  func add(payment: SKPayment)
  func restoreCompletedTransactions()
  func restoreCompletedTransactionsWithApplicationUsername(username: String?)
  func finishTransaction(transaction: SKPaymentTransaction)
  func start(downloads: [SKDownload])
  func pause(downloads: [SKDownload])
  func resumeDownloads(downloads: [SKDownload])
  func cancel(downloads: [SKDownload])
  func add(observer: SKPaymentTransactionObserver)
  func remove(observer: SKPaymentTransactionObserver)
  var transactions: [SKPaymentTransaction] { get }
  init()
}
protocol SKPaymentTransactionObserver : ObjectProtocol {
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error)
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
class SKPaymentTransaction : Object {
  var error: Error? { get }
  var original: SKPaymentTransaction? { get }
  var payment: SKPayment { get }
  var downloads: [SKDownload] { get }
  var transactionDate: Date? { get }
  var transactionIdentifier: String? { get }
  var transactionState: SKPaymentTransactionState { get }
  init()
}
class SKProduct : Object {
  var localizedDescription: String { get }
  var localizedTitle: String { get }
  var price: DecimalNumber { get }
  var priceLocale: Locale { get }
  var productIdentifier: String { get }
  var isDownloadable: Bool { get }
  var downloadContentLengths: [Number] { get }
  var downloadContentVersion: String { get }
  init()
}
protocol SKProductsRequestDelegate : SKRequestDelegate {
  func productsRequest(request: SKProductsRequest, didReceive response: SKProductsResponse)
}
class SKProductsRequest : SKRequest {
  init(productIdentifiers: Set<String>)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
class SKProductsResponse : Object {
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
class SKRequest : Object {
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  func cancel()
  func start()
  init()
}
protocol SKRequestDelegate : ObjectProtocol {
  optional func requestDidFinish(request: SKRequest)
  optional func request(request: SKRequest, didFailWithError error: Error)
}
class SKStoreProductViewController : UIViewController {
  unowned(unsafe) var delegate: @sil_unmanaged SKStoreProductViewControllerDelegate?
  func loadProductWithParameters(parameters: [String : AnyObject], completionBlock block: ((Bool, Error?) -> Void)? = nil)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol SKStoreProductViewControllerDelegate : ObjectProtocol {
  optional func productViewControllerDidFinish(viewController: SKStoreProductViewController)
}
let SKStoreProductParameterITunesItemIdentifier: String
let SKStoreProductParameterAffiliateToken: String
let SKStoreProductParameterCampaignToken: String
let SKStoreProductParameterProviderToken: String
