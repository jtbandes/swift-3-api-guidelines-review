
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
class SKDownload : Object {
  var contentIdentifier: String { get }
  var state: SKDownloadState { get }
  @NSCopying var contentURL: URL? { get }
  var progress: Float { get }
  @NSCopying var error: Error? { get }
  var timeRemaining: TimeInterval { get }
  @NSCopying var contentLength: Number { get }
  var contentVersion: String? { get }
  var transaction: SKPaymentTransaction? { get }
  class func contentURLForProductID(productID: String) -> URL?
  class func deleteContentForProductID(productID: String)
  init()
}
let SKErrorDomain: String
var SKErrorUnknown: Int { get }
var SKErrorClientInvalid: Int { get }
var SKErrorPaymentCancelled: Int { get }
var SKErrorPaymentInvalid: Int { get }
var SKErrorPaymentNotAllowed: Int { get }
class SKPayment : Object, Copying, MutableCopying {
  class func paymentWith(product: SKProduct) -> AnyObject
  var productIdentifier: String { get }
  @NSCopying var requestData: Data? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class SKMutablePayment : SKPayment {
  var productIdentifier: String
  var quantity: Int
  @NSCopying var requestData: Data?
  var applicationUsername: String?
  init()
}
class SKPaymentQueue : Object {
  class func defaultQueue() -> SKPaymentQueue
  class func canMakePayments() -> Bool
  func add(payment: SKPayment)
  func restoreCompletedTransactions()
  func restoreCompletedTransactionsWithApplicationUsername(username: String?)
  func finishTransaction(transaction: SKPaymentTransaction)
  func add(observer: SKPaymentTransactionObserver)
  func remove(observer: SKPaymentTransactionObserver)
  var transactions: [SKPaymentTransaction]? { get }
  func start(downloads: [SKDownload])
  func pause(downloads: [SKDownload])
  func resumeDownloads(downloads: [SKDownload])
  func cancel(downloads: [SKDownload])
  init()
}
protocol SKPaymentTransactionObserver : ObjectProtocol {
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
var SKPaymentTransactionStatePurchasing: Int { get }
var SKPaymentTransactionStatePurchased: Int { get }
var SKPaymentTransactionStateFailed: Int { get }
var SKPaymentTransactionStateRestored: Int { get }
var SKPaymentTransactionStateDeferred: Int { get }
typealias SKPaymentTransactionState = Int
class SKPaymentTransaction : Object {
  var error: Error? { get }
  var original: SKPaymentTransaction? { get }
  var payment: SKPayment { get }
  var transactionDate: Date? { get }
  var transactionIdentifier: String? { get }
  var downloads: [AnyObject]? { get }
  var transactionState: SKPaymentTransactionState { get }
  init()
}
class SKProduct : Object {
  var localizedDescription: String? { get }
  var localizedTitle: String? { get }
  var price: DecimalNumber? { get }
  var priceLocale: Locale? { get }
  var productIdentifier: String? { get }
  var downloadable: Bool { get }
  var contentVersion: String? { get }
  var contentLengths: [Number]? { get }
  init()
}
protocol SKProductsRequestDelegate : SKRequestDelegate {
  func productsRequest(request: SKProductsRequest, didReceive response: SKProductsResponse)
}
class SKProductsRequest : SKRequest {
  init(productIdentifiers: Set<Object>)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
class SKProductsResponse : Object {
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
class SKRequest : Object {
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  func cancel()
  func start()
  init()
}
protocol SKRequestDelegate : ObjectProtocol {
  optional func requestDidFinish(request: SKRequest)
  optional func request(request: SKRequest, didFailWithError error: Error?)
}
