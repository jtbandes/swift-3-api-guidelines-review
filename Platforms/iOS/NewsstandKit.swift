
class NKAssetDownload : NSObject {
  weak var issue: @sil_weak NKIssue? { get }
  var identifier: String { get }
  var userInfo: [NSObject : AnyObject]?
  @NSCopying var URLRequest: NSURLRequest { get }
  func downloadWithDelegate(delegate: NSURLConnectionDownloadDelegate) -> NSURLConnection
  init()
}
let NKIssueDownloadCompletedNotification: String
enum NKIssueContentStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Downloading
  case Available
}
class NKIssue : NSObject {
  var downloadingAssets: [NKAssetDownload] { get }
  @NSCopying var contentURL: NSURL { get }
  var status: NKIssueContentStatus { get }
  var name: String { get }
  @NSCopying var date: NSDate { get }
  func addAssetWithRequest(request: NSURLRequest) -> NKAssetDownload
  init()
}
class NKLibrary : NSObject {
  var issues: [NKIssue] { get }
  var downloadingAssets: [NKAssetDownload] { get }
  var currentlyReadingIssue: NKIssue?
  class func sharedLibrary() -> NKLibrary?
  func issueWithName(name: String) -> NKIssue?
  func addIssueWithName(name: String, date: NSDate) -> NKIssue
  func removeIssue(issue: NKIssue)
  init()
}
extension NSURLConnection {
  weak var newsstandAssetDownload: @sil_weak NKAssetDownload? { get }
}
