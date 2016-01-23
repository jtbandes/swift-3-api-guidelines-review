
let WCErrorDomain: String
enum WCErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GenericError
  case SessionNotSupported
  case SessionMissingDelegate
  case SessionNotActivated
  case DeviceNotPaired
  case WatchAppNotInstalled
  case NotReachable
  case InvalidParameter
  case PayloadTooLarge
  case PayloadUnsupportedTypes
  case MessageReplyFailed
  case MessageReplyTimedOut
  case FileAccessDenied
  case DeliveryFailed
  case InsufficientSpace
}
extension WCErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
class WCSession : Object {
  class func isSupported() -> Bool
  class func defaultSession() -> WCSession
  weak var delegate: @sil_weak WCSessionDelegate?
  func activateSession()
  var isPaired: Bool { get }
  var isWatchAppInstalled: Bool { get }
  var isComplicationEnabled: Bool { get }
  var watchDirectoryURL: URL? { get }
  var isReachable: Bool { get }
  func sendMessage(message: [String : AnyObject], replyHandler: (([String : AnyObject]) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  func sendMessageData(data: Data, replyHandler: ((Data) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  var applicationContext: [String : AnyObject] { get }
  func updateApplicationContext(applicationContext: [String : AnyObject]) throws
  var receivedApplicationContext: [String : AnyObject] { get }
  func transferUserInfo(userInfo: [String : AnyObject] = [:]) -> WCSessionUserInfoTransfer
  func transferCurrentComplicationUserInfo(userInfo: [String : AnyObject] = [:]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(file: URL, metadata: [String : AnyObject]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : ObjectProtocol {
  optional func sessionWatchStateDidChange(session: WCSession)
  optional func sessionReachabilityDidChange(session: WCSession)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)
  optional func session(session: WCSession, didReceiveMessageData messageData: Data)
  optional func session(session: WCSession, didReceiveMessageData messageData: Data, replyHandler: (Data) -> Void)
  optional func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject])
  optional func session(session: WCSession, didFinishUserInfoTransfer userInfoTransfer: WCSessionUserInfoTransfer, error: Error?)
  optional func session(session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject] = [:])
  optional func session(session: WCSession, didFinishFileTransfer fileTransfer: WCSessionFileTransfer, error: Error?)
  optional func session(session: WCSession, didReceive file: WCSessionFile)
}
class WCSessionFile : Object {
  var fileURL: URL { get }
  var metadata: [String : AnyObject]? { get }
  init()
}
class WCSessionFileTransfer : Object {
  var file: WCSessionFile { get }
  var isTransferring: Bool { get }
  func cancel()
  init()
}
class WCSessionUserInfoTransfer : Object, SecureCoding {
  var isCurrentComplicationInfo: Bool { get }
  var userInfo: [String : AnyObject] { get }
  var isTransferring: Bool { get }
  func cancel()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
