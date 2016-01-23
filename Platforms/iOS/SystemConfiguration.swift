
var kSCStatusOK: Int { get }
var kSCStatusFailed: Int { get }
var kSCStatusInvalidArgument: Int { get }
var kSCStatusAccessError: Int { get }
var kSCStatusNoKey: Int { get }
var kSCStatusKeyExists: Int { get }
var kSCStatusLocked: Int { get }
var kSCStatusNeedLock: Int { get }
var kSCStatusNoStoreSession: Int { get }
var kSCStatusNoStoreServer: Int { get }
var kSCStatusNotifierActive: Int { get }
var kSCStatusNoPrefsSession: Int { get }
var kSCStatusPrefsBusy: Int { get }
var kSCStatusNoConfigFile: Int { get }
var kSCStatusNoLink: Int { get }
var kSCStatusStale: Int { get }
var kSCStatusMaxLink: Int { get }
var kSCStatusReachabilityUnknown: Int { get }
var kSCStatusConnectionNoService: Int { get }
var kSCStatusConnectionIgnore: Int { get }
let kCFErrorDomainSystemConfiguration: CFString
func SCCopyLastError() -> CFError
func SCError() -> Int32
func SCErrorString(status: Int32) -> UnsafePointer<Int8>
class SCDynamicStore {
}
typealias SCDynamicStoreRef = SCDynamicStore
struct SCDynamicStoreContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
typealias SCDynamicStoreCallBack = @convention(c) (SCDynamicStore, CFArray, UnsafeMutablePointer<Void>) -> Void
var kSCNetworkFlagsTransientConnection: Int { get }
var kSCNetworkFlagsReachable: Int { get }
var kSCNetworkFlagsConnectionRequired: Int { get }
var kSCNetworkFlagsConnectionAutomatic: Int { get }
var kSCNetworkFlagsInterventionRequired: Int { get }
var kSCNetworkFlagsIsLocalAddress: Int { get }
var kSCNetworkFlagsIsDirect: Int { get }
typealias SCNetworkConnectionFlags = UInt32
typealias SCNetworkInterfaceRef = SCNetworkInterface
class SCNetworkInterface {
}
typealias SCBondInterface = SCNetworkInterfaceRef
typealias SCBondInterfaceRef = SCBondInterface
typealias SCBondStatusRef = SCBondStatus
class SCBondStatus {
}
var kSCBondStatusOK: Int { get }
var kSCBondStatusLinkInvalid: Int { get }
var kSCBondStatusNoPartner: Int { get }
var kSCBondStatusNotInActiveGroup: Int { get }
var kSCBondStatusUnknown: Int { get }
typealias SCVLANInterfaceRef = SCVLANInterface
typealias SCVLANInterface = SCNetworkInterfaceRef
class SCNetworkProtocol {
}
typealias SCNetworkProtocolRef = SCNetworkProtocol
class SCNetworkService {
}
typealias SCNetworkServiceRef = SCNetworkService
typealias SCNetworkSetRef = SCNetworkSet
class SCNetworkSet {
}
class SCNetworkConnection {
}
typealias SCNetworkConnectionRef = SCNetworkConnection
struct SCNetworkConnectionContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
enum SCNetworkConnectionStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Invalid
  case Disconnected
  case Connecting
  case Connected
  case Disconnecting
}
enum SCNetworkConnectionPPPStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Disconnected
  case Initializing
  case ConnectingLink
  case DialOnTraffic
  case NegotiatingLink
  case Authenticating
  case WaitingForCallBack
  case NegotiatingNetwork
  case Connected
  case Terminating
  case DisconnectingLink
  case HoldingLinkOff
  case Suspended
  case WaitingForRedial
}
typealias SCNetworkConnectionCallBack = @convention(c) (SCNetworkConnection, SCNetworkConnectionStatus, UnsafeMutablePointer<Void>) -> Void
var kSCNetworkConnectionBytesIn: String { get }
var kSCNetworkConnectionBytesOut: String { get }
var kSCNetworkConnectionPacketsIn: String { get }
var kSCNetworkConnectionPacketsOut: String { get }
var kSCNetworkConnectionErrorsIn: String { get }
var kSCNetworkConnectionErrorsOut: String { get }
var kSCNetworkConnectionSelectionOptionOnDemandHostName: String { get }
var kSCNetworkConnectionSelectionOptionOnDemandRetry: String { get }
class SCNetworkReachability {
}
typealias SCNetworkReachabilityRef = SCNetworkReachability
struct SCNetworkReachabilityContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
struct SCNetworkReachabilityFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TransientConnection: SCNetworkReachabilityFlags { get }
  static var Reachable: SCNetworkReachabilityFlags { get }
  static var ConnectionRequired: SCNetworkReachabilityFlags { get }
  static var ConnectionOnTraffic: SCNetworkReachabilityFlags { get }
  static var InterventionRequired: SCNetworkReachabilityFlags { get }
  static var ConnectionOnDemand: SCNetworkReachabilityFlags { get }
  static var IsLocalAddress: SCNetworkReachabilityFlags { get }
  static var IsDirect: SCNetworkReachabilityFlags { get }
  static var IsWWAN: SCNetworkReachabilityFlags { get }
  static var ConnectionAutomatic: SCNetworkReachabilityFlags { get }
}
typealias SCNetworkReachabilityCallBack = @convention(c) (SCNetworkReachability, SCNetworkReachabilityFlags, UnsafeMutablePointer<Void>) -> Void
func SCNetworkReachabilityCreateWithAddress(allocator: CFAllocator?, _ address: UnsafePointer<sockaddr>) -> SCNetworkReachability?
func SCNetworkReachabilityCreateWithAddressPair(allocator: CFAllocator?, _ localAddress: UnsafePointer<sockaddr>, _ remoteAddress: UnsafePointer<sockaddr>) -> SCNetworkReachability?
func SCNetworkReachabilityCreateWithName(allocator: CFAllocator?, _ nodename: UnsafePointer<Int8>) -> SCNetworkReachability?
func SCNetworkReachabilityGetTypeID() -> CFTypeID
func SCNetworkReachabilityGetFlags(target: SCNetworkReachability, _ flags: UnsafeMutablePointer<SCNetworkReachabilityFlags>) -> Bool
func SCNetworkReachabilitySetCallback(target: SCNetworkReachability, _ callout: SCNetworkReachabilityCallBack?, _ context: UnsafeMutablePointer<SCNetworkReachabilityContext>) -> Bool
func SCNetworkReachabilityScheduleWithRunLoop(target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCNetworkReachabilityUnscheduleFromRunLoop(target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCNetworkReachabilitySetDispatchQueue(target: SCNetworkReachability, _ queue: dispatch_queue_t?) -> Bool
typealias AuthorizationRef = COpaquePointer
class SCPreferences {
}
typealias SCPreferencesRef = SCPreferences
struct SCPreferencesNotification : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Commit: SCPreferencesNotification { get }
  static var Apply: SCPreferencesNotification { get }
}
struct SCPreferencesContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
typealias SCPreferencesCallBack = @convention(c) (SCPreferences, SCPreferencesNotification, UnsafeMutablePointer<Void>) -> Void
