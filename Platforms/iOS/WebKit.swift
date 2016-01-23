
class WKBackForwardList : NSObject {
  var currentItem: WKBackForwardListItem? { get }
  var backItem: WKBackForwardListItem? { get }
  var forwardItem: WKBackForwardListItem? { get }
  func itemAtIndex(index: Int) -> WKBackForwardListItem?
  var backList: [WKBackForwardListItem] { get }
  var forwardList: [WKBackForwardListItem] { get }
  init()
}
class WKBackForwardListItem : NSObject {
  @NSCopying var URL: NSURL { get }
  var title: String? { get }
  @NSCopying var initialURL: NSURL { get }
  init()
}
let WKErrorDomain: String
enum WKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case WebContentProcessTerminated
  case WebViewInvalidated
  case JavaScriptExceptionOccurred
  case JavaScriptResultTypeIsUnsupported
}
extension WKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
var WK_API_ENABLED: Int32 { get }
class WKFrameInfo : NSObject, NSCopying {
  var mainFrame: Bool { get }
  @NSCopying var request: NSURLRequest { get }
  var securityOrigin: WKSecurityOrigin { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class WKNavigation : NSObject {
  init()
}
enum WKNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkActivated
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
class WKNavigationAction : NSObject {
  @NSCopying var sourceFrame: WKFrameInfo { get }
  @NSCopying var targetFrame: WKFrameInfo? { get }
  var navigationType: WKNavigationType { get }
  @NSCopying var request: NSURLRequest { get }
  init()
}
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
protocol WKNavigationDelegate : NSObjectProtocol {
  optional func webView(webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)
  optional func webView(webView: WKWebView, decidePolicyForNavigationResponse navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError)
  optional func webView(webView: WKWebView, didCommitNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError)
  optional func webView(webView: WKWebView, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge, completionHandler: (NSURLSessionAuthChallengeDisposition, NSURLCredential?) -> Void)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}
class WKNavigationResponse : NSObject {
  var forMainFrame: Bool { get }
  @NSCopying var response: NSURLResponse { get }
  var canShowMIMEType: Bool { get }
  init()
}
class WKPreferences : NSObject {
  var minimumFontSize: CGFloat
  var javaScriptEnabled: Bool
  var javaScriptCanOpenWindowsAutomatically: Bool
  init()
}
class WKProcessPool : NSObject {
  init()
}
class WKScriptMessage : NSObject {
  @NSCopying var body: AnyObject { get }
  weak var webView: @sil_weak WKWebView? { get }
  @NSCopying var frameInfo: WKFrameInfo { get }
  var name: String { get }
  init()
}
protocol WKScriptMessageHandler : NSObjectProtocol {
  func userContentController(userContentController: WKUserContentController, didReceiveScriptMessage message: WKScriptMessage)
}
class WKSecurityOrigin : NSObject {
  var `protocol`: String { get }
  var host: String { get }
  var port: Int { get }
}
protocol WKUIDelegate : NSObjectProtocol {
  optional func webView(webView: WKWebView, createWebViewWithConfiguration configuration: WKWebViewConfiguration, forNavigationAction navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView?
  optional func webViewDidClose(webView: WKWebView)
  optional func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void)
  optional func webView(webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: (Bool) -> Void)
  optional func webView(webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: (String?) -> Void)
}
class WKUserContentController : NSObject {
  var userScripts: [WKUserScript] { get }
  func addUserScript(userScript: WKUserScript)
  func removeAllUserScripts()
  func addScriptMessageHandler(scriptMessageHandler: WKScriptMessageHandler, name: String)
  func removeScriptMessageHandlerForName(name: String)
  init()
}
enum WKUserScriptInjectionTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AtDocumentStart
  case AtDocumentEnd
}
class WKUserScript : NSObject, NSCopying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var forMainFrameOnly: Bool { get }
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class WKWebView : UIView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var UIDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func loadRequest(request: NSURLRequest) -> WKNavigation?
  func loadFileURL(URL: NSURL, allowingReadAccessToURL readAccessURL: NSURL) -> WKNavigation?
  func loadHTMLString(string: String, baseURL: NSURL?) -> WKNavigation?
  func loadData(data: NSData, MIMEType: String, characterEncodingName: String, baseURL: NSURL) -> WKNavigation?
  func goToBackForwardListItem(item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  @NSCopying var URL: NSURL? { get }
  var loading: Bool { get }
  var estimatedProgress: Double { get }
  var hasOnlySecureContent: Bool { get }
  var certificateChain: [AnyObject] { get }
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  func goBack() -> WKNavigation?
  func goForward() -> WKNavigation?
  func reload() -> WKNavigation?
  func reloadFromOrigin() -> WKNavigation?
  func stopLoading()
  func evaluateJavaScript(javaScriptString: String, completionHandler: ((AnyObject?, NSError?) -> Void)?)
  var allowsBackForwardNavigationGestures: Bool
  var customUserAgent: String?
  var allowsLinkPreview: Bool
  var scrollView: UIScrollView { get }
  convenience init(frame: CGRect)
  convenience init()
}
enum WKSelectionGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Dynamic
  case Character
}
class WKWebViewConfiguration : NSObject, NSCopying {
  var processPool: WKProcessPool
  var preferences: WKPreferences
  var userContentController: WKUserContentController
  var websiteDataStore: WKWebsiteDataStore
  var suppressesIncrementalRendering: Bool
  var applicationNameForUserAgent: String?
  var allowsAirPlayForMediaPlayback: Bool
  var allowsInlineMediaPlayback: Bool
  var requiresUserActionForMediaPlayback: Bool
  var selectionGranularity: WKSelectionGranularity
  var allowsPictureInPictureMediaPlayback: Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension WKWebViewConfiguration {
  var mediaPlaybackRequiresUserAction: Bool
  var mediaPlaybackAllowsAirPlay: Bool
}
let WKWebsiteDataTypeDiskCache: String
let WKWebsiteDataTypeMemoryCache: String
let WKWebsiteDataTypeOfflineWebApplicationCache: String
let WKWebsiteDataTypeCookies: String
let WKWebsiteDataTypeSessionStorage: String
let WKWebsiteDataTypeLocalStorage: String
let WKWebsiteDataTypeWebSQLDatabases: String
let WKWebsiteDataTypeIndexedDBDatabases: String
class WKWebsiteDataRecord : NSObject {
  var displayName: String { get }
  var dataTypes: Set<String> { get }
  init()
}
class WKWebsiteDataStore : NSObject {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistentDataStore() -> WKWebsiteDataStore
  var persistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecordsOfTypes(dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeDataOfTypes(dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)
  func removeDataOfTypes(websiteDataTypes: Set<String>, modifiedSince date: NSDate, completionHandler: () -> Void)
}
class WKWindowFeatures : NSObject {
  var menuBarVisibility: NSNumber? { get }
  var statusBarVisibility: NSNumber? { get }
  var toolbarsVisibility: NSNumber? { get }
  var allowsResizing: NSNumber? { get }
  var x: NSNumber? { get }
  var y: NSNumber? { get }
  var width: NSNumber? { get }
  var height: NSNumber? { get }
  init()
}
