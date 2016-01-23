
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
func SCDynamicStoreGetTypeID() -> CFTypeID
func SCDynamicStoreCreate(allocator: CFAllocator?, _ name: CFString, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>) -> SCDynamicStore?
func SCDynamicStoreCreateWithOptions(allocator: CFAllocator?, _ name: CFString, _ storeOptions: CFDictionary?, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>) -> SCDynamicStore?
let kSCDynamicStoreUseSessionKeys: CFString
func SCDynamicStoreCreateRunLoopSource(allocator: CFAllocator?, _ store: SCDynamicStore, _ order: CFIndex) -> CFRunLoopSource?
func SCDynamicStoreSetDispatchQueue(store: SCDynamicStore, _ queue: dispatch_queue_t?) -> Bool
func SCDynamicStoreCopyKeyList(store: SCDynamicStore?, _ pattern: CFString) -> CFArray?
func SCDynamicStoreAddValue(store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCDynamicStoreAddTemporaryValue(store: SCDynamicStore, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCDynamicStoreCopyValue(store: SCDynamicStore?, _ key: CFString) -> CFPropertyList?
func SCDynamicStoreCopyMultiple(store: SCDynamicStore?, _ keys: CFArray?, _ patterns: CFArray?) -> CFDictionary?
func SCDynamicStoreSetValue(store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCDynamicStoreSetMultiple(store: SCDynamicStore?, _ keysToSet: CFDictionary?, _ keysToRemove: CFArray?, _ keysToNotify: CFArray?) -> Bool
func SCDynamicStoreRemoveValue(store: SCDynamicStore?, _ key: CFString) -> Bool
func SCDynamicStoreNotifyValue(store: SCDynamicStore?, _ key: CFString) -> Bool
func SCDynamicStoreSetNotificationKeys(store: SCDynamicStore, _ keys: CFArray?, _ patterns: CFArray?) -> Bool
func SCDynamicStoreCopyNotifiedKeys(store: SCDynamicStore) -> CFArray?
func SCDynamicStoreCopyComputerName(store: SCDynamicStore?, _ nameEncoding: UnsafeMutablePointer<CFStringEncoding>) -> CFString?
func SCDynamicStoreCopyConsoleUser(store: SCDynamicStore?, _ uid: UnsafeMutablePointer<uid_t>, _ gid: UnsafeMutablePointer<gid_t>) -> CFString?
func SCDynamicStoreCopyLocalHostName(store: SCDynamicStore?) -> CFString?
func SCDynamicStoreCopyLocation(store: SCDynamicStore?) -> CFString?
func SCDynamicStoreCopyProxies(store: SCDynamicStore?) -> CFDictionary?
func SCDynamicStoreKeyCreateNetworkGlobalEntity(allocator: CFAllocator?, _ domain: CFString, _ entity: CFString) -> CFString
func SCDynamicStoreKeyCreateNetworkInterface(allocator: CFAllocator?, _ domain: CFString) -> CFString
func SCDynamicStoreKeyCreateNetworkInterfaceEntity(allocator: CFAllocator?, _ domain: CFString, _ ifname: CFString, _ entity: CFString?) -> CFString
func SCDynamicStoreKeyCreateNetworkServiceEntity(allocator: CFAllocator?, _ domain: CFString, _ serviceID: CFString, _ entity: CFString?) -> CFString
func SCDynamicStoreKeyCreateComputerName(allocator: CFAllocator?) -> CFString
func SCDynamicStoreKeyCreateConsoleUser(allocator: CFAllocator?) -> CFString
func SCDynamicStoreKeyCreateHostNames(allocator: CFAllocator?) -> CFString
func SCDynamicStoreKeyCreateLocation(allocator: CFAllocator?) -> CFString
func SCDynamicStoreKeyCreateProxies(allocator: CFAllocator?) -> CFString
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
let kSCNetworkInterfaceType6to4: CFString
let kSCNetworkInterfaceTypeBluetooth: CFString
let kSCNetworkInterfaceTypeBond: CFString
let kSCNetworkInterfaceTypeEthernet: CFString
let kSCNetworkInterfaceTypeFireWire: CFString
let kSCNetworkInterfaceTypeIEEE80211: CFString
let kSCNetworkInterfaceTypeIPSec: CFString
let kSCNetworkInterfaceTypeIrDA: CFString
let kSCNetworkInterfaceTypeL2TP: CFString
let kSCNetworkInterfaceTypeModem: CFString
let kSCNetworkInterfaceTypePPP: CFString
let kSCNetworkInterfaceTypePPTP: CFString
let kSCNetworkInterfaceTypeSerial: CFString
let kSCNetworkInterfaceTypeVLAN: CFString
let kSCNetworkInterfaceTypeWWAN: CFString
let kSCNetworkInterfaceTypeIPv4: CFString
let kSCNetworkInterfaceIPv4: SCNetworkInterface
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
let kSCBondStatusDeviceAggregationStatus: CFString
let kSCBondStatusDeviceCollecting: CFString
let kSCBondStatusDeviceDistributing: CFString
typealias SCVLANInterfaceRef = SCVLANInterface
typealias SCVLANInterface = SCNetworkInterfaceRef
class SCNetworkProtocol {
}
typealias SCNetworkProtocolRef = SCNetworkProtocol
let kSCNetworkProtocolTypeDNS: CFString
let kSCNetworkProtocolTypeIPv4: CFString
let kSCNetworkProtocolTypeIPv6: CFString
let kSCNetworkProtocolTypeProxies: CFString
let kSCNetworkProtocolTypeSMB: CFString
class SCNetworkService {
}
typealias SCNetworkServiceRef = SCNetworkService
typealias SCNetworkSetRef = SCNetworkSet
class SCNetworkSet {
}
func SCNetworkInterfaceGetTypeID() -> CFTypeID
func SCNetworkInterfaceCopyAll() -> CFArray
func SCNetworkInterfaceGetSupportedInterfaceTypes(interface: SCNetworkInterface) -> CFArray?
func SCNetworkInterfaceGetSupportedProtocolTypes(interface: SCNetworkInterface) -> CFArray?
func SCNetworkInterfaceCreateWithInterface(interface: SCNetworkInterface, _ interfaceType: CFString) -> SCNetworkInterface?
func SCNetworkInterfaceGetBSDName(interface: SCNetworkInterface) -> CFString?
func SCNetworkInterfaceGetConfiguration(interface: SCNetworkInterface) -> CFDictionary?
func SCNetworkInterfaceGetExtendedConfiguration(interface: SCNetworkInterface, _ extendedType: CFString) -> CFDictionary?
func SCNetworkInterfaceGetHardwareAddressString(interface: SCNetworkInterface) -> CFString?
func SCNetworkInterfaceGetInterface(interface: SCNetworkInterface) -> SCNetworkInterface?
func SCNetworkInterfaceGetInterfaceType(interface: SCNetworkInterface) -> CFString?
func SCNetworkInterfaceGetLocalizedDisplayName(interface: SCNetworkInterface) -> CFString?
func SCNetworkInterfaceSetConfiguration(interface: SCNetworkInterface, _ config: CFDictionary) -> Bool
func SCNetworkInterfaceSetExtendedConfiguration(interface: SCNetworkInterface, _ extendedType: CFString, _ config: CFDictionary) -> Bool
func SCNetworkInterfaceCopyMediaOptions(interface: SCNetworkInterface, _ current: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ active: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ available: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ filter: Bool) -> Bool
func SCNetworkInterfaceCopyMediaSubTypes(available: CFArray) -> CFArray?
func SCNetworkInterfaceCopyMediaSubTypeOptions(available: CFArray, _ subType: CFString) -> CFArray?
func SCNetworkInterfaceCopyMTU(interface: SCNetworkInterface, _ mtu_cur: UnsafeMutablePointer<Int32>, _ mtu_min: UnsafeMutablePointer<Int32>, _ mtu_max: UnsafeMutablePointer<Int32>) -> Bool
func SCNetworkInterfaceSetMediaOptions(interface: SCNetworkInterface, _ subtype: CFString, _ options: CFArray) -> Bool
func SCNetworkInterfaceSetMTU(interface: SCNetworkInterface, _ mtu: Int32) -> Bool
func SCNetworkInterfaceForceConfigurationRefresh(interface: SCNetworkInterface) -> Bool
func SCBondInterfaceCopyAll(prefs: SCPreferences) -> CFArray
func SCBondInterfaceCopyAvailableMemberInterfaces(prefs: SCPreferences) -> CFArray
func SCBondInterfaceCreate(prefs: SCPreferences) -> SCBondInterface?
func SCBondInterfaceRemove(bond: SCBondInterface) -> Bool
func SCBondInterfaceGetMemberInterfaces(bond: SCBondInterface) -> CFArray?
func SCBondInterfaceGetOptions(bond: SCBondInterface) -> CFDictionary?
func SCBondInterfaceSetMemberInterfaces(bond: SCBondInterface, _ members: CFArray) -> Bool
func SCBondInterfaceSetLocalizedDisplayName(bond: SCBondInterface, _ newName: CFString) -> Bool
func SCBondInterfaceSetOptions(bond: SCBondInterface, _ newOptions: CFDictionary) -> Bool
func SCBondInterfaceCopyStatus(bond: SCBondInterface) -> SCBondStatus?
func SCBondStatusGetTypeID() -> CFTypeID
func SCBondStatusGetMemberInterfaces(bondStatus: SCBondStatus) -> CFArray?
func SCBondStatusGetInterfaceStatus(bondStatus: SCBondStatus, _ interface: SCNetworkInterface?) -> CFDictionary?
func SCVLANInterfaceCopyAll(prefs: SCPreferences) -> CFArray
func SCVLANInterfaceCopyAvailablePhysicalInterfaces() -> CFArray
func SCVLANInterfaceCreate(prefs: SCPreferences, _ physical: SCNetworkInterface, _ tag: CFNumber) -> SCVLANInterface?
func SCVLANInterfaceRemove(vlan: SCVLANInterface) -> Bool
func SCVLANInterfaceGetPhysicalInterface(vlan: SCVLANInterface) -> SCNetworkInterface?
func SCVLANInterfaceGetTag(vlan: SCVLANInterface) -> CFNumber?
func SCVLANInterfaceGetOptions(vlan: SCVLANInterface) -> CFDictionary?
func SCVLANInterfaceSetPhysicalInterfaceAndTag(vlan: SCVLANInterface, _ physical: SCNetworkInterface, _ tag: CFNumber) -> Bool
func SCVLANInterfaceSetLocalizedDisplayName(vlan: SCVLANInterface, _ newName: CFString) -> Bool
func SCVLANInterfaceSetOptions(vlan: SCVLANInterface, _ newOptions: CFDictionary) -> Bool
func SCNetworkProtocolGetTypeID() -> CFTypeID
func SCNetworkProtocolGetConfiguration(protocol: SCNetworkProtocol) -> CFDictionary?
func SCNetworkProtocolGetEnabled(protocol: SCNetworkProtocol) -> Bool
func SCNetworkProtocolGetProtocolType(protocol: SCNetworkProtocol) -> CFString?
func SCNetworkProtocolSetConfiguration(protocol: SCNetworkProtocol, _ config: CFDictionary) -> Bool
func SCNetworkProtocolSetEnabled(protocol: SCNetworkProtocol, _ enabled: Bool) -> Bool
func SCNetworkServiceGetTypeID() -> CFTypeID
func SCNetworkServiceAddProtocolType(service: SCNetworkService, _ protocolType: CFString) -> Bool
func SCNetworkServiceCopyAll(prefs: SCPreferences) -> CFArray?
func SCNetworkServiceCopyProtocols(service: SCNetworkService) -> CFArray?
func SCNetworkServiceCreate(prefs: SCPreferences, _ interface: SCNetworkInterface) -> SCNetworkService?
func SCNetworkServiceCopy(prefs: SCPreferences, _ serviceID: CFString) -> SCNetworkService?
func SCNetworkServiceEstablishDefaultConfiguration(service: SCNetworkService) -> Bool
func SCNetworkServiceGetEnabled(service: SCNetworkService) -> Bool
func SCNetworkServiceGetInterface(service: SCNetworkService) -> SCNetworkInterface?
func SCNetworkServiceGetName(service: SCNetworkService) -> CFString?
func SCNetworkServiceCopyProtocol(service: SCNetworkService, _ protocolType: CFString) -> SCNetworkProtocol?
func SCNetworkServiceGetServiceID(service: SCNetworkService) -> CFString?
func SCNetworkServiceRemove(service: SCNetworkService) -> Bool
func SCNetworkServiceRemoveProtocolType(service: SCNetworkService, _ protocolType: CFString) -> Bool
func SCNetworkServiceSetEnabled(service: SCNetworkService, _ enabled: Bool) -> Bool
func SCNetworkServiceSetName(service: SCNetworkService, _ name: CFString) -> Bool
func SCNetworkSetGetTypeID() -> CFTypeID
func SCNetworkSetAddService(set: SCNetworkSet, _ service: SCNetworkService) -> Bool
func SCNetworkSetContainsInterface(set: SCNetworkSet, _ interface: SCNetworkInterface) -> Bool
func SCNetworkSetCopyAll(prefs: SCPreferences) -> CFArray?
func SCNetworkSetCopyCurrent(prefs: SCPreferences) -> SCNetworkSet?
func SCNetworkSetCopyServices(set: SCNetworkSet) -> CFArray?
func SCNetworkSetCreate(prefs: SCPreferences) -> SCNetworkSet?
func SCNetworkSetCopy(prefs: SCPreferences, _ setID: CFString) -> SCNetworkSet?
func SCNetworkSetGetName(set: SCNetworkSet) -> CFString?
func SCNetworkSetGetSetID(set: SCNetworkSet) -> CFString?
func SCNetworkSetGetServiceOrder(set: SCNetworkSet) -> CFArray?
func SCNetworkSetRemove(set: SCNetworkSet) -> Bool
func SCNetworkSetRemoveService(set: SCNetworkSet, _ service: SCNetworkService) -> Bool
func SCNetworkSetSetCurrent(set: SCNetworkSet) -> Bool
func SCNetworkSetSetName(set: SCNetworkSet, _ name: CFString) -> Bool
func SCNetworkSetSetServiceOrder(set: SCNetworkSet, _ newOrder: CFArray) -> Bool
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
func SCNetworkConnectionGetTypeID() -> CFTypeID
func SCNetworkConnectionCopyUserPreferences(selectionOptions: CFDictionary?, _ serviceID: UnsafeMutablePointer<Unmanaged<CFString>?>, _ userOptions: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> Bool
func SCNetworkConnectionCreateWithServiceID(allocator: CFAllocator?, _ serviceID: CFString, _ callout: SCNetworkConnectionCallBack?, _ context: UnsafeMutablePointer<SCNetworkConnectionContext>) -> SCNetworkConnection?
func SCNetworkConnectionCopyServiceID(connection: SCNetworkConnection) -> CFString?
func SCNetworkConnectionGetStatus(connection: SCNetworkConnection) -> SCNetworkConnectionStatus
func SCNetworkConnectionCopyExtendedStatus(connection: SCNetworkConnection) -> CFDictionary?
func SCNetworkConnectionCopyStatistics(connection: SCNetworkConnection) -> CFDictionary?
func SCNetworkConnectionStart(connection: SCNetworkConnection, _ userOptions: CFDictionary?, _ linger: Bool) -> Bool
func SCNetworkConnectionStop(connection: SCNetworkConnection, _ forceDisconnect: Bool) -> Bool
func SCNetworkConnectionCopyUserOptions(connection: SCNetworkConnection) -> CFDictionary?
func SCNetworkConnectionScheduleWithRunLoop(connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCNetworkConnectionUnscheduleFromRunLoop(connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCNetworkConnectionSetDispatchQueue(connection: SCNetworkConnection, _ queue: dispatch_queue_t?) -> Bool
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
func SCPreferencesGetTypeID() -> CFTypeID
func SCPreferencesCreate(allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?) -> SCPreferences?
func SCPreferencesCreateWithAuthorization(allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?, _ authorization: AuthorizationRef) -> SCPreferences?
func SCPreferencesLock(prefs: SCPreferences, _ wait: Bool) -> Bool
func SCPreferencesCommitChanges(prefs: SCPreferences) -> Bool
func SCPreferencesApplyChanges(prefs: SCPreferences) -> Bool
func SCPreferencesUnlock(prefs: SCPreferences) -> Bool
func SCPreferencesGetSignature(prefs: SCPreferences) -> CFData?
func SCPreferencesCopyKeyList(prefs: SCPreferences) -> CFArray?
func SCPreferencesGetValue(prefs: SCPreferences, _ key: CFString) -> CFPropertyList?
func SCPreferencesAddValue(prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCPreferencesSetValue(prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCPreferencesRemoveValue(prefs: SCPreferences, _ key: CFString) -> Bool
func SCPreferencesSetCallback(prefs: SCPreferences, _ callout: SCPreferencesCallBack?, _ context: UnsafeMutablePointer<SCPreferencesContext>) -> Bool
func SCPreferencesScheduleWithRunLoop(prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCPreferencesUnscheduleFromRunLoop(prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCPreferencesSetDispatchQueue(prefs: SCPreferences, _ queue: dispatch_queue_t?) -> Bool
func SCPreferencesSynchronize(prefs: SCPreferences)
func SCPreferencesPathCreateUniqueChild(prefs: SCPreferences, _ prefix: CFString) -> CFString?
func SCPreferencesPathGetValue(prefs: SCPreferences, _ path: CFString) -> CFDictionary?
func SCPreferencesPathGetLink(prefs: SCPreferences, _ path: CFString) -> CFString?
func SCPreferencesPathSetValue(prefs: SCPreferences, _ path: CFString, _ value: CFDictionary) -> Bool
func SCPreferencesPathSetLink(prefs: SCPreferences, _ path: CFString, _ link: CFString) -> Bool
func SCPreferencesPathRemoveValue(prefs: SCPreferences, _ path: CFString) -> Bool
func SCPreferencesSetComputerName(prefs: SCPreferences, _ name: CFString, _ nameEncoding: CFStringEncoding) -> Bool
func SCPreferencesSetLocalHostName(prefs: SCPreferences, _ name: CFString) -> Bool
let kSCResvLink: CFString
let kSCResvInactive: CFString
let kSCPropInterfaceName: CFString
let kSCPropMACAddress: CFString
let kSCPropUserDefinedName: CFString
let kSCPropVersion: CFString
let kSCPrefCurrentSet: CFString
let kSCPrefNetworkServices: CFString
let kSCPrefSets: CFString
let kSCPrefSystem: CFString
let kSCCompNetwork: CFString
let kSCCompService: CFString
let kSCCompGlobal: CFString
let kSCCompHostNames: CFString
let kSCCompInterface: CFString
let kSCCompSystem: CFString
let kSCCompUsers: CFString
let kSCCompAnyRegex: CFString
let kSCEntNetAirPort: CFString
let kSCEntNetDHCP: CFString
let kSCEntNetDNS: CFString
let kSCEntNetEthernet: CFString
let kSCEntNetFireWire: CFString
let kSCEntNetInterface: CFString
let kSCEntNetIPSec: CFString
let kSCEntNetIPv4: CFString
let kSCEntNetIPv6: CFString
let kSCEntNetL2TP: CFString
let kSCEntNetLink: CFString
let kSCEntNetModem: CFString
let kSCEntNetPPP: CFString
let kSCEntNetPPPoE: CFString
let kSCEntNetPPPSerial: CFString
let kSCEntNetPPTP: CFString
let kSCEntNetProxies: CFString
let kSCEntNetSMB: CFString
let kSCEntNet6to4: CFString
let kSCPropNetOverridePrimary: CFString
let kSCPropNetServiceOrder: CFString
let kSCPropNetPPPOverridePrimary: CFString
let kSCPropNetInterfaces: CFString
let kSCPropNetLocalHostName: CFString
let kSCPropNetDNSDomainName: CFString
let kSCPropNetDNSOptions: CFString
let kSCPropNetDNSSearchDomains: CFString
let kSCPropNetDNSSearchOrder: CFString
let kSCPropNetDNSServerAddresses: CFString
let kSCPropNetDNSServerPort: CFString
let kSCPropNetDNSServerTimeout: CFString
let kSCPropNetDNSSortList: CFString
let kSCPropNetDNSSupplementalMatchDomains: CFString
let kSCPropNetDNSSupplementalMatchOrders: CFString
let kSCPropNetEthernetMediaSubType: CFString
let kSCPropNetEthernetMediaOptions: CFString
let kSCPropNetEthernetMTU: CFString
let kSCPropNetInterfaceDeviceName: CFString
let kSCPropNetInterfaceHardware: CFString
let kSCPropNetInterfaceType: CFString
let kSCPropNetInterfaceSubType: CFString
let kSCPropNetInterfaceSupportsModemOnHold: CFString
let kSCValNetInterfaceTypeEthernet: CFString
let kSCValNetInterfaceTypeFireWire: CFString
let kSCValNetInterfaceTypePPP: CFString
let kSCValNetInterfaceType6to4: CFString
let kSCValNetInterfaceTypeIPSec: CFString
let kSCValNetInterfaceSubTypePPPoE: CFString
let kSCValNetInterfaceSubTypePPPSerial: CFString
let kSCValNetInterfaceSubTypePPTP: CFString
let kSCValNetInterfaceSubTypeL2TP: CFString
let kSCPropNetIPSecAuthenticationMethod: CFString
let kSCPropNetIPSecLocalCertificate: CFString
let kSCPropNetIPSecLocalIdentifier: CFString
let kSCPropNetIPSecLocalIdentifierType: CFString
let kSCPropNetIPSecSharedSecret: CFString
let kSCPropNetIPSecSharedSecretEncryption: CFString
let kSCPropNetIPSecConnectTime: CFString
let kSCPropNetIPSecRemoteAddress: CFString
let kSCPropNetIPSecStatus: CFString
let kSCPropNetIPSecXAuthEnabled: CFString
let kSCPropNetIPSecXAuthName: CFString
let kSCPropNetIPSecXAuthPassword: CFString
let kSCPropNetIPSecXAuthPasswordEncryption: CFString
let kSCValNetIPSecAuthenticationMethodSharedSecret: CFString
let kSCValNetIPSecAuthenticationMethodCertificate: CFString
let kSCValNetIPSecAuthenticationMethodHybrid: CFString
let kSCValNetIPSecLocalIdentifierTypeKeyID: CFString
let kSCValNetIPSecSharedSecretEncryptionKeychain: CFString
let kSCValNetIPSecXAuthPasswordEncryptionKeychain: CFString
let kSCValNetIPSecXAuthPasswordEncryptionPrompt: CFString
let kSCPropNetIPv4Addresses: CFString
let kSCPropNetIPv4ConfigMethod: CFString
let kSCPropNetIPv4DHCPClientID: CFString
let kSCPropNetIPv4Router: CFString
let kSCPropNetIPv4SubnetMasks: CFString
let kSCPropNetIPv4DestAddresses: CFString
let kSCPropNetIPv4BroadcastAddresses: CFString
let kSCValNetIPv4ConfigMethodAutomatic: CFString
let kSCValNetIPv4ConfigMethodBOOTP: CFString
let kSCValNetIPv4ConfigMethodDHCP: CFString
let kSCValNetIPv4ConfigMethodINFORM: CFString
let kSCValNetIPv4ConfigMethodLinkLocal: CFString
let kSCValNetIPv4ConfigMethodManual: CFString
let kSCValNetIPv4ConfigMethodPPP: CFString
let kSCPropNetIPv6Addresses: CFString
let kSCPropNetIPv6ConfigMethod: CFString
let kSCPropNetIPv6DestAddresses: CFString
let kSCPropNetIPv6Flags: CFString
let kSCPropNetIPv6PrefixLength: CFString
let kSCPropNetIPv6Router: CFString
let kSCValNetIPv6ConfigMethodAutomatic: CFString
let kSCValNetIPv6ConfigMethodLinkLocal: CFString
let kSCValNetIPv6ConfigMethodManual: CFString
let kSCValNetIPv6ConfigMethodRouterAdvertisement: CFString
let kSCValNetIPv6ConfigMethod6to4: CFString
let kSCPropNet6to4Relay: CFString
let kSCPropNetLinkActive: CFString
let kSCPropNetLinkDetaching: CFString
let kSCPropNetModemAccessPointName: CFString
let kSCPropNetModemConnectionPersonality: CFString
let kSCPropNetModemConnectionScript: CFString
let kSCPropNetModemConnectSpeed: CFString
let kSCPropNetModemDataCompression: CFString
let kSCPropNetModemDeviceContextID: CFString
let kSCPropNetModemDeviceModel: CFString
let kSCPropNetModemDeviceVendor: CFString
let kSCPropNetModemDialMode: CFString
let kSCPropNetModemErrorCorrection: CFString
let kSCPropNetModemHoldCallWaitingAudibleAlert: CFString
let kSCPropNetModemHoldDisconnectOnAnswer: CFString
let kSCPropNetModemHoldEnabled: CFString
let kSCPropNetModemHoldReminder: CFString
let kSCPropNetModemHoldReminderTime: CFString
let kSCPropNetModemNote: CFString
let kSCPropNetModemPulseDial: CFString
let kSCPropNetModemSpeaker: CFString
let kSCPropNetModemSpeed: CFString
let kSCValNetModemDialModeIgnoreDialTone: CFString
let kSCValNetModemDialModeManual: CFString
let kSCValNetModemDialModeWaitForDialTone: CFString
let kSCPropNetPPPACSPEnabled: CFString
let kSCPropNetPPPConnectTime: CFString
let kSCPropNetPPPDeviceLastCause: CFString
let kSCPropNetPPPDialOnDemand: CFString
let kSCPropNetPPPDisconnectOnFastUserSwitch: CFString
let kSCPropNetPPPDisconnectOnIdle: CFString
let kSCPropNetPPPDisconnectOnIdleTimer: CFString
let kSCPropNetPPPDisconnectOnLogout: CFString
let kSCPropNetPPPDisconnectOnSleep: CFString
let kSCPropNetPPPDisconnectTime: CFString
let kSCPropNetPPPIdleReminderTimer: CFString
let kSCPropNetPPPIdleReminder: CFString
let kSCPropNetPPPLastCause: CFString
let kSCPropNetPPPLogfile: CFString
let kSCPropNetPPPPlugins: CFString
let kSCPropNetPPPRetryConnectTime: CFString
let kSCPropNetPPPSessionTimer: CFString
let kSCPropNetPPPStatus: CFString
let kSCPropNetPPPUseSessionTimer: CFString
let kSCPropNetPPPVerboseLogging: CFString
let kSCPropNetPPPAuthEAPPlugins: CFString
let kSCPropNetPPPAuthName: CFString
let kSCPropNetPPPAuthPassword: CFString
let kSCPropNetPPPAuthPasswordEncryption: CFString
let kSCPropNetPPPAuthPrompt: CFString
let kSCPropNetPPPAuthProtocol: CFString
let kSCValNetPPPAuthPasswordEncryptionKeychain: CFString
let kSCValNetPPPAuthPasswordEncryptionToken: CFString
let kSCValNetPPPAuthPromptBefore: CFString
let kSCValNetPPPAuthPromptAfter: CFString
let kSCValNetPPPAuthProtocolCHAP: CFString
let kSCValNetPPPAuthProtocolEAP: CFString
let kSCValNetPPPAuthProtocolMSCHAP1: CFString
let kSCValNetPPPAuthProtocolMSCHAP2: CFString
let kSCValNetPPPAuthProtocolPAP: CFString
let kSCPropNetPPPCommAlternateRemoteAddress: CFString
let kSCPropNetPPPCommConnectDelay: CFString
let kSCPropNetPPPCommDisplayTerminalWindow: CFString
let kSCPropNetPPPCommRedialCount: CFString
let kSCPropNetPPPCommRedialEnabled: CFString
let kSCPropNetPPPCommRedialInterval: CFString
let kSCPropNetPPPCommRemoteAddress: CFString
let kSCPropNetPPPCommTerminalScript: CFString
let kSCPropNetPPPCommUseTerminalScript: CFString
let kSCPropNetPPPCCPEnabled: CFString
let kSCPropNetPPPCCPMPPE40Enabled: CFString
let kSCPropNetPPPCCPMPPE128Enabled: CFString
let kSCPropNetPPPIPCPCompressionVJ: CFString
let kSCPropNetPPPIPCPUsePeerDNS: CFString
let kSCPropNetPPPLCPEchoEnabled: CFString
let kSCPropNetPPPLCPEchoFailure: CFString
let kSCPropNetPPPLCPEchoInterval: CFString
let kSCPropNetPPPLCPCompressionACField: CFString
let kSCPropNetPPPLCPCompressionPField: CFString
let kSCPropNetPPPLCPMRU: CFString
let kSCPropNetPPPLCPMTU: CFString
let kSCPropNetPPPLCPReceiveACCM: CFString
let kSCPropNetPPPLCPTransmitACCM: CFString
let kSCPropNetL2TPIPSecSharedSecret: CFString
let kSCPropNetL2TPIPSecSharedSecretEncryption: CFString
let kSCPropNetL2TPTransport: CFString
let kSCValNetL2TPIPSecSharedSecretEncryptionKeychain: CFString
let kSCValNetL2TPTransportIP: CFString
let kSCValNetL2TPTransportIPSec: CFString
let kSCPropNetProxiesExceptionsList: CFString
let kSCPropNetProxiesExcludeSimpleHostnames: CFString
let kSCPropNetProxiesFTPEnable: CFString
let kSCPropNetProxiesFTPPassive: CFString
let kSCPropNetProxiesFTPPort: CFString
let kSCPropNetProxiesFTPProxy: CFString
let kSCPropNetProxiesGopherEnable: CFString
let kSCPropNetProxiesGopherPort: CFString
let kSCPropNetProxiesGopherProxy: CFString
let kSCPropNetProxiesHTTPEnable: CFString
let kSCPropNetProxiesHTTPPort: CFString
let kSCPropNetProxiesHTTPProxy: CFString
let kSCPropNetProxiesHTTPSEnable: CFString
let kSCPropNetProxiesHTTPSPort: CFString
let kSCPropNetProxiesHTTPSProxy: CFString
let kSCPropNetProxiesRTSPEnable: CFString
let kSCPropNetProxiesRTSPPort: CFString
let kSCPropNetProxiesRTSPProxy: CFString
let kSCPropNetProxiesSOCKSEnable: CFString
let kSCPropNetProxiesSOCKSPort: CFString
let kSCPropNetProxiesSOCKSProxy: CFString
let kSCPropNetProxiesProxyAutoConfigEnable: CFString
let kSCPropNetProxiesProxyAutoConfigJavaScript: CFString
let kSCPropNetProxiesProxyAutoConfigURLString: CFString
let kSCPropNetProxiesProxyAutoDiscoveryEnable: CFString
let kSCPropNetSMBNetBIOSName: CFString
let kSCPropNetSMBNetBIOSNodeType: CFString
let kSCPropNetSMBWINSAddresses: CFString
let kSCPropNetSMBWorkgroup: CFString
let kSCValNetSMBNetBIOSNodeTypeBroadcast: CFString
let kSCValNetSMBNetBIOSNodeTypePeer: CFString
let kSCValNetSMBNetBIOSNodeTypeMixed: CFString
let kSCValNetSMBNetBIOSNodeTypeHybrid: CFString
let kSCEntUsersConsoleUser: CFString
let kSCPropSystemComputerName: CFString
let kSCPropSystemComputerNameEncoding: CFString
let kSCDynamicStoreDomainFile: CFString
let kSCDynamicStoreDomainPlugin: CFString
let kSCDynamicStoreDomainSetup: CFString
let kSCDynamicStoreDomainState: CFString
let kSCDynamicStoreDomainPrefs: CFString
let kSCDynamicStorePropSetupCurrentSet: CFString
let kSCDynamicStorePropSetupLastUpdated: CFString
let kSCDynamicStorePropNetInterfaces: CFString
let kSCDynamicStorePropNetPrimaryInterface: CFString
let kSCDynamicStorePropNetPrimaryService: CFString
let kSCDynamicStorePropNetServiceIDs: CFString
