
let kCFStreamErrorDomainFTP: Int32
let kCFStreamPropertyFTPUserName: CFString
let kCFStreamPropertyFTPPassword: CFString
let kCFStreamPropertyFTPUsePassiveMode: CFString
let kCFStreamPropertyFTPResourceSize: CFString
let kCFStreamPropertyFTPFetchResourceInfo: CFString
let kCFStreamPropertyFTPFileTransferOffset: CFString
let kCFStreamPropertyFTPAttemptPersistentConnection: CFString
let kCFStreamPropertyFTPProxy: CFString
let kCFStreamPropertyFTPProxyHost: CFString
let kCFStreamPropertyFTPProxyPort: CFString
let kCFStreamPropertyFTPProxyUser: CFString
let kCFStreamPropertyFTPProxyPassword: CFString
let kCFFTPResourceMode: CFString
let kCFFTPResourceName: CFString
let kCFFTPResourceOwner: CFString
let kCFFTPResourceGroup: CFString
let kCFFTPResourceLink: CFString
let kCFFTPResourceSize: CFString
let kCFFTPResourceType: CFString
let kCFFTPResourceModDate: CFString
func CFReadStreamCreateWithFTPURL(alloc: CFAllocator?, _ ftpURL: CFURL) -> Unmanaged<CFReadStream>
func CFFTPCreateParsedResourceListing(alloc: CFAllocator?, _ buffer: UnsafePointer<UInt8>, _ bufferLength: CFIndex, _ parsed: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> CFIndex
func CFWriteStreamCreateWithFTPURL(alloc: CFAllocator?, _ ftpURL: CFURL) -> Unmanaged<CFWriteStream>
class CFHTTPAuthentication {
}
typealias CFHTTPAuthenticationRef = CFHTTPAuthentication
enum CFStreamErrorHTTPAuthentication : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TypeUnsupported
  case BadUserName
  case BadPassword
}
let kCFHTTPAuthenticationUsername: CFString
let kCFHTTPAuthenticationPassword: CFString
let kCFHTTPAuthenticationAccountDomain: CFString
func CFHTTPAuthenticationGetTypeID() -> CFTypeID
func CFHTTPAuthenticationCreateFromResponse(alloc: CFAllocator?, _ response: CFHTTPMessage) -> Unmanaged<CFHTTPAuthentication>
func CFHTTPAuthenticationIsValid(auth: CFHTTPAuthentication, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFHTTPAuthenticationAppliesToRequest(auth: CFHTTPAuthentication, _ request: CFHTTPMessage) -> Bool
func CFHTTPAuthenticationRequiresOrderedRequests(auth: CFHTTPAuthentication) -> Bool
func CFHTTPMessageApplyCredentials(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ username: CFString?, _ password: CFString?, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFHTTPMessageApplyCredentialDictionary(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ dict: CFDictionary, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFHTTPAuthenticationCopyRealm(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
func CFHTTPAuthenticationCopyDomains(auth: CFHTTPAuthentication) -> Unmanaged<CFArray>
func CFHTTPAuthenticationCopyMethod(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
func CFHTTPAuthenticationRequiresUserNameAndPassword(auth: CFHTTPAuthentication) -> Bool
func CFHTTPAuthenticationRequiresAccountDomain(auth: CFHTTPAuthentication) -> Bool
let kCFHTTPVersion1_0: CFString
let kCFHTTPVersion1_1: CFString
let kCFHTTPVersion2_0: CFString
let kCFHTTPAuthenticationSchemeBasic: CFString
let kCFHTTPAuthenticationSchemeDigest: CFString
let kCFHTTPAuthenticationSchemeNTLM: CFString
let kCFHTTPAuthenticationSchemeKerberos: CFString
let kCFHTTPAuthenticationSchemeNegotiate: CFString
let kCFHTTPAuthenticationSchemeNegotiate2: CFString
let kCFHTTPAuthenticationSchemeXMobileMeAuthToken: CFString
let kCFHTTPAuthenticationSchemeOAuth1: CFString
class CFHTTPMessage {
}
typealias CFHTTPMessageRef = CFHTTPMessage
func CFHTTPMessageGetTypeID() -> CFTypeID
func CFHTTPMessageCreateRequest(alloc: CFAllocator?, _ requestMethod: CFString, _ url: CFURL, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
func CFHTTPMessageCreateResponse(alloc: CFAllocator?, _ statusCode: CFIndex, _ statusDescription: CFString?, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
func CFHTTPMessageCreateEmpty(alloc: CFAllocator?, _ isRequest: Bool) -> Unmanaged<CFHTTPMessage>
func CFHTTPMessageCreateCopy(alloc: CFAllocator?, _ message: CFHTTPMessage) -> Unmanaged<CFHTTPMessage>
func CFHTTPMessageIsRequest(message: CFHTTPMessage) -> Bool
func CFHTTPMessageCopyVersion(message: CFHTTPMessage) -> Unmanaged<CFString>
func CFHTTPMessageCopyBody(message: CFHTTPMessage) -> Unmanaged<CFData>?
func CFHTTPMessageSetBody(message: CFHTTPMessage, _ bodyData: CFData)
func CFHTTPMessageCopyHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString) -> Unmanaged<CFString>?
func CFHTTPMessageCopyAllHeaderFields(message: CFHTTPMessage) -> Unmanaged<CFDictionary>?
func CFHTTPMessageSetHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString, _ value: CFString?)
func CFHTTPMessageAppendBytes(message: CFHTTPMessage, _ newBytes: UnsafePointer<UInt8>, _ numBytes: CFIndex) -> Bool
func CFHTTPMessageIsHeaderComplete(message: CFHTTPMessage) -> Bool
func CFHTTPMessageCopySerializedMessage(message: CFHTTPMessage) -> Unmanaged<CFData>?
func CFHTTPMessageCopyRequestURL(request: CFHTTPMessage) -> Unmanaged<CFURL>?
func CFHTTPMessageCopyRequestMethod(request: CFHTTPMessage) -> Unmanaged<CFString>?
func CFHTTPMessageAddAuthentication(request: CFHTTPMessage, _ authenticationFailureResponse: CFHTTPMessage?, _ username: CFString, _ password: CFString, _ authenticationScheme: CFString?, _ forProxy: Bool) -> Bool
func CFHTTPMessageGetResponseStatusCode(response: CFHTTPMessage) -> CFIndex
func CFHTTPMessageCopyResponseStatusLine(response: CFHTTPMessage) -> Unmanaged<CFString>?
let kCFStreamErrorDomainHTTP: Int32
enum CFStreamErrorHTTP : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case ParseFailure
  case RedirectionLoop
  case BadURL
}
let kCFStreamPropertyHTTPResponseHeader: CFString
let kCFStreamPropertyHTTPFinalURL: CFString
let kCFStreamPropertyHTTPFinalRequest: CFString
let kCFStreamPropertyHTTPProxy: CFString
let kCFStreamPropertyHTTPProxyHost: CFString
let kCFStreamPropertyHTTPProxyPort: CFString
let kCFStreamPropertyHTTPSProxyHost: CFString
let kCFStreamPropertyHTTPSProxyPort: CFString
let kCFStreamPropertyHTTPShouldAutoredirect: CFString
let kCFStreamPropertyHTTPAttemptPersistentConnection: CFString
let kCFStreamPropertyHTTPRequestBytesWrittenCount: CFString
func CFReadStreamCreateForHTTPRequest(alloc: CFAllocator?, _ request: CFHTTPMessage) -> Unmanaged<CFReadStream>
func CFReadStreamCreateForStreamedHTTPRequest(alloc: CFAllocator?, _ requestHeaders: CFHTTPMessage, _ requestBody: CFReadStream) -> Unmanaged<CFReadStream>
class CFHost {
}
typealias CFHostRef = CFHost
let kCFStreamErrorDomainNetDB: Int32
let kCFStreamErrorDomainSystemConfiguration: Int32
enum CFHostInfoType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Addresses
  case Names
  case Reachability
}
struct CFHostClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack
}
typealias CFHostClientCallBack = @convention(c) (CFHost, CFHostInfoType, UnsafePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
func CFHostGetTypeID() -> CFTypeID
func CFHostCreateWithName(allocator: CFAllocator?, _ hostname: CFString) -> Unmanaged<CFHost>
func CFHostCreateWithAddress(allocator: CFAllocator?, _ addr: CFData) -> Unmanaged<CFHost>
func CFHostCreateCopy(alloc: CFAllocator?, _ host: CFHost) -> Unmanaged<CFHost>
func CFHostStartInfoResolution(theHost: CFHost, _ info: CFHostInfoType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFHostGetAddressing(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
func CFHostGetNames(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
func CFHostGetReachability(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFData>?
func CFHostCancelInfoResolution(theHost: CFHost, _ info: CFHostInfoType)
func CFHostSetClient(theHost: CFHost, _ clientCB: CFHostClientCallBack?, _ clientContext: UnsafeMutablePointer<CFHostClientContext>) -> Bool
func CFHostScheduleWithRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func CFHostUnscheduleFromRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
class CFNetDiagnostic {
}
typealias CFNetDiagnosticRef = CFNetDiagnostic
enum CFNetDiagnosticStatusValues : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NoErr
  case Err
  case ConnectionUp
  case ConnectionIndeterminate
  case ConnectionDown
}
typealias CFNetDiagnosticStatus = CFIndex
func CFNetDiagnosticCreateWithStreams(alloc: CFAllocator?, _ readStream: CFReadStream?, _ writeStream: CFWriteStream?) -> Unmanaged<CFNetDiagnostic>
func CFNetDiagnosticCreateWithURL(alloc: CFAllocator, _ url: CFURL) -> Unmanaged<CFNetDiagnostic>
func CFNetDiagnosticSetName(details: CFNetDiagnostic, _ name: CFString)
func CFNetDiagnosticDiagnoseProblemInteractively(details: CFNetDiagnostic) -> CFNetDiagnosticStatus
func CFNetDiagnosticCopyNetworkStatusPassively(details: CFNetDiagnostic, _ description: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFNetDiagnosticStatus
class CFNetService {
}
typealias CFNetServiceRef = CFNetService
typealias CFNetServiceMonitorRef = CFNetServiceMonitor
class CFNetServiceMonitor {
}
class CFNetServiceBrowser {
}
typealias CFNetServiceBrowserRef = CFNetServiceBrowser
let kCFStreamErrorDomainMach: Int32
let kCFStreamErrorDomainNetServices: Int32
enum CFNetServicesError : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Collision
  case NotFound
  case InProgress
  case BadArgument
  case Cancel
  case Invalid
  case Timeout
}
enum CFNetServiceMonitorType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TXT
}
struct CFNetServiceRegisterFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var NoAutoRename: CFNetServiceRegisterFlags { get }
}
struct CFNetServiceBrowserFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var MoreComing: CFNetServiceBrowserFlags { get }
  static var IsDomain: CFNetServiceBrowserFlags { get }
  static var IsDefault: CFNetServiceBrowserFlags { get }
  static var Remove: CFNetServiceBrowserFlags { get }
}
struct CFNetServiceClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias CFNetServiceClientCallBack = @convention(c) (CFNetService, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceMonitorClientCallBack = @convention(c) (CFNetServiceMonitor, CFNetService, CFNetServiceMonitorType, CFData, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceBrowserClientCallBack = @convention(c) (CFNetServiceBrowser, CFOptionFlags, AnyObject, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
func CFNetServiceGetTypeID() -> CFTypeID
func CFNetServiceMonitorGetTypeID() -> CFTypeID
func CFNetServiceBrowserGetTypeID() -> CFTypeID
func CFNetServiceCreate(alloc: CFAllocator?, _ domain: CFString, _ serviceType: CFString, _ name: CFString, _ port: Int32) -> Unmanaged<CFNetService>
func CFNetServiceCreateCopy(alloc: CFAllocator?, _ service: CFNetService) -> Unmanaged<CFNetService>
func CFNetServiceGetDomain(theService: CFNetService) -> Unmanaged<CFString>
func CFNetServiceGetType(theService: CFNetService) -> Unmanaged<CFString>
func CFNetServiceGetName(theService: CFNetService) -> Unmanaged<CFString>
func CFNetServiceRegisterWithOptions(theService: CFNetService, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFNetServiceResolveWithTimeout(theService: CFNetService, _ timeout: CFTimeInterval, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFNetServiceCancel(theService: CFNetService)
func CFNetServiceGetTargetHost(theService: CFNetService) -> Unmanaged<CFString>?
func CFNetServiceGetPortNumber(theService: CFNetService) -> Int32
func CFNetServiceGetAddressing(theService: CFNetService) -> Unmanaged<CFArray>?
func CFNetServiceGetTXTData(theService: CFNetService) -> Unmanaged<CFData>?
func CFNetServiceSetTXTData(theService: CFNetService, _ txtRecord: CFData) -> Bool
func CFNetServiceCreateDictionaryWithTXTData(alloc: CFAllocator?, _ txtRecord: CFData) -> Unmanaged<CFDictionary>?
func CFNetServiceCreateTXTDataWithDictionary(alloc: CFAllocator?, _ keyValuePairs: CFDictionary) -> Unmanaged<CFData>?
func CFNetServiceSetClient(theService: CFNetService, _ clientCB: CFNetServiceClientCallBack?, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Bool
func CFNetServiceScheduleWithRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func CFNetServiceUnscheduleFromRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func CFNetServiceMonitorCreate(alloc: CFAllocator?, _ theService: CFNetService, _ clientCB: CFNetServiceMonitorClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceMonitor>
func CFNetServiceMonitorInvalidate(monitor: CFNetServiceMonitor)
func CFNetServiceMonitorStart(monitor: CFNetServiceMonitor, _ recordType: CFNetServiceMonitorType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFNetServiceMonitorStop(monitor: CFNetServiceMonitor, _ error: UnsafeMutablePointer<CFStreamError>)
func CFNetServiceMonitorScheduleWithRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func CFNetServiceMonitorUnscheduleFromRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func CFNetServiceBrowserCreate(alloc: CFAllocator?, _ clientCB: CFNetServiceBrowserClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceBrowser>
func CFNetServiceBrowserInvalidate(browser: CFNetServiceBrowser)
func CFNetServiceBrowserSearchForDomains(browser: CFNetServiceBrowser, _ registrationDomains: Bool, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFNetServiceBrowserSearchForServices(browser: CFNetServiceBrowser, _ domain: CFString, _ serviceType: CFString, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
func CFNetServiceBrowserStopSearch(browser: CFNetServiceBrowser, _ error: UnsafeMutablePointer<CFStreamError>)
func CFNetServiceBrowserScheduleWithRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func CFNetServiceBrowserUnscheduleFromRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
let kCFErrorDomainCFNetwork: CFString
let kCFErrorDomainWinSock: CFString
enum CFNetworkErrors : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case CFHostErrorHostNotFound
  case CFHostErrorUnknown
  case CFSOCKSErrorUnknownClientVersion
  case CFSOCKSErrorUnsupportedServerVersion
  case CFSOCKS4ErrorRequestFailed
  case CFSOCKS4ErrorIdentdFailed
  case CFSOCKS4ErrorIdConflict
  case CFSOCKS4ErrorUnknownStatusCode
  case CFSOCKS5ErrorBadState
  case CFSOCKS5ErrorBadResponseAddr
  case CFSOCKS5ErrorBadCredentials
  case CFSOCKS5ErrorUnsupportedNegotiationMethod
  case CFSOCKS5ErrorNoAcceptableMethod
  case CFFTPErrorUnexpectedStatusCode
  case CFErrorHTTPAuthenticationTypeUnsupported
  case CFErrorHTTPBadCredentials
  case CFErrorHTTPConnectionLost
  case CFErrorHTTPParseFailure
  case CFErrorHTTPRedirectionLoopDetected
  case CFErrorHTTPBadURL
  case CFErrorHTTPProxyConnectionFailure
  case CFErrorHTTPBadProxyCredentials
  case CFErrorPACFileError
  case CFErrorPACFileAuth
  case CFErrorHTTPSProxyConnectionFailure
  case CFStreamErrorHTTPSProxyFailureUnexpectedResponseToCONNECTMethod
  case CFURLErrorBackgroundSessionInUseByAnotherProcess
  case CFURLErrorBackgroundSessionWasDisconnected
  case CFURLErrorUnknown
  case CFURLErrorCancelled
  case CFURLErrorBadURL
  case CFURLErrorTimedOut
  case CFURLErrorUnsupportedURL
  case CFURLErrorCannotFindHost
  case CFURLErrorCannotConnectToHost
  case CFURLErrorNetworkConnectionLost
  case CFURLErrorDNSLookupFailed
  case CFURLErrorHTTPTooManyRedirects
  case CFURLErrorResourceUnavailable
  case CFURLErrorNotConnectedToInternet
  case CFURLErrorRedirectToNonExistentLocation
  case CFURLErrorBadServerResponse
  case CFURLErrorUserCancelledAuthentication
  case CFURLErrorUserAuthenticationRequired
  case CFURLErrorZeroByteResource
  case CFURLErrorCannotDecodeRawData
  case CFURLErrorCannotDecodeContentData
  case CFURLErrorCannotParseResponse
  case CFURLErrorInternationalRoamingOff
  case CFURLErrorCallIsActive
  case CFURLErrorDataNotAllowed
  case CFURLErrorRequestBodyStreamExhausted
  case CFURLErrorAppTransportSecurityRequiresSecureConnection
  case CFURLErrorFileDoesNotExist
  case CFURLErrorFileIsDirectory
  case CFURLErrorNoPermissionsToReadFile
  case CFURLErrorDataLengthExceedsMaximum
  case CFURLErrorSecureConnectionFailed
  case CFURLErrorServerCertificateHasBadDate
  case CFURLErrorServerCertificateUntrusted
  case CFURLErrorServerCertificateHasUnknownRoot
  case CFURLErrorServerCertificateNotYetValid
  case CFURLErrorClientCertificateRejected
  case CFURLErrorClientCertificateRequired
  case CFURLErrorCannotLoadFromNetwork
  case CFURLErrorCannotCreateFile
  case CFURLErrorCannotOpenFile
  case CFURLErrorCannotCloseFile
  case CFURLErrorCannotWriteToFile
  case CFURLErrorCannotRemoveFile
  case CFURLErrorCannotMoveFile
  case CFURLErrorDownloadDecodingFailedMidStream
  case CFURLErrorDownloadDecodingFailedToComplete
  case CFHTTPCookieCannotParseCookieFile
  case CFNetServiceErrorUnknown
  case CFNetServiceErrorCollision
  case CFNetServiceErrorNotFound
  case CFNetServiceErrorInProgress
  case CFNetServiceErrorBadArgument
  case CFNetServiceErrorCancel
  case CFNetServiceErrorInvalid
  case CFNetServiceErrorTimeout
  case CFNetServiceErrorDNSServiceFailure
}
let kCFURLErrorFailingURLErrorKey: CFString
let kCFURLErrorFailingURLStringErrorKey: CFString
let kCFGetAddrInfoFailureKey: CFString
let kCFSOCKSStatusCodeKey: CFString
let kCFSOCKSVersionKey: CFString
let kCFSOCKSNegotiationMethodKey: CFString
let kCFDNSServiceFailureKey: CFString
let kCFFTPStatusCodeKey: CFString
func CFNetworkCopySystemProxySettings() -> Unmanaged<CFDictionary>?
func CFNetworkCopyProxiesForURL(url: CFURL, _ proxySettings: CFDictionary) -> Unmanaged<CFArray>
typealias CFProxyAutoConfigurationResultCallback = @convention(c) (UnsafeMutablePointer<Void>, CFArray, CFError?) -> Void
func CFNetworkCopyProxiesForAutoConfigurationScript(proxyAutoConfigurationScript: CFString, _ targetURL: CFURL, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>?
func CFNetworkExecuteProxyAutoConfigurationScript(proxyAutoConfigurationScript: CFString, _ targetURL: CFURL, _ cb: CFProxyAutoConfigurationResultCallback, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Unmanaged<CFRunLoopSource>
func CFNetworkExecuteProxyAutoConfigurationURL(proxyAutoConfigURL: CFURL, _ targetURL: CFURL, _ cb: CFProxyAutoConfigurationResultCallback, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Unmanaged<CFRunLoopSource>
let kCFProxyTypeKey: CFString
let kCFProxyHostNameKey: CFString
let kCFProxyPortNumberKey: CFString
let kCFProxyAutoConfigurationURLKey: CFString
let kCFProxyAutoConfigurationJavaScriptKey: CFString
let kCFProxyUsernameKey: CFString
let kCFProxyPasswordKey: CFString
let kCFProxyTypeNone: CFString
let kCFProxyTypeHTTP: CFString
let kCFProxyTypeHTTPS: CFString
let kCFProxyTypeSOCKS: CFString
let kCFProxyTypeFTP: CFString
let kCFProxyTypeAutoConfigurationURL: CFString
let kCFProxyTypeAutoConfigurationJavaScript: CFString
let kCFProxyAutoConfigurationHTTPResponseKey: CFString
let kCFNetworkProxiesHTTPEnable: CFString
let kCFNetworkProxiesHTTPPort: CFString
let kCFNetworkProxiesHTTPProxy: CFString
let kCFNetworkProxiesProxyAutoConfigEnable: CFString
let kCFNetworkProxiesProxyAutoConfigURLString: CFString
let kCFNetworkProxiesProxyAutoConfigJavaScript: CFString
let kCFStreamPropertySSLContext: CFString
let kCFStreamPropertySSLPeerTrust: CFString
let kCFStreamSSLValidatesCertificateChain: CFString
let kCFStreamPropertySSLSettings: CFString
let kCFStreamSSLLevel: CFString
let kCFStreamSSLPeerName: CFString
let kCFStreamSSLCertificates: CFString
let kCFStreamSSLIsServer: CFString
let kCFStreamNetworkServiceType: CFString
let kCFStreamNetworkServiceTypeVideo: CFString
let kCFStreamNetworkServiceTypeVoice: CFString
let kCFStreamNetworkServiceTypeBackground: CFString
let kCFStreamNetworkServiceTypeVoIP: CFString
let kCFStreamPropertyNoCellular: CFString
let kCFStreamPropertyConnectionIsCellular: CFString
let kCFStreamErrorDomainWinSock: CFIndex
let kCFStreamErrorDomainSOCKS: Int32
func CFSocketStreamSOCKSGetErrorSubdomain(error: UnsafePointer<CFStreamError>) -> Int32
func CFSocketStreamSOCKSGetError(error: UnsafePointer<CFStreamError>) -> Int32
var kCFStreamErrorSOCKSSubDomainNone: Int { get }
var kCFStreamErrorSOCKSSubDomainVersionCode: Int { get }
var kCFStreamErrorSOCKS4SubDomainResponse: Int { get }
var kCFStreamErrorSOCKS5SubDomainUserPass: Int { get }
var kCFStreamErrorSOCKS5SubDomainMethod: Int { get }
var kCFStreamErrorSOCKS5SubDomainResponse: Int { get }
var kCFStreamErrorSOCKS5BadResponseAddr: Int { get }
var kCFStreamErrorSOCKS5BadState: Int { get }
var kCFStreamErrorSOCKSUnknownClientVersion: Int { get }
var kCFStreamErrorSOCKS4RequestFailed: Int { get }
var kCFStreamErrorSOCKS4IdentdFailed: Int { get }
var kCFStreamErrorSOCKS4IdConflict: Int { get }
var kSOCKS5NoAcceptableMethod: Int { get }
let kCFStreamPropertySOCKSProxy: CFString
let kCFStreamPropertySOCKSProxyHost: CFString
let kCFStreamPropertySOCKSProxyPort: CFString
let kCFStreamPropertySOCKSVersion: CFString
let kCFStreamSocketSOCKSVersion4: CFString
let kCFStreamSocketSOCKSVersion5: CFString
let kCFStreamPropertySOCKSUser: CFString
let kCFStreamPropertySOCKSPassword: CFString
let kCFStreamPropertyProxyLocalBypass: CFString
let kCFStreamErrorDomainSSL: Int32
let kCFStreamPropertySocketSecurityLevel: CFString
let kCFStreamSocketSecurityLevelNone: CFString
let kCFStreamSocketSecurityLevelSSLv2: CFString
let kCFStreamSocketSecurityLevelSSLv3: CFString
let kCFStreamSocketSecurityLevelTLSv1: CFString
let kCFStreamSocketSecurityLevelNegotiatedSSL: CFString
let kCFStreamPropertyShouldCloseNativeSocket: CFString
let kCFStreamPropertySocketRemoteHost: CFString
let kCFStreamPropertySocketRemoteNetService: CFString
let kCFStreamPropertySocketExtendedBackgroundIdleMode: CFString
func CFStreamCreatePairWithSocketToCFHost(alloc: CFAllocator?, _ host: CFHost, _ port: Int32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithSocketToNetService(alloc: CFAllocator?, _ service: CFNetService, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
