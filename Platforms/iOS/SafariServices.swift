
let SFContentBlockerErrorDomain: String
enum SFContentBlockerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoExtensionFound
  case NoAttachmentFound
  case LoadingInterrupted
}
class SFContentBlockerManager : NSObject {
  class func reloadContentBlockerWithIdentifier(identifier: String, completionHandler: ((NSError?) -> Void)?)
  init()
}
class SFSafariViewController : UIViewController {
  weak var delegate: @sil_weak SFSafariViewControllerDelegate?
  init(URL: NSURL, entersReaderIfAvailable: Bool)
  convenience init(URL: NSURL)
}
protocol SFSafariViewControllerDelegate : NSObjectProtocol {
  optional func safariViewController(controller: SFSafariViewController, activityItemsForURL URL: NSURL, title: String?) -> [UIActivity]
  optional func safariViewControllerDidFinish(controller: SFSafariViewController)
  optional func safariViewController(controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool)
}
class SSReadingList : NSObject {
  class func defaultReadingList() -> SSReadingList?
  class func supportsURL(URL: NSURL) -> Bool
  func addReadingListItemWithURL(URL: NSURL, title: String?, previewText: String?) throws
}
let SSReadingListErrorDomain: String
enum SSReadingListErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case URLSchemeNotAllowed
}
