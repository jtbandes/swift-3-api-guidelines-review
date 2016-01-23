
struct SKDownloadState : RawRepresentable, Equatable {
  init(_ rawValue: Int)
  init(rawValue: Int)
  var rawValue: Int
}
var SKDownloadStateWaiting: SKDownloadState { get }
var SKDownloadStateActive: SKDownloadState { get }
var SKDownloadStatePaused: SKDownloadState { get }
var SKDownloadStateFinished: SKDownloadState { get }
var SKDownloadStateFailed: SKDownloadState { get }
var SKDownloadStateCancelled: SKDownloadState { get }
class SKDownload : NSObject {
  var contentIdentifier: String { get }
  var state: SKDownloadState { get }
  @NSCopying var contentURL: NSURL? { get }
  var progress: Float { get }
  @NSCopying var error: NSError? { get }
  var timeRemaining: NSTimeInterval { get }
  @NSCopying var contentLength: NSNumber { get }
  var contentVersion: String? { get }
  var transaction: SKPaymentTransaction? { get }
  class func contentURLForProductID(productID: String) -> NSURL?
  class func deleteContentForProductID(productID: String)
  init()
}
let SKErrorDomain: String
var SKErrorUnknown: Int { get }
var SKErrorClientInvalid: Int { get }
var SKErrorPaymentCancelled: Int { get }
var SKErrorPaymentInvalid: Int { get }
var SKErrorPaymentNotAllowed: Int { get }
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  class func paymentWithProduct(product: SKProduct) -> AnyObject
  var productIdentifier: String { get }
  @NSCopying var requestData: NSData? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
class SKMutablePayment : SKPayment {
  var productIdentifier: String
  var quantity: Int
  @NSCopying var requestData: NSData?
  var applicationUsername: String?
  init()
}
class SKPaymentQueue : NSObject {
  class func defaultQueue() -> SKPaymentQueue
  class func canMakePayments() -> Bool
  func addPayment(payment: SKPayment)
  func restoreCompletedTransactions()
  func restoreCompletedTransactionsWithApplicationUsername(username: String?)
  func finishTransaction(transaction: SKPaymentTransaction)
  func addTransactionObserver(observer: SKPaymentTransactionObserver)
  func removeTransactionObserver(observer: SKPaymentTransactionObserver)
  var transactions: [SKPaymentTransaction]? { get }
  func startDownloads(downloads: [SKDownload])
  func pauseDownloads(downloads: [SKDownload])
  func resumeDownloads(downloads: [SKDownload])
  func cancelDownloads(downloads: [SKDownload])
  init()
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: NSError)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
var SKPaymentTransactionStatePurchasing: Int { get }
var SKPaymentTransactionStatePurchased: Int { get }
var SKPaymentTransactionStateFailed: Int { get }
var SKPaymentTransactionStateRestored: Int { get }
var SKPaymentTransactionStateDeferred: Int { get }
typealias SKPaymentTransactionState = Int
class SKPaymentTransaction : NSObject {
  var error: NSError? { get }
  var originalTransaction: SKPaymentTransaction? { get }
  var payment: SKPayment { get }
  var transactionDate: NSDate? { get }
  var transactionIdentifier: String? { get }
  var downloads: [AnyObject]? { get }
  var transactionState: SKPaymentTransactionState { get }
  init()
}
class SKProduct : NSObject {
  var localizedDescription: String? { get }
  var localizedTitle: String? { get }
  var price: NSDecimalNumber? { get }
  var priceLocale: NSLocale? { get }
  var productIdentifier: String? { get }
  var downloadable: Bool { get }
  var contentVersion: String? { get }
  var contentLengths: [NSNumber]? { get }
  init()
}
protocol SKProductsRequestDelegate : SKRequestDelegate {
  func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse)
}
class SKProductsRequest : SKRequest {
  init(productIdentifiers: Set<NSObject>)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
class SKProductsResponse : NSObject {
  var products: [SKProduct]? { get }
  var invalidProductIdentifiers: [String]? { get }
  init()
}
class SKReceiptRefreshRequest : SKRequest {
  init?(receiptProperties properties: [String : AnyObject])
  var receiptProperties: [String : AnyObject]? { get }
  init()
}
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
  optional func request(request: SKRequest, didFailWithError error: NSError?)
}
