
class MCAdvertiserAssistant : Object {
  init(serviceType: String, discoveryInfo info: [String : String]?, session: MCSession)
  func start()
  func stop()
  weak var delegate: @sil_weak MCAdvertiserAssistantDelegate?
  var session: MCSession { get }
  var discoveryInfo: [String : String]? { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCAdvertiserAssistantDelegate : ObjectProtocol {
  optional func advertiserAssistantWillPresentInvitation(advertiserAssistant: MCAdvertiserAssistant)
  optional func advertiserAssistantDidDismissInvitation(advertiserAssistant: MCAdvertiserAssistant)
}
class MCBrowserViewController : UIViewController, MCNearbyServiceBrowserDelegate {
  convenience init(serviceType: String, session: MCSession)
  init(browser: MCNearbyServiceBrowser, session: MCSession)
  weak var delegate: @sil_weak MCBrowserViewControllerDelegate?
  var browser: MCNearbyServiceBrowser? { get }
  var session: MCSession { get }
  var minimumNumberOfPeers: Int
  var maximumNumberOfPeers: Int
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  func browser(browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error)
}
protocol MCBrowserViewControllerDelegate : ObjectProtocol {
  func browserViewControllerDidFinish(browserViewController: MCBrowserViewController)
  func browserViewControllerWasCancelled(browserViewController: MCBrowserViewController)
  optional func browserViewController(browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool
}
let MCErrorDomain: String
enum MCErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case NotConnected
  case InvalidParameter
  case Unsupported
  case TimedOut
  case Cancelled
  case Unavailable
}
extension MCErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
class MCNearbyServiceAdvertiser : Object {
  init(peer myPeerID: MCPeerID, discoveryInfo info: [String : String]?, serviceType: String)
  func startAdvertisingPeer()
  func stopAdvertisingPeer()
  weak var delegate: @sil_weak MCNearbyServiceAdvertiserDelegate?
  var myPeerID: MCPeerID { get }
  var discoveryInfo: [String : String]? { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCNearbyServiceAdvertiserDelegate : ObjectProtocol {
  func advertiser(advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: (Bool, MCSession) -> Void)
  optional func advertiser(advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: Error)
}
class MCNearbyServiceBrowser : Object {
  init(peer myPeerID: MCPeerID, serviceType: String)
  func startBrowsingForPeers()
  func stopBrowsingForPeers()
  func invitePeer(peerID: MCPeerID, to session: MCSession, withContext context: Data?, timeout: TimeInterval)
  weak var delegate: @sil_weak MCNearbyServiceBrowserDelegate?
  var myPeerID: MCPeerID { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCNearbyServiceBrowserDelegate : ObjectProtocol {
  func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  optional func browser(browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error)
}
class MCPeerID : Object, Copying, SecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
enum MCSessionSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Reliable
  case Unreliable
}
enum MCSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotConnected
  case Connecting
  case Connected
}
enum MCEncryptionPreference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Optional
  case Required
  case None
}
let kMCSessionMinimumNumberOfPeers: Int
let kMCSessionMaximumNumberOfPeers: Int
class MCSession : Object {
  convenience init(peer myPeerID: MCPeerID)
  init(peer myPeerID: MCPeerID, securityIdentity identity: [AnyObject]?, encryptionPreference: MCEncryptionPreference)
  func send(data: Data, toPeers peerIDs: [MCPeerID], withMode mode: MCSessionSendDataMode) throws
  func disconnect()
  func sendResourceAt(resourceURL: URL, withName resourceName: String, toPeer peerID: MCPeerID, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil) -> Progress?
  func startStreamWithName(streamName: String, toPeer peerID: MCPeerID) throws -> OutputStream
  weak var delegate: @sil_weak MCSessionDelegate?
  var myPeerID: MCPeerID { get }
  var securityIdentity: [AnyObject]? { get }
  var encryptionPreference: MCEncryptionPreference { get }
  var connectedPeers: [MCPeerID] { get }
  convenience init()
}
protocol MCSessionDelegate : ObjectProtocol {
  func session(session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState)
  func session(session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID)
  func session(session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID)
  func session(session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, withProgress progress: Progress)
  func session(session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL, withError error: Error?)
  optional func session(session: MCSession, didReceiveCertificate certificate: [AnyObject]?, fromPeer peerID: MCPeerID, certificateHandler: (Bool) -> Void)
}
extension MCSession {
  func nearbyConnectionDataForPeer(peerID: MCPeerID, withCompletionHandler completionHandler: (Data, Error?) -> Void)
  func connectPeer(peerID: MCPeerID, withNearbyConnectionData data: Data)
  func cancelConnectPeer(peerID: MCPeerID)
}
