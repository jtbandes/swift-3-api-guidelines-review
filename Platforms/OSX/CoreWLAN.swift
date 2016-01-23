
class CWChannel : Object, Copying, SecureCoding {
  var channelNumber: Int { get }
  var channelWidth: CWChannelWidth { get }
  var channelBand: CWChannelBand { get }
  func isEqualTo(channel: CWChannel) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CWConfiguration : Object, Copying, MutableCopying, SecureCoding {
  @NSCopying var networkProfiles: OrderedSet { get }
  var requireAdministratorForAssociation: Bool { get }
  var requireAdministratorForPower: Bool { get }
  var requireAdministratorForIBSSMode: Bool { get }
  var rememberJoinedNetworks: Bool { get }
  init()
  init(configuration: CWConfiguration)
  func isEqualTo(configuration: CWConfiguration) -> Bool
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CWMutableConfiguration : CWConfiguration {
  @NSCopying var networkProfiles: OrderedSet
  var requireAdministratorForAssociation: Bool
  var requireAdministratorForPower: Bool
  var requireAdministratorForIBSSMode: Bool
  var rememberJoinedNetworks: Bool
  init()
  init(configuration: CWConfiguration)
  init?(coder aDecoder: Coder)
}
class CWInterface : Object {
  var interfaceName: String? { get }
  func powerOn() -> Bool
  func supportedWLANChannels() -> Set<CWChannel>?
  func wlanChannel() -> CWChannel?
  func activePHYMode() -> CWPHYMode
  func ssid() -> String?
  func ssidData() -> Data?
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
  func setPairwiseMasterKey(key: Data?) throws
  func setWEPKey(key: Data?, flags: CWCipherKeyFlags, index: Int) throws
  func scanForNetworksWithSSID(ssid: Data?) throws -> Set<CWNetwork>
  func scanForNetworksWithName(networkName: String?) throws -> Set<CWNetwork>
  func associateTo(network: CWNetwork, password: String?) throws
  func disassociate()
  func associateToEnterpriseNetwork(network: CWNetwork, identity: SecIdentity?, username: String?, password: String?) throws
  func startIBSSModeWithSSID(ssidData: Data, security: CWIBSSModeSecurity, channel: Int, password: String?) throws
  init()
}
class CWNetwork : Object, Copying, SecureCoding {
  var ssid: String? { get }
  var ssidData: Data? { get }
  var bssid: String? { get }
  var wlanChannel: CWChannel { get }
  var rssiValue: Int { get }
  var noiseMeasurement: Int { get }
  var informationElementData: Data? { get }
  var countryCode: String? { get }
  var beaconInterval: Int { get }
  var ibss: Bool { get }
  func isEqualTo(network: CWNetwork) -> Bool
  func supportsSecurity(security: CWSecurity) -> Bool
  func supportsPHYMode(phyMode: CWPHYMode) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CWNetworkProfile : Object, Copying, MutableCopying, SecureCoding {
  var ssid: String? { get }
  @NSCopying var ssidData: Data? { get }
  var security: CWSecurity { get }
  init()
  init(networkProfile: CWNetworkProfile)
  func isEqualTo(networkProfile: CWNetworkProfile) -> Bool
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CWMutableNetworkProfile : CWNetworkProfile {
  @NSCopying var ssidData: Data
  var security: CWSecurity
  init()
  init(networkProfile: CWNetworkProfile)
  init?(coder aDecoder: Coder)
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
class CWWiFiClient : Object {
  weak var delegate: @sil_weak AnyObject?
  class func shared() -> CWWiFiClient
  init?()
  func interface() -> CWInterface?
  class func interfaceNames() -> [String]?
  func interfaceWithName(interfaceName: String?) -> CWInterface?
  func interfaces() -> [CWInterface]?
  func startMonitoringEventWith(type: CWEventType) throws
  func stopMonitoringEventWith(type: CWEventType) throws
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
func CWKeychainFindWiFiPassword(domain: CWKeychainDomain, _ ssid: Data, _ password: AutoreleasingUnsafeMutablePointer<NSString?>) -> OSStatus
func CWKeychainSetWiFiPassword(domain: CWKeychainDomain, _ ssid: Data, _ password: String) -> OSStatus
func CWKeychainDeleteWiFiPassword(domain: CWKeychainDomain, _ ssid: Data) -> OSStatus
func CWKeychainFindWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: Data, _ username: AutoreleasingUnsafeMutablePointer<NSString?>, _ password: AutoreleasingUnsafeMutablePointer<NSString?>) -> OSStatus
func CWKeychainSetWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: Data, _ username: String?, _ password: String?) -> OSStatus
func CWKeychainDeleteWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: Data) -> OSStatus
func CWKeychainCopyWiFiEAPIdentity(domain: CWKeychainDomain, _ ssid: Data, _ identity: UnsafeMutablePointer<Unmanaged<SecIdentity>?>) -> OSStatus
func CWKeychainSetWiFiEAPIdentity(domain: CWKeychainDomain, _ ssid: Data, _ identity: SecIdentity?) -> OSStatus
func CWKeychainCopyEAPIdentityList(list: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
func CWMergeNetworks(networks: Set<CWNetwork>) -> Set<CWNetwork>
