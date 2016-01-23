
class NKAssetDownload : Object {
  weak var issue: @sil_weak NKIssue? { get }
  var identifier: String { get }
  var userInfo: [Object : AnyObject]?
  @NSCopying var urlRequest: URLRequest { get }
  func downloadWith(delegate: URLConnectionDownloadDelegate) -> URLConnection
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
class NKIssue : Object {
  var downloadingAssets: [NKAssetDownload] { get }
  @NSCopying var contentURL: URL { get }
  var status: NKIssueContentStatus { get }
  var name: String { get }
  @NSCopying var date: Date { get }
  func addAssetWith(request: URLRequest) -> NKAssetDownload
  init()
}
class NKLibrary : Object {
  var issues: [NKIssue] { get }
  var downloadingAssets: [NKAssetDownload] { get }
  var currentlyReadingIssue: NKIssue?
  class func shared() -> NKLibrary?
  func issueWithName(name: String) -> NKIssue?
  func addIssueWithName(name: String, date: Date) -> NKIssue
  func removeIssue(issue: NKIssue)
  init()
}
extension URLConnection {
  weak var newsstandAssetDownload: @sil_weak NKAssetDownload? { get }
}
