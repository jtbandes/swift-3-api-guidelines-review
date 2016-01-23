
enum NEAppProxyFlowError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotConnected
  case PeerReset
  case HostUnreachable
  case InvalidArgument
  case Aborted
  case Refused
  case TimedOut
  case Internal
}
let NEAppProxyErrorDomain: String
class NEAppProxyFlow : NSObject {
  func openWithLocalEndpoint(localEndpoint: NWHostEndpoint?, completionHandler: (NSError?) -> Void)
  func closeReadWithError(error: NSError?)
  func closeWriteWithError(error: NSError?)
  var metaData: NEFlowMetaData { get }
  init()
}
class NEFlowMetaData : NSObject {
  var sourceAppUniqueIdentifier: NSData { get }
  var sourceAppSigningIdentifier: String { get }
  init()
}
class NEAppProxyProvider : NETunnelProvider {
  func startProxyWithOptions(options: [String : AnyObject]?, completionHandler: (NSError?) -> Void)
  func stopProxyWithReason(reason: NEProviderStopReason, completionHandler: () -> Void)
  func cancelProxyWithError(error: NSError?)
  func handleNewFlow(flow: NEAppProxyFlow) -> Bool
  init()
}
class NEAppProxyProviderManager : NETunnelProviderManager {
  class func loadAllFromPreferencesWithCompletionHandler(completionHandler: ([NEAppProxyProviderManager]?, NSError?) -> Void)
  init()
}
class NEAppProxyTCPFlow : NEAppProxyFlow {
  func readDataWithCompletionHandler(completionHandler: (NSData?, NSError?) -> Void)
  func writeData(data: NSData, withCompletionHandler completionHandler: (NSError?) -> Void)
  var remoteEndpoint: NWEndpoint { get }
  init()
}
class NEAppProxyUDPFlow : NEAppProxyFlow {
  func readDatagramsWithCompletionHandler(completionHandler: ([NSData]?, [NWEndpoint]?, NSError?) -> Void)
  func writeDatagrams(datagrams: [NSData], sentByEndpoints remoteEndpoints: [NWEndpoint], completionHandler: (NSError?) -> Void)
  var localEndpoint: NWEndpoint? { get }
  init()
}
class NEAppRule : NSObject, NSSecureCoding, NSCopying {
  init(signingIdentifier: String, designatedRequirement: String)
  var matchSigningIdentifier: String { get }
  var matchDesignatedRequirement: String { get }
  var matchPath: String?
  var matchDomains: [AnyObject]?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEDNSSettings : NSObject, NSSecureCoding, NSCopying {
  init(servers: [String])
  var servers: [String] { get }
  var searchDomains: [String]?
  var domainName: String?
  var matchDomains: [String]?
  var matchDomainsNoSearch: Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
var NEFilterFlowBytesMax: UInt64 { get }
enum NEFilterManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ConfigurationInvalid
  case ConfigurationDisabled
  case ConfigurationStale
  case ConfigurationCannotBeRemoved
}
let NEFilterErrorDomain: String
let NEFilterConfigurationDidChangeNotification: String
class NEFilterManager : NSObject {
  class func sharedManager() -> NEFilterManager
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func removeFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func saveToPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  var localizedDescription: String?
  var providerConfiguration: NEFilterProviderConfiguration?
  var enabled: Bool
  init()
}
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }
class NEFilterProviderConfiguration : NSObject, NSSecureCoding, NSCopying {
  var filterBrowsers: Bool
  var filterSockets: Bool
  var vendorConfiguration: [String : AnyObject]?
  var serverAddress: String?
  var username: String?
  var organization: String?
  @NSCopying var passwordReference: NSData?
  @NSCopying var identityReference: NSData?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEIPv4Settings : NSObject, NSSecureCoding, NSCopying {
  init(addresses: [String], subnetMasks: [String])
  var addresses: [String] { get }
  var subnetMasks: [String] { get }
  var includedRoutes: [NEIPv4Route]?
  var excludedRoutes: [NEIPv4Route]?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEIPv4Route : NSObject, NSSecureCoding, NSCopying {
  init(destinationAddress address: String, subnetMask: String)
  var destinationAddress: String { get }
  var destinationSubnetMask: String { get }
  var gatewayAddress: String?
  class func defaultRoute() -> NEIPv4Route
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEIPv6Settings : NSObject, NSSecureCoding, NSCopying {
  init(addresses: [String], networkPrefixLengths: [NSNumber])
  var addresses: [String] { get }
  var networkPrefixLengths: [NSNumber] { get }
  var includedRoutes: [NEIPv6Route]?
  var excludedRoutes: [NEIPv6Route]?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEIPv6Route : NSObject, NSSecureCoding, NSCopying {
  init(destinationAddress address: String, networkPrefixLength: NSNumber)
  var destinationAddress: String { get }
  var destinationNetworkPrefixLength: NSNumber { get }
  var gatewayAddress: String?
  class func defaultRoute() -> NEIPv6Route
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum NEOnDemandRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Connect
  case Disconnect
  case EvaluateConnection
  case Ignore
}
enum NEOnDemandRuleInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Ethernet
  case WiFi
}
class NEOnDemandRule : NSObject, NSSecureCoding, NSCopying {
  var action: NEOnDemandRuleAction { get }
  var DNSSearchDomainMatch: [String]?
  var DNSServerAddressMatch: [String]?
  var interfaceTypeMatch: NEOnDemandRuleInterfaceType
  var SSIDMatch: [String]?
  @NSCopying var probeURL: NSURL?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEOnDemandRuleConnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
class NEOnDemandRuleDisconnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
class NEOnDemandRuleIgnore : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
class NEOnDemandRuleEvaluateConnection : NEOnDemandRule {
  var connectionRules: [NEEvaluateConnectionRule]?
  init()
  init?(coder aDecoder: NSCoder)
}
enum NEEvaluateConnectionRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ConnectIfNeeded
  case NeverConnect
}
class NEEvaluateConnectionRule : NSObject, NSSecureCoding, NSCopying {
  init(matchDomains domains: [String], andAction action: NEEvaluateConnectionRuleAction)
  var action: NEEvaluateConnectionRuleAction { get }
  var matchDomains: [String] { get }
  var useDNSServers: [String]?
  @NSCopying var probeURL: NSURL?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEPacketTunnelFlow : NSObject {
  func readPacketsWithCompletionHandler(completionHandler: ([NSData], [NSNumber]) -> Void)
  func writePackets(packets: [NSData], withProtocols protocols: [NSNumber]) -> Bool
  init()
}
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {
  @NSCopying var IPv4Settings: NEIPv4Settings?
  @NSCopying var IPv6Settings: NEIPv6Settings?
  @NSCopying var tunnelOverheadBytes: NSNumber?
  @NSCopying var MTU: NSNumber?
  init(tunnelRemoteAddress address: String)
  init()
  init?(coder aDecoder: NSCoder)
}
class NEPacketTunnelProvider : NETunnelProvider {
  func startTunnelWithOptions(options: [String : NSObject]?, completionHandler: (NSError?) -> Void)
  func stopTunnelWithReason(reason: NEProviderStopReason, completionHandler: () -> Void)
  func cancelTunnelWithError(error: NSError?)
  var packetFlow: NEPacketTunnelFlow { get }
  func createTCPConnectionThroughTunnelToEndpoint(remoteEndpoint: NWEndpoint, enableTLS: Bool, TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  func createUDPSessionThroughTunnelToEndpoint(remoteEndpoint: NWEndpoint, fromEndpoint localEndpoint: NWHostEndpoint?) -> NWUDPSession
  init()
}
enum NEProviderStopReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case UserInitiated
  case ProviderFailed
  case NoNetworkAvailable
  case UnrecoverableNetworkChange
  case ProviderDisabled
  case AuthenticationCanceled
  case ConfigurationFailed
  case IdleTimeout
  case ConfigurationDisabled
  case ConfigurationRemoved
  case Superceded
  case UserLogout
  case UserSwitch
  case ConnectionFailed
}
class NEProvider : NSObject {
  func sleepWithCompletionHandler(completionHandler: () -> Void)
  func wake()
  func createTCPConnectionToEndpoint(remoteEndpoint: NWEndpoint, enableTLS: Bool, TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  func createUDPSessionToEndpoint(remoteEndpoint: NWEndpoint, fromEndpoint localEndpoint: NWHostEndpoint?) -> NWUDPSession
  var defaultPath: NWPath? { get }
  init()
}
class NEProxyServer : NSObject, NSSecureCoding, NSCopying {
  init(address: String, port: Int)
  var address: String { get }
  var port: Int { get }
  var authenticationRequired: Bool
  var username: String?
  var password: String?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEProxySettings : NSObject, NSSecureCoding, NSCopying {
  var autoProxyConfigurationEnabled: Bool
  @NSCopying var proxyAutoConfigurationURL: NSURL?
  var proxyAutoConfigurationJavaScript: String?
  var HTTPEnabled: Bool
  @NSCopying var HTTPServer: NEProxyServer?
  var HTTPSEnabled: Bool
  @NSCopying var HTTPSServer: NEProxyServer?
  var excludeSimpleHostnames: Bool
  var exceptionList: [String]?
  var matchDomains: [String]?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NETunnelNetworkSettings : NSObject, NSSecureCoding, NSCopying {
  init(tunnelRemoteAddress address: String)
  var tunnelRemoteAddress: String { get }
  @NSCopying var DNSSettings: NEDNSSettings?
  @NSCopying var proxySettings: NEProxySettings?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum NETunnelProviderError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NetworkSettingsInvalid
  case NetworkSettingsCanceled
  case NetworkSettingsFailed
}
enum NETunnelProviderRoutingMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DestinationIP
  case SourceApplication
}
let NETunnelProviderErrorDomain: String
class NETunnelProvider : NEProvider {
  func handleAppMessage(messageData: NSData, completionHandler: ((NSData?) -> Void)?)
  func setTunnelNetworkSettings(tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler: ((NSError?) -> Void)?)
  var protocolConfiguration: NEVPNProtocol { get }
  var appRules: [NEAppRule]? { get }
  var routingMethod: NETunnelProviderRoutingMethod { get }
  var reasserting: Bool
  init()
}
class NETunnelProviderManager : NEVPNManager {
  class func loadAllFromPreferencesWithCompletionHandler(completionHandler: ([NETunnelProviderManager]?, NSError?) -> Void)
  func copyAppRules() -> [NEAppRule]?
  var routingMethod: NETunnelProviderRoutingMethod { get }
  init()
}
class NETunnelProviderProtocol : NEVPNProtocol {
  var providerConfiguration: [String : AnyObject]?
  var providerBundleIdentifier: String?
  init()
  init?(coder aDecoder: NSCoder)
}
class NETunnelProviderSession : NEVPNConnection {
  func startTunnelWithOptions(options: [String : AnyObject]?) throws
  func stopTunnel()
  func sendProviderMessage(messageData: NSData, responseHandler: ((NSData?) -> Void)?) throws
  init()
}
enum NEVPNStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Disconnected
  case Connecting
  case Connected
  case Reasserting
  case Disconnecting
}
let NEVPNStatusDidChangeNotification: String
let NEVPNConnectionStartOptionUsername: String
let NEVPNConnectionStartOptionPassword: String
class NEVPNConnection : NSObject {
  func startVPNTunnel() throws
  func startVPNTunnelWithOptions(options: [String : NSObject]?) throws
  func stopVPNTunnel()
  var status: NEVPNStatus { get }
  var connectedDate: NSDate? { get }
  init()
}
enum NEVPNError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ConfigurationInvalid
  case ConfigurationDisabled
  case ConnectionFailed
  case ConfigurationStale
  case ConfigurationReadWriteFailed
  case ConfigurationUnknown
}
let NEVPNErrorDomain: String
let NEVPNConfigurationChangeNotification: String
class NEVPNManager : NSObject {
  class func sharedManager() -> NEVPNManager
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func removeFromPreferencesWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func saveToPreferencesWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func setAuthorization(authorization: AuthorizationRef)
  var onDemandRules: [NEOnDemandRule]?
  var onDemandEnabled: Bool
  var localizedDescription: String?
  var `protocol`: NEVPNProtocol?
  var protocolConfiguration: NEVPNProtocol?
  var connection: NEVPNConnection { get }
  var enabled: Bool
  init()
}
class NEVPNProtocol : NSObject, NSCopying, NSSecureCoding {
  var serverAddress: String?
  var username: String?
  @NSCopying var passwordReference: NSData?
  @NSCopying var identityReference: NSData?
  @NSCopying var identityData: NSData?
  var identityDataPassword: String?
  var disconnectOnSleep: Bool
  @NSCopying var proxySettings: NEProxySettings?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NEVPNIKEv2EncryptionAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlgorithmDES
  case Algorithm3DES
  case AlgorithmAES128
  case AlgorithmAES256
  case AlgorithmAES128GCM
  case AlgorithmAES256GCM
}
enum NEVPNIKEv2IntegrityAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SHA96
  case SHA160
  case SHA256
  case SHA384
  case SHA512
}
enum NEVPNIKEv2DeadPeerDetectionRate : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Low
  case Medium
  case High
}
enum NEVPNIKEv2DiffieHellmanGroup : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Group0
  case Group1
  case Group2
  case Group5
  case Group14
  case Group15
  case Group16
  case Group17
  case Group18
  case Group19
  case Group20
  case Group21
}
enum NEVPNIKEv2CertificateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case RSA
  case ECDSA256
  case ECDSA384
  case ECDSA521
}
class NEVPNIKEv2SecurityAssociationParameters : NSObject, NSSecureCoding, NSCopying {
  var encryptionAlgorithm: NEVPNIKEv2EncryptionAlgorithm
  var integrityAlgorithm: NEVPNIKEv2IntegrityAlgorithm
  var diffieHellmanGroup: NEVPNIKEv2DiffieHellmanGroup
  var lifetimeMinutes: Int32
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NEVPNProtocolIKEv2 : NEVPNProtocolIPSec {
  var deadPeerDetectionRate: NEVPNIKEv2DeadPeerDetectionRate
  var serverCertificateIssuerCommonName: String?
  var serverCertificateCommonName: String?
  var certificateType: NEVPNIKEv2CertificateType
  var useConfigurationAttributeInternalIPSubnet: Bool
  var IKESecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  var childSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  var disableMOBIKE: Bool
  var disableRedirect: Bool
  var enablePFS: Bool
  var enableRevocationCheck: Bool
  var strictRevocationCheck: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum NEVPNIKEAuthenticationMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Certificate
  case SharedSecret
}
class NEVPNProtocolIPSec : NEVPNProtocol {
  var authenticationMethod: NEVPNIKEAuthenticationMethod
  var useExtendedAuthentication: Bool
  @NSCopying var sharedSecretReference: NSData?
  var localIdentifier: String?
  var remoteIdentifier: String?
  init()
  init?(coder aDecoder: NSCoder)
}
class NWBonjourServiceEndpoint : NWEndpoint {
  convenience init(name: String, type: String, domain: String)
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  init()
}
class NWEndpoint : NSObject {
  init()
}
class NWHostEndpoint : NWEndpoint {
  convenience init(hostname: String, port: String)
  var hostname: String { get }
  var port: String { get }
  init()
}
enum NWPathStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Satisfied
  case Unsatisfied
  case Satisfiable
}
class NWPath : NSObject {
  var status: NWPathStatus { get }
  var expensive: Bool { get }
  func isEqualToPath(path: NWPath) -> Bool
  init()
}
enum NWTCPConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Connecting
  case Waiting
  case Connected
  case Disconnected
  case Cancelled
}
class NWTCPConnection : NSObject {
  init(upgradeForConnection connection: NWTCPConnection)
  var state: NWTCPConnectionState { get }
  var viable: Bool { get }
  var hasBetterPath: Bool { get }
  var endpoint: NWEndpoint { get }
  var connectedPath: NWPath? { get }
  var localAddress: NWEndpoint? { get }
  var remoteAddress: NWEndpoint? { get }
  var txtRecord: NSData? { get }
  var error: NSError? { get }
  func cancel()
  func readLength(length: Int, completionHandler completion: (NSData?, NSError?) -> Void)
  func readMinimumLength(minimum: Int, maximumLength maximum: Int, completionHandler completion: (NSData?, NSError?) -> Void)
  func write(data: NSData, completionHandler completion: (NSError?) -> Void)
  func writeClose()
  init()
}
protocol NWTCPConnectionAuthenticationDelegate : NSObjectProtocol {
  optional func shouldProvideIdentityForConnection(connection: NWTCPConnection) -> Bool
  optional func provideIdentityForConnection(connection: NWTCPConnection, completionHandler completion: (SecIdentity, [AnyObject]) -> Void)
  optional func shouldEvaluateTrustForConnection(connection: NWTCPConnection) -> Bool
  optional func evaluateTrustForConnection(connection: NWTCPConnection, peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}
class NWTLSParameters : NSObject {
  @NSCopying var TLSSessionID: NSData?
  var SSLCipherSuites: Set<NSNumber>?
  var minimumSSLProtocolVersion: Int
  var maximumSSLProtocolVersion: Int
  init()
}
enum NWUDPSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Waiting
  case Preparing
  case Ready
  case Failed
  case Cancelled
}
class NWUDPSession : NSObject {
  init(upgradeForSession session: NWUDPSession)
  var state: NWUDPSessionState { get }
  var endpoint: NWEndpoint { get }
  var resolvedEndpoint: NWEndpoint? { get }
  var viable: Bool { get }
  var hasBetterPath: Bool { get }
  var currentPath: NWPath? { get }
  func tryNextResolvedEndpoint()
  var maximumDatagramLength: Int { get }
  func setReadHandler(handler: ([NSData]?, NSError?) -> Void, maxDatagrams: Int)
  func writeMultipleDatagrams(datagramArray: [NSData], completionHandler: (NSError?) -> Void)
  func writeDatagram(datagram: NSData, completionHandler: (NSError?) -> Void)
  func cancel()
  init()
}
