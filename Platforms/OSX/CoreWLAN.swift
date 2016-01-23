
class CWChannel : NSObject, NSCopying, NSSecureCoding {
  var channelNumber: Int { get }
  var channelWidth: CWChannelWidth { get }
  var channelBand: CWChannelBand { get }
  func isEqualToChannel(channel: CWChannel) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CWConfiguration : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @NSCopying var networkProfiles: NSOrderedSet { get }
  var requireAdministratorForAssociation: Bool { get }
  var requireAdministratorForPower: Bool { get }
  var requireAdministratorForIBSSMode: Bool { get }
  var rememberJoinedNetworks: Bool { get }
  init()
  init(configuration: CWConfiguration)
  func isEqualToConfiguration(configuration: CWConfiguration) -> Bool
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CWMutableConfiguration : CWConfiguration {
  @NSCopying var networkProfiles: NSOrderedSet
  var requireAdministratorForAssociation: Bool
  var requireAdministratorForPower: Bool
  var requireAdministratorForIBSSMode: Bool
  var rememberJoinedNetworks: Bool
  init()
  init(configuration: CWConfiguration)
  init?(coder aDecoder: NSCoder)
}
class CWInterface : NSObject {
  var interfaceName: String? { get }
  func powerOn() -> Bool
  func supportedWLANChannels() -> Set<CWChannel>?
  func wlanChannel() -> CWChannel?
  func activePHYMode() -> CWPHYMode
  func ssid() -> String?
  func ssidData() -> NSData?
  func bssid() -> String?
  func rssiValue() -> Int
  func noiseMeasurement() -> Int
  func security() -> CWSecurity
  func transmitRate() -> Double
  func countryCode() -> String?
  func interfaceMode() -> CWInterfaceMode
  func transmitPower() -> Int
  func hardwareAddress() -> String?
  func serviceActive() -> Bool
  func cachedScanResults() -> Set<CWNetwork>?
  func configuration() -> CWConfiguration?
  class func interfaceNames() -> Set<String>?
  convenience init(name: String)
  init(interfaceName name: String)
  func setPower(power: Bool) throws
  func setWLANChannel(channel: CWChannel) throws
  func setPairwiseMasterKey(key: NSData?) throws
  func setWEPKey(key: NSData?, flags: CWCipherKeyFlags, index: Int) throws
  func scanForNetworksWithSSID(ssid: NSData?) throws -> Set<CWNetwork>
  func scanForNetworksWithName(networkName: String?) throws -> Set<CWNetwork>
  func associateToNetwork(network: CWNetwork, password: String?) throws
  func disassociate()
  func associateToEnterpriseNetwork(network: CWNetwork, identity: SecIdentity?, username: String?, password: String?) throws
  func startIBSSModeWithSSID(ssidData: NSData, security: CWIBSSModeSecurity, channel: Int, password: String?) throws
  init()
}
class CWNetwork : NSObject, NSCopying, NSSecureCoding {
  var ssid: String? { get }
  var ssidData: NSData? { get }
  var bssid: String? { get }
  var wlanChannel: CWChannel { get }
  var rssiValue: Int { get }
  var noiseMeasurement: Int { get }
  var informationElementData: NSData? { get }
  var countryCode: String? { get }
  var beaconInterval: Int { get }
  var ibss: Bool { get }
  func isEqualToNetwork(network: CWNetwork) -> Bool
  func supportsSecurity(security: CWSecurity) -> Bool
  func supportsPHYMode(phyMode: CWPHYMode) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CWNetworkProfile : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var ssid: String? { get }
  @NSCopying var ssidData: NSData? { get }
  var security: CWSecurity { get }
  init()
  init(networkProfile: CWNetworkProfile)
  func isEqualToNetworkProfile(networkProfile: CWNetworkProfile) -> Bool
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CWMutableNetworkProfile : CWNetworkProfile {
  @NSCopying var ssidData: NSData
  var security: CWSecurity
  init()
  init(networkProfile: CWNetworkProfile)
  init?(coder aDecoder: NSCoder)
}
protocol CWEventDelegate {
  optional func clientConnectionInterrupted()
  optional func clientConnectionInvalidated()
  optional func powerStateDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func ssidDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func bssidDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func countryCodeDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func linkDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func linkQualityDidChangeForWiFiInterfaceWithName(interfaceName: String, rssi: Int, transmitRate: Double)
  optional func modeDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func scanCacheUpdatedForWiFiInterfaceWithName(interfaceName: String)
}
class CWWiFiClient : NSObject {
  weak var delegate: @sil_weak AnyObject?
  class func sharedWiFiClient() -> CWWiFiClient
  init?()
  func interface() -> CWInterface?
  class func interfaceNames() -> [String]?
  func interfaceWithName(interfaceName: String?) -> CWInterface?
  func interfaces() -> [CWInterface]?
  func startMonitoringEventWithType(type: CWEventType) throws
  func stopMonitoringEventWithType(type: CWEventType) throws
  func stopMonitoringAllEvents() throws
}
let CWErrorDomain: String
let CWPowerDidChangeNotification: String
let CWSSIDDidChangeNotification: String
let CWBSSIDDidChangeNotification: String
let CWLinkDidChangeNotification: String
let CWModeDidChangeNotification: String
let CWCountryCodeDidChangeNotification: String
let CWScanCacheDidUpdateNotification: String
let CWLinkQualityDidChangeNotification: String
let CWLinkQualityNotificationRSSIKey: String
let CWLinkQualityNotificationTransmitRateKey: String
enum CWErr : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CWNoErr
  case CWEAPOLErr
  case CWInvalidParameterErr
  case CWNoMemoryErr
  case CWUnknownErr
  case CWNotSupportedErr
  case CWInvalidFormatErr
  case CWTimeoutErr
  case CWUnspecifiedFailureErr
  case CWUnsupportedCapabilitiesErr
  case CWReassociationDeniedErr
  case CWAssociationDeniedErr
  case CWAuthenticationAlgorithmUnsupportedErr
  case CWInvalidAuthenticationSequenceNumberErr
  case CWChallengeFailureErr
  case CWAPFullErr
  case CWUnsupportedRateSetErr
  case CWShortSlotUnsupportedErr
  case CWDSSSOFDMUnsupportedErr
  case CWInvalidInformationElementErr
  case CWInvalidGroupCipherErr
  case CWInvalidPairwiseCipherErr
  case CWInvalidAKMPErr
  case CWUnsupportedRSNVersionErr
  case CWInvalidRSNCapabilitiesErr
  case CWCipherSuiteRejectedErr
  case CWInvalidPMKErr
  case CWSupplicantTimeoutErr
  case CWHTFeaturesNotSupportedErr
  case CWPCOTransitionTimeNotSupportedErr
  case CWReferenceNotBoundErr
  case CWIPCFailureErr
  case CWOperationNotPermittedErr
  case CWErr
}
enum CWPHYMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ModeNone
  case Mode11a
  case Mode11b
  case Mode11g
  case Mode11n
  case Mode11ac
}
enum CWInterfaceMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Station
  case IBSS
  case HostAP
}
enum CWSecurity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case WEP
  case WPAPersonal
  case WPAPersonalMixed
  case WPA2Personal
  case Personal
  case DynamicWEP
  case WPAEnterprise
  case WPAEnterpriseMixed
  case WPA2Enterprise
  case Enterprise
  case Unknown
}
enum CWIBSSModeSecurity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case WEP40
  case WEP104
}
enum CWChannelWidth : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WidthUnknown
  case Width20MHz
  case Width40MHz
  case Width80MHz
  case Width160MHz
}
enum CWChannelBand : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BandUnknown
  case Band2GHz
  case Band5GHz
}
struct CWCipherKeyFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: CWCipherKeyFlags { get }
  static var Unicast: CWCipherKeyFlags { get }
  static var Multicast: CWCipherKeyFlags { get }
  static var Tx: CWCipherKeyFlags { get }
  static var Rx: CWCipherKeyFlags { get }
}
enum CWKeychainDomain : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case User
  case System
}
enum CWEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case PowerDidChange
  case SSIDDidChange
  case BSSIDDidChange
  case CountryCodeDidChange
  case LinkDidChange
  case LinkQualityDidChange
  case ModeDidChange
  case ScanCacheUpdated
  case Unknown
}
func CWKeychainFindWiFiPassword(domain: CWKeychainDomain, _ ssid: NSData, _ password: AutoreleasingUnsafeMutablePointer<NSString?>) -> OSStatus
func CWKeychainSetWiFiPassword(domain: CWKeychainDomain, _ ssid: NSData, _ password: String) -> OSStatus
func CWKeychainDeleteWiFiPassword(domain: CWKeychainDomain, _ ssid: NSData) -> OSStatus
func CWKeychainFindWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: NSData, _ username: AutoreleasingUnsafeMutablePointer<NSString?>, _ password: AutoreleasingUnsafeMutablePointer<NSString?>) -> OSStatus
func CWKeychainSetWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: NSData, _ username: String?, _ password: String?) -> OSStatus
func CWKeychainDeleteWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: NSData) -> OSStatus
func CWKeychainCopyWiFiEAPIdentity(domain: CWKeychainDomain, _ ssid: NSData, _ identity: UnsafeMutablePointer<Unmanaged<SecIdentity>?>) -> OSStatus
func CWKeychainSetWiFiEAPIdentity(domain: CWKeychainDomain, _ ssid: NSData, _ identity: SecIdentity?) -> OSStatus
func CWKeychainCopyEAPIdentityList(list: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
func CWMergeNetworks(networks: Set<CWNetwork>) -> Set<CWNetwork>
