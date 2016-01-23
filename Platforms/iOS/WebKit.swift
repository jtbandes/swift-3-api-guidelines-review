
class WKBackForwardList : Object {
  var currentItem: WKBackForwardListItem? { get }
  var backItem: WKBackForwardListItem? { get }
  var forwardItem: WKBackForwardListItem? { get }
  func itemAt(index: Int) -> WKBackForwardListItem?
  var backList: [WKBackForwardListItem] { get }
  var forwardList: [WKBackForwardListItem] { get }
  init()
}
class WKBackForwardListItem : Object {
  @NSCopying var url: URL { get }
  var title: String? { get }
  @NSCopying var initialURL: URL { get }
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
class WKFrameInfo : Object, Copying {
  var isMainFrame: Bool { get }
  @NSCopying var request: URLRequest { get }
  var securityOrigin: WKSecurityOrigin { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class WKNavigation : Object {
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
class WKNavigationAction : Object {
  @NSCopying var sourceFrame: WKFrameInfo { get }
  @NSCopying var targetFrame: WKFrameInfo? { get }
  var navigationType: WKNavigationType { get }
  @NSCopying var request: URLRequest { get }
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
protocol WKNavigationDelegate : ObjectProtocol {
  optional func webView(webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)
  optional func webView(webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error)
  optional func webView(webView: WKWebView, didCommit navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)
  optional func webView(webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSessionAuthChallengeDisposition, URLCredential?) -> Void)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}
class WKNavigationResponse : Object {
  var isForMainFrame: Bool { get }
  @NSCopying var response: URLResponse { get }
  var canShowMIMEType: Bool { get }
  init()
}
class WKPreferences : Object {
  var minimumFontSize: CGFloat
  var javaScriptEnabled: Bool
  var javaScriptCanOpenWindowsAutomatically: Bool
  init()
}
class WKProcessPool : Object {
  init()
}
class WKScriptMessage : Object {
  @NSCopying var body: AnyObject { get }
  weak var webView: @sil_weak WKWebView? { get }
  @NSCopying var frameInfo: WKFrameInfo { get }
  var name: String { get }
  init()
}
protocol WKScriptMessageHandler : ObjectProtocol {
  func userContentController(userContentController: WKUserContentController, didReceive message: WKScriptMessage)
}
class WKSecurityOrigin : Object {
  var `protocol`: String { get }
  var host: String { get }
  var port: Int { get }
}
protocol WKUIDelegate : ObjectProtocol {
  optional func webView(webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, forNavigationAction navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView?
  optional func webViewDidClose(webView: WKWebView)
  optional func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void)
  optional func webView(webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: (Bool) -> Void)
  optional func webView(webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: (String?) -> Void)
}
class WKUserContentController : Object {
  var userScripts: [WKUserScript] { get }
  func addUserScript(userScript: WKUserScript)
  func removeAllUserScripts()
  func add(scriptMessageHandler: WKScriptMessageHandler, name: String)
  func removeScriptMessageHandlerForName(name: String)
  init()
}
enum WKUserScriptInjectionTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AtDocumentStart
  case AtDocumentEnd
}
class WKUserScript : Object, Copying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var isForMainFrameOnly: Bool { get }
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class WKWebView : UIView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var uiDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func load(request: URLRequest) -> WKNavigation?
  func loadFileURL(URL: URL, allowingReadAccessTo readAccessURL: URL) -> WKNavigation?
  func loadHTMLString(string: String, baseURL: URL?) -> WKNavigation?
  func load(data: Data, mimeType MIMEType: String, characterEncodingName: String, baseURL: URL) -> WKNavigation?
  func goTo(item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  @NSCopying var url: URL? { get }
  var isLoading: Bool { get }
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
  func evaluateJavaScript(javaScriptString: String, completionHandler: ((AnyObject?, Error?) -> Void)? = nil)
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
class WKWebViewConfiguration : Object, Copying {
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
  func copy(zone zone: Zone = nil) -> AnyObject
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
class WKWebsiteDataRecord : Object {
  var displayName: String { get }
  var dataTypes: Set<String> { get }
  init()
}
class WKWebsiteDataStore : Object {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistent() -> WKWebsiteDataStore
  var isPersistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecordsOfTypes(dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeDataOfTypes(dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)
  func removeDataOfTypes(websiteDataTypes: Set<String>, modifiedSince date: Date, completionHandler: () -> Void)
}
class WKWindowFeatures : Object {
  var menuBarVisibility: Number? { get }
  var statusBarVisibility: Number? { get }
  var toolbarsVisibility: Number? { get }
  var allowsResizing: Number? { get }
  var x: Number? { get }
  var y: Number? { get }
  var width: Number? { get }
  var height: Number? { get }
  init()
}
