
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
class NEAppProxyFlow : Object {
  func openWithLocalEndpoint(localEndpoint: NWHostEndpoint?, completionHandler: (Error?) -> Void)
  func closeReadWithError(error: Error?)
  func closeWriteWithError(error: Error?)
  var metaData: NEFlowMetaData { get }
  init()
}
class NEFlowMetaData : Object {
  var sourceAppUniqueIdentifier: Data { get }
  var sourceAppSigningIdentifier: String { get }
  init()
}
class NEAppProxyProvider : NETunnelProvider {
  func startProxy(options options: [String : AnyObject]? = [:], completionHandler: (Error?) -> Void)
  func stopProxyWith(reason: NEProviderStopReason, completionHandler: () -> Void)
  func cancelProxyWithError(error: Error?)
  func handleNewFlow(flow: NEAppProxyFlow) -> Bool
  init()
}
class NEAppProxyProviderManager : NETunnelProviderManager {
  class func loadAllFromPreferencesWithCompletionHandler(completionHandler: ([NEAppProxyProviderManager]?, Error?) -> Void)
  init()
}
class NEAppProxyTCPFlow : NEAppProxyFlow {
  func readDataWithCompletionHandler(completionHandler: (Data?, Error?) -> Void)
  func write(data: Data, withCompletionHandler completionHandler: (Error?) -> Void)
  var remoteEndpoint: NWEndpoint { get }
  init()
}
class NEAppProxyUDPFlow : NEAppProxyFlow {
  func readDatagramsWithCompletionHandler(completionHandler: ([Data]?, [NWEndpoint]?, Error?) -> Void)
  func writeDatagrams(datagrams: [Data], sentBy remoteEndpoints: [NWEndpoint], completionHandler: (Error?) -> Void)
  var localEndpoint: NWEndpoint? { get }
  init()
}
class NEAppRule : Object, SecureCoding, Copying {
  init(signingIdentifier: String, designatedRequirement: String)
  var matchSigningIdentifier: String { get }
  var matchDesignatedRequirement: String { get }
  var matchPath: String?
  var matchDomains: [AnyObject]?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEDNSSettings : Object, SecureCoding, Copying {
  init(servers: [String])
  var servers: [String] { get }
  var searchDomains: [String]?
  var domainName: String?
  var matchDomains: [String]?
  var matchDomainsNoSearch: Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
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
class NEFilterManager : Object {
  class func shared() -> NEFilterManager
  func loadFromPreferencesWithCompletionHandler(completionHandler: (Error?) -> Void)
  func removeFromPreferencesWithCompletionHandler(completionHandler: (Error?) -> Void)
  func saveToPreferencesWithCompletionHandler(completionHandler: (Error?) -> Void)
  var localizedDescription: String?
  var providerConfiguration: NEFilterProviderConfiguration?
  var isEnabled: Bool
  init()
}
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }
class NEFilterProviderConfiguration : Object, SecureCoding, Copying {
  var filterBrowsers: Bool
  var filterSockets: Bool
  var vendorConfiguration: [String : AnyObject]?
  var serverAddress: String?
  var username: String?
  var organization: String?
  @NSCopying var passwordReference: Data?
  @NSCopying var identityReference: Data?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEIPv4Settings : Object, SecureCoding, Copying {
  init(addresses: [String], subnetMasks: [String])
  var addresses: [String] { get }
  var subnetMasks: [String] { get }
  var includedRoutes: [NEIPv4Route]?
  var excludedRoutes: [NEIPv4Route]?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEIPv4Route : Object, SecureCoding, Copying {
  init(destinationAddress address: String, subnetMask: String)
  var destinationAddress: String { get }
  var destinationSubnetMask: String { get }
  var gatewayAddress: String?
  class func defaultRoute() -> NEIPv4Route
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEIPv6Settings : Object, SecureCoding, Copying {
  init(addresses: [String], networkPrefixLengths: [Number])
  var addresses: [String] { get }
  var networkPrefixLengths: [Number] { get }
  var includedRoutes: [NEIPv6Route]?
  var excludedRoutes: [NEIPv6Route]?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEIPv6Route : Object, SecureCoding, Copying {
  init(destinationAddress address: String, networkPrefixLength: Number)
  var destinationAddress: String { get }
  var destinationNetworkPrefixLength: Number { get }
  var gatewayAddress: String?
  class func defaultRoute() -> NEIPv6Route
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
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
class NEOnDemandRule : Object, SecureCoding, Copying {
  var action: NEOnDemandRuleAction { get }
  var dnsSearchDomainMatch: [String]?
  var dnsServerAddressMatch: [String]?
  var interfaceTypeMatch: NEOnDemandRuleInterfaceType
  var ssidMatch: [String]?
  @NSCopying var probeURL: URL?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEOnDemandRuleConnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: Coder)
}
class NEOnDemandRuleDisconnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: Coder)
}
class NEOnDemandRuleIgnore : NEOnDemandRule {
  init()
  init?(coder aDecoder: Coder)
}
class NEOnDemandRuleEvaluateConnection : NEOnDemandRule {
  var connectionRules: [NEEvaluateConnectionRule]?
  init()
  init?(coder aDecoder: Coder)
}
enum NEEvaluateConnectionRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ConnectIfNeeded
  case NeverConnect
}
class NEEvaluateConnectionRule : Object, SecureCoding, Copying {
  init(matchDomains domains: [String], andAction action: NEEvaluateConnectionRuleAction)
  var action: NEEvaluateConnectionRuleAction { get }
  var matchDomains: [String] { get }
  var useDNSServers: [String]?
  @NSCopying var probeURL: URL?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEPacketTunnelFlow : Object {
  func readPacketsWithCompletionHandler(completionHandler: ([Data], [Number]) -> Void)
  func writePackets(packets: [Data], withProtocols protocols: [Number]) -> Bool
  init()
}
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {
  @NSCopying var iPv4Settings: NEIPv4Settings?
  @NSCopying var iPv6Settings: NEIPv6Settings?
  @NSCopying var tunnelOverheadBytes: Number?
  @NSCopying var mtu: Number?
  init(tunnelRemoteAddress address: String)
  init()
  init?(coder aDecoder: Coder)
}
class NEPacketTunnelProvider : NETunnelProvider {
  func startTunnel(options options: [String : Object]? = [:], completionHandler: (Error?) -> Void)
  func stopTunnelWith(reason: NEProviderStopReason, completionHandler: () -> Void)
  func cancelTunnelWithError(error: Error?)
  var packetFlow: NEPacketTunnelFlow { get }
  func createTCPConnectionThroughTunnelTo(remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  func createUDPSessionThroughTunnelTo(remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
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
class NEProvider : Object {
  func sleepWithCompletionHandler(completionHandler: () -> Void)
  func wake()
  func createTCPConnectionTo(remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  func createUDPSessionTo(remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
  var defaultPath: NWPath? { get }
  init()
}
class NEProxyServer : Object, SecureCoding, Copying {
  init(address: String, port: Int)
  var address: String { get }
  var port: Int { get }
  var authenticationRequired: Bool
  var username: String?
  var password: String?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEProxySettings : Object, SecureCoding, Copying {
  var autoProxyConfigurationEnabled: Bool
  @NSCopying var proxyAutoConfigurationURL: URL?
  var proxyAutoConfigurationJavaScript: String?
  var httpEnabled: Bool
  @NSCopying var httpServer: NEProxyServer?
  var httpsEnabled: Bool
  @NSCopying var httpsServer: NEProxyServer?
  var excludeSimpleHostnames: Bool
  var exceptionList: [String]?
  var matchDomains: [String]?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NETunnelNetworkSettings : Object, SecureCoding, Copying {
  init(tunnelRemoteAddress address: String)
  var tunnelRemoteAddress: String { get }
  @NSCopying var dnsSettings: NEDNSSettings?
  @NSCopying var proxySettings: NEProxySettings?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
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
  func handleAppMessage(messageData: Data, completionHandler: ((Data?) -> Void)? = nil)
  func setTunnelNetworkSettings(tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler: ((Error?) -> Void)? = nil)
  var protocolConfiguration: NEVPNProtocol { get }
  var appRules: [NEAppRule]? { get }
  var routingMethod: NETunnelProviderRoutingMethod { get }
  var reasserting: Bool
  init()
}
class NETunnelProviderManager : NEVPNManager {
  class func loadAllFromPreferencesWithCompletionHandler(completionHandler: ([NETunnelProviderManager]?, Error?) -> Void)
  func copyAppRules() -> [NEAppRule]?
  var routingMethod: NETunnelProviderRoutingMethod { get }
  init()
}
class NETunnelProviderProtocol : NEVPNProtocol {
  var providerConfiguration: [String : AnyObject]?
  var providerBundleIdentifier: String?
  init()
  init?(coder aDecoder: Coder)
}
class NETunnelProviderSession : NEVPNConnection {
  func startTunnel(options options: [String : AnyObject]? = [:]) throws
  func stopTunnel()
  func sendProviderMessage(messageData: Data, responseHandler: ((Data?) -> Void)? = nil) throws
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
class NEVPNConnection : Object {
  func startVPNTunnel() throws
  func startVPNTunnel(options options: [String : Object]? = [:]) throws
  func stopVPNTunnel()
  var status: NEVPNStatus { get }
  var connectedDate: Date? { get }
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
class NEVPNManager : Object {
  class func shared() -> NEVPNManager
  func loadFromPreferencesWithCompletionHandler(completionHandler: (Error?) -> Void)
  func removeFromPreferences(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  func saveToPreferences(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  func setAuthorization(authorization: AuthorizationRef)
  var onDemandRules: [NEOnDemandRule]?
  var isOnDemandEnabled: Bool
  var localizedDescription: String?
  var `protocol`: NEVPNProtocol?
  var protocolConfiguration: NEVPNProtocol?
  var connection: NEVPNConnection { get }
  var isEnabled: Bool
  init()
}
class NEVPNProtocol : Object, Copying, SecureCoding {
  var serverAddress: String?
  var username: String?
  @NSCopying var passwordReference: Data?
  @NSCopying var identityReference: Data?
  @NSCopying var identityData: Data?
  var identityDataPassword: String?
  var disconnectOnSleep: Bool
  @NSCopying var proxySettings: NEProxySettings?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
class NEVPNIKEv2SecurityAssociationParameters : Object, SecureCoding, Copying {
  var encryptionAlgorithm: NEVPNIKEv2EncryptionAlgorithm
  var integrityAlgorithm: NEVPNIKEv2IntegrityAlgorithm
  var diffieHellmanGroup: NEVPNIKEv2DiffieHellmanGroup
  var lifetimeMinutes: Int32
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEVPNProtocolIKEv2 : NEVPNProtocolIPSec {
  var deadPeerDetectionRate: NEVPNIKEv2DeadPeerDetectionRate
  var serverCertificateIssuerCommonName: String?
  var serverCertificateCommonName: String?
  var certificateType: NEVPNIKEv2CertificateType
  var useConfigurationAttributeInternalIPSubnet: Bool
  var ikeSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  var childSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  var disableMOBIKE: Bool
  var disableRedirect: Bool
  var enablePFS: Bool
  var enableRevocationCheck: Bool
  var strictRevocationCheck: Bool
  init()
  init?(coder aDecoder: Coder)
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
  @NSCopying var sharedSecretReference: Data?
  var localIdentifier: String?
  var remoteIdentifier: String?
  init()
  init?(coder aDecoder: Coder)
}
class NWBonjourServiceEndpoint : NWEndpoint {
  convenience init(name: String, type: String, domain: String)
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  init()
}
class NWEndpoint : Object {
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
class NWPath : Object {
  var status: NWPathStatus { get }
  var isExpensive: Bool { get }
  func isEqualTo(path: NWPath) -> Bool
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
class NWTCPConnection : Object {
  init(upgradeFor connection: NWTCPConnection)
  var state: NWTCPConnectionState { get }
  var isViable: Bool { get }
  var hasBetterPath: Bool { get }
  var endpoint: NWEndpoint { get }
  var connectedPath: NWPath? { get }
  var localAddress: NWEndpoint? { get }
  var remoteAddress: NWEndpoint? { get }
  var txtRecord: Data? { get }
  var error: Error? { get }
  func cancel()
  func readLength(length: Int, completionHandler completion: (Data?, Error?) -> Void)
  func readMinimumLength(minimum: Int, maximumLength maximum: Int, completionHandler completion: (Data?, Error?) -> Void)
  func write(data: Data, completionHandler completion: (Error?) -> Void)
  func writeClose()
  init()
}
protocol NWTCPConnectionAuthenticationDelegate : ObjectProtocol {
  optional func shouldProvideIdentityFor(connection: NWTCPConnection) -> Bool
  optional func provideIdentityFor(connection: NWTCPConnection, completionHandler completion: (SecIdentity, [AnyObject]) -> Void)
  optional func shouldEvaluateTrustFor(connection: NWTCPConnection) -> Bool
  optional func evaluateTrustFor(connection: NWTCPConnection, peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}
class NWTLSParameters : Object {
  @NSCopying var tlsSessionID: Data?
  var sslCipherSuites: Set<Number>?
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
class NWUDPSession : Object {
  init(upgradeFor session: NWUDPSession)
  var state: NWUDPSessionState { get }
  var endpoint: NWEndpoint { get }
  var resolvedEndpoint: NWEndpoint? { get }
  var isViable: Bool { get }
  var hasBetterPath: Bool { get }
  var currentPath: NWPath? { get }
  func tryNextResolvedEndpoint()
  var maximumDatagramLength: Int { get }
  func setReadHandler(handler: ([Data]?, Error?) -> Void, maxDatagrams: Int)
  func writeMultipleDatagrams(datagramArray: [Data], completionHandler: (Error?) -> Void)
  func writeDatagram(datagram: Data, completionHandler: (Error?) -> Void)
  func cancel()
  init()
}
