
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
class WCSession : NSObject {
  class func isSupported() -> Bool
  class func defaultSession() -> WCSession
  weak var delegate: @sil_weak WCSessionDelegate?
  func activateSession()
  var reachable: Bool { get }
  var iOSDeviceNeedsUnlockAfterRebootForReachability: Bool { get }
  func sendMessage(message: [String : AnyObject], replyHandler: (([String : AnyObject]) -> Void)?, errorHandler: ((NSError) -> Void)?)
  func sendMessageData(data: NSData, replyHandler: ((NSData) -> Void)?, errorHandler: ((NSError) -> Void)?)
  var applicationContext: [String : AnyObject] { get }
  func updateApplicationContext(applicationContext: [String : AnyObject]) throws
  var receivedApplicationContext: [String : AnyObject] { get }
  func transferUserInfo(userInfo: [String : AnyObject]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(file: NSURL, metadata: [String : AnyObject]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : NSObjectProtocol {
  optional func sessionReachabilityDidChange(session: WCSession)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)
  optional func session(session: WCSession, didReceiveMessageData messageData: NSData)
  optional func session(session: WCSession, didReceiveMessageData messageData: NSData, replyHandler: (NSData) -> Void)
  optional func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject])
  optional func session(session: WCSession, didFinishUserInfoTransfer userInfoTransfer: WCSessionUserInfoTransfer, error: NSError?)
  optional func session(session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject])
  optional func session(session: WCSession, didFinishFileTransfer fileTransfer: WCSessionFileTransfer, error: NSError?)
  optional func session(session: WCSession, didReceiveFile file: WCSessionFile)
}
class WCSessionFile : NSObject {
  var fileURL: NSURL { get }
  var metadata: [String : AnyObject]? { get }
  init()
}
class WCSessionFileTransfer : NSObject {
  var file: WCSessionFile { get }
  var transferring: Bool { get }
  func cancel()
  init()
}
class WCSessionUserInfoTransfer : NSObject, NSSecureCoding {
  var userInfo: [String : AnyObject] { get }
  var transferring: Bool { get }
  func cancel()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
