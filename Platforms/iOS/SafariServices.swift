
let SFContentBlockerErrorDomain: String
enum SFContentBlockerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoExtensionFound
  case NoAttachmentFound
  case LoadingInterrupted
}
class SFContentBlockerManager : Object {
  class func reloadContentBlockerWithIdentifier(identifier: String, completionHandler: ((Error?) -> Void)? = nil)
  init()
}
class SFSafariViewController : UIViewController {
  weak var delegate: @sil_weak SFSafariViewControllerDelegate?
  init(url URL: URL, entersReaderIfAvailable: Bool)
  convenience init(url URL: URL)
}
protocol SFSafariViewControllerDelegate : ObjectProtocol {
  optional func safariViewController(controller: SFSafariViewController, activityItemsFor URL: URL, title: String?) -> [UIActivity]
  optional func safariViewControllerDidFinish(controller: SFSafariViewController)
  optional func safariViewController(controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool)
}
class SSReadingList : Object {
  class func defaultReadingList() -> SSReadingList?
  class func supportsURL(URL: URL) -> Bool
  func addItemWith(URL: URL, title: String?, previewText: String?) throws
}
let SSReadingListErrorDomain: String
enum SSReadingListErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case URLSchemeNotAllowed
}
