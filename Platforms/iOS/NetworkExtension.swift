
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
  init(signingIdentifier: String)
  var matchSigningIdentifier: String { get }
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
class NEFilterControlProvider : NEFilterProvider {
  var remediationMap: [String : [String : Object]]?
  var urlAppendStringMap: [String : String]?
  func handleRemediationFor(flow: NEFilterFlow, completionHandler: (NEFilterControlVerdict) -> Void)
  func handleNewFlow(flow: NEFilterFlow, completionHandler: (NEFilterControlVerdict) -> Void)
  func notifyRulesChanged()
  init()
}
class NEFilterDataProvider : NEFilterProvider {
  func handleNewFlow(flow: NEFilterFlow) -> NEFilterNewFlowVerdict
  func handleInboundDataFrom(flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: Data) -> NEFilterDataVerdict
  func handleOutboundDataFrom(flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: Data) -> NEFilterDataVerdict
  func handleInboundDataCompleteFor(flow: NEFilterFlow) -> NEFilterDataVerdict
  func handleOutboundDataCompleteFor(flow: NEFilterFlow) -> NEFilterDataVerdict
  func handleRemediationFor(flow: NEFilterFlow) -> NEFilterRemediationVerdict
  func handleRulesChanged()
  init()
}
class NEFilterDataVerdict : NEFilterVerdict, SecureCoding, Copying {
  class func allow() -> NEFilterDataVerdict
  class func drop() -> NEFilterDataVerdict
  class func remediateVerdictWithRemediationURLMapKey(remediationURLMapKey: String?, remediationButtonTextMapKey: String?) -> NEFilterDataVerdict
   init(passBytes: Int, peekBytes: Int)
  class func needRules() -> NEFilterDataVerdict
  init()
  init?(coder aDecoder: Coder)
}
class NEFilterRemediationVerdict : NEFilterVerdict, SecureCoding, Copying {
  class func allow() -> NEFilterRemediationVerdict
  class func drop() -> NEFilterRemediationVerdict
  class func needRules() -> NEFilterRemediationVerdict
  init()
  init?(coder aDecoder: Coder)
}
var NEFilterFlowBytesMax: UInt64 { get }
class NEFilterFlow : Object, SecureCoding, Copying {
  var url: URL? { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEFilterBrowserFlow : NEFilterFlow, SecureCoding, Copying {
  var request: URLRequest { get }
  var response: URLResponse? { get }
  var parentURL: URL? { get }
  init()
  init?(coder aDecoder: Coder)
}
class NEFilterSocketFlow : NEFilterFlow, SecureCoding, Copying {
  var remoteEndpoint: NWEndpoint { get }
  var localEndpoint: NWEndpoint { get }
  var socketFamily: Int32
  var socketType: Int32
  var socketProtocol: Int32
  init()
  init?(coder aDecoder: Coder)
}
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
let NEFilterProviderRemediationMapRemediationURLs: String
let NEFilterProviderRemediationMapRemediationButtonTexts: String
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }
class NEFilterProvider : NEProvider {
  func startFilterWithCompletionHandler(completionHandler: (Error?) -> Void)
  func stopFilterWith(reason: NEProviderStopReason, completionHandler: () -> Void)
  var filterConfiguration: NEFilterProviderConfiguration { get }
  init()
}
class NEFilterVerdict : Object, SecureCoding, Copying {
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NEFilterNewFlowVerdict : NEFilterVerdict, SecureCoding, Copying {
  class func needRules() -> NEFilterNewFlowVerdict
  class func allow() -> NEFilterNewFlowVerdict
  class func drop() -> NEFilterNewFlowVerdict
  class func remediateVerdictWithRemediationURLMapKey(remediationURLMapKey: String, remediationButtonTextMapKey: String) -> NEFilterNewFlowVerdict
  class func urlAppendStringVerdictWithMapKey(urlAppendMapKey: String) -> NEFilterNewFlowVerdict
  class func filterDataVerdictWithFilterInbound(filterInbound: Bool, peekInboundBytes: Int, filterOutbound: Bool, peekOutboundBytes: Int) -> NEFilterNewFlowVerdict
  init()
  init?(coder aDecoder: Coder)
}
class NEFilterControlVerdict : NEFilterNewFlowVerdict, SecureCoding, Copying {
  class func allowWithUpdateRules(updateRules: Bool) -> NEFilterControlVerdict
  class func dropWithUpdateRules(updateRules: Bool) -> NEFilterControlVerdict
  class func updateRules() -> NEFilterControlVerdict
  init()
  init?(coder aDecoder: Coder)
}
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
enum NEHotspotHelperCommandType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case FilterScanList
  case Evaluate
  case Authenticate
  case PresentUI
  case Maintain
  case Logoff
}
enum NEHotspotHelperResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case Failure
  case UIRequired
  case CommandNotRecognized
  case AuthenticationRequired
  case UnsupportedNetwork
  case TemporaryFailure
}
enum NEHotspotHelperConfidence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Low
  case High
}
class NEHotspotNetwork : Object {
  var ssid: String { get }
  var bssid: String { get }
  var signalStrength: Double { get }
  var isSecure: Bool { get }
  var didAutoJoin: Bool { get }
  var didJustJoin: Bool { get }
  var isChosenHelper: Bool { get }
  func setConfidence(confidence: NEHotspotHelperConfidence)
  func setPassword(password: String)
  init()
}
class NEHotspotHelperCommand : Object {
  var commandType: NEHotspotHelperCommandType { get }
  var network: NEHotspotNetwork? { get }
  var networkList: [NEHotspotNetwork]? { get }
  func createResponse(result: NEHotspotHelperResult) -> NEHotspotHelperResponse
  func createTCPConnection(endpoint: NWEndpoint) -> NWTCPConnection
  func createUDPSession(endpoint: NWEndpoint) -> NWUDPSession
  init()
}
class NEHotspotHelperResponse : Object {
  func setNetwork(network: NEHotspotNetwork)
  func setNetworkList(networkList: [NEHotspotNetwork])
  func deliver()
  init()
}
typealias NEHotspotHelperHandler = (NEHotspotHelperCommand) -> Void
let kNEHotspotHelperOptionDisplayName: String
class NEHotspotHelper : Object {
  class func register(options options: [String : Object]? = [:], queue: dispatch_queue_t, handler: NEHotspotHelperHandler) -> Bool
  class func logoff(network: NEHotspotNetwork) -> Bool
  class func supportedNetworkInterfaces() -> [AnyObject]
  init()
}
extension MutableURLRequest {
  func bindTo(command: NEHotspotHelperCommand)
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
  case WiFi
  case Cellular
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
