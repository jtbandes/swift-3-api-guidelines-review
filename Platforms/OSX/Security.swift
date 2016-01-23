
var errAuthorizationSuccess: OSStatus { get }
var errAuthorizationInvalidSet: OSStatus { get }
var errAuthorizationInvalidRef: OSStatus { get }
var errAuthorizationInvalidTag: OSStatus { get }
var errAuthorizationInvalidPointer: OSStatus { get }
var errAuthorizationDenied: OSStatus { get }
var errAuthorizationCanceled: OSStatus { get }
var errAuthorizationInteractionNotAllowed: OSStatus { get }
var errAuthorizationInternal: OSStatus { get }
var errAuthorizationExternalizeNotAllowed: OSStatus { get }
var errAuthorizationInternalizeNotAllowed: OSStatus { get }
var errAuthorizationInvalidFlags: OSStatus { get }
var errAuthorizationToolExecuteFailure: OSStatus { get }
var errAuthorizationToolEnvironmentError: OSStatus { get }
var errAuthorizationBadAddress: OSStatus { get }
struct AuthorizationFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Defaults: AuthorizationFlags { get }
  static var InteractionAllowed: AuthorizationFlags { get }
  static var ExtendRights: AuthorizationFlags { get }
  static var PartialRights: AuthorizationFlags { get }
  static var DestroyRights: AuthorizationFlags { get }
  static var PreAuthorize: AuthorizationFlags { get }
  static var NoData: AuthorizationFlags { get }
}
var kAuthorizationFlagCanNotPreAuthorize: Int { get }
typealias AuthorizationRef = COpaquePointer
typealias AuthorizationString = UnsafePointer<Int8>
struct AuthorizationItem {
  var name: AuthorizationString
  var valueLength: Int
  var value: UnsafeMutablePointer<Void>
  var flags: UInt32
}
struct AuthorizationItemSet {
  var count: UInt32
  var items: UnsafeMutablePointer<AuthorizationItem>
}
var kAuthorizationExternalFormLength: Int { get }
struct AuthorizationExternalForm {
  var bytes: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(bytes: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
typealias AuthorizationRights = AuthorizationItemSet
typealias AuthorizationEnvironment = AuthorizationItemSet
func AuthorizationCreate(rights: UnsafePointer<AuthorizationRights>, _ environment: UnsafePointer<AuthorizationEnvironment>, _ flags: AuthorizationFlags, _ authorization: UnsafeMutablePointer<AuthorizationRef>) -> OSStatus
func AuthorizationFree(authorization: AuthorizationRef, _ flags: AuthorizationFlags) -> OSStatus
func AuthorizationCopyRights(authorization: AuthorizationRef, _ rights: UnsafePointer<AuthorizationRights>, _ environment: UnsafePointer<AuthorizationEnvironment>, _ flags: AuthorizationFlags, _ authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) -> OSStatus
typealias AuthorizationAsyncCallback = (OSStatus, UnsafeMutablePointer<AuthorizationRights>) -> Void
func AuthorizationCopyRightsAsync(authorization: AuthorizationRef, _ rights: UnsafePointer<AuthorizationRights>, _ environment: UnsafePointer<AuthorizationEnvironment>, _ flags: AuthorizationFlags, _ callbackBlock: AuthorizationAsyncCallback)
func AuthorizationCopyInfo(authorization: AuthorizationRef, _ tag: AuthorizationString, _ info: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationItemSet>>) -> OSStatus
func AuthorizationMakeExternalForm(authorization: AuthorizationRef, _ extForm: UnsafeMutablePointer<AuthorizationExternalForm>) -> OSStatus
func AuthorizationCreateFromExternalForm(extForm: UnsafePointer<AuthorizationExternalForm>, _ authorization: UnsafeMutablePointer<AuthorizationRef>) -> OSStatus
func AuthorizationFreeItemSet(set: UnsafeMutablePointer<AuthorizationItemSet>) -> OSStatus
var kAuthorizationRightRule: String { get }
var kAuthorizationRuleIsAdmin: String { get }
var kAuthorizationRuleAuthenticateAsSessionUser: String { get }
var kAuthorizationRuleAuthenticateAsAdmin: String { get }
var kAuthorizationRuleClassAllow: String { get }
var kAuthorizationRuleClassDeny: String { get }
var kAuthorizationComment: String { get }
func AuthorizationRightGet(rightName: UnsafePointer<Int8>, _ rightDefinition: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
func AuthorizationRightSet(authRef: AuthorizationRef, _ rightName: UnsafePointer<Int8>, _ rightDefinition: AnyObject, _ descriptionKey: CFString?, _ bundle: CFBundle?, _ localeTableName: CFString?) -> OSStatus
func AuthorizationRightRemove(authRef: AuthorizationRef, _ rightName: UnsafePointer<Int8>) -> OSStatus
var kAuthorizationEnvironmentUsername: String { get }
var kAuthorizationEnvironmentPassword: String { get }
var kAuthorizationEnvironmentShared: String { get }
var kAuthorizationRightExecute: String { get }
var kAuthorizationEnvironmentPrompt: String { get }
var kAuthorizationEnvironmentIcon: String { get }
class CMSDecoder {
}
typealias CMSDecoderRef = CMSDecoder
func CMSDecoderGetTypeID() -> CFTypeID
enum CMSSignerStatus : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unsigned
  case Valid
  case NeedsDetachedContent
  case InvalidSignature
  case InvalidCert
  case InvalidIndex
}
func CMSDecoderCreate(cmsDecoderOut: UnsafeMutablePointer<CMSDecoder?>) -> OSStatus
func CMSDecoderUpdateMessage(cmsDecoder: CMSDecoder, _ msgBytes: UnsafePointer<Void>, _ msgBytesLen: Int) -> OSStatus
func CMSDecoderFinalizeMessage(cmsDecoder: CMSDecoder) -> OSStatus
func CMSDecoderSetDetachedContent(cmsDecoder: CMSDecoder, _ detachedContent: CFData) -> OSStatus
func CMSDecoderCopyDetachedContent(cmsDecoder: CMSDecoder, _ detachedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
func CMSDecoderSetSearchKeychain(cmsDecoder: CMSDecoder, _ keychainOrArray: AnyObject) -> OSStatus
func CMSDecoderGetNumSigners(cmsDecoder: CMSDecoder, _ numSignersOut: UnsafeMutablePointer<Int>) -> OSStatus
func CMSDecoderCopySignerStatus(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ policyOrArray: AnyObject, _ evaluateSecTrust: Bool, _ signerStatusOut: UnsafeMutablePointer<CMSSignerStatus>, _ secTrustOut: UnsafeMutablePointer<SecTrust?>, _ certVerifyResultCodeOut: UnsafeMutablePointer<OSStatus>) -> OSStatus
func CMSDecoderCopySignerEmailAddress(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signerEmailAddressOut: UnsafeMutablePointer<CFString?>) -> OSStatus
func CMSDecoderCopySignerCert(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signerCertOut: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
func CMSDecoderIsContentEncrypted(cmsDecoder: CMSDecoder, _ isEncryptedOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func CMSDecoderCopyEncapsulatedContentType(cmsDecoder: CMSDecoder, _ eContentTypeOut: UnsafeMutablePointer<CFData?>) -> OSStatus
func CMSDecoderCopyAllCerts(cmsDecoder: CMSDecoder, _ certsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
func CMSDecoderCopyContent(cmsDecoder: CMSDecoder, _ contentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
func CMSDecoderCopySignerSigningTime(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signingTime: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
func CMSDecoderCopySignerTimestamp(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
func CMSDecoderCopySignerTimestampWithPolicy(cmsDecoder: CMSDecoder, _ timeStampPolicy: AnyObject?, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
func CMSDecoderCopySignerTimestampCertificates(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ certificateRefs: UnsafeMutablePointer<CFArray?>) -> OSStatus
typealias CMSEncoderRef = CMSEncoder
class CMSEncoder {
}
func CMSEncoderGetTypeID() -> CFTypeID
func CMSEncoderCreate(cmsEncoderOut: UnsafeMutablePointer<CMSEncoder?>) -> OSStatus
let kCMSEncoderDigestAlgorithmSHA1: CFString
let kCMSEncoderDigestAlgorithmSHA256: CFString
func CMSEncoderSetSignerAlgorithm(cmsEncoder: CMSEncoder, _ digestAlgorithm: CFString) -> OSStatus
func CMSEncoderAddSigners(cmsEncoder: CMSEncoder, _ signerOrArray: AnyObject) -> OSStatus
func CMSEncoderCopySigners(cmsEncoder: CMSEncoder, _ signersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
func CMSEncoderAddRecipients(cmsEncoder: CMSEncoder, _ recipientOrArray: AnyObject) -> OSStatus
func CMSEncoderCopyRecipients(cmsEncoder: CMSEncoder, _ recipientsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
func CMSEncoderSetHasDetachedContent(cmsEncoder: CMSEncoder, _ detachedContent: Bool) -> OSStatus
func CMSEncoderGetHasDetachedContent(cmsEncoder: CMSEncoder, _ detachedContentOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func CMSEncoderSetEncapsulatedContentType(cmsEncoder: CMSEncoder, _ eContentType: UnsafePointer<CSSM_OID>) -> OSStatus
func CMSEncoderSetEncapsulatedContentTypeOID(cmsEncoder: CMSEncoder, _ eContentTypeOID: AnyObject) -> OSStatus
func CMSEncoderCopyEncapsulatedContentType(cmsEncoder: CMSEncoder, _ eContentTypeOut: UnsafeMutablePointer<CFData?>) -> OSStatus
func CMSEncoderAddSupportingCerts(cmsEncoder: CMSEncoder, _ certOrArray: AnyObject) -> OSStatus
func CMSEncoderCopySupportingCerts(cmsEncoder: CMSEncoder, _ certsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
enum CMSSignedAttributes : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case AttrNone
  case AttrSmimeCapabilities
  case AttrSmimeEncryptionKeyPrefs
  case AttrSmimeMSEncryptionKeyPrefs
  case AttrSigningTime
}
func CMSEncoderAddSignedAttributes(cmsEncoder: CMSEncoder, _ signedAttributes: CMSSignedAttributes) -> OSStatus
enum CMSCertificateChainMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case SignerOnly
  case Chain
  case ChainWithRoot
}
func CMSEncoderSetCertificateChainMode(cmsEncoder: CMSEncoder, _ chainMode: CMSCertificateChainMode) -> OSStatus
func CMSEncoderGetCertificateChainMode(cmsEncoder: CMSEncoder, _ chainModeOut: UnsafeMutablePointer<CMSCertificateChainMode>) -> OSStatus
func CMSEncoderUpdateContent(cmsEncoder: CMSEncoder, _ content: UnsafePointer<Void>, _ contentLen: Int) -> OSStatus
func CMSEncoderCopyEncodedContent(cmsEncoder: CMSEncoder, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
func CMSEncode(signers: AnyObject?, _ recipients: AnyObject?, _ eContentType: UnsafePointer<CSSM_OID>, _ detachedContent: Bool, _ signedAttributes: CMSSignedAttributes, _ content: UnsafePointer<Void>, _ contentLen: Int, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
func CMSEncodeContent(signers: AnyObject?, _ recipients: AnyObject?, _ eContentTypeOID: AnyObject?, _ detachedContent: Bool, _ signedAttributes: CMSSignedAttributes, _ content: UnsafePointer<Void>, _ contentLen: Int, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
func CMSEncoderCopySignerTimestamp(cmsEncoder: CMSEncoder, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
func CMSEncoderCopySignerTimestampWithPolicy(cmsEncoder: CMSEncoder, _ timeStampPolicy: AnyObject?, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
var errSecCSUnimplemented: OSStatus { get }
var errSecCSInvalidObjectRef: OSStatus { get }
var errSecCSInvalidFlags: OSStatus { get }
var errSecCSObjectRequired: OSStatus { get }
var errSecCSStaticCodeNotFound: OSStatus { get }
var errSecCSUnsupportedGuestAttributes: OSStatus { get }
var errSecCSInvalidAttributeValues: OSStatus { get }
var errSecCSNoSuchCode: OSStatus { get }
var errSecCSMultipleGuests: OSStatus { get }
var errSecCSGuestInvalid: OSStatus { get }
var errSecCSUnsigned: OSStatus { get }
var errSecCSSignatureFailed: OSStatus { get }
var errSecCSSignatureNotVerifiable: OSStatus { get }
var errSecCSSignatureUnsupported: OSStatus { get }
var errSecCSBadDictionaryFormat: OSStatus { get }
var errSecCSResourcesNotSealed: OSStatus { get }
var errSecCSResourcesNotFound: OSStatus { get }
var errSecCSResourcesInvalid: OSStatus { get }
var errSecCSBadResource: OSStatus { get }
var errSecCSResourceRulesInvalid: OSStatus { get }
var errSecCSReqInvalid: OSStatus { get }
var errSecCSReqUnsupported: OSStatus { get }
var errSecCSReqFailed: OSStatus { get }
var errSecCSBadObjectFormat: OSStatus { get }
var errSecCSInternalError: OSStatus { get }
var errSecCSHostReject: OSStatus { get }
var errSecCSNotAHost: OSStatus { get }
var errSecCSSignatureInvalid: OSStatus { get }
var errSecCSHostProtocolRelativePath: OSStatus { get }
var errSecCSHostProtocolContradiction: OSStatus { get }
var errSecCSHostProtocolDedicationError: OSStatus { get }
var errSecCSHostProtocolNotProxy: OSStatus { get }
var errSecCSHostProtocolStateError: OSStatus { get }
var errSecCSHostProtocolUnrelated: OSStatus { get }
var errSecCSNotSupported: OSStatus { get }
var errSecCSCMSTooLarge: OSStatus { get }
var errSecCSHostProtocolInvalidHash: OSStatus { get }
var errSecCSStaticCodeChanged: OSStatus { get }
var errSecCSDBDenied: OSStatus { get }
var errSecCSDBAccess: OSStatus { get }
var errSecCSSigDBDenied: OSStatus { get }
var errSecCSSigDBAccess: OSStatus { get }
var errSecCSHostProtocolInvalidAttribute: OSStatus { get }
var errSecCSInfoPlistFailed: OSStatus { get }
var errSecCSNoMainExecutable: OSStatus { get }
var errSecCSBadBundleFormat: OSStatus { get }
var errSecCSNoMatches: OSStatus { get }
var errSecCSFileHardQuarantined: OSStatus { get }
var errSecCSOutdated: OSStatus { get }
var errSecCSDbCorrupt: OSStatus { get }
var errSecCSResourceDirectoryFailed: OSStatus { get }
var errSecCSUnsignedNestedCode: OSStatus { get }
var errSecCSBadNestedCode: OSStatus { get }
var errSecCSBadCallbackValue: OSStatus { get }
var errSecCSHelperFailed: OSStatus { get }
var errSecCSVetoed: OSStatus { get }
var errSecCSBadLVArch: OSStatus { get }
var errSecCSResourceNotSupported: OSStatus { get }
var errSecCSRegularFile: OSStatus { get }
var errSecCSUnsealedAppRoot: OSStatus { get }
var errSecCSWeakResourceRules: OSStatus { get }
var errSecCSDSStoreSymlink: OSStatus { get }
var errSecCSAmbiguousBundleFormat: OSStatus { get }
var errSecCSBadMainExecutable: OSStatus { get }
var errSecCSBadFrameworkVersion: OSStatus { get }
var errSecCSUnsealedFrameworkRoot: OSStatus { get }
var errSecCSWeakResourceEnvelope: OSStatus { get }
var errSecCSCancelled: OSStatus { get }
var errSecCSInvalidPlatform: OSStatus { get }
var errSecCSTooBig: OSStatus { get }
var errSecCSInvalidSymlink: OSStatus { get }
let kSecCFErrorArchitecture: CFString
let kSecCFErrorPattern: CFString
let kSecCFErrorResourceSeal: CFString
let kSecCFErrorResourceAdded: CFString
let kSecCFErrorResourceAltered: CFString
let kSecCFErrorResourceMissing: CFString
let kSecCFErrorInfoPlist: CFString
let kSecCFErrorGuestAttributes: CFString
let kSecCFErrorRequirementSyntax: CFString
let kSecCFErrorPath: CFString
typealias SecCodeRef = SecCode
class SecCode {
}
class SecStaticCode {
}
typealias SecStaticCodeRef = SecStaticCode
typealias SecRequirementRef = SecRequirement
class SecRequirement {
}
typealias SecGuestRef = UInt32
var kSecNoGuest: SecGuestRef { get }
struct SecCSFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var DefaultFlags: SecCSFlags { get }
  static var ConsiderExpiration: SecCSFlags { get }
  static var EnforceRevocationChecks: SecCSFlags { get }
  static var NoNetworkAccess: SecCSFlags { get }
  static var ReportProgress: SecCSFlags { get }
  static var CheckTrustedAnchors: SecCSFlags { get }
}
struct SecCodeSignatureFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Host: SecCodeSignatureFlags { get }
  static var Adhoc: SecCodeSignatureFlags { get }
  static var ForceHard: SecCodeSignatureFlags { get }
  static var ForceKill: SecCodeSignatureFlags { get }
  static var ForceExpiration: SecCodeSignatureFlags { get }
  static var Restrict: SecCodeSignatureFlags { get }
  static var Enforcement: SecCodeSignatureFlags { get }
  static var LibraryValidation: SecCodeSignatureFlags { get }
}
struct SecCodeStatus : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Valid: SecCodeStatus { get }
  static var Hard: SecCodeStatus { get }
  static var Kill: SecCodeStatus { get }
}
enum SecRequirementType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case HostRequirementType
  case GuestRequirementType
  case DesignatedRequirementType
  case LibraryRequirementType
  case PluginRequirementType
  case InvalidRequirementType
  static var RequirementTypeCount: SecRequirementType { get }
}
typealias SSLCipherSuite = UInt32
var SSL_NULL_WITH_NULL_NULL: SSLCipherSuite { get }
var SSL_RSA_WITH_NULL_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_NULL_SHA: SSLCipherSuite { get }
var SSL_RSA_EXPORT_WITH_RC4_40_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_RC4_128_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var SSL_RSA_EXPORT_WITH_RC2_CBC_40_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_IDEA_CBC_SHA: SSLCipherSuite { get }
var SSL_RSA_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_RSA_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_DSS_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_DSS_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_DSS_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_RSA_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_RSA_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_DSS_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_RSA_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_anon_EXPORT_WITH_RC4_40_MD5: SSLCipherSuite { get }
var SSL_DH_anon_WITH_RC4_128_MD5: SSLCipherSuite { get }
var SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_anon_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_anon_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_FORTEZZA_DMS_WITH_NULL_SHA: SSLCipherSuite { get }
var SSL_FORTEZZA_DMS_WITH_FORTEZZA_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_NULL_WITH_NULL_NULL: SSLCipherSuite { get }
var TLS_RSA_WITH_NULL_MD5: SSLCipherSuite { get }
var TLS_RSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_RC4_128_MD5: SSLCipherSuite { get }
var TLS_RSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_NULL_SHA256: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_anon_WITH_RC4_128_MD5: SSLCipherSuite { get }
var TLS_DH_anon_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_PSK_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_PSK_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_PSK_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_PSK_WITH_NULL_SHA256: SSLCipherSuite { get }
var TLS_PSK_WITH_NULL_SHA384: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_NULL_SHA256: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_NULL_SHA384: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_NULL_SHA256: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_NULL_SHA384: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_EMPTY_RENEGOTIATION_INFO_SCSV: SSLCipherSuite { get }
var SSL_RSA_WITH_RC2_CBC_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_IDEA_CBC_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_DES_CBC_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_3DES_EDE_CBC_MD5: SSLCipherSuite { get }
var SSL_NO_SUCH_CIPHERSUITE: SSLCipherSuite { get }
struct SecKeychainPromptSelector : OptionSetType {
  init(rawValue: uint16)
  let rawValue: uint16
  static var RequirePassphase: SecKeychainPromptSelector { get }
  static var Unsigned: SecKeychainPromptSelector { get }
  static var UnsignedAct: SecKeychainPromptSelector { get }
  static var Invalid: SecKeychainPromptSelector { get }
  static var InvalidAct: SecKeychainPromptSelector { get }
}
func SecACLGetTypeID() -> CFTypeID
func SecACLCreateWithSimpleContents(access: SecAccess, _ applicationList: CFArray?, _ description: CFString, _ promptSelector: SecKeychainPromptSelector, _ newAcl: UnsafeMutablePointer<SecACL?>) -> OSStatus
func SecACLRemove(aclRef: SecACL) -> OSStatus
func SecACLCopyContents(acl: SecACL, _ applicationList: UnsafeMutablePointer<CFArray?>, _ description: UnsafeMutablePointer<CFString?>, _ promptSelector: UnsafeMutablePointer<SecKeychainPromptSelector>) -> OSStatus
func SecACLSetContents(acl: SecACL, _ applicationList: CFArray?, _ description: CFString, _ promptSelector: SecKeychainPromptSelector) -> OSStatus
func SecACLCopyAuthorizations(acl: SecACL) -> CFArray
func SecACLUpdateAuthorizations(acl: SecACL, _ authorizations: CFArray) -> OSStatus
typealias SecAccessOwnerType = UInt32
var kSecUseOnlyUID: Int { get }
var kSecUseOnlyGID: Int { get }
var kSecHonorRoot: Int { get }
var kSecMatchBits: Int { get }
let kSecACLAuthorizationAny: CFString
let kSecACLAuthorizationLogin: CFString
let kSecACLAuthorizationGenKey: CFString
let kSecACLAuthorizationDelete: CFString
let kSecACLAuthorizationExportWrapped: CFString
let kSecACLAuthorizationExportClear: CFString
let kSecACLAuthorizationImportWrapped: CFString
let kSecACLAuthorizationImportClear: CFString
let kSecACLAuthorizationSign: CFString
let kSecACLAuthorizationEncrypt: CFString
let kSecACLAuthorizationDecrypt: CFString
let kSecACLAuthorizationMAC: CFString
let kSecACLAuthorizationDerive: CFString
let kSecACLAuthorizationKeychainCreate: CFString
let kSecACLAuthorizationKeychainDelete: CFString
let kSecACLAuthorizationKeychainItemRead: CFString
let kSecACLAuthorizationKeychainItemInsert: CFString
let kSecACLAuthorizationKeychainItemModify: CFString
let kSecACLAuthorizationKeychainItemDelete: CFString
let kSecACLAuthorizationChangeACL: CFString
let kSecACLAuthorizationChangeOwner: CFString
func SecAccessGetTypeID() -> CFTypeID
func SecAccessCreate(descriptor: CFString, _ trustedlist: CFArray?, _ accessRef: UnsafeMutablePointer<SecAccess?>) -> OSStatus
func SecAccessCreateWithOwnerAndACL(userId: uid_t, _ groupId: gid_t, _ ownerType: SecAccessOwnerType, _ acls: CFArray?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccess?
func SecAccessCopyOwnerAndACL(accessRef: SecAccess, _ userId: UnsafeMutablePointer<uid_t>, _ groupId: UnsafeMutablePointer<gid_t>, _ ownerType: UnsafeMutablePointer<SecAccessOwnerType>, _ aclList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecAccessCopyACLList(accessRef: SecAccess, _ aclList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecAccessCopyMatchingACLList(accessRef: SecAccess, _ authorizationTag: AnyObject) -> CFArray?
func SecAccessControlGetTypeID() -> CFTypeID
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
  static var UserPresence: SecAccessControlCreateFlags { get }
  static var DevicePasscode: SecAccessControlCreateFlags { get }
}
func SecAccessControlCreateWithFlags(allocator: CFAllocator?, _ protection: AnyObject, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?
typealias SecAsn1Item = CSSM_DATA
typealias SecAsn1Oid = CSSM_OID
typealias SecAsn1AlgId = CSSM_X509_ALGORITHM_IDENTIFIER
typealias SecAsn1PubKeyInfo = CSSM_X509_SUBJECT_PUBLIC_KEY_INFO
struct SecAsn1Template_struct {
  var kind: UInt32
  var offset: UInt32
  var sub: UnsafePointer<Void>
  var size: UInt32
}
typealias SecAsn1Template = SecAsn1Template_struct
var SEC_ASN1_TAG_MASK: Int32 { get }
var SEC_ASN1_TAGNUM_MASK: Int32 { get }
var SEC_ASN1_BOOLEAN: Int32 { get }
var SEC_ASN1_INTEGER: Int32 { get }
var SEC_ASN1_BIT_STRING: Int32 { get }
var SEC_ASN1_OCTET_STRING: Int32 { get }
var SEC_ASN1_NULL: Int32 { get }
var SEC_ASN1_OBJECT_ID: Int32 { get }
var SEC_ASN1_OBJECT_DESCRIPTOR: Int32 { get }
var SEC_ASN1_REAL: Int32 { get }
var SEC_ASN1_ENUMERATED: Int32 { get }
var SEC_ASN1_EMBEDDED_PDV: Int32 { get }
var SEC_ASN1_UTF8_STRING: Int32 { get }
var SEC_ASN1_SEQUENCE: Int32 { get }
var SEC_ASN1_SET: Int32 { get }
var SEC_ASN1_NUMERIC_STRING: Int32 { get }
var SEC_ASN1_PRINTABLE_STRING: Int32 { get }
var SEC_ASN1_T61_STRING: Int32 { get }
var SEC_ASN1_VIDEOTEX_STRING: Int32 { get }
var SEC_ASN1_IA5_STRING: Int32 { get }
var SEC_ASN1_UTC_TIME: Int32 { get }
var SEC_ASN1_GENERALIZED_TIME: Int32 { get }
var SEC_ASN1_GRAPHIC_STRING: Int32 { get }
var SEC_ASN1_VISIBLE_STRING: Int32 { get }
var SEC_ASN1_GENERAL_STRING: Int32 { get }
var SEC_ASN1_UNIVERSAL_STRING: Int32 { get }
var SEC_ASN1_BMP_STRING: Int32 { get }
var SEC_ASN1_HIGH_TAG_NUMBER: Int32 { get }
var SEC_ASN1_TELETEX_STRING: Int32 { get }
var SEC_ASN1_METHOD_MASK: Int32 { get }
var SEC_ASN1_PRIMITIVE: Int32 { get }
var SEC_ASN1_CONSTRUCTED: Int32 { get }
var SEC_ASN1_CLASS_MASK: Int32 { get }
var SEC_ASN1_UNIVERSAL: Int32 { get }
var SEC_ASN1_APPLICATION: Int32 { get }
var SEC_ASN1_CONTEXT_SPECIFIC: Int32 { get }
var SEC_ASN1_PRIVATE: Int32 { get }
var SEC_ASN1_OPTIONAL: Int32 { get }
var SEC_ASN1_EXPLICIT: Int32 { get }
var SEC_ASN1_ANY: Int32 { get }
var SEC_ASN1_INLINE: Int32 { get }
var SEC_ASN1_POINTER: Int32 { get }
var SEC_ASN1_GROUP: Int32 { get }
var SEC_ASN1_DYNAMIC: Int32 { get }
var SEC_ASN1_SKIP: Int32 { get }
var SEC_ASN1_INNER: Int32 { get }
var SEC_ASN1_SAVE: Int32 { get }
var SEC_ASN1_SKIP_REST: Int32 { get }
var SEC_ASN1_CHOICE: Int32 { get }
var SEC_ASN1_SIGNED_INT: Int32 { get }
typealias SecAsn1TemplateChooser = (UnsafeMutablePointer<Void>, DarwinBoolean, UnsafePointer<Int8>, Int, UnsafeMutablePointer<Void>) -> UnsafePointer<SecAsn1Template>
typealias SecAsn1TemplateChooserPtr = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, UnsafePointer<Int8>, Int, UnsafeMutablePointer<Void>) -> UnsafePointer<SecAsn1Template>
class SecKeychain {
}
typealias SecKeychainRef = SecKeychain
typealias SecKeychainItemRef = SecKeychainItem
class SecKeychainItem {
}
class SecKeychainSearch {
}
typealias SecKeychainSearchRef = SecKeychainSearch
typealias SecKeychainAttrType = OSType
struct SecKeychainAttribute {
  var tag: SecKeychainAttrType
  var length: UInt32
  var data: UnsafeMutablePointer<Void>
}
typealias SecKeychainAttributePtr = UnsafeMutablePointer<SecKeychainAttribute>
struct SecKeychainAttributeList {
  var count: UInt32
  var attr: UnsafeMutablePointer<SecKeychainAttribute>
}
typealias SecKeychainStatus = UInt32
typealias SecTrustedApplicationRef = SecTrustedApplication
class SecTrustedApplication {
}
typealias SecPolicyRef = SecPolicy
class SecPolicy {
}
class SecCertificate {
}
typealias SecCertificateRef = SecCertificate
typealias SecAccessRef = SecAccess
class SecAccess {
}
class SecIdentity {
}
typealias SecIdentityRef = SecIdentity
typealias SecKeyRef = SecKey
class SecKey {
}
class SecACL {
}
typealias SecACLRef = SecACL
typealias SecAccessControlRef = SecAccessControl
class SecAccessControl {
}
class SecPassword {
}
typealias SecPasswordRef = SecPassword
struct SecKeychainAttributeInfo {
  var count: UInt32
  var tag: UnsafeMutablePointer<UInt32>
  var format: UnsafeMutablePointer<UInt32>
}
func SecCopyErrorMessageString(status: OSStatus, _ reserved: UnsafeMutablePointer<Void>) -> CFString?
var errSecSuccess: OSStatus { get }
var errSecUnimplemented: OSStatus { get }
var errSecDskFull: OSStatus { get }
var errSecIO: OSStatus { get }
var errSecParam: OSStatus { get }
var errSecWrPerm: OSStatus { get }
var errSecAllocate: OSStatus { get }
var errSecUserCanceled: OSStatus { get }
var errSecBadReq: OSStatus { get }
var errSecInternalComponent: OSStatus { get }
var errSecCoreFoundationUnknown: OSStatus { get }
var errSecNotAvailable: OSStatus { get }
var errSecReadOnly: OSStatus { get }
var errSecAuthFailed: OSStatus { get }
var errSecNoSuchKeychain: OSStatus { get }
var errSecInvalidKeychain: OSStatus { get }
var errSecDuplicateKeychain: OSStatus { get }
var errSecDuplicateCallback: OSStatus { get }
var errSecInvalidCallback: OSStatus { get }
var errSecDuplicateItem: OSStatus { get }
var errSecItemNotFound: OSStatus { get }
var errSecBufferTooSmall: OSStatus { get }
var errSecDataTooLarge: OSStatus { get }
var errSecNoSuchAttr: OSStatus { get }
var errSecInvalidItemRef: OSStatus { get }
var errSecInvalidSearchRef: OSStatus { get }
var errSecNoSuchClass: OSStatus { get }
var errSecNoDefaultKeychain: OSStatus { get }
var errSecInteractionNotAllowed: OSStatus { get }
var errSecReadOnlyAttr: OSStatus { get }
var errSecWrongSecVersion: OSStatus { get }
var errSecKeySizeNotAllowed: OSStatus { get }
var errSecNoStorageModule: OSStatus { get }
var errSecNoCertificateModule: OSStatus { get }
var errSecNoPolicyModule: OSStatus { get }
var errSecInteractionRequired: OSStatus { get }
var errSecDataNotAvailable: OSStatus { get }
var errSecDataNotModifiable: OSStatus { get }
var errSecCreateChainFailed: OSStatus { get }
var errSecInvalidPrefsDomain: OSStatus { get }
var errSecInDarkWake: OSStatus { get }
var errSecACLNotSimple: OSStatus { get }
var errSecPolicyNotFound: OSStatus { get }
var errSecInvalidTrustSetting: OSStatus { get }
var errSecNoAccessForItem: OSStatus { get }
var errSecInvalidOwnerEdit: OSStatus { get }
var errSecTrustNotAvailable: OSStatus { get }
var errSecUnsupportedFormat: OSStatus { get }
var errSecUnknownFormat: OSStatus { get }
var errSecKeyIsSensitive: OSStatus { get }
var errSecMultiplePrivKeys: OSStatus { get }
var errSecPassphraseRequired: OSStatus { get }
var errSecInvalidPasswordRef: OSStatus { get }
var errSecInvalidTrustSettings: OSStatus { get }
var errSecNoTrustSettings: OSStatus { get }
var errSecPkcs12VerifyFailure: OSStatus { get }
var errSecNotSigner: OSStatus { get }
var errSecDecode: OSStatus { get }
var errSecServiceNotAvailable: OSStatus { get }
var errSecInsufficientClientID: OSStatus { get }
var errSecDeviceReset: OSStatus { get }
var errSecDeviceFailed: OSStatus { get }
var errSecAppleAddAppACLSubject: OSStatus { get }
var errSecApplePublicKeyIncomplete: OSStatus { get }
var errSecAppleSignatureMismatch: OSStatus { get }
var errSecAppleInvalidKeyStartDate: OSStatus { get }
var errSecAppleInvalidKeyEndDate: OSStatus { get }
var errSecConversionError: OSStatus { get }
var errSecAppleSSLv2Rollback: OSStatus { get }
var errSecDiskFull: OSStatus { get }
var errSecQuotaExceeded: OSStatus { get }
var errSecFileTooBig: OSStatus { get }
var errSecInvalidDatabaseBlob: OSStatus { get }
var errSecInvalidKeyBlob: OSStatus { get }
var errSecIncompatibleDatabaseBlob: OSStatus { get }
var errSecIncompatibleKeyBlob: OSStatus { get }
var errSecHostNameMismatch: OSStatus { get }
var errSecUnknownCriticalExtensionFlag: OSStatus { get }
var errSecNoBasicConstraints: OSStatus { get }
var errSecNoBasicConstraintsCA: OSStatus { get }
var errSecInvalidAuthorityKeyID: OSStatus { get }
var errSecInvalidSubjectKeyID: OSStatus { get }
var errSecInvalidKeyUsageForPolicy: OSStatus { get }
var errSecInvalidExtendedKeyUsage: OSStatus { get }
var errSecInvalidIDLinkage: OSStatus { get }
var errSecPathLengthConstraintExceeded: OSStatus { get }
var errSecInvalidRoot: OSStatus { get }
var errSecCRLExpired: OSStatus { get }
var errSecCRLNotValidYet: OSStatus { get }
var errSecCRLNotFound: OSStatus { get }
var errSecCRLServerDown: OSStatus { get }
var errSecCRLBadURI: OSStatus { get }
var errSecUnknownCertExtension: OSStatus { get }
var errSecUnknownCRLExtension: OSStatus { get }
var errSecCRLNotTrusted: OSStatus { get }
var errSecCRLPolicyFailed: OSStatus { get }
var errSecIDPFailure: OSStatus { get }
var errSecSMIMEEmailAddressesNotFound: OSStatus { get }
var errSecSMIMEBadExtendedKeyUsage: OSStatus { get }
var errSecSMIMEBadKeyUsage: OSStatus { get }
var errSecSMIMEKeyUsageNotCritical: OSStatus { get }
var errSecSMIMENoEmailAddress: OSStatus { get }
var errSecSMIMESubjAltNameNotCritical: OSStatus { get }
var errSecSSLBadExtendedKeyUsage: OSStatus { get }
var errSecOCSPBadResponse: OSStatus { get }
var errSecOCSPBadRequest: OSStatus { get }
var errSecOCSPUnavailable: OSStatus { get }
var errSecOCSPStatusUnrecognized: OSStatus { get }
var errSecEndOfData: OSStatus { get }
var errSecIncompleteCertRevocationCheck: OSStatus { get }
var errSecNetworkFailure: OSStatus { get }
var errSecOCSPNotTrustedToAnchor: OSStatus { get }
var errSecRecordModified: OSStatus { get }
var errSecOCSPSignatureError: OSStatus { get }
var errSecOCSPNoSigner: OSStatus { get }
var errSecOCSPResponderMalformedReq: OSStatus { get }
var errSecOCSPResponderInternalError: OSStatus { get }
var errSecOCSPResponderTryLater: OSStatus { get }
var errSecOCSPResponderSignatureRequired: OSStatus { get }
var errSecOCSPResponderUnauthorized: OSStatus { get }
var errSecOCSPResponseNonceMismatch: OSStatus { get }
var errSecCodeSigningBadCertChainLength: OSStatus { get }
var errSecCodeSigningNoBasicConstraints: OSStatus { get }
var errSecCodeSigningBadPathLengthConstraint: OSStatus { get }
var errSecCodeSigningNoExtendedKeyUsage: OSStatus { get }
var errSecCodeSigningDevelopment: OSStatus { get }
var errSecResourceSignBadCertChainLength: OSStatus { get }
var errSecResourceSignBadExtKeyUsage: OSStatus { get }
var errSecTrustSettingDeny: OSStatus { get }
var errSecInvalidSubjectName: OSStatus { get }
var errSecUnknownQualifiedCertStatement: OSStatus { get }
var errSecMobileMeRequestQueued: OSStatus { get }
var errSecMobileMeRequestRedirected: OSStatus { get }
var errSecMobileMeServerError: OSStatus { get }
var errSecMobileMeServerNotAvailable: OSStatus { get }
var errSecMobileMeServerAlreadyExists: OSStatus { get }
var errSecMobileMeServerServiceErr: OSStatus { get }
var errSecMobileMeRequestAlreadyPending: OSStatus { get }
var errSecMobileMeNoRequestPending: OSStatus { get }
var errSecMobileMeCSRVerifyFailure: OSStatus { get }
var errSecMobileMeFailedConsistencyCheck: OSStatus { get }
var errSecNotInitialized: OSStatus { get }
var errSecInvalidHandleUsage: OSStatus { get }
var errSecPVCReferentNotFound: OSStatus { get }
var errSecFunctionIntegrityFail: OSStatus { get }
var errSecInternalError: OSStatus { get }
var errSecMemoryError: OSStatus { get }
var errSecInvalidData: OSStatus { get }
var errSecMDSError: OSStatus { get }
var errSecInvalidPointer: OSStatus { get }
var errSecSelfCheckFailed: OSStatus { get }
var errSecFunctionFailed: OSStatus { get }
var errSecModuleManifestVerifyFailed: OSStatus { get }
var errSecInvalidGUID: OSStatus { get }
var errSecInvalidHandle: OSStatus { get }
var errSecInvalidDBList: OSStatus { get }
var errSecInvalidPassthroughID: OSStatus { get }
var errSecInvalidNetworkAddress: OSStatus { get }
var errSecCRLAlreadySigned: OSStatus { get }
var errSecInvalidNumberOfFields: OSStatus { get }
var errSecVerificationFailure: OSStatus { get }
var errSecUnknownTag: OSStatus { get }
var errSecInvalidSignature: OSStatus { get }
var errSecInvalidName: OSStatus { get }
var errSecInvalidCertificateRef: OSStatus { get }
var errSecInvalidCertificateGroup: OSStatus { get }
var errSecTagNotFound: OSStatus { get }
var errSecInvalidQuery: OSStatus { get }
var errSecInvalidValue: OSStatus { get }
var errSecCallbackFailed: OSStatus { get }
var errSecACLDeleteFailed: OSStatus { get }
var errSecACLReplaceFailed: OSStatus { get }
var errSecACLAddFailed: OSStatus { get }
var errSecACLChangeFailed: OSStatus { get }
var errSecInvalidAccessCredentials: OSStatus { get }
var errSecInvalidRecord: OSStatus { get }
var errSecInvalidACL: OSStatus { get }
var errSecInvalidSampleValue: OSStatus { get }
var errSecIncompatibleVersion: OSStatus { get }
var errSecPrivilegeNotGranted: OSStatus { get }
var errSecInvalidScope: OSStatus { get }
var errSecPVCAlreadyConfigured: OSStatus { get }
var errSecInvalidPVC: OSStatus { get }
var errSecEMMLoadFailed: OSStatus { get }
var errSecEMMUnloadFailed: OSStatus { get }
var errSecAddinLoadFailed: OSStatus { get }
var errSecInvalidKeyRef: OSStatus { get }
var errSecInvalidKeyHierarchy: OSStatus { get }
var errSecAddinUnloadFailed: OSStatus { get }
var errSecLibraryReferenceNotFound: OSStatus { get }
var errSecInvalidAddinFunctionTable: OSStatus { get }
var errSecInvalidServiceMask: OSStatus { get }
var errSecModuleNotLoaded: OSStatus { get }
var errSecInvalidSubServiceID: OSStatus { get }
var errSecAttributeNotInContext: OSStatus { get }
var errSecModuleManagerInitializeFailed: OSStatus { get }
var errSecModuleManagerNotFound: OSStatus { get }
var errSecEventNotificationCallbackNotFound: OSStatus { get }
var errSecInputLengthError: OSStatus { get }
var errSecOutputLengthError: OSStatus { get }
var errSecPrivilegeNotSupported: OSStatus { get }
var errSecDeviceError: OSStatus { get }
var errSecAttachHandleBusy: OSStatus { get }
var errSecNotLoggedIn: OSStatus { get }
var errSecAlgorithmMismatch: OSStatus { get }
var errSecKeyUsageIncorrect: OSStatus { get }
var errSecKeyBlobTypeIncorrect: OSStatus { get }
var errSecKeyHeaderInconsistent: OSStatus { get }
var errSecUnsupportedKeyFormat: OSStatus { get }
var errSecUnsupportedKeySize: OSStatus { get }
var errSecInvalidKeyUsageMask: OSStatus { get }
var errSecUnsupportedKeyUsageMask: OSStatus { get }
var errSecInvalidKeyAttributeMask: OSStatus { get }
var errSecUnsupportedKeyAttributeMask: OSStatus { get }
var errSecInvalidKeyLabel: OSStatus { get }
var errSecUnsupportedKeyLabel: OSStatus { get }
var errSecInvalidKeyFormat: OSStatus { get }
var errSecUnsupportedVectorOfBuffers: OSStatus { get }
var errSecInvalidInputVector: OSStatus { get }
var errSecInvalidOutputVector: OSStatus { get }
var errSecInvalidContext: OSStatus { get }
var errSecInvalidAlgorithm: OSStatus { get }
var errSecInvalidAttributeKey: OSStatus { get }
var errSecMissingAttributeKey: OSStatus { get }
var errSecInvalidAttributeInitVector: OSStatus { get }
var errSecMissingAttributeInitVector: OSStatus { get }
var errSecInvalidAttributeSalt: OSStatus { get }
var errSecMissingAttributeSalt: OSStatus { get }
var errSecInvalidAttributePadding: OSStatus { get }
var errSecMissingAttributePadding: OSStatus { get }
var errSecInvalidAttributeRandom: OSStatus { get }
var errSecMissingAttributeRandom: OSStatus { get }
var errSecInvalidAttributeSeed: OSStatus { get }
var errSecMissingAttributeSeed: OSStatus { get }
var errSecInvalidAttributePassphrase: OSStatus { get }
var errSecMissingAttributePassphrase: OSStatus { get }
var errSecInvalidAttributeKeyLength: OSStatus { get }
var errSecMissingAttributeKeyLength: OSStatus { get }
var errSecInvalidAttributeBlockSize: OSStatus { get }
var errSecMissingAttributeBlockSize: OSStatus { get }
var errSecInvalidAttributeOutputSize: OSStatus { get }
var errSecMissingAttributeOutputSize: OSStatus { get }
var errSecInvalidAttributeRounds: OSStatus { get }
var errSecMissingAttributeRounds: OSStatus { get }
var errSecInvalidAlgorithmParms: OSStatus { get }
var errSecMissingAlgorithmParms: OSStatus { get }
var errSecInvalidAttributeLabel: OSStatus { get }
var errSecMissingAttributeLabel: OSStatus { get }
var errSecInvalidAttributeKeyType: OSStatus { get }
var errSecMissingAttributeKeyType: OSStatus { get }
var errSecInvalidAttributeMode: OSStatus { get }
var errSecMissingAttributeMode: OSStatus { get }
var errSecInvalidAttributeEffectiveBits: OSStatus { get }
var errSecMissingAttributeEffectiveBits: OSStatus { get }
var errSecInvalidAttributeStartDate: OSStatus { get }
var errSecMissingAttributeStartDate: OSStatus { get }
var errSecInvalidAttributeEndDate: OSStatus { get }
var errSecMissingAttributeEndDate: OSStatus { get }
var errSecInvalidAttributeVersion: OSStatus { get }
var errSecMissingAttributeVersion: OSStatus { get }
var errSecInvalidAttributePrime: OSStatus { get }
var errSecMissingAttributePrime: OSStatus { get }
var errSecInvalidAttributeBase: OSStatus { get }
var errSecMissingAttributeBase: OSStatus { get }
var errSecInvalidAttributeSubprime: OSStatus { get }
var errSecMissingAttributeSubprime: OSStatus { get }
var errSecInvalidAttributeIterationCount: OSStatus { get }
var errSecMissingAttributeIterationCount: OSStatus { get }
var errSecInvalidAttributeDLDBHandle: OSStatus { get }
var errSecMissingAttributeDLDBHandle: OSStatus { get }
var errSecInvalidAttributeAccessCredentials: OSStatus { get }
var errSecMissingAttributeAccessCredentials: OSStatus { get }
var errSecInvalidAttributePublicKeyFormat: OSStatus { get }
var errSecMissingAttributePublicKeyFormat: OSStatus { get }
var errSecInvalidAttributePrivateKeyFormat: OSStatus { get }
var errSecMissingAttributePrivateKeyFormat: OSStatus { get }
var errSecInvalidAttributeSymmetricKeyFormat: OSStatus { get }
var errSecMissingAttributeSymmetricKeyFormat: OSStatus { get }
var errSecInvalidAttributeWrappedKeyFormat: OSStatus { get }
var errSecMissingAttributeWrappedKeyFormat: OSStatus { get }
var errSecStagedOperationInProgress: OSStatus { get }
var errSecStagedOperationNotStarted: OSStatus { get }
var errSecVerifyFailed: OSStatus { get }
var errSecQuerySizeUnknown: OSStatus { get }
var errSecBlockSizeMismatch: OSStatus { get }
var errSecPublicKeyInconsistent: OSStatus { get }
var errSecDeviceVerifyFailed: OSStatus { get }
var errSecInvalidLoginName: OSStatus { get }
var errSecAlreadyLoggedIn: OSStatus { get }
var errSecInvalidDigestAlgorithm: OSStatus { get }
var errSecInvalidCRLGroup: OSStatus { get }
var errSecCertificateCannotOperate: OSStatus { get }
var errSecCertificateExpired: OSStatus { get }
var errSecCertificateNotValidYet: OSStatus { get }
var errSecCertificateRevoked: OSStatus { get }
var errSecCertificateSuspended: OSStatus { get }
var errSecInsufficientCredentials: OSStatus { get }
var errSecInvalidAction: OSStatus { get }
var errSecInvalidAuthority: OSStatus { get }
var errSecVerifyActionFailed: OSStatus { get }
var errSecInvalidCertAuthority: OSStatus { get }
var errSecInvaldCRLAuthority: OSStatus { get }
var errSecInvalidCRLEncoding: OSStatus { get }
var errSecInvalidCRLType: OSStatus { get }
var errSecInvalidCRL: OSStatus { get }
var errSecInvalidFormType: OSStatus { get }
var errSecInvalidID: OSStatus { get }
var errSecInvalidIdentifier: OSStatus { get }
var errSecInvalidIndex: OSStatus { get }
var errSecInvalidPolicyIdentifiers: OSStatus { get }
var errSecInvalidTimeString: OSStatus { get }
var errSecInvalidReason: OSStatus { get }
var errSecInvalidRequestInputs: OSStatus { get }
var errSecInvalidResponseVector: OSStatus { get }
var errSecInvalidStopOnPolicy: OSStatus { get }
var errSecInvalidTuple: OSStatus { get }
var errSecMultipleValuesUnsupported: OSStatus { get }
var errSecNotTrusted: OSStatus { get }
var errSecNoDefaultAuthority: OSStatus { get }
var errSecRejectedForm: OSStatus { get }
var errSecRequestLost: OSStatus { get }
var errSecRequestRejected: OSStatus { get }
var errSecUnsupportedAddressType: OSStatus { get }
var errSecUnsupportedService: OSStatus { get }
var errSecInvalidTupleGroup: OSStatus { get }
var errSecInvalidBaseACLs: OSStatus { get }
var errSecInvalidTupleCredendtials: OSStatus { get }
var errSecInvalidEncoding: OSStatus { get }
var errSecInvalidValidityPeriod: OSStatus { get }
var errSecInvalidRequestor: OSStatus { get }
var errSecRequestDescriptor: OSStatus { get }
var errSecInvalidBundleInfo: OSStatus { get }
var errSecInvalidCRLIndex: OSStatus { get }
var errSecNoFieldValues: OSStatus { get }
var errSecUnsupportedFieldFormat: OSStatus { get }
var errSecUnsupportedIndexInfo: OSStatus { get }
var errSecUnsupportedLocality: OSStatus { get }
var errSecUnsupportedNumAttributes: OSStatus { get }
var errSecUnsupportedNumIndexes: OSStatus { get }
var errSecUnsupportedNumRecordTypes: OSStatus { get }
var errSecFieldSpecifiedMultiple: OSStatus { get }
var errSecIncompatibleFieldFormat: OSStatus { get }
var errSecInvalidParsingModule: OSStatus { get }
var errSecDatabaseLocked: OSStatus { get }
var errSecDatastoreIsOpen: OSStatus { get }
var errSecMissingValue: OSStatus { get }
var errSecUnsupportedQueryLimits: OSStatus { get }
var errSecUnsupportedNumSelectionPreds: OSStatus { get }
var errSecUnsupportedOperator: OSStatus { get }
var errSecInvalidDBLocation: OSStatus { get }
var errSecInvalidAccessRequest: OSStatus { get }
var errSecInvalidIndexInfo: OSStatus { get }
var errSecInvalidNewOwner: OSStatus { get }
var errSecInvalidModifyMode: OSStatus { get }
var errSecMissingRequiredExtension: OSStatus { get }
var errSecExtendedKeyUsageNotCritical: OSStatus { get }
var errSecTimestampMissing: OSStatus { get }
var errSecTimestampInvalid: OSStatus { get }
var errSecTimestampNotTrusted: OSStatus { get }
var errSecTimestampServiceNotAvailable: OSStatus { get }
var errSecTimestampBadAlg: OSStatus { get }
var errSecTimestampBadRequest: OSStatus { get }
var errSecTimestampBadDataFormat: OSStatus { get }
var errSecTimestampTimeNotAvailable: OSStatus { get }
var errSecTimestampUnacceptedPolicy: OSStatus { get }
var errSecTimestampUnacceptedExtension: OSStatus { get }
var errSecTimestampAddInfoNotAvailable: OSStatus { get }
var errSecTimestampSystemFailure: OSStatus { get }
var errSecSigningTimeMissing: OSStatus { get }
var errSecTimestampRejection: OSStatus { get }
var errSecTimestampWaiting: OSStatus { get }
var errSecTimestampRevocationWarning: OSStatus { get }
var errSecTimestampRevocationNotification: OSStatus { get }
var kSecSubjectItemAttr: Int { get }
var kSecIssuerItemAttr: Int { get }
var kSecSerialNumberItemAttr: Int { get }
var kSecPublicKeyHashItemAttr: Int { get }
var kSecSubjectKeyIdentifierItemAttr: Int { get }
var kSecCertTypeItemAttr: Int { get }
var kSecCertEncodingItemAttr: Int { get }
func SecCertificateGetTypeID() -> CFTypeID
func SecCertificateCreateWithData(allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
func SecCertificateAddToKeychain(certificate: SecCertificate, _ keychain: SecKeychain?) -> OSStatus
func SecCertificateCopyData(certificate: SecCertificate) -> CFData
func SecCertificateCopyPublicKey(certificate: SecCertificate, _ key: UnsafeMutablePointer<SecKey?>) -> OSStatus
func SecCertificateCopyCommonName(certificate: SecCertificate, _ commonName: UnsafeMutablePointer<CFString?>) -> OSStatus
func SecCertificateCopySubjectSummary(certificate: SecCertificate) -> CFString
func SecCertificateCopyEmailAddresses(certificate: SecCertificate, _ emailAddresses: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecCertificateCopyPreferred(name: CFString, _ keyUsage: CFArray?) -> SecCertificate?
func SecCertificateSetPreference(certificate: SecCertificate, _ name: CFString, _ keyUsage: uint32, _ date: CFDate?) -> OSStatus
func SecCertificateSetPreferred(certificate: SecCertificate?, _ name: CFString, _ keyUsage: CFArray?) -> OSStatus
let kSecPropertyKeyType: CFString
let kSecPropertyKeyLabel: CFString
let kSecPropertyKeyLocalizedLabel: CFString
let kSecPropertyKeyValue: CFString
let kSecPropertyTypeWarning: CFString
let kSecPropertyTypeSuccess: CFString
let kSecPropertyTypeSection: CFString
let kSecPropertyTypeData: CFString
let kSecPropertyTypeString: CFString
let kSecPropertyTypeURL: CFString
let kSecPropertyTypeDate: CFString
func SecCertificateCopyValues(certificate: SecCertificate, _ keys: CFArray?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary?
let kSecCertificateUsageSigning: CFString
let kSecCertificateUsageSigningAndEncrypting: CFString
let kSecCertificateUsageDeriveAndSign: CFString
func SecCertificateCopyLongDescription(alloc: CFAllocator?, _ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFString?
func SecCertificateCopyShortDescription(alloc: CFAllocator?, _ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFString?
func SecCertificateCopySerialNumber(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
func SecCertificateCopyNormalizedIssuerContent(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
func SecCertificateCopyNormalizedSubjectContent(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
let kSecOIDADC_CERT_POLICY: CFString
let kSecOIDAPPLE_CERT_POLICY: CFString
let kSecOIDAPPLE_EKU_CODE_SIGNING: CFString
let kSecOIDAPPLE_EKU_CODE_SIGNING_DEV: CFString
let kSecOIDAPPLE_EKU_ICHAT_ENCRYPTION: CFString
let kSecOIDAPPLE_EKU_ICHAT_SIGNING: CFString
let kSecOIDAPPLE_EKU_RESOURCE_SIGNING: CFString
let kSecOIDAPPLE_EKU_SYSTEM_IDENTITY: CFString
let kSecOIDAPPLE_EXTENSION: CFString
let kSecOIDAPPLE_EXTENSION_ADC_APPLE_SIGNING: CFString
let kSecOIDAPPLE_EXTENSION_ADC_DEV_SIGNING: CFString
let kSecOIDAPPLE_EXTENSION_APPLE_SIGNING: CFString
let kSecOIDAPPLE_EXTENSION_CODE_SIGNING: CFString
let kSecOIDAPPLE_EXTENSION_INTERMEDIATE_MARKER: CFString
let kSecOIDAPPLE_EXTENSION_WWDR_INTERMEDIATE: CFString
let kSecOIDAPPLE_EXTENSION_ITMS_INTERMEDIATE: CFString
let kSecOIDAPPLE_EXTENSION_AAI_INTERMEDIATE: CFString
let kSecOIDAPPLE_EXTENSION_APPLEID_INTERMEDIATE: CFString
let kSecOIDAuthorityInfoAccess: CFString
let kSecOIDAuthorityKeyIdentifier: CFString
let kSecOIDBasicConstraints: CFString
let kSecOIDBiometricInfo: CFString
let kSecOIDCSSMKeyStruct: CFString
let kSecOIDCertIssuer: CFString
let kSecOIDCertificatePolicies: CFString
let kSecOIDClientAuth: CFString
let kSecOIDCollectiveStateProvinceName: CFString
let kSecOIDCollectiveStreetAddress: CFString
let kSecOIDCommonName: CFString
let kSecOIDCountryName: CFString
let kSecOIDCrlDistributionPoints: CFString
let kSecOIDCrlNumber: CFString
let kSecOIDCrlReason: CFString
let kSecOIDDOTMAC_CERT_EMAIL_ENCRYPT: CFString
let kSecOIDDOTMAC_CERT_EMAIL_SIGN: CFString
let kSecOIDDOTMAC_CERT_EXTENSION: CFString
let kSecOIDDOTMAC_CERT_IDENTITY: CFString
let kSecOIDDOTMAC_CERT_POLICY: CFString
let kSecOIDDeltaCrlIndicator: CFString
let kSecOIDDescription: CFString
let kSecOIDEKU_IPSec: CFString
let kSecOIDEmailAddress: CFString
let kSecOIDEmailProtection: CFString
let kSecOIDExtendedKeyUsage: CFString
let kSecOIDExtendedKeyUsageAny: CFString
let kSecOIDExtendedUseCodeSigning: CFString
let kSecOIDGivenName: CFString
let kSecOIDHoldInstructionCode: CFString
let kSecOIDInvalidityDate: CFString
let kSecOIDIssuerAltName: CFString
let kSecOIDIssuingDistributionPoint: CFString
let kSecOIDIssuingDistributionPoints: CFString
let kSecOIDKERBv5_PKINIT_KP_CLIENT_AUTH: CFString
let kSecOIDKERBv5_PKINIT_KP_KDC: CFString
let kSecOIDKeyUsage: CFString
let kSecOIDLocalityName: CFString
let kSecOIDMS_NTPrincipalName: CFString
let kSecOIDMicrosoftSGC: CFString
let kSecOIDNameConstraints: CFString
let kSecOIDNetscapeCertSequence: CFString
let kSecOIDNetscapeCertType: CFString
let kSecOIDNetscapeSGC: CFString
let kSecOIDOCSPSigning: CFString
let kSecOIDOrganizationName: CFString
let kSecOIDOrganizationalUnitName: CFString
let kSecOIDPolicyConstraints: CFString
let kSecOIDPolicyMappings: CFString
let kSecOIDPrivateKeyUsagePeriod: CFString
let kSecOIDQC_Statements: CFString
let kSecOIDSerialNumber: CFString
let kSecOIDServerAuth: CFString
let kSecOIDStateProvinceName: CFString
let kSecOIDStreetAddress: CFString
let kSecOIDSubjectAltName: CFString
let kSecOIDSubjectDirectoryAttributes: CFString
let kSecOIDSubjectEmailAddress: CFString
let kSecOIDSubjectInfoAccess: CFString
let kSecOIDSubjectKeyIdentifier: CFString
let kSecOIDSubjectPicture: CFString
let kSecOIDSubjectSignatureBitmap: CFString
let kSecOIDSurname: CFString
let kSecOIDTimeStamping: CFString
let kSecOIDTitle: CFString
let kSecOIDUseExemptions: CFString
let kSecOIDX509V1CertificateIssuerUniqueId: CFString
let kSecOIDX509V1CertificateSubjectUniqueId: CFString
let kSecOIDX509V1IssuerName: CFString
let kSecOIDX509V1IssuerNameCStruct: CFString
let kSecOIDX509V1IssuerNameLDAP: CFString
let kSecOIDX509V1IssuerNameStd: CFString
let kSecOIDX509V1SerialNumber: CFString
let kSecOIDX509V1Signature: CFString
let kSecOIDX509V1SignatureAlgorithm: CFString
let kSecOIDX509V1SignatureAlgorithmParameters: CFString
let kSecOIDX509V1SignatureAlgorithmTBS: CFString
let kSecOIDX509V1SignatureCStruct: CFString
let kSecOIDX509V1SignatureStruct: CFString
let kSecOIDX509V1SubjectName: CFString
let kSecOIDX509V1SubjectNameCStruct: CFString
let kSecOIDX509V1SubjectNameLDAP: CFString
let kSecOIDX509V1SubjectNameStd: CFString
let kSecOIDX509V1SubjectPublicKey: CFString
let kSecOIDX509V1SubjectPublicKeyAlgorithm: CFString
let kSecOIDX509V1SubjectPublicKeyAlgorithmParameters: CFString
let kSecOIDX509V1SubjectPublicKeyCStruct: CFString
let kSecOIDX509V1ValidityNotAfter: CFString
let kSecOIDX509V1ValidityNotBefore: CFString
let kSecOIDX509V1Version: CFString
let kSecOIDX509V3Certificate: CFString
let kSecOIDX509V3CertificateCStruct: CFString
let kSecOIDX509V3CertificateExtensionCStruct: CFString
let kSecOIDX509V3CertificateExtensionCritical: CFString
let kSecOIDX509V3CertificateExtensionId: CFString
let kSecOIDX509V3CertificateExtensionStruct: CFString
let kSecOIDX509V3CertificateExtensionType: CFString
let kSecOIDX509V3CertificateExtensionValue: CFString
let kSecOIDX509V3CertificateExtensionsCStruct: CFString
let kSecOIDX509V3CertificateExtensionsStruct: CFString
let kSecOIDX509V3CertificateNumberOfExtensions: CFString
let kSecOIDX509V3SignedCertificate: CFString
let kSecOIDX509V3SignedCertificateCStruct: CFString
let kSecOIDSRVName: CFString
func SecCodeGetTypeID() -> CFTypeID
func SecCodeCopySelf(flags: SecCSFlags, _ self: UnsafeMutablePointer<SecCode?>) -> OSStatus
var kSecCSUseAllArchitectures: UInt32 { get }
func SecCodeCopyStaticCode(code: SecCode, _ flags: SecCSFlags, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus
func SecCodeCopyHost(guest: SecCode, _ flags: SecCSFlags, _ host: UnsafeMutablePointer<SecCode?>) -> OSStatus
let kSecGuestAttributeCanonical: CFString
let kSecGuestAttributeHash: CFString
let kSecGuestAttributeMachPort: CFString
let kSecGuestAttributePid: CFString
let kSecGuestAttributeDynamicCode: CFString
let kSecGuestAttributeDynamicCodeInfoPlist: CFString
let kSecGuestAttributeArchitecture: CFString
let kSecGuestAttributeSubarchitecture: CFString
func SecCodeCopyGuestWithAttributes(host: SecCode?, _ attributes: CFDictionary?, _ flags: SecCSFlags, _ guest: UnsafeMutablePointer<SecCode?>) -> OSStatus
func SecCodeCheckValidity(code: SecCode, _ flags: SecCSFlags, _ requirement: SecRequirement?) -> OSStatus
func SecCodeCheckValidityWithErrors(code: SecCode, _ flags: SecCSFlags, _ requirement: SecRequirement?, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>) -> OSStatus
func SecCodeCopyPath(staticCode: SecStaticCode, _ flags: SecCSFlags, _ path: UnsafeMutablePointer<CFURL?>) -> OSStatus
func SecCodeCopyDesignatedRequirement(code: SecStaticCode, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
var kSecCSInternalInformation: UInt32 { get }
var kSecCSSigningInformation: UInt32 { get }
var kSecCSRequirementInformation: UInt32 { get }
var kSecCSDynamicInformation: UInt32 { get }
var kSecCSContentInformation: UInt32 { get }
let kSecCodeInfoCertificates: CFString
let kSecCodeInfoChangedFiles: CFString
let kSecCodeInfoCMS: CFString
let kSecCodeInfoDesignatedRequirement: CFString
let kSecCodeInfoEntitlements: CFString
let kSecCodeInfoEntitlementsDict: CFString
let kSecCodeInfoFlags: CFString
let kSecCodeInfoFormat: CFString
let kSecCodeInfoDigestAlgorithm: CFString
let kSecCodeInfoPlatformIdentifier: CFString
let kSecCodeInfoIdentifier: CFString
let kSecCodeInfoImplicitDesignatedRequirement: CFString
let kSecCodeInfoMainExecutable: CFString
let kSecCodeInfoPList: CFString
let kSecCodeInfoRequirements: CFString
let kSecCodeInfoRequirementData: CFString
let kSecCodeInfoSource: CFString
let kSecCodeInfoStatus: CFString
let kSecCodeInfoTeamIdentifier: CFString
let kSecCodeInfoTime: CFString
let kSecCodeInfoTimestamp: CFString
let kSecCodeInfoTrust: CFString
let kSecCodeInfoUnique: CFString
func SecCodeCopySigningInformation(code: SecStaticCode, _ flags: SecCSFlags, _ information: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
func SecCodeMapMemory(code: SecStaticCode, _ flags: SecCSFlags) -> OSStatus
var kSecCSDedicatedHost: UInt32 { get }
var kSecCSGenerateGuestHash: UInt32 { get }
func SecHostCreateGuest(host: SecGuestRef, _ status: UInt32, _ path: CFURL, _ attributes: CFDictionary?, _ flags: SecCSFlags, _ newGuest: UnsafeMutablePointer<SecGuestRef>) -> OSStatus
func SecHostRemoveGuest(host: SecGuestRef, _ guest: SecGuestRef, _ flags: SecCSFlags) -> OSStatus
func SecHostSelectGuest(guestRef: SecGuestRef, _ flags: SecCSFlags) -> OSStatus
func SecHostSelectedGuest(flags: SecCSFlags, _ guestRef: UnsafeMutablePointer<SecGuestRef>) -> OSStatus
func SecHostSetGuestStatus(guestRef: SecGuestRef, _ status: UInt32, _ attributes: CFDictionary?, _ flags: SecCSFlags) -> OSStatus
func SecHostSetHostingPort(hostingPort: mach_port_t, _ flags: SecCSFlags) -> OSStatus
enum SecTransformMetaAttributeType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Value
  case Name
  case Ref
  case Required
  case RequiresOutboundConnection
  case Deferred
  case Stream
  case CanCycle
  case Externalize
  case HasOutboundConnections
  case HasInboundConnection
}
typealias SecTransformAttributeRef = SecTransformAttribute
typealias SecTransformAttribute = CFTypeRef
typealias SecTransformStringOrAttribute = CFTypeRef
typealias SecTransformStringOrAttributeRef = SecTransformStringOrAttribute
typealias SecTransformActionBlock = () -> Unmanaged<AnyObject>?
typealias SecTransformAttributeActionBlock = (SecTransformAttribute, AnyObject) -> Unmanaged<AnyObject>?
typealias SecTransformDataBlock = (AnyObject) -> Unmanaged<AnyObject>?
typealias SecTransformInstanceBlock = () -> Unmanaged<CFError>?
typealias SecTransformImplementationRef = COpaquePointer
func SecTransformSetAttributeAction(ref: SecTransformImplementationRef, _ action: CFString, _ attribute: SecTransformStringOrAttribute?, _ newAction: SecTransformAttributeActionBlock) -> CFError?
func SecTransformSetDataAction(ref: SecTransformImplementationRef, _ action: CFString, _ newAction: SecTransformDataBlock) -> CFError?
func SecTransformSetTransformAction(ref: SecTransformImplementationRef, _ action: CFString, _ newAction: SecTransformActionBlock) -> CFError?
func SecTransformCustomGetAttribute(ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ type: SecTransformMetaAttributeType) -> AnyObject?
func SecTransformCustomSetAttribute(ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ type: SecTransformMetaAttributeType, _ value: AnyObject?) -> AnyObject?
func SecTransformPushbackAttribute(ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ value: AnyObject) -> AnyObject?
typealias SecTransformCreateFP = @convention(c) (CFString, SecTransform, SecTransformImplementationRef) -> SecTransformInstanceBlock
let kSecTransformActionCanExecute: CFString
let kSecTransformActionStartingExecution: CFString
let kSecTransformActionFinalize: CFString
let kSecTransformActionExternalizeExtraData: CFString
let kSecTransformActionProcessData: CFString
let kSecTransformActionInternalizeExtraData: CFString
let kSecTransformActionAttributeNotification: CFString
let kSecTransformActionAttributeValidation: CFString
func SecTransformRegister(uniqueName: CFString, _ createTransformFunction: SecTransformCreateFP, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func SecTransformCreate(name: CFString, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
func SecTransformNoData() -> AnyObject
let kSecDecodeTypeAttribute: CFString
func SecDecodeTransformCreate(DecodeType: AnyObject, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
let kSecDigestMD2: CFString
let kSecDigestMD4: CFString
let kSecDigestMD5: CFString
let kSecDigestSHA1: CFString
let kSecDigestSHA2: CFString
let kSecDigestHMACMD5: CFString
let kSecDigestHMACSHA1: CFString
let kSecDigestHMACSHA2: CFString
let kSecDigestTypeAttribute: CFString
let kSecDigestLengthAttribute: CFString
let kSecDigestHMACKeyAttribute: CFString
func SecDigestTransformCreate(digestType: AnyObject?, _ digestLength: CFIndex, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform
func SecDigestTransformGetTypeID() -> CFTypeID
let kSecBase64Encoding: CFString
let kSecBase32Encoding: CFString
let kSecZLibEncoding: CFString
let kSecEncodeTypeAttribute: CFString
let kSecLineLength64: CFString
let kSecLineLength76: CFString
let kSecEncodeLineLengthAttribute: CFString
let kSecCompressionRatio: CFString
func SecEncodeTransformCreate(encodeType: AnyObject, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
let kSecPaddingNoneKey: CFString
let kSecPaddingPKCS1Key: CFString
let kSecPaddingPKCS5Key: CFString
let kSecPaddingPKCS7Key: CFString
let kSecPaddingOAEPKey: CFString
let kSecModeNoneKey: CFString
let kSecModeECBKey: CFString
let kSecModeCBCKey: CFString
let kSecModeCFBKey: CFString
let kSecModeOFBKey: CFString
let kSecEncryptKey: CFString
let kSecPaddingKey: CFString
let kSecIVKey: CFString
let kSecEncryptionMode: CFString
let kSecOAEPMessageLengthAttributeName: CFString
let kSecOAEPEncodingParametersAttributeName: CFString
let kSecOAEPMGF1DigestAlgorithmAttributeName: CFString
func SecEncryptTransformCreate(keyRef: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform
func SecDecryptTransformCreate(keyRef: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform
func SecDecryptTransformGetTypeID() -> CFTypeID
func SecEncryptTransformGetTypeID() -> CFTypeID
func SecIdentityGetTypeID() -> CFTypeID
func SecIdentityCreateWithCertificate(keychainOrArray: AnyObject?, _ certificateRef: SecCertificate, _ identityRef: UnsafeMutablePointer<SecIdentity?>) -> OSStatus
func SecIdentityCopyCertificate(identityRef: SecIdentity, _ certificateRef: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
func SecIdentityCopyPrivateKey(identityRef: SecIdentity, _ privateKeyRef: UnsafeMutablePointer<SecKey?>) -> OSStatus
func SecIdentityCopyPreferred(name: CFString, _ keyUsage: CFArray?, _ validIssuers: CFArray?) -> SecIdentity?
func SecIdentitySetPreferred(identity: SecIdentity?, _ name: CFString, _ keyUsage: CFArray?) -> OSStatus
func SecIdentityCopySystemIdentity(domain: CFString, _ idRef: UnsafeMutablePointer<SecIdentity?>, _ actualDomain: UnsafeMutablePointer<CFString?>) -> OSStatus
func SecIdentitySetSystemIdentity(domain: CFString, _ idRef: SecIdentity?) -> OSStatus
let kSecIdentityDomainDefault: CFString
let kSecIdentityDomainKerberosKDC: CFString
class SecIdentitySearch {
}
typealias SecIdentitySearchRef = SecIdentitySearch
enum SecExternalFormat : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case FormatUnknown
  case FormatOpenSSL
  case FormatSSH
  case FormatBSAFE
  case FormatRawKey
  case FormatWrappedPKCS8
  case FormatWrappedOpenSSL
  case FormatWrappedSSH
  case FormatWrappedLSH
  case FormatX509Cert
  case FormatPEMSequence
  case FormatPKCS7
  case FormatPKCS12
  case FormatNetscapeCertSequence
  case FormatSSHv2
}
enum SecExternalItemType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ItemTypeUnknown
  case ItemTypePrivateKey
  case ItemTypePublicKey
  case ItemTypeSessionKey
  case ItemTypeCertificate
  case ItemTypeAggregate
}
struct SecItemImportExportFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PemArmour: SecItemImportExportFlags { get }
}
struct SecKeyImportExportFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ImportOnlyOne: SecKeyImportExportFlags { get }
  static var SecurePassphrase: SecKeyImportExportFlags { get }
  static var NoAccessControl: SecKeyImportExportFlags { get }
}
var SEC_KEY_IMPORT_EXPORT_PARAMS_VERSION: Int32 { get }
struct SecKeyImportExportParameters {
  var version: UInt32
  var flags: SecKeyImportExportFlags
  var passphrase: Unmanaged<AnyObject>
  var alertTitle: Unmanaged<CFString>
  var alertPrompt: Unmanaged<CFString>
  var accessRef: Unmanaged<SecAccess>?
  var keyUsage: CSSM_KEYUSE
  var keyAttributes: CSSM_KEYATTR_FLAGS
}
struct SecItemImportExportKeyParameters {
  var version: UInt32
  var flags: SecKeyImportExportFlags
  var passphrase: Unmanaged<AnyObject>
  var alertTitle: Unmanaged<CFString>
  var alertPrompt: Unmanaged<CFString>
  var accessRef: Unmanaged<SecAccess>?
  var keyUsage: Unmanaged<CFArray>?
  var keyAttributes: Unmanaged<CFArray>?
}
func SecItemExport(secItemOrArray: AnyObject, _ outputFormat: SecExternalFormat, _ flags: SecItemImportExportFlags, _ keyParams: UnsafePointer<SecItemImportExportKeyParameters>, _ exportedData: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecItemImport(importedData: CFData, _ fileNameOrExtension: CFString?, _ inputFormat: UnsafeMutablePointer<SecExternalFormat>, _ itemType: UnsafeMutablePointer<SecExternalItemType>, _ flags: SecItemImportExportFlags, _ keyParams: UnsafePointer<SecItemImportExportKeyParameters>, _ importKeychain: SecKeychain?, _ outItems: UnsafeMutablePointer<CFArray?>) -> OSStatus
let kSecImportExportPassphrase: CFString
let kSecImportExportKeychain: CFString
let kSecImportExportAccess: CFString
let kSecImportItemLabel: CFString
let kSecImportItemKeyID: CFString
let kSecImportItemTrust: CFString
let kSecImportItemCertChain: CFString
let kSecImportItemIdentity: CFString
func SecPKCS12Import(pkcs12_data: CFData, _ options: CFDictionary, _ items: UnsafeMutablePointer<CFArray?>) -> OSStatus
let kSecClass: CFString
let kSecClassInternetPassword: CFString
let kSecClassGenericPassword: CFString
let kSecClassCertificate: CFString
let kSecClassKey: CFString
let kSecClassIdentity: CFString
let kSecAttrAccessible: CFString
let kSecAttrAccess: CFString
let kSecAttrAccessControl: CFString
let kSecAttrAccessGroup: CFString
let kSecAttrSynchronizable: CFString
let kSecAttrSynchronizableAny: CFString
let kSecAttrCreationDate: CFString
let kSecAttrModificationDate: CFString
let kSecAttrDescription: CFString
let kSecAttrComment: CFString
let kSecAttrCreator: CFString
let kSecAttrType: CFString
let kSecAttrLabel: CFString
let kSecAttrIsInvisible: CFString
let kSecAttrIsNegative: CFString
let kSecAttrAccount: CFString
let kSecAttrService: CFString
let kSecAttrGeneric: CFString
let kSecAttrSecurityDomain: CFString
let kSecAttrServer: CFString
let kSecAttrProtocol: CFString
let kSecAttrAuthenticationType: CFString
let kSecAttrPort: CFString
let kSecAttrPath: CFString
let kSecAttrSubject: CFString
let kSecAttrIssuer: CFString
let kSecAttrSerialNumber: CFString
let kSecAttrSubjectKeyID: CFString
let kSecAttrPublicKeyHash: CFString
let kSecAttrCertificateType: CFString
let kSecAttrCertificateEncoding: CFString
let kSecAttrKeyClass: CFString
let kSecAttrApplicationLabel: CFString
let kSecAttrIsPermanent: CFString
let kSecAttrIsSensitive: CFString
let kSecAttrIsExtractable: CFString
let kSecAttrApplicationTag: CFString
let kSecAttrKeyType: CFString
let kSecAttrPRF: CFString
let kSecAttrSalt: CFString
let kSecAttrRounds: CFString
let kSecAttrKeySizeInBits: CFString
let kSecAttrEffectiveKeySize: CFString
let kSecAttrCanEncrypt: CFString
let kSecAttrCanDecrypt: CFString
let kSecAttrCanDerive: CFString
let kSecAttrCanSign: CFString
let kSecAttrCanVerify: CFString
let kSecAttrCanWrap: CFString
let kSecAttrCanUnwrap: CFString
let kSecAttrAccessibleWhenUnlocked: CFString
let kSecAttrAccessibleAfterFirstUnlock: CFString
let kSecAttrAccessibleAlways: CFString
let kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly: CFString
let kSecAttrAccessibleWhenUnlockedThisDeviceOnly: CFString
let kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly: CFString
let kSecAttrAccessibleAlwaysThisDeviceOnly: CFString
let kSecAttrProtocolFTP: CFString
let kSecAttrProtocolFTPAccount: CFString
let kSecAttrProtocolHTTP: CFString
let kSecAttrProtocolIRC: CFString
let kSecAttrProtocolNNTP: CFString
let kSecAttrProtocolPOP3: CFString
let kSecAttrProtocolSMTP: CFString
let kSecAttrProtocolSOCKS: CFString
let kSecAttrProtocolIMAP: CFString
let kSecAttrProtocolLDAP: CFString
let kSecAttrProtocolAppleTalk: CFString
let kSecAttrProtocolAFP: CFString
let kSecAttrProtocolTelnet: CFString
let kSecAttrProtocolSSH: CFString
let kSecAttrProtocolFTPS: CFString
let kSecAttrProtocolHTTPS: CFString
let kSecAttrProtocolHTTPProxy: CFString
let kSecAttrProtocolHTTPSProxy: CFString
let kSecAttrProtocolFTPProxy: CFString
let kSecAttrProtocolSMB: CFString
let kSecAttrProtocolRTSP: CFString
let kSecAttrProtocolRTSPProxy: CFString
let kSecAttrProtocolDAAP: CFString
let kSecAttrProtocolEPPC: CFString
let kSecAttrProtocolIPP: CFString
let kSecAttrProtocolNNTPS: CFString
let kSecAttrProtocolLDAPS: CFString
let kSecAttrProtocolTelnetS: CFString
let kSecAttrProtocolIMAPS: CFString
let kSecAttrProtocolIRCS: CFString
let kSecAttrProtocolPOP3S: CFString
let kSecAttrAuthenticationTypeNTLM: CFString
let kSecAttrAuthenticationTypeMSN: CFString
let kSecAttrAuthenticationTypeDPA: CFString
let kSecAttrAuthenticationTypeRPA: CFString
let kSecAttrAuthenticationTypeHTTPBasic: CFString
let kSecAttrAuthenticationTypeHTTPDigest: CFString
let kSecAttrAuthenticationTypeHTMLForm: CFString
let kSecAttrAuthenticationTypeDefault: CFString
let kSecAttrKeyClassPublic: CFString
let kSecAttrKeyClassPrivate: CFString
let kSecAttrKeyClassSymmetric: CFString
let kSecAttrKeyTypeRSA: CFString
let kSecAttrKeyTypeDSA: CFString
let kSecAttrKeyTypeAES: CFString
let kSecAttrKeyTypeDES: CFString
let kSecAttrKeyType3DES: CFString
let kSecAttrKeyTypeRC4: CFString
let kSecAttrKeyTypeRC2: CFString
let kSecAttrKeyTypeCAST: CFString
let kSecAttrKeyTypeECDSA: CFString
let kSecAttrKeyTypeEC: CFString
let kSecAttrPRFHmacAlgSHA1: CFString
let kSecAttrPRFHmacAlgSHA224: CFString
let kSecAttrPRFHmacAlgSHA256: CFString
let kSecAttrPRFHmacAlgSHA384: CFString
let kSecAttrPRFHmacAlgSHA512: CFString
let kSecMatchPolicy: CFString
let kSecMatchItemList: CFString
let kSecMatchSearchList: CFString
let kSecMatchIssuers: CFString
let kSecMatchEmailAddressIfPresent: CFString
let kSecMatchSubjectContains: CFString
let kSecMatchSubjectStartsWith: CFString
let kSecMatchSubjectEndsWith: CFString
let kSecMatchSubjectWholeString: CFString
let kSecMatchCaseInsensitive: CFString
let kSecMatchDiacriticInsensitive: CFString
let kSecMatchWidthInsensitive: CFString
let kSecMatchTrustedOnly: CFString
let kSecMatchValidOnDate: CFString
let kSecMatchLimit: CFString
let kSecMatchLimitOne: CFString
let kSecMatchLimitAll: CFString
let kSecReturnData: CFString
let kSecReturnAttributes: CFString
let kSecReturnRef: CFString
let kSecReturnPersistentRef: CFString
let kSecValueData: CFString
let kSecValueRef: CFString
let kSecValuePersistentRef: CFString
let kSecUseItemList: CFString
let kSecUseKeychain: CFString
let kSecUseOperationPrompt: CFString
let kSecUseAuthenticationUI: CFString
let kSecUseAuthenticationContext: CFString
let kSecUseAuthenticationUIAllow: CFString
let kSecUseAuthenticationUIFail: CFString
let kSecUseAuthenticationUISkip: CFString
func SecItemCopyMatching(query: CFDictionary, _ result: UnsafeMutablePointer<AnyObject?>) -> OSStatus
func SecItemAdd(attributes: CFDictionary, _ result: UnsafeMutablePointer<AnyObject?>) -> OSStatus
func SecItemUpdate(query: CFDictionary, _ attributesToUpdate: CFDictionary) -> OSStatus
func SecItemDelete(query: CFDictionary) -> OSStatus
var kSecKeyKeyClass: Int32 { get }
var kSecKeyPrintName: Int32 { get }
var kSecKeyAlias: Int32 { get }
var kSecKeyPermanent: Int32 { get }
var kSecKeyPrivate: Int32 { get }
var kSecKeyModifiable: Int32 { get }
var kSecKeyLabel: Int32 { get }
var kSecKeyApplicationTag: Int32 { get }
var kSecKeyKeyCreator: Int32 { get }
var kSecKeyKeyType: Int32 { get }
var kSecKeyKeySizeInBits: Int32 { get }
var kSecKeyEffectiveKeySize: Int32 { get }
var kSecKeyStartDate: Int32 { get }
var kSecKeyEndDate: Int32 { get }
var kSecKeySensitive: Int32 { get }
var kSecKeyAlwaysSensitive: Int32 { get }
var kSecKeyExtractable: Int32 { get }
var kSecKeyNeverExtractable: Int32 { get }
var kSecKeyEncrypt: Int32 { get }
var kSecKeyDecrypt: Int32 { get }
var kSecKeyDerive: Int32 { get }
var kSecKeySign: Int32 { get }
var kSecKeyVerify: Int32 { get }
var kSecKeySignRecover: Int32 { get }
var kSecKeyVerifyRecover: Int32 { get }
var kSecKeyWrap: Int32 { get }
var kSecKeyUnwrap: Int32 { get }
enum SecCredentialType : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case Default
  case WithUI
  case NoUI
}
enum SecPadding : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case PKCS1
  case SigRaw
  case PKCS1MD2
  case PKCS1MD5
  case PKCS1SHA1
}
enum SecKeySizes : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SecDefaultKeySize
  case Sec3DES192
  case SecAES128
  static var SecAES192: SecKeySizes { get }
  case SecAES256
  static var Secp192r1: SecKeySizes { get }
  static var Secp256r1: SecKeySizes { get }
  case Secp384r1
  case Secp521r1
  case SecRSAMin
  case SecRSAMax
}
let kSecPrivateKeyAttrs: CFString
let kSecPublicKeyAttrs: CFString
func SecKeyGetTypeID() -> CFTypeID
func SecKeyGetBlockSize(key: SecKey) -> Int
func SecKeyGenerateSymmetric(parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
func SecKeyCreateFromData(parameters: CFDictionary, _ keyData: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
func SecKeyGeneratePair(parameters: CFDictionary, _ publicKey: UnsafeMutablePointer<SecKey?>, _ privateKey: UnsafeMutablePointer<SecKey?>) -> OSStatus
typealias SecKeyGeneratePairBlock = (SecKey, SecKey, CFError) -> Void
func SecKeyGeneratePairAsync(parameters: CFDictionary, _ deliveryQueue: dispatch_queue_t, _ result: SecKeyGeneratePairBlock)
func SecKeyDeriveFromPassword(password: CFString, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
func SecKeyWrapSymmetric(keyToWrap: SecKey, _ wrappingKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
func SecKeyUnwrapSymmetric(keyToUnwrap: UnsafeMutablePointer<Unmanaged<CFData>?>, _ unwrappingKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
var kSecUnlockStateStatus: UInt32 { get }
var kSecReadPermStatus: UInt32 { get }
var kSecWritePermStatus: UInt32 { get }
var SEC_KEYCHAIN_SETTINGS_VERS1: Int32 { get }
struct SecKeychainSettings {
  var version: UInt32
  var lockOnSleep: DarwinBoolean
  var useLockInterval: DarwinBoolean
  var lockInterval: UInt32
  init()
  init(version: UInt32, lockOnSleep: DarwinBoolean, useLockInterval: DarwinBoolean, lockInterval: UInt32)
}
enum SecAuthenticationType : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case NTLM
  case MSN
  case DPA
  case RPA
  case HTTPBasic
  case HTTPDigest
  case HTMLForm
  case Default
  case Any
}
enum SecProtocolType : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case FTP
  case FTPAccount
  case HTTP
  case IRC
  case NNTP
  case POP3
  case SMTP
  case SOCKS
  case IMAP
  case LDAP
  case AppleTalk
  case AFP
  case Telnet
  case SSH
  case FTPS
  case HTTPS
  case HTTPProxy
  case HTTPSProxy
  case FTPProxy
  case CIFS
  case SMB
  case RTSP
  case RTSPProxy
  case DAAP
  case EPPC
  case IPP
  case NNTPS
  case LDAPS
  case TelnetS
  case IMAPS
  case IRCS
  case POP3S
  case CVSpserver
  case SVN
  case Any
}
enum SecKeychainEvent : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case LockEvent
  case UnlockEvent
  case AddEvent
  case DeleteEvent
  case UpdateEvent
  case PasswordChangedEvent
  case DefaultChangedEvent
  case DataAccessEvent
  case KeychainListChangedEvent
  case TrustSettingsChangedEvent
}
struct SecKeychainEventMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LockEventMask: SecKeychainEventMask { get }
  static var UnlockEventMask: SecKeychainEventMask { get }
  static var AddEventMask: SecKeychainEventMask { get }
  static var DeleteEventMask: SecKeychainEventMask { get }
  static var UpdateEventMask: SecKeychainEventMask { get }
  static var PasswordChangedEventMask: SecKeychainEventMask { get }
  static var DefaultChangedEventMask: SecKeychainEventMask { get }
  static var DataAccessEventMask: SecKeychainEventMask { get }
  static var KeychainListChangedMask: SecKeychainEventMask { get }
  static var TrustSettingsChangedEventMask: SecKeychainEventMask { get }
  static var EveryEventMask: SecKeychainEventMask { get }
}
struct SecKeychainCallbackInfo {
  var version: UInt32
  var item: Unmanaged<SecKeychainItem>
  var keychain: Unmanaged<SecKeychain>
  var pid: pid_t
}
func SecKeychainGetTypeID() -> CFTypeID
func SecKeychainGetVersion(returnVers: UnsafeMutablePointer<UInt32>) -> OSStatus
func SecKeychainOpen(pathName: UnsafePointer<Int8>, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainCreate(pathName: UnsafePointer<Int8>, _ passwordLength: UInt32, _ password: UnsafePointer<Void>, _ promptUser: Bool, _ initialAccess: SecAccess?, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainDelete(keychainOrArray: SecKeychain?) -> OSStatus
func SecKeychainSetSettings(keychain: SecKeychain?, _ newSettings: UnsafePointer<SecKeychainSettings>) -> OSStatus
func SecKeychainCopySettings(keychain: SecKeychain?, _ outSettings: UnsafeMutablePointer<SecKeychainSettings>) -> OSStatus
func SecKeychainUnlock(keychain: SecKeychain?, _ passwordLength: UInt32, _ password: UnsafePointer<Void>, _ usePassword: Bool) -> OSStatus
func SecKeychainLock(keychain: SecKeychain?) -> OSStatus
func SecKeychainLockAll() -> OSStatus
func SecKeychainCopyDefault(keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainSetDefault(keychain: SecKeychain?) -> OSStatus
func SecKeychainCopySearchList(searchList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecKeychainSetSearchList(searchList: CFArray) -> OSStatus
enum SecPreferencesDomain : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case User
  case System
  case Common
  case Dynamic
}
func SecKeychainCopyDomainDefault(domain: SecPreferencesDomain, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainSetDomainDefault(domain: SecPreferencesDomain, _ keychain: SecKeychain?) -> OSStatus
func SecKeychainCopyDomainSearchList(domain: SecPreferencesDomain, _ searchList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecKeychainSetDomainSearchList(domain: SecPreferencesDomain, _ searchList: CFArray) -> OSStatus
func SecKeychainSetPreferenceDomain(domain: SecPreferencesDomain) -> OSStatus
func SecKeychainGetPreferenceDomain(domain: UnsafeMutablePointer<SecPreferencesDomain>) -> OSStatus
func SecKeychainGetStatus(keychain: SecKeychain?, _ keychainStatus: UnsafeMutablePointer<SecKeychainStatus>) -> OSStatus
func SecKeychainGetPath(keychain: SecKeychain?, _ ioPathLength: UnsafeMutablePointer<UInt32>, _ pathName: UnsafeMutablePointer<Int8>) -> OSStatus
func SecKeychainAttributeInfoForItemID(keychain: SecKeychain?, _ itemID: UInt32, _ info: UnsafeMutablePointer<UnsafeMutablePointer<SecKeychainAttributeInfo>>) -> OSStatus
func SecKeychainFreeAttributeInfo(info: UnsafeMutablePointer<SecKeychainAttributeInfo>) -> OSStatus
typealias SecKeychainCallback = @convention(c) (SecKeychainEvent, UnsafeMutablePointer<SecKeychainCallbackInfo>, UnsafeMutablePointer<Void>) -> OSStatus
func SecKeychainAddCallback(callbackFunction: SecKeychainCallback, _ eventMask: SecKeychainEventMask, _ userContext: UnsafeMutablePointer<Void>) -> OSStatus
func SecKeychainRemoveCallback(callbackFunction: SecKeychainCallback) -> OSStatus
func SecKeychainAddInternetPassword(keychain: SecKeychain?, _ serverNameLength: UInt32, _ serverName: UnsafePointer<Int8>, _ securityDomainLength: UInt32, _ securityDomain: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ pathLength: UInt32, _ path: UnsafePointer<Int8>, _ port: UInt16, _ protocol: SecProtocolType, _ authenticationType: SecAuthenticationType, _ passwordLength: UInt32, _ passwordData: UnsafePointer<Void>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainFindInternetPassword(keychainOrArray: AnyObject?, _ serverNameLength: UInt32, _ serverName: UnsafePointer<Int8>, _ securityDomainLength: UInt32, _ securityDomain: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ pathLength: UInt32, _ path: UnsafePointer<Int8>, _ port: UInt16, _ protocol: SecProtocolType, _ authenticationType: SecAuthenticationType, _ passwordLength: UnsafeMutablePointer<UInt32>, _ passwordData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainAddGenericPassword(keychain: SecKeychain?, _ serviceNameLength: UInt32, _ serviceName: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ passwordLength: UInt32, _ passwordData: UnsafePointer<Void>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainFindGenericPassword(keychainOrArray: AnyObject?, _ serviceNameLength: UInt32, _ serviceName: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ passwordLength: UnsafeMutablePointer<UInt32>, _ passwordData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainSetUserInteractionAllowed(state: Bool) -> OSStatus
func SecKeychainGetUserInteractionAllowed(state: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func SecKeychainCopyAccess(keychain: SecKeychain?, _ access: UnsafeMutablePointer<SecAccess?>) -> OSStatus
func SecKeychainSetAccess(keychain: SecKeychain?, _ access: SecAccess) -> OSStatus
enum SecItemClass : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case InternetPasswordItemClass
  case GenericPasswordItemClass
  case CertificateItemClass
  case PublicKeyItemClass
  case PrivateKeyItemClass
  case SymmetricKeyItemClass
}
enum SecItemAttr : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case CreationDateItemAttr
  case ModDateItemAttr
  case DescriptionItemAttr
  case CommentItemAttr
  case CreatorItemAttr
  case TypeItemAttr
  case ScriptCodeItemAttr
  case LabelItemAttr
  case InvisibleItemAttr
  case NegativeItemAttr
  case CustomIconItemAttr
  case AccountItemAttr
  case ServiceItemAttr
  case GenericItemAttr
  case SecurityDomainItemAttr
  case ServerItemAttr
  case AuthenticationTypeItemAttr
  case PortItemAttr
  case PathItemAttr
  case VolumeItemAttr
  case AddressItemAttr
  case SignatureItemAttr
  case ProtocolItemAttr
  case CertificateType
  case CertificateEncoding
  case CrlType
  case CrlEncoding
  case Alias
}
typealias SecAFPServerSignature = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
typealias SecPublicKeyHash = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
func SecKeychainItemGetTypeID() -> CFTypeID
func SecKeychainItemModifyAttributesAndData(itemRef: SecKeychainItem, _ attrList: UnsafePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>) -> OSStatus
func SecKeychainItemCreateFromContent(itemClass: SecItemClass, _ attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>, _ keychainRef: SecKeychain?, _ initialAccess: SecAccess?, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainItemModifyContent(itemRef: SecKeychainItem, _ attrList: UnsafePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>) -> OSStatus
func SecKeychainItemCopyContent(itemRef: SecKeychainItem, _ itemClass: UnsafeMutablePointer<SecItemClass>, _ attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ length: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus
func SecKeychainItemFreeContent(attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ data: UnsafeMutablePointer<Void>) -> OSStatus
func SecKeychainItemCopyAttributesAndData(itemRef: SecKeychainItem, _ info: UnsafeMutablePointer<SecKeychainAttributeInfo>, _ itemClass: UnsafeMutablePointer<SecItemClass>, _ attrList: UnsafeMutablePointer<UnsafeMutablePointer<SecKeychainAttributeList>>, _ length: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus
func SecKeychainItemFreeAttributesAndData(attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ data: UnsafeMutablePointer<Void>) -> OSStatus
func SecKeychainItemDelete(itemRef: SecKeychainItem) -> OSStatus
func SecKeychainItemCopyKeychain(itemRef: SecKeychainItem, _ keychainRef: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainItemCreateCopy(itemRef: SecKeychainItem, _ destKeychainRef: SecKeychain?, _ initialAccess: SecAccess, _ itemCopy: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainItemCreatePersistentReference(itemRef: SecKeychainItem, _ persistentItemRef: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecKeychainItemCopyFromPersistentReference(persistentItemRef: CFData, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainItemCopyAccess(itemRef: SecKeychainItem, _ access: UnsafeMutablePointer<SecAccess?>) -> OSStatus
func SecKeychainItemSetAccess(itemRef: SecKeychainItem, _ access: SecAccess) -> OSStatus
let kSecPolicyAppleX509Basic: CFString
let kSecPolicyAppleSSL: CFString
let kSecPolicyAppleSMIME: CFString
let kSecPolicyAppleEAP: CFString
let kSecPolicyAppleIPsec: CFString
let kSecPolicyApplePKINITClient: CFString
let kSecPolicyApplePKINITServer: CFString
let kSecPolicyAppleCodeSigning: CFString
let kSecPolicyMacAppStoreReceipt: CFString
let kSecPolicyAppleIDValidation: CFString
let kSecPolicyAppleTimeStamping: CFString
let kSecPolicyAppleRevocation: CFString
let kSecPolicyApplePassbookSigning: CFString
let kSecPolicyApplePayIssuerEncryption: CFString
let kSecPolicyOid: CFString
let kSecPolicyName: CFString
let kSecPolicyClient: CFString
let kSecPolicyRevocationFlags: CFString
let kSecPolicyTeamIdentifier: CFString
func SecPolicyGetTypeID() -> CFTypeID
func SecPolicyCopyProperties(policyRef: SecPolicy) -> CFDictionary
func SecPolicyCreateBasicX509() -> SecPolicy
func SecPolicyCreateSSL(server: Bool, _ hostname: CFString?) -> SecPolicy
var kSecRevocationOCSPMethod: Int { get }
var kSecRevocationCRLMethod: Int { get }
var kSecRevocationPreferCRL: Int { get }
var kSecRevocationRequirePositiveResponse: Int { get }
var kSecRevocationNetworkAccessDisabled: Int { get }
var kSecRevocationUseAnyAvailableMethod: Int { get }
func SecPolicyCreateRevocation(revocationFlags: CFOptionFlags) -> SecPolicy
func SecPolicyCreateWithProperties(policyIdentifier: AnyObject, _ properties: CFDictionary?) -> SecPolicy?
let kSecPolicyKU_DigitalSignature: CFString
let kSecPolicyKU_NonRepudiation: CFString
let kSecPolicyKU_KeyEncipherment: CFString
let kSecPolicyKU_DataEncipherment: CFString
let kSecPolicyKU_KeyAgreement: CFString
let kSecPolicyKU_KeyCertSign: CFString
let kSecPolicyKU_CRLSign: CFString
let kSecPolicyKU_EncipherOnly: CFString
let kSecPolicyKU_DecipherOnly: CFString
class SecPolicySearch {
}
typealias SecPolicySearchRef = SecPolicySearch
func SecRequirementGetTypeID() -> CFTypeID
func SecRequirementCreateWithData(data: CFData, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
func SecRequirementCreateWithString(text: CFString, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
func SecRequirementCreateWithStringAndErrors(text: CFString, _ flags: SecCSFlags, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
func SecRequirementCopyData(requirement: SecRequirement, _ flags: SecCSFlags, _ data: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecRequirementCopyString(requirement: SecRequirement, _ flags: SecCSFlags, _ text: UnsafeMutablePointer<CFString?>) -> OSStatus
let kSecKeyAttributeName: CFString
let kSecSignatureAttributeName: CFString
let kSecInputIsAttributeName: CFString
let kSecInputIsPlainText: CFString
let kSecInputIsDigest: CFString
let kSecInputIsRaw: CFString
func SecSignTransformCreate(key: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
func SecVerifyTransformCreate(key: SecKey, _ signature: CFData?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
func SecStaticCodeGetTypeID() -> CFTypeID
let kSecCodeAttributeArchitecture: CFString
let kSecCodeAttributeSubarchitecture: CFString
let kSecCodeAttributeUniversalFileOffset: CFString
let kSecCodeAttributeBundleVersion: CFString
func SecStaticCodeCreateWithPath(path: CFURL, _ flags: SecCSFlags, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus
func SecStaticCodeCreateWithPathAndAttributes(path: CFURL, _ flags: SecCSFlags, _ attributes: CFDictionary, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus
var kSecCSCheckAllArchitectures: UInt32 { get }
var kSecCSDoNotValidateExecutable: UInt32 { get }
var kSecCSDoNotValidateResources: UInt32 { get }
var kSecCSBasicValidateOnly: UInt32 { get }
var kSecCSCheckNestedCode: UInt32 { get }
var kSecCSStrictValidate: UInt32 { get }
var kSecCSFullReport: UInt32 { get }
var kSecCSCheckGatekeeperArchitectures: UInt32 { get }
var kSecCSRestrictSymlinks: UInt32 { get }
func SecStaticCodeCheckValidity(staticCode: SecStaticCode, _ flags: SecCSFlags, _ requirement: SecRequirement?) -> OSStatus
func SecStaticCodeCheckValidityWithErrors(staticCode: SecStaticCode, _ flags: SecCSFlags, _ requirement: SecRequirement?, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>) -> OSStatus
class SecTask {
}
typealias SecTaskRef = SecTask
func SecTaskGetTypeID() -> CFTypeID
func SecTaskCreateWithAuditToken(allocator: CFAllocator?, _ token: audit_token_t) -> SecTask?
func SecTaskCreateFromSelf(allocator: CFAllocator?) -> SecTask?
func SecTaskCopyValueForEntitlement(task: SecTask, _ entitlement: CFString, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> AnyObject?
func SecTaskCopyValuesForEntitlements(task: SecTask, _ entitlements: CFArray, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary?
let kSecTransformErrorDomain: CFString
let kSecTransformPreviousErrorKey: CFString
let kSecTransformAbortOriginatorKey: CFString
var kSecTransformErrorAttributeNotFound: CFIndex { get }
var kSecTransformErrorInvalidOperation: CFIndex { get }
var kSecTransformErrorNotInitializedCorrectly: CFIndex { get }
var kSecTransformErrorMoreThanOneOutput: CFIndex { get }
var kSecTransformErrorInvalidInputDictionary: CFIndex { get }
var kSecTransformErrorInvalidAlgorithm: CFIndex { get }
var kSecTransformErrorInvalidLength: CFIndex { get }
var kSecTransformErrorInvalidType: CFIndex { get }
var kSecTransformErrorInvalidInput: CFIndex { get }
var kSecTransformErrorNameAlreadyRegistered: CFIndex { get }
var kSecTransformErrorUnsupportedAttribute: CFIndex { get }
var kSecTransformOperationNotSupportedOnGroup: CFIndex { get }
var kSecTransformErrorMissingParameter: CFIndex { get }
var kSecTransformErrorInvalidConnection: CFIndex { get }
var kSecTransformTransformIsExecuting: CFIndex { get }
var kSecTransformInvalidOverride: CFIndex { get }
var kSecTransformTransformIsNotRegistered: CFIndex { get }
var kSecTransformErrorAbortInProgress: CFIndex { get }
var kSecTransformErrorAborted: CFIndex { get }
var kSecTransformInvalidArgument: CFIndex { get }
typealias SecTransform = CFTypeRef
typealias SecTransformRef = SecTransform
typealias SecGroupTransform = CFTypeRef
typealias SecGroupTransformRef = SecGroupTransform
func SecTransformGetTypeID() -> CFTypeID
func SecGroupTransformGetTypeID() -> CFTypeID
let kSecTransformInputAttributeName: CFString
let kSecTransformOutputAttributeName: CFString
let kSecTransformDebugAttributeName: CFString
let kSecTransformTransformName: CFString
let kSecTransformAbortAttributeName: CFString
func SecTransformCreateFromExternalRepresentation(dictionary: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
func SecTransformCopyExternalRepresentation(transformRef: SecTransform) -> CFDictionary
func SecTransformCreateGroupTransform() -> SecGroupTransform
func SecTransformConnectTransforms(sourceTransformRef: SecTransform, _ sourceAttributeName: CFString, _ destinationTransformRef: SecTransform, _ destinationAttributeName: CFString, _ group: SecGroupTransform, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecGroupTransform?
func SecTransformSetAttribute(transformRef: SecTransform, _ key: CFString, _ value: AnyObject, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func SecTransformGetAttribute(transformRef: SecTransform, _ key: CFString) -> AnyObject?
func SecTransformFindByName(transform: SecGroupTransform, _ name: CFString) -> SecTransform?
func SecTransformExecute(transformRef: SecTransform, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> AnyObject
typealias SecMessageBlock = (AnyObject?, CFError?, Bool) -> Void
func SecTransformExecuteAsync(transformRef: SecTransform, _ deliveryQueue: dispatch_queue_t, _ deliveryBlock: SecMessageBlock)
func SecTransformCreateReadTransformWithReadStream(inputStream: CFReadStream) -> SecTransform
typealias SecTrustResultType = UInt32
var kSecTrustResultInvalid: Int { get }
var kSecTrustResultProceed: Int { get }
var kSecTrustResultDeny: Int { get }
var kSecTrustResultUnspecified: Int { get }
var kSecTrustResultRecoverableTrustFailure: Int { get }
var kSecTrustResultFatalTrustFailure: Int { get }
var kSecTrustResultOtherError: Int { get }
class SecTrust {
}
typealias SecTrustRef = SecTrust
let kSecPropertyTypeTitle: CFString
let kSecPropertyTypeError: CFString
let kSecTrustEvaluationDate: CFString
let kSecTrustExtendedValidation: CFString
let kSecTrustOrganizationName: CFString
let kSecTrustResultValue: CFString
let kSecTrustRevocationChecked: CFString
let kSecTrustRevocationValidUntilDate: CFString
typealias SecTrustCallback = (SecTrust, SecTrustResultType) -> Void
func SecTrustGetTypeID() -> CFTypeID
func SecTrustCreateWithCertificates(certificates: AnyObject, _ policies: AnyObject?, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
func SecTrustSetPolicies(trust: SecTrust, _ policies: AnyObject) -> OSStatus
func SecTrustCopyPolicies(trust: SecTrust, _ policies: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSetNetworkFetchAllowed(trust: SecTrust, _ allowFetch: Bool) -> OSStatus
func SecTrustGetNetworkFetchAllowed(trust: SecTrust, _ allowFetch: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func SecTrustSetAnchorCertificates(trust: SecTrust, _ anchorCertificates: CFArray) -> OSStatus
func SecTrustSetAnchorCertificatesOnly(trust: SecTrust, _ anchorCertificatesOnly: Bool) -> OSStatus
func SecTrustCopyCustomAnchorCertificates(trust: SecTrust, _ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSetVerifyDate(trust: SecTrust, _ verifyDate: CFDate) -> OSStatus
func SecTrustGetVerifyTime(trust: SecTrust) -> CFAbsoluteTime
func SecTrustEvaluate(trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
func SecTrustEvaluateAsync(trust: SecTrust, _ queue: dispatch_queue_t?, _ result: SecTrustCallback) -> OSStatus
func SecTrustGetTrustResult(trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
func SecTrustCopyPublicKey(trust: SecTrust) -> SecKey?
func SecTrustGetCertificateCount(trust: SecTrust) -> CFIndex
func SecTrustGetCertificateAtIndex(trust: SecTrust, _ ix: CFIndex) -> SecCertificate?
func SecTrustCopyExceptions(trust: SecTrust) -> CFData
func SecTrustSetExceptions(trust: SecTrust, _ exceptions: CFData) -> Bool
func SecTrustCopyProperties(trust: SecTrust) -> CFArray?
func SecTrustCopyResult(trust: SecTrust) -> CFDictionary?
func SecTrustSetOCSPResponse(trust: SecTrust, _ responseData: AnyObject?) -> OSStatus
struct SecTrustOptionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AllowExpired: SecTrustOptionFlags { get }
  static var LeafIsCA: SecTrustOptionFlags { get }
  static var FetchIssuerFromNet: SecTrustOptionFlags { get }
  static var AllowExpiredRoot: SecTrustOptionFlags { get }
  static var RequireRevPerCert: SecTrustOptionFlags { get }
  static var UseTrustSettings: SecTrustOptionFlags { get }
  static var ImplicitAnchors: SecTrustOptionFlags { get }
}
func SecTrustSetOptions(trustRef: SecTrust, _ options: SecTrustOptionFlags) -> OSStatus
func SecTrustSetKeychains(trust: SecTrust, _ keychainOrArray: AnyObject?) -> OSStatus
func SecTrustCopyAnchorCertificates(anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
var kSecTrustSettingsPolicy: String { get }
var kSecTrustSettingsApplication: String { get }
var kSecTrustSettingsPolicyString: String { get }
var kSecTrustSettingsKeyUsage: String { get }
var kSecTrustSettingsAllowedError: String { get }
var kSecTrustSettingsResult: String { get }
struct SecTrustSettingsKeyUsage : OptionSetType {
  init(rawValue: uint32)
  let rawValue: uint32
  static var UseSignature: SecTrustSettingsKeyUsage { get }
  static var UseEnDecryptData: SecTrustSettingsKeyUsage { get }
  static var UseEnDecryptKey: SecTrustSettingsKeyUsage { get }
  static var UseSignCert: SecTrustSettingsKeyUsage { get }
  static var UseSignRevocation: SecTrustSettingsKeyUsage { get }
  static var UseKeyExchange: SecTrustSettingsKeyUsage { get }
  static var UseAny: SecTrustSettingsKeyUsage { get }
}
enum SecTrustSettingsResult : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case Invalid
  case TrustRoot
  case TrustAsRoot
  case Deny
  case Unspecified
}
enum SecTrustSettingsDomain : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case User
  case Admin
  case System
}
func SecTrustSettingsCopyTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsSetTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettingsDictOrArray: AnyObject?) -> OSStatus
func SecTrustSettingsRemoveTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain) -> OSStatus
func SecTrustSettingsCopyCertificates(domain: SecTrustSettingsDomain, _ certArray: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsCopyModificationDate(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ modificationDate: UnsafeMutablePointer<CFDate?>) -> OSStatus
func SecTrustSettingsCreateExternalRepresentation(domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecTrustSettingsImportExternalRepresentation(domain: SecTrustSettingsDomain, _ trustSettings: CFData) -> OSStatus
func SecTrustedApplicationGetTypeID() -> CFTypeID
func SecTrustedApplicationCreateFromPath(path: UnsafePointer<Int8>, _ app: UnsafeMutablePointer<SecTrustedApplication?>) -> OSStatus
func SecTrustedApplicationCopyData(appRef: SecTrustedApplication, _ data: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecTrustedApplicationSetData(appRef: SecTrustedApplication, _ data: CFData) -> OSStatus
typealias SSLContextRef = SSLContext
class SSLContext {
}
typealias SSLConnectionRef = UnsafePointer<Void>
enum SSLProtocol : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case SSLProtocolUnknown
  case SSLProtocol3
  case TLSProtocol1
  case TLSProtocol11
  case TLSProtocol12
  case DTLSProtocol1
  case SSLProtocol2
  case SSLProtocol3Only
  case TLSProtocol1Only
  case SSLProtocolAll
}
enum SSLSessionOption : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case BreakOnServerAuth
  case BreakOnCertRequested
  case BreakOnClientAuth
  case FalseStart
  case SendOneByteRecord
  case AllowServerIdentityChange
  case Fallback
  case BreakOnClientHello
}
enum SSLSessionState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Idle
  case Handshake
  case Connected
  case Closed
  case Aborted
}
enum SSLClientCertificateState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case CertNone
  case CertRequested
  case CertSent
  case CertRejected
}
typealias SSLReadFunc = @convention(c) (SSLConnectionRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Int>) -> OSStatus
typealias SSLWriteFunc = @convention(c) (SSLConnectionRef, UnsafePointer<Void>, UnsafeMutablePointer<Int>) -> OSStatus
var errSSLProtocol: OSStatus { get }
var errSSLNegotiation: OSStatus { get }
var errSSLFatalAlert: OSStatus { get }
var errSSLWouldBlock: OSStatus { get }
var errSSLSessionNotFound: OSStatus { get }
var errSSLClosedGraceful: OSStatus { get }
var errSSLClosedAbort: OSStatus { get }
var errSSLXCertChainInvalid: OSStatus { get }
var errSSLBadCert: OSStatus { get }
var errSSLCrypto: OSStatus { get }
var errSSLInternal: OSStatus { get }
var errSSLModuleAttach: OSStatus { get }
var errSSLUnknownRootCert: OSStatus { get }
var errSSLNoRootCert: OSStatus { get }
var errSSLCertExpired: OSStatus { get }
var errSSLCertNotYetValid: OSStatus { get }
var errSSLClosedNoNotify: OSStatus { get }
var errSSLBufferOverflow: OSStatus { get }
var errSSLBadCipherSuite: OSStatus { get }
var errSSLPeerUnexpectedMsg: OSStatus { get }
var errSSLPeerBadRecordMac: OSStatus { get }
var errSSLPeerDecryptionFail: OSStatus { get }
var errSSLPeerRecordOverflow: OSStatus { get }
var errSSLPeerDecompressFail: OSStatus { get }
var errSSLPeerHandshakeFail: OSStatus { get }
var errSSLPeerBadCert: OSStatus { get }
var errSSLPeerUnsupportedCert: OSStatus { get }
var errSSLPeerCertRevoked: OSStatus { get }
var errSSLPeerCertExpired: OSStatus { get }
var errSSLPeerCertUnknown: OSStatus { get }
var errSSLIllegalParam: OSStatus { get }
var errSSLPeerUnknownCA: OSStatus { get }
var errSSLPeerAccessDenied: OSStatus { get }
var errSSLPeerDecodeError: OSStatus { get }
var errSSLPeerDecryptError: OSStatus { get }
var errSSLPeerExportRestriction: OSStatus { get }
var errSSLPeerProtocolVersion: OSStatus { get }
var errSSLPeerInsufficientSecurity: OSStatus { get }
var errSSLPeerInternalError: OSStatus { get }
var errSSLPeerUserCancelled: OSStatus { get }
var errSSLPeerNoRenegotiation: OSStatus { get }
var errSSLPeerAuthCompleted: OSStatus { get }
var errSSLClientCertRequested: OSStatus { get }
var errSSLHostNameMismatch: OSStatus { get }
var errSSLConnectionRefused: OSStatus { get }
var errSSLDecryptionFail: OSStatus { get }
var errSSLBadRecordMac: OSStatus { get }
var errSSLRecordOverflow: OSStatus { get }
var errSSLBadConfiguration: OSStatus { get }
var errSSLUnexpectedRecord: OSStatus { get }
var errSSLWeakPeerEphemeralDHKey: OSStatus { get }
var errSSLClientHelloReceived: OSStatus { get }
enum SSLProtocolSide : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case ServerSide
  case ClientSide
}
enum SSLConnectionType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case StreamType
  case DatagramType
}
func SSLContextGetTypeID() -> CFTypeID
func SSLCreateContext(alloc: CFAllocator?, _ protocolSide: SSLProtocolSide, _ connectionType: SSLConnectionType) -> SSLContext?
func SSLGetSessionState(context: SSLContext, _ state: UnsafeMutablePointer<SSLSessionState>) -> OSStatus
func SSLSetSessionOption(context: SSLContext, _ option: SSLSessionOption, _ value: Bool) -> OSStatus
func SSLGetSessionOption(context: SSLContext, _ option: SSLSessionOption, _ value: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func SSLSetIOFuncs(context: SSLContext, _ readFunc: SSLReadFunc, _ writeFunc: SSLWriteFunc) -> OSStatus
func SSLSetProtocolVersionMin(context: SSLContext, _ minVersion: SSLProtocol) -> OSStatus
func SSLGetProtocolVersionMin(context: SSLContext, _ minVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
func SSLSetProtocolVersionMax(context: SSLContext, _ maxVersion: SSLProtocol) -> OSStatus
func SSLGetProtocolVersionMax(context: SSLContext, _ maxVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
func SSLSetCertificate(context: SSLContext, _ certRefs: CFArray) -> OSStatus
func SSLSetConnection(context: SSLContext, _ connection: SSLConnectionRef) -> OSStatus
func SSLGetConnection(context: SSLContext, _ connection: UnsafeMutablePointer<SSLConnectionRef>) -> OSStatus
func SSLSetPeerDomainName(context: SSLContext, _ peerName: UnsafePointer<Int8>, _ peerNameLen: Int) -> OSStatus
func SSLGetPeerDomainNameLength(context: SSLContext, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
func SSLGetPeerDomainName(context: SSLContext, _ peerName: UnsafeMutablePointer<Int8>, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
func SSLSetDatagramHelloCookie(dtlsContext: SSLContext, _ cookie: UnsafePointer<Void>, _ cookieLen: Int) -> OSStatus
func SSLSetMaxDatagramRecordSize(dtlsContext: SSLContext, _ maxSize: Int) -> OSStatus
func SSLGetMaxDatagramRecordSize(dtlsContext: SSLContext, _ maxSize: UnsafeMutablePointer<Int>) -> OSStatus
func SSLGetNegotiatedProtocolVersion(context: SSLContext, _ protocol: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
func SSLGetNumberSupportedCiphers(context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
func SSLGetSupportedCiphers(context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
func SSLSetEnabledCiphers(context: SSLContext, _ ciphers: UnsafePointer<SSLCipherSuite>, _ numCiphers: Int) -> OSStatus
func SSLGetNumberEnabledCiphers(context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
func SSLGetEnabledCiphers(context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
enum SSLSessionStrengthPolicy : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Default
  case ATSv1
  case ATSv1_noPFS
}
func SSLSetSessionStrengthPolicy(context: SSLContext, _ policyStrength: SSLSessionStrengthPolicy) -> OSStatus
func SSLCopyPeerTrust(context: SSLContext, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
func SSLSetPeerID(context: SSLContext, _ peerID: UnsafePointer<Void>, _ peerIDLen: Int) -> OSStatus
func SSLGetPeerID(context: SSLContext, _ peerID: UnsafeMutablePointer<UnsafePointer<Void>>, _ peerIDLen: UnsafeMutablePointer<Int>) -> OSStatus
func SSLGetNegotiatedCipher(context: SSLContext, _ cipherSuite: UnsafeMutablePointer<SSLCipherSuite>) -> OSStatus
func SSLSetEncryptionCertificate(context: SSLContext, _ certRefs: CFArray) -> OSStatus
enum SSLAuthenticate : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NeverAuthenticate
  case AlwaysAuthenticate
  case TryAuthenticate
}
func SSLSetClientSideAuthenticate(context: SSLContext, _ auth: SSLAuthenticate) -> OSStatus
func SSLAddDistinguishedName(context: SSLContext, _ derDN: UnsafePointer<Void>, _ derDNLen: Int) -> OSStatus
func SSLSetCertificateAuthorities(context: SSLContext, _ certificateOrArray: AnyObject, _ replaceExisting: Bool) -> OSStatus
func SSLCopyCertificateAuthorities(context: SSLContext, _ certificates: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SSLCopyDistinguishedNames(context: SSLContext, _ names: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SSLGetClientCertificateState(context: SSLContext, _ clientState: UnsafeMutablePointer<SSLClientCertificateState>) -> OSStatus
func SSLSetDiffieHellmanParams(context: SSLContext, _ dhParams: UnsafePointer<Void>, _ dhParamsLen: Int) -> OSStatus
func SSLGetDiffieHellmanParams(context: SSLContext, _ dhParams: UnsafeMutablePointer<UnsafePointer<Void>>, _ dhParamsLen: UnsafeMutablePointer<Int>) -> OSStatus
func SSLHandshake(context: SSLContext) -> OSStatus
func SSLWrite(context: SSLContext, _ data: UnsafePointer<Void>, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
func SSLRead(context: SSLContext, _ data: UnsafeMutablePointer<Void>, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
func SSLGetBufferedReadSize(context: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
func SSLGetDatagramWriteSize(dtlsContext: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
func SSLClose(context: SSLContext) -> OSStatus
struct __CE_GeneralNameType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var GNT_OtherName: __CE_GeneralNameType { get }
var GNT_RFC822Name: __CE_GeneralNameType { get }
var GNT_DNSName: __CE_GeneralNameType { get }
var GNT_X400Address: __CE_GeneralNameType { get }
var GNT_DirectoryName: __CE_GeneralNameType { get }
var GNT_EdiPartyName: __CE_GeneralNameType { get }
var GNT_URI: __CE_GeneralNameType { get }
var GNT_IPAddress: __CE_GeneralNameType { get }
var GNT_RegisteredID: __CE_GeneralNameType { get }
typealias CE_GeneralNameType = __CE_GeneralNameType
struct __CE_OtherName {
  var typeId: CSSM_OID
  var value: CSSM_DATA
  init()
  init(typeId: CSSM_OID, value: CSSM_DATA)
}
struct __CE_GeneralName {
  var nameType: CE_GeneralNameType
  var berEncoded: CSSM_BOOL
  var name: CSSM_DATA
  init()
  init(nameType: CE_GeneralNameType, berEncoded: CSSM_BOOL, name: CSSM_DATA)
}
struct __CE_GeneralNames {
  var numNames: uint32
  var generalName: UnsafeMutablePointer<CE_GeneralName>
  init()
  init(numNames: uint32, generalName: UnsafeMutablePointer<CE_GeneralName>)
}
struct __CE_AuthorityKeyID {
  var keyIdentifierPresent: CSSM_BOOL
  var keyIdentifier: CSSM_DATA
  var generalNamesPresent: CSSM_BOOL
  var generalNames: UnsafeMutablePointer<CE_GeneralNames>
  var serialNumberPresent: CSSM_BOOL
  var serialNumber: CSSM_DATA
  init()
  init(keyIdentifierPresent: CSSM_BOOL, keyIdentifier: CSSM_DATA, generalNamesPresent: CSSM_BOOL, generalNames: UnsafeMutablePointer<CE_GeneralNames>, serialNumberPresent: CSSM_BOOL, serialNumber: CSSM_DATA)
}
var CE_KU_DigitalSignature: Int32 { get }
var CE_KU_NonRepudiation: Int32 { get }
var CE_KU_KeyEncipherment: Int32 { get }
var CE_KU_DataEncipherment: Int32 { get }
var CE_KU_KeyAgreement: Int32 { get }
var CE_KU_KeyCertSign: Int32 { get }
var CE_KU_CRLSign: Int32 { get }
var CE_KU_EncipherOnly: Int32 { get }
var CE_KU_DecipherOnly: Int32 { get }
var CE_CR_Unspecified: Int32 { get }
var CE_CR_KeyCompromise: Int32 { get }
var CE_CR_CACompromise: Int32 { get }
var CE_CR_AffiliationChanged: Int32 { get }
var CE_CR_Superseded: Int32 { get }
var CE_CR_CessationOfOperation: Int32 { get }
var CE_CR_CertificateHold: Int32 { get }
var CE_CR_RemoveFromCRL: Int32 { get }
struct __CE_ExtendedKeyUsage {
  var numPurposes: uint32
  var purposes: CSSM_OID_PTR
  init()
  init(numPurposes: uint32, purposes: CSSM_OID_PTR)
}
typealias CE_ExtendedKeyUsage = __CE_ExtendedKeyUsage
struct __CE_BasicConstraints {
  var cA: CSSM_BOOL
  var pathLenConstraintPresent: CSSM_BOOL
  var pathLenConstraint: uint32
  init()
  init(cA: CSSM_BOOL, pathLenConstraintPresent: CSSM_BOOL, pathLenConstraint: uint32)
}
struct __CE_PolicyQualifierInfo {
  var policyQualifierId: CSSM_OID
  var qualifier: CSSM_DATA
  init()
  init(policyQualifierId: CSSM_OID, qualifier: CSSM_DATA)
}
struct __CE_PolicyInformation {
  var certPolicyId: CSSM_OID
  var numPolicyQualifiers: uint32
  var policyQualifiers: UnsafeMutablePointer<CE_PolicyQualifierInfo>
  init()
  init(certPolicyId: CSSM_OID, numPolicyQualifiers: uint32, policyQualifiers: UnsafeMutablePointer<CE_PolicyQualifierInfo>)
}
struct __CE_CertPolicies {
  var numPolicies: uint32
  var policies: UnsafeMutablePointer<CE_PolicyInformation>
  init()
  init(numPolicies: uint32, policies: UnsafeMutablePointer<CE_PolicyInformation>)
}
var CE_CD_Unspecified: Int32 { get }
var CE_CD_KeyCompromise: Int32 { get }
var CE_CD_CACompromise: Int32 { get }
var CE_CD_AffiliationChanged: Int32 { get }
var CE_CD_Superseded: Int32 { get }
var CE_CD_CessationOfOperation: Int32 { get }
var CE_CD_CertificateHold: Int32 { get }
struct __CE_CrlDistributionPointNameType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CE_CDNT_FullName: __CE_CrlDistributionPointNameType { get }
var CE_CDNT_NameRelativeToCrlIssuer: __CE_CrlDistributionPointNameType { get }
struct __CE_DistributionPointName {
  struct __Unnamed_union_dpn {
    var fullName: UnsafeMutablePointer<CE_GeneralNames>
    var rdn: CSSM_X509_RDN_PTR
    init(fullName: UnsafeMutablePointer<CE_GeneralNames>)
    init(rdn: CSSM_X509_RDN_PTR)
    init()
  }
  var nameType: CE_CrlDistributionPointNameType
  var dpn: __CE_DistributionPointName.__Unnamed_union_dpn
  init()
  init(nameType: CE_CrlDistributionPointNameType, dpn: __CE_DistributionPointName.__Unnamed_union_dpn)
}
struct __CE_CRLDistributionPoint {
  var distPointName: UnsafeMutablePointer<CE_DistributionPointName>
  var reasonsPresent: CSSM_BOOL
  var reasons: CE_CrlDistReasonFlags
  var crlIssuer: UnsafeMutablePointer<CE_GeneralNames>
  init()
  init(distPointName: UnsafeMutablePointer<CE_DistributionPointName>, reasonsPresent: CSSM_BOOL, reasons: CE_CrlDistReasonFlags, crlIssuer: UnsafeMutablePointer<CE_GeneralNames>)
}
struct __CE_CRLDistPointsSyntax {
  var numDistPoints: uint32
  var distPoints: UnsafeMutablePointer<CE_CRLDistributionPoint>
  init()
  init(numDistPoints: uint32, distPoints: UnsafeMutablePointer<CE_CRLDistributionPoint>)
}
struct __CE_AccessDescription {
  var accessMethod: CSSM_OID
  var accessLocation: CE_GeneralName
  init()
  init(accessMethod: CSSM_OID, accessLocation: CE_GeneralName)
}
struct __CE_AuthorityInfoAccess {
  var numAccessDescriptions: uint32
  var accessDescriptions: UnsafeMutablePointer<CE_AccessDescription>
  init()
  init(numAccessDescriptions: uint32, accessDescriptions: UnsafeMutablePointer<CE_AccessDescription>)
}
struct __CE_SemanticsInformation {
  var semanticsIdentifier: UnsafeMutablePointer<CSSM_OID>
  var nameRegistrationAuthorities: UnsafeMutablePointer<CE_NameRegistrationAuthorities>
  init()
  init(semanticsIdentifier: UnsafeMutablePointer<CSSM_OID>, nameRegistrationAuthorities: UnsafeMutablePointer<CE_NameRegistrationAuthorities>)
}
struct __CE_QC_Statement {
  var statementId: CSSM_OID
  var semanticsInfo: UnsafeMutablePointer<CE_SemanticsInformation>
  var otherInfo: UnsafeMutablePointer<CSSM_DATA>
  init()
  init(statementId: CSSM_OID, semanticsInfo: UnsafeMutablePointer<CE_SemanticsInformation>, otherInfo: UnsafeMutablePointer<CSSM_DATA>)
}
struct __CE_QC_Statements {
  var numQCStatements: uint32
  var qcStatements: UnsafeMutablePointer<CE_QC_Statement>
  init()
  init(numQCStatements: uint32, qcStatements: UnsafeMutablePointer<CE_QC_Statement>)
}
typealias CE_CrlNumber = uint32
typealias CE_DeltaCrl = uint32
struct __CE_IssuingDistributionPoint {
  var distPointName: UnsafeMutablePointer<CE_DistributionPointName>
  var onlyUserCertsPresent: CSSM_BOOL
  var onlyUserCerts: CSSM_BOOL
  var onlyCACertsPresent: CSSM_BOOL
  var onlyCACerts: CSSM_BOOL
  var onlySomeReasonsPresent: CSSM_BOOL
  var onlySomeReasons: CE_CrlDistReasonFlags
  var indirectCrlPresent: CSSM_BOOL
  var indirectCrl: CSSM_BOOL
  init()
  init(distPointName: UnsafeMutablePointer<CE_DistributionPointName>, onlyUserCertsPresent: CSSM_BOOL, onlyUserCerts: CSSM_BOOL, onlyCACertsPresent: CSSM_BOOL, onlyCACerts: CSSM_BOOL, onlySomeReasonsPresent: CSSM_BOOL, onlySomeReasons: CE_CrlDistReasonFlags, indirectCrlPresent: CSSM_BOOL, indirectCrl: CSSM_BOOL)
}
struct __CE_GeneralSubtree {
  var base: UnsafeMutablePointer<CE_GeneralNames>
  var minimum: uint32
  var maximumPresent: CSSM_BOOL
  var maximum: uint32
  init()
  init(base: UnsafeMutablePointer<CE_GeneralNames>, minimum: uint32, maximumPresent: CSSM_BOOL, maximum: uint32)
}
struct __CE_GeneralSubtrees {
  var numSubtrees: uint32
  var subtrees: UnsafeMutablePointer<CE_GeneralSubtree>
  init()
  init(numSubtrees: uint32, subtrees: UnsafeMutablePointer<CE_GeneralSubtree>)
}
struct __CE_NameConstraints {
  var permitted: UnsafeMutablePointer<CE_GeneralSubtrees>
  var excluded: UnsafeMutablePointer<CE_GeneralSubtrees>
  init()
  init(permitted: UnsafeMutablePointer<CE_GeneralSubtrees>, excluded: UnsafeMutablePointer<CE_GeneralSubtrees>)
}
struct __CE_PolicyMapping {
  var issuerDomainPolicy: CSSM_OID
  var subjectDomainPolicy: CSSM_OID
  init()
  init(issuerDomainPolicy: CSSM_OID, subjectDomainPolicy: CSSM_OID)
}
struct __CE_PolicyMappings {
  var numPolicyMappings: uint32
  var policyMappings: UnsafeMutablePointer<CE_PolicyMapping>
  init()
  init(numPolicyMappings: uint32, policyMappings: UnsafeMutablePointer<CE_PolicyMapping>)
}
struct __CE_PolicyConstraints {
  var requireExplicitPolicyPresent: CSSM_BOOL
  var requireExplicitPolicy: uint32
  var inhibitPolicyMappingPresent: CSSM_BOOL
  var inhibitPolicyMapping: uint32
  init()
  init(requireExplicitPolicyPresent: CSSM_BOOL, requireExplicitPolicy: uint32, inhibitPolicyMappingPresent: CSSM_BOOL, inhibitPolicyMapping: uint32)
}
struct __CE_DataType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DT_AuthorityKeyID: __CE_DataType { get }
var DT_SubjectKeyID: __CE_DataType { get }
var DT_KeyUsage: __CE_DataType { get }
var DT_SubjectAltName: __CE_DataType { get }
var DT_IssuerAltName: __CE_DataType { get }
var DT_ExtendedKeyUsage: __CE_DataType { get }
var DT_BasicConstraints: __CE_DataType { get }
var DT_CertPolicies: __CE_DataType { get }
var DT_NetscapeCertType: __CE_DataType { get }
var DT_CrlNumber: __CE_DataType { get }
var DT_DeltaCrl: __CE_DataType { get }
var DT_CrlReason: __CE_DataType { get }
var DT_CrlDistributionPoints: __CE_DataType { get }
var DT_IssuingDistributionPoint: __CE_DataType { get }
var DT_AuthorityInfoAccess: __CE_DataType { get }
var DT_Other: __CE_DataType { get }
var DT_QC_Statements: __CE_DataType { get }
var DT_NameConstraints: __CE_DataType { get }
var DT_PolicyMappings: __CE_DataType { get }
var DT_PolicyConstraints: __CE_DataType { get }
var DT_InhibitAnyPolicy: __CE_DataType { get }
typealias CE_DataType = __CE_DataType
struct __CE_DataAndType {
  var type: CE_DataType
  var `extension`: CE_Data
  var critical: CSSM_BOOL
  init()
  init(type: CE_DataType, extension: CE_Data, critical: CSSM_BOOL)
}
struct cssm_spi_ac_funcs {
  var AuthCompute: (@convention(c) (CSSM_AC_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafePointer<CSSM_TUPLEGROUP>, uint32, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, CSSM_TUPLEGROUP_PTR) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_AC_HANDLE, CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(AuthCompute: (@convention(c) (CSSM_AC_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafePointer<CSSM_TUPLEGROUP>, uint32, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, CSSM_TUPLEGROUP_PTR) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_AC_HANDLE, CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
let gGuidCssm: CSSM_GUID
let gGuidAppleFileDL: CSSM_GUID
let gGuidAppleCSP: CSSM_GUID
let gGuidAppleCSPDL: CSSM_GUID
let gGuidAppleX509CL: CSSM_GUID
let gGuidAppleX509TP: CSSM_GUID
let gGuidAppleLDAPDL: CSSM_GUID
let gGuidAppleDotMacTP: CSSM_GUID
let gGuidAppleSdCSPDL: CSSM_GUID
let gGuidAppleDotMacDL: CSSM_GUID
var CSSM_WORDID_KEYCHAIN_PROMPT: Int { get }
var CSSM_WORDID_KEYCHAIN_LOCK: Int { get }
var CSSM_WORDID_KEYCHAIN_CHANGE_LOCK: Int { get }
var CSSM_WORDID_PROCESS: Int { get }
var CSSM_WORDID__RESERVED_1: Int { get }
var CSSM_WORDID_SYMMETRIC_KEY: Int { get }
var CSSM_WORDID_SYSTEM: Int { get }
var CSSM_WORDID_KEY: Int { get }
var CSSM_WORDID_PIN: Int { get }
var CSSM_WORDID_PREAUTH: Int { get }
var CSSM_WORDID_PREAUTH_SOURCE: Int { get }
var CSSM_WORDID_ASYMMETRIC_KEY: Int { get }
var CSSM_WORDID__FIRST_UNUSED: Int { get }
var CSSM_ACL_SUBJECT_TYPE_KEYCHAIN_PROMPT: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROCESS: Int { get }
var CSSM_ACL_SUBJECT_TYPE_CODE_SIGNATURE: Int { get }
var CSSM_ACL_SUBJECT_TYPE_COMMENT: Int { get }
var CSSM_ACL_SUBJECT_TYPE_SYMMETRIC_KEY: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PREAUTH: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PREAUTH_SOURCE: Int { get }
var CSSM_ACL_SUBJECT_TYPE_ASYMMETRIC_KEY: Int { get }
var CSSM_SAMPLE_TYPE_KEYCHAIN_PROMPT: Int { get }
var CSSM_SAMPLE_TYPE_KEYCHAIN_LOCK: Int { get }
var CSSM_SAMPLE_TYPE_KEYCHAIN_CHANGE_LOCK: Int { get }
var CSSM_SAMPLE_TYPE_PROCESS: Int { get }
var CSSM_SAMPLE_TYPE_COMMENT: Int { get }
var CSSM_SAMPLE_TYPE_RETRY_ID: Int { get }
var CSSM_SAMPLE_TYPE_SYMMETRIC_KEY: Int { get }
var CSSM_SAMPLE_TYPE_PREAUTH: Int { get }
var CSSM_SAMPLE_TYPE_ASYMMETRIC_KEY: Int { get }
var CSSM_ACL_AUTHORIZATION_CHANGE_ACL: Int { get }
var CSSM_ACL_AUTHORIZATION_CHANGE_OWNER: Int { get }
var CSSM_ACL_AUTHORIZATION_PREAUTH_BASE: Int { get }
var CSSM_ACL_AUTHORIZATION_PREAUTH_END: Int { get }
var CSSM_ACL_CODE_SIGNATURE_INVALID: Int { get }
var CSSM_ACL_CODE_SIGNATURE_OSX: Int { get }
var CSSM_ACL_MATCH_UID: Int { get }
var CSSM_ACL_MATCH_GID: Int { get }
var CSSM_ACL_MATCH_HONOR_ROOT: Int { get }
var CSSM_ACL_MATCH_BITS: Int { get }
var CSSM_ACL_PROCESS_SELECTOR_CURRENT_VERSION: Int { get }
struct cssm_acl_process_subject_selector {
  var version: uint16
  var mask: uint16
  var uid: uint32
  var gid: uint32
  init()
  init(version: uint16, mask: uint16, uid: uint32, gid: uint32)
}
typealias CSSM_ACL_PROCESS_SUBJECT_SELECTOR = cssm_acl_process_subject_selector
var CSSM_ACL_KEYCHAIN_PROMPT_CURRENT_VERSION: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_REQUIRE_PASSPHRASE: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_UNSIGNED: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_UNSIGNED_ACT: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_INVALID: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_INVALID_ACT: Int { get }
struct cssm_acl_keychain_prompt_selector {
  var version: uint16
  var flags: uint16
  init()
  init(version: uint16, flags: uint16)
}
typealias CSSM_ACL_KEYCHAIN_PROMPT_SELECTOR = cssm_acl_keychain_prompt_selector
typealias CSSM_ACL_PREAUTH_TRACKING_STATE = uint32
var CSSM_ACL_PREAUTH_TRACKING_COUNT_MASK: UInt32 { get }
var CSSM_ACL_PREAUTH_TRACKING_BLOCKED: UInt32 { get }
var CSSM_ACL_PREAUTH_TRACKING_UNKNOWN: UInt32 { get }
var CSSM_ACL_PREAUTH_TRACKING_AUTHORIZED: UInt32 { get }
var CSSM_DB_ACCESS_RESET: Int { get }
var CSSM_ALGID_APPLE_YARROW: UInt32 { get }
var CSSM_ALGID_AES: UInt32 { get }
var CSSM_ALGID_FEE: UInt32 { get }
var CSSM_ALGID_FEE_MD5: UInt32 { get }
var CSSM_ALGID_FEE_SHA1: UInt32 { get }
var CSSM_ALGID_FEED: UInt32 { get }
var CSSM_ALGID_FEEDEXP: UInt32 { get }
var CSSM_ALGID_ASC: UInt32 { get }
var CSSM_ALGID_SHA1HMAC_LEGACY: UInt32 { get }
var CSSM_ALGID_KEYCHAIN_KEY: UInt32 { get }
var CSSM_ALGID_PKCS12_PBE_ENCR: UInt32 { get }
var CSSM_ALGID_PKCS12_PBE_MAC: UInt32 { get }
var CSSM_ALGID_SECURE_PASSPHRASE: UInt32 { get }
var CSSM_ALGID_PBE_OPENSSL_MD5: UInt32 { get }
var CSSM_ALGID_SHA256: UInt32 { get }
var CSSM_ALGID_SHA384: UInt32 { get }
var CSSM_ALGID_SHA512: UInt32 { get }
var CSSM_ALGID_ENTROPY_DEFAULT: UInt32 { get }
var CSSM_ALGID_SHA224: UInt32 { get }
var CSSM_ALGID_SHA224WithRSA: UInt32 { get }
var CSSM_ALGID_SHA256WithRSA: UInt32 { get }
var CSSM_ALGID_SHA384WithRSA: UInt32 { get }
var CSSM_ALGID_SHA512WithRSA: UInt32 { get }
var CSSM_ALGID_OPENSSH1: UInt32 { get }
var CSSM_ALGID_SHA224WithECDSA: UInt32 { get }
var CSSM_ALGID_SHA256WithECDSA: UInt32 { get }
var CSSM_ALGID_SHA384WithECDSA: UInt32 { get }
var CSSM_ALGID_SHA512WithECDSA: UInt32 { get }
var CSSM_ALGID_ECDSA_SPECIFIED: UInt32 { get }
var CSSM_ALGID_ECDH_X963_KDF: UInt32 { get }
var CSSM_ALGID__FIRST_UNUSED: UInt32 { get }
var CSSM_PADDING_APPLE_SSLv2: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_VENDOR_DEFINED: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_X509: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OPENSSH: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OPENSSL: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OPENSSH2: UInt32 { get }
var CSSM_CUSTOM_COMMON_ERROR_EXTENT: Int { get }
var CSSM_ERRCODE_NO_USER_INTERACTION: Int { get }
var CSSM_ERRCODE_USER_CANCELED: Int { get }
var CSSM_ERRCODE_SERVICE_NOT_AVAILABLE: Int { get }
var CSSM_ERRCODE_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSM_ERRCODE_DEVICE_RESET: Int { get }
var CSSM_ERRCODE_DEVICE_FAILED: Int { get }
var CSSM_ERRCODE_IN_DARK_WAKE: Int { get }
var CSSMERR_CSSM_NO_USER_INTERACTION: Int { get }
var CSSMERR_AC_NO_USER_INTERACTION: Int { get }
var CSSMERR_CSP_NO_USER_INTERACTION: Int { get }
var CSSMERR_CL_NO_USER_INTERACTION: Int { get }
var CSSMERR_DL_NO_USER_INTERACTION: Int { get }
var CSSMERR_TP_NO_USER_INTERACTION: Int { get }
var CSSMERR_CSSM_USER_CANCELED: Int { get }
var CSSMERR_AC_USER_CANCELED: Int { get }
var CSSMERR_CSP_USER_CANCELED: Int { get }
var CSSMERR_CL_USER_CANCELED: Int { get }
var CSSMERR_DL_USER_CANCELED: Int { get }
var CSSMERR_TP_USER_CANCELED: Int { get }
var CSSMERR_CSSM_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_AC_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_CSP_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_CL_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_DL_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_TP_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_CSSM_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_AC_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_CSP_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_CL_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_DL_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_TP_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_CSSM_DEVICE_RESET: Int { get }
var CSSMERR_AC_DEVICE_RESET: Int { get }
var CSSMERR_CSP_DEVICE_RESET: Int { get }
var CSSMERR_CL_DEVICE_RESET: Int { get }
var CSSMERR_DL_DEVICE_RESET: Int { get }
var CSSMERR_TP_DEVICE_RESET: Int { get }
var CSSMERR_CSSM_DEVICE_FAILED: Int { get }
var CSSMERR_AC_DEVICE_FAILED: Int { get }
var CSSMERR_CSP_DEVICE_FAILED: Int { get }
var CSSMERR_CL_DEVICE_FAILED: Int { get }
var CSSMERR_DL_DEVICE_FAILED: Int { get }
var CSSMERR_TP_DEVICE_FAILED: Int { get }
var CSSMERR_CSSM_IN_DARK_WAKE: Int { get }
var CSSMERR_AC_IN_DARK_WAKE: Int { get }
var CSSMERR_CSP_IN_DARK_WAKE: Int { get }
var CSSMERR_CL_IN_DARK_WAKE: Int { get }
var CSSMERR_DL_IN_DARK_WAKE: Int { get }
var CSSMERR_TP_IN_DARK_WAKE: Int { get }
var CSSMERR_CSP_APPLE_ADD_APPLICATION_ACL_SUBJECT: Int { get }
var CSSMERR_CSP_APPLE_PUBLIC_KEY_INCOMPLETE: Int { get }
var CSSMERR_CSP_APPLE_SIGNATURE_MISMATCH: Int { get }
var CSSMERR_CSP_APPLE_INVALID_KEY_START_DATE: Int { get }
var CSSMERR_CSP_APPLE_INVALID_KEY_END_DATE: Int { get }
var CSSMERR_CSPDL_APPLE_DL_CONVERSION_ERROR: Int { get }
var CSSMERR_CSP_APPLE_SSLv2_ROLLBACK: Int { get }
var CSSM_DL_DB_RECORD_GENERIC_PASSWORD: UInt32 { get }
var CSSM_DL_DB_RECORD_INTERNET_PASSWORD: UInt32 { get }
var CSSM_DL_DB_RECORD_APPLESHARE_PASSWORD: UInt32 { get }
var CSSM_DL_DB_RECORD_X509_CERTIFICATE: UInt32 { get }
var CSSM_DL_DB_RECORD_USER_TRUST: UInt32 { get }
var CSSM_DL_DB_RECORD_X509_CRL: UInt32 { get }
var CSSM_DL_DB_RECORD_UNLOCK_REFERRAL: UInt32 { get }
var CSSM_DL_DB_RECORD_EXTENDED_ATTRIBUTE: UInt32 { get }
var CSSM_DL_DB_RECORD_METADATA: UInt32 { get }
var CSSM_APPLEFILEDL_TOGGLE_AUTOCOMMIT: Int { get }
var CSSM_APPLEFILEDL_COMMIT: Int { get }
var CSSM_APPLEFILEDL_ROLLBACK: Int { get }
var CSSM_APPLE_UNLOCK_TYPE_KEY_DIRECT: Int { get }
var CSSM_APPLE_UNLOCK_TYPE_WRAPPED_PRIVATE: Int { get }
var CSSMERR_APPLEDL_INVALID_OPEN_PARAMETERS: Int { get }
var CSSMERR_APPLEDL_DISK_FULL: Int { get }
var CSSMERR_APPLEDL_QUOTA_EXCEEDED: Int { get }
var CSSMERR_APPLEDL_FILE_TOO_BIG: Int { get }
var CSSMERR_APPLEDL_INVALID_DATABASE_BLOB: Int { get }
var CSSMERR_APPLEDL_INVALID_KEY_BLOB: Int { get }
var CSSMERR_APPLEDL_INCOMPATIBLE_DATABASE_BLOB: Int { get }
var CSSMERR_APPLEDL_INCOMPATIBLE_KEY_BLOB: Int { get }
var CSSMERR_APPLETP_HOSTNAME_MISMATCH: Int { get }
var CSSMERR_APPLETP_UNKNOWN_CRITICAL_EXTEN: Int { get }
var CSSMERR_APPLETP_NO_BASIC_CONSTRAINTS: Int { get }
var CSSMERR_APPLETP_INVALID_CA: Int { get }
var CSSMERR_APPLETP_INVALID_AUTHORITY_ID: Int { get }
var CSSMERR_APPLETP_INVALID_SUBJECT_ID: Int { get }
var CSSMERR_APPLETP_INVALID_KEY_USAGE: Int { get }
var CSSMERR_APPLETP_INVALID_EXTENDED_KEY_USAGE: Int { get }
var CSSMERR_APPLETP_INVALID_ID_LINKAGE: Int { get }
var CSSMERR_APPLETP_PATH_LEN_CONSTRAINT: Int { get }
var CSSMERR_APPLETP_INVALID_ROOT: Int { get }
var CSSMERR_APPLETP_CRL_EXPIRED: Int { get }
var CSSMERR_APPLETP_CRL_NOT_VALID_YET: Int { get }
var CSSMERR_APPLETP_CRL_NOT_FOUND: Int { get }
var CSSMERR_APPLETP_CRL_SERVER_DOWN: Int { get }
var CSSMERR_APPLETP_CRL_BAD_URI: Int { get }
var CSSMERR_APPLETP_UNKNOWN_CERT_EXTEN: Int { get }
var CSSMERR_APPLETP_UNKNOWN_CRL_EXTEN: Int { get }
var CSSMERR_APPLETP_CRL_NOT_TRUSTED: Int { get }
var CSSMERR_APPLETP_CRL_INVALID_ANCHOR_CERT: Int { get }
var CSSMERR_APPLETP_CRL_POLICY_FAIL: Int { get }
var CSSMERR_APPLETP_IDP_FAIL: Int { get }
var CSSMERR_APPLETP_CERT_NOT_FOUND_FROM_ISSUER: Int { get }
var CSSMERR_APPLETP_BAD_CERT_FROM_ISSUER: Int { get }
var CSSMERR_APPLETP_SMIME_EMAIL_ADDRS_NOT_FOUND: Int { get }
var CSSMERR_APPLETP_SMIME_BAD_EXT_KEY_USE: Int { get }
var CSSMERR_APPLETP_SMIME_BAD_KEY_USE: Int { get }
var CSSMERR_APPLETP_SMIME_KEYUSAGE_NOT_CRITICAL: Int { get }
var CSSMERR_APPLETP_SMIME_NO_EMAIL_ADDRS: Int { get }
var CSSMERR_APPLETP_SMIME_SUBJ_ALT_NAME_NOT_CRIT: Int { get }
var CSSMERR_APPLETP_SSL_BAD_EXT_KEY_USE: Int { get }
var CSSMERR_APPLETP_OCSP_BAD_RESPONSE: Int { get }
var CSSMERR_APPLETP_OCSP_BAD_REQUEST: Int { get }
var CSSMERR_APPLETP_OCSP_UNAVAILABLE: Int { get }
var CSSMERR_APPLETP_OCSP_STATUS_UNRECOGNIZED: Int { get }
var CSSMERR_APPLETP_INCOMPLETE_REVOCATION_CHECK: Int { get }
var CSSMERR_APPLETP_NETWORK_FAILURE: Int { get }
var CSSMERR_APPLETP_OCSP_NOT_TRUSTED: Int { get }
var CSSMERR_APPLETP_OCSP_INVALID_ANCHOR_CERT: Int { get }
var CSSMERR_APPLETP_OCSP_SIG_ERROR: Int { get }
var CSSMERR_APPLETP_OCSP_NO_SIGNER: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_MALFORMED_REQ: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_INTERNAL_ERR: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_TRY_LATER: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_SIG_REQUIRED: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_UNAUTHORIZED: Int { get }
var CSSMERR_APPLETP_OCSP_NONCE_MISMATCH: Int { get }
var CSSMERR_APPLETP_CS_BAD_CERT_CHAIN_LENGTH: Int { get }
var CSSMERR_APPLETP_CS_NO_BASIC_CONSTRAINTS: Int { get }
var CSSMERR_APPLETP_CS_BAD_PATH_LENGTH: Int { get }
var CSSMERR_APPLETP_CS_NO_EXTENDED_KEY_USAGE: Int { get }
var CSSMERR_APPLETP_CODE_SIGN_DEVELOPMENT: Int { get }
var CSSMERR_APPLETP_RS_BAD_CERT_CHAIN_LENGTH: Int { get }
var CSSMERR_APPLETP_RS_BAD_EXTENDED_KEY_USAGE: Int { get }
var CSSMERR_APPLETP_TRUST_SETTING_DENY: Int { get }
var CSSMERR_APPLETP_INVALID_EMPTY_SUBJECT: Int { get }
var CSSMERR_APPLETP_UNKNOWN_QUAL_CERT_STATEMENT: Int { get }
var CSSMERR_APPLETP_MISSING_REQUIRED_EXTENSION: Int { get }
var CSSMERR_APPLETP_EXT_KEYUSAGE_NOT_CRITICAL: Int { get }
var CSSMERR_APPLETP_IDENTIFIER_MISSING: Int { get }
var CSSMERR_APPLETP_CA_PIN_MISMATCH: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_QUEUED: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_REDIRECT: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_ERR: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_PARAM: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_AUTH: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_UNIMPL: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_NOT_AVAIL: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_ALREADY_EXIST: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_SERVICE_ERROR: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_IS_PENDING: Int { get }
var CSSMERR_APPLE_DOTMAC_NO_REQ_PENDING: Int { get }
var CSSMERR_APPLE_DOTMAC_CSR_VERIFY_FAIL: Int { get }
var CSSMERR_APPLE_DOTMAC_FAILED_CONSISTENCY_CHECK: Int { get }
var CSSM_APPLEDL_OPEN_PARAMETERS_VERSION: Int { get }
struct cssm_appledl_open_parameters_mask : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCSSM_APPLEDL_MASK_MODE: cssm_appledl_open_parameters_mask { get }
struct cssm_appledl_open_parameters {
  var length: uint32
  var version: uint32
  var autoCommit: CSSM_BOOL
  var mask: uint32
  var mode: mode_t
  init()
  init(length: uint32, version: uint32, autoCommit: CSSM_BOOL, mask: uint32, mode: mode_t)
}
typealias CSSM_APPLEDL_OPEN_PARAMETERS = cssm_appledl_open_parameters
typealias CSSM_APPLEDL_OPEN_PARAMETERS_PTR = UnsafeMutablePointer<cssm_appledl_open_parameters>
var CSSM_APPLECSPDL_DB_LOCK: Int { get }
var CSSM_APPLECSPDL_DB_UNLOCK: Int { get }
var CSSM_APPLECSPDL_DB_GET_SETTINGS: Int { get }
var CSSM_APPLECSPDL_DB_SET_SETTINGS: Int { get }
var CSSM_APPLECSPDL_DB_IS_LOCKED: Int { get }
var CSSM_APPLECSPDL_DB_CHANGE_PASSWORD: Int { get }
var CSSM_APPLECSPDL_DB_GET_HANDLE: Int { get }
var CSSM_APPLESCPDL_CSP_GET_KEYHANDLE: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_8: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_9: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_10: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_11: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_12: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_13: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_14: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_15: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_16: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_17: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_18: Int { get }
var CSSM_APPLECSP_KEYDIGEST: Int { get }
struct cssm_applecspdl_db_settings_parameters {
  var idleTimeout: uint32
  var lockOnSleep: uint8
  init()
  init(idleTimeout: uint32, lockOnSleep: uint8)
}
typealias CSSM_APPLECSPDL_DB_SETTINGS_PARAMETERS = cssm_applecspdl_db_settings_parameters
typealias CSSM_APPLECSPDL_DB_SETTINGS_PARAMETERS_PTR = UnsafeMutablePointer<cssm_applecspdl_db_settings_parameters>
struct cssm_applecspdl_db_is_locked_parameters {
  var isLocked: uint8
  init()
  init(isLocked: uint8)
}
typealias CSSM_APPLECSPDL_DB_IS_LOCKED_PARAMETERS = cssm_applecspdl_db_is_locked_parameters
typealias CSSM_APPLECSPDL_DB_IS_LOCKED_PARAMETERS_PTR = UnsafeMutablePointer<cssm_applecspdl_db_is_locked_parameters>
struct cssm_applecspdl_db_change_password_parameters {
  var accessCredentials: UnsafeMutablePointer<CSSM_ACCESS_CREDENTIALS>
  init()
  init(accessCredentials: UnsafeMutablePointer<CSSM_ACCESS_CREDENTIALS>)
}
typealias CSSM_APPLECSPDL_DB_CHANGE_PASSWORD_PARAMETERS = cssm_applecspdl_db_change_password_parameters
typealias CSSM_APPLECSPDL_DB_CHANGE_PASSWORD_PARAMETERS_PTR = UnsafeMutablePointer<cssm_applecspdl_db_change_password_parameters>
var CSSM_KEYBLOB_WRAPPED_FORMAT_APPLE_CUSTOM: Int { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_OPENSSL: Int { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_OPENSSH1: Int { get }
var CSSM_ATTRIBUTE_VENDOR_DEFINED: Int { get }
var CSSM_ATTRIBUTE_PUBLIC_KEY: Int { get }
var CSSM_ATTRIBUTE_FEE_PRIME_TYPE: Int { get }
var CSSM_ATTRIBUTE_FEE_CURVE_TYPE: Int { get }
var CSSM_ATTRIBUTE_ASC_OPTIMIZATION: Int { get }
var CSSM_ATTRIBUTE_RSA_BLINDING: Int { get }
var CSSM_ATTRIBUTE_PARAM_KEY: Int { get }
var CSSM_ATTRIBUTE_PROMPT: Int { get }
var CSSM_ATTRIBUTE_ALERT_TITLE: Int { get }
var CSSM_ATTRIBUTE_VERIFY_PASSPHRASE: Int { get }
var CSSM_FEE_PRIME_TYPE_DEFAULT: Int { get }
var CSSM_FEE_PRIME_TYPE_MERSENNE: Int { get }
var CSSM_FEE_PRIME_TYPE_FEE: Int { get }
var CSSM_FEE_PRIME_TYPE_GENERAL: Int { get }
var CSSM_FEE_CURVE_TYPE_DEFAULT: Int { get }
var CSSM_FEE_CURVE_TYPE_MONTGOMERY: Int { get }
var CSSM_FEE_CURVE_TYPE_WEIERSTRASS: Int { get }
var CSSM_FEE_CURVE_TYPE_ANSI_X9_62: Int { get }
var CSSM_ASC_OPTIMIZE_DEFAULT: Int { get }
var CSSM_ASC_OPTIMIZE_SIZE: Int { get }
var CSSM_ASC_OPTIMIZE_SECURITY: Int { get }
var CSSM_ASC_OPTIMIZE_TIME: Int { get }
var CSSM_ASC_OPTIMIZE_TIME_SIZE: Int { get }
var CSSM_ASC_OPTIMIZE_ASCII: Int { get }
var CSSM_KEYATTR_PARTIAL: Int { get }
var CSSM_KEYATTR_PUBLIC_KEY_ENCRYPT: Int { get }
struct CSSM_APPLE_TP_NAME_OID {
  var string: UnsafePointer<Int8>
  var oid: UnsafePointer<CSSM_OID>
  init()
  init(string: UnsafePointer<Int8>, oid: UnsafePointer<CSSM_OID>)
}
struct CSSM_APPLE_TP_CERT_REQUEST {
  var cspHand: CSSM_CSP_HANDLE
  var clHand: CSSM_CL_HANDLE
  var serialNumber: uint32
  var numSubjectNames: uint32
  var subjectNames: UnsafeMutablePointer<CSSM_APPLE_TP_NAME_OID>
  var numIssuerNames: uint32
  var issuerNames: UnsafeMutablePointer<CSSM_APPLE_TP_NAME_OID>
  var issuerNameX509: CSSM_X509_NAME_PTR
  var certPublicKey: UnsafePointer<CSSM_KEY>
  var issuerPrivateKey: UnsafePointer<CSSM_KEY>
  var signatureAlg: CSSM_ALGORITHMS
  var signatureOid: CSSM_OID
  var notBefore: uint32
  var notAfter: uint32
  var numExtensions: uint32
  var extensions: UnsafeMutablePointer<CE_DataAndType>
  var challengeString: UnsafePointer<Int8>
  init()
  init(cspHand: CSSM_CSP_HANDLE, clHand: CSSM_CL_HANDLE, serialNumber: uint32, numSubjectNames: uint32, subjectNames: UnsafeMutablePointer<CSSM_APPLE_TP_NAME_OID>, numIssuerNames: uint32, issuerNames: UnsafeMutablePointer<CSSM_APPLE_TP_NAME_OID>, issuerNameX509: CSSM_X509_NAME_PTR, certPublicKey: UnsafePointer<CSSM_KEY>, issuerPrivateKey: UnsafePointer<CSSM_KEY>, signatureAlg: CSSM_ALGORITHMS, signatureOid: CSSM_OID, notBefore: uint32, notAfter: uint32, numExtensions: uint32, extensions: UnsafeMutablePointer<CE_DataAndType>, challengeString: UnsafePointer<Int8>)
}
var CSSM_APPLE_TP_SSL_OPTS_VERSION: Int32 { get }
var CSSM_APPLE_TP_SSL_CLIENT: Int32 { get }
struct CSSM_APPLE_TP_SSL_OPTIONS {
  var Version: uint32
  var ServerNameLen: uint32
  var ServerName: UnsafePointer<Int8>
  var Flags: uint32
  init()
  init(Version: uint32, ServerNameLen: uint32, ServerName: UnsafePointer<Int8>, Flags: uint32)
}
var CSSM_APPLE_TP_CRL_OPTS_VERSION: Int32 { get }
typealias CSSM_APPLE_TP_CRL_OPT_FLAGS = uint32
var CSSM_TP_ACTION_REQUIRE_CRL_PER_CERT: Int { get }
var CSSM_TP_ACTION_FETCH_CRL_FROM_NET: Int { get }
var CSSM_TP_ACTION_CRL_SUFFICIENT: Int { get }
var CSSM_TP_ACTION_REQUIRE_CRL_IF_PRESENT: Int { get }
struct CSSM_APPLE_TP_CRL_OPTIONS {
  var Version: uint32
  var CrlFlags: CSSM_APPLE_TP_CRL_OPT_FLAGS
  var crlStore: CSSM_DL_DB_HANDLE_PTR
  init()
  init(Version: uint32, CrlFlags: CSSM_APPLE_TP_CRL_OPT_FLAGS, crlStore: CSSM_DL_DB_HANDLE_PTR)
}
var CSSM_APPLE_TP_SMIME_OPTS_VERSION: Int32 { get }
struct CSSM_APPLE_TP_SMIME_OPTIONS {
  var Version: uint32
  var IntendedUsage: CE_KeyUsage
  var SenderEmailLen: uint32
  var SenderEmail: UnsafePointer<Int8>
  init()
  init(Version: uint32, IntendedUsage: CE_KeyUsage, SenderEmailLen: uint32, SenderEmail: UnsafePointer<Int8>)
}
typealias CSSM_APPLE_TP_ACTION_FLAGS = uint32
var CSSM_TP_ACTION_ALLOW_EXPIRED: Int { get }
var CSSM_TP_ACTION_LEAF_IS_CA: Int { get }
var CSSM_TP_ACTION_FETCH_CERT_FROM_NET: Int { get }
var CSSM_TP_ACTION_ALLOW_EXPIRED_ROOT: Int { get }
var CSSM_TP_ACTION_REQUIRE_REV_PER_CERT: Int { get }
var CSSM_TP_ACTION_TRUST_SETTINGS: Int { get }
var CSSM_TP_ACTION_IMPLICIT_ANCHORS: Int { get }
var CSSM_APPLE_TP_ACTION_VERSION: Int32 { get }
struct CSSM_APPLE_TP_ACTION_DATA {
  var Version: uint32
  var ActionFlags: CSSM_APPLE_TP_ACTION_FLAGS
  init()
  init(Version: uint32, ActionFlags: CSSM_APPLE_TP_ACTION_FLAGS)
}
typealias CSSM_TP_APPLE_CERT_STATUS = uint32
var CSSM_CERT_STATUS_EXPIRED: Int { get }
var CSSM_CERT_STATUS_NOT_VALID_YET: Int { get }
var CSSM_CERT_STATUS_IS_IN_INPUT_CERTS: Int { get }
var CSSM_CERT_STATUS_IS_IN_ANCHORS: Int { get }
var CSSM_CERT_STATUS_IS_ROOT: Int { get }
var CSSM_CERT_STATUS_IS_FROM_NET: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_FOUND_USER: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_FOUND_ADMIN: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_FOUND_SYSTEM: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_TRUST: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_DENY: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_IGNORED_ERROR: Int { get }
struct CSSM_TP_APPLE_EVIDENCE_INFO {
  var StatusBits: CSSM_TP_APPLE_CERT_STATUS
  var NumStatusCodes: uint32
  var StatusCodes: UnsafeMutablePointer<CSSM_RETURN>
  var Index: uint32
  var DlDbHandle: CSSM_DL_DB_HANDLE
  var UniqueRecord: CSSM_DB_UNIQUE_RECORD_PTR
  init()
  init(StatusBits: CSSM_TP_APPLE_CERT_STATUS, NumStatusCodes: uint32, StatusCodes: UnsafeMutablePointer<CSSM_RETURN>, Index: uint32, DlDbHandle: CSSM_DL_DB_HANDLE, UniqueRecord: CSSM_DB_UNIQUE_RECORD_PTR)
}
var CSSM_TP_APPLE_EVIDENCE_VERSION: Int32 { get }
struct CSSM_TP_APPLE_EVIDENCE_HEADER {
  var Version: uint32
  init()
  init(Version: uint32)
}
var CSSM_EVIDENCE_FORM_APPLE_CUSTOM: UInt32 { get }
var CSSM_EVIDENCE_FORM_APPLE_HEADER: UInt32 { get }
var CSSM_EVIDENCE_FORM_APPLE_CERTGROUP: UInt32 { get }
var CSSM_EVIDENCE_FORM_APPLE_CERT_INFO: UInt32 { get }
var CSSM_APPLEX509CL_OBTAIN_CSR: Int { get }
var CSSM_APPLEX509CL_VERIFY_CSR: Int { get }
struct CSSM_APPLE_CL_CSR_REQUEST {
  var subjectNameX509: CSSM_X509_NAME_PTR
  var signatureAlg: CSSM_ALGORITHMS
  var signatureOid: CSSM_OID
  var cspHand: CSSM_CSP_HANDLE
  var subjectPublicKey: UnsafePointer<CSSM_KEY>
  var subjectPrivateKey: UnsafePointer<CSSM_KEY>
  var challengeString: UnsafePointer<Int8>
  init()
  init(subjectNameX509: CSSM_X509_NAME_PTR, signatureAlg: CSSM_ALGORITHMS, signatureOid: CSSM_OID, cspHand: CSSM_CSP_HANDLE, subjectPublicKey: UnsafePointer<CSSM_KEY>, subjectPrivateKey: UnsafePointer<CSSM_KEY>, challengeString: UnsafePointer<Int8>)
}
var CSSM_APPLE_CRL_END_OF_TIME: String { get }
var kKeychainSuffix: String { get }
var kSystemKeychainName: String { get }
var kSystemKeychainDir: String { get }
var kSystemUnlockFile: String { get }
func cssmPerror(how: UnsafePointer<Int8>, _ error: CSSM_RETURN)
func cssmOidToAlg(oid: UnsafePointer<CSSM_OID>, _ alg: UnsafeMutablePointer<CSSM_ALGORITHMS>) -> Bool
func cssmAlgToOid(algId: CSSM_ALGORITHMS) -> UnsafePointer<CSSM_OID>
var errSecErrnoBase: Int32 { get }
var errSecErrnoLimit: Int32 { get }
struct cssm_spi_cl_funcs {
  var CertCreateTemplate: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertGetAllTemplateFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var CertSign: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertVerify: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32) -> CSSM_RETURN)!
  var CertVerifyWithKey: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var CertGetFirstFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CertGetNextFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CertAbortQuery: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var CertGetKeyInfo: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_KEY_PTR>) -> CSSM_RETURN)!
  var CertGetAllFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var FreeFields: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var FreeFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_OID>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertCache: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!
  var CertGetFirstCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CertGetNextCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CertAbortCache: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var CertGroupToSignedBundle: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERT_BUNDLE_HEADER>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertGroupFromVerifiedBundle: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CERT_BUNDLE>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!
  var CertDescribeFormat: (@convention(c) (CSSM_CL_HANDLE, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_OID_PTR>) -> CSSM_RETURN)!
  var CrlCreateTemplate: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlSetFields: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlAddCert: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, UnsafePointer<CSSM_FIELD>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlRemoveCert: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlSign: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlVerify: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32) -> CSSM_RETURN)!
  var CrlVerifyWithKey: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var IsCertInCrl: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!
  var CrlGetFirstFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CrlGetNextFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CrlAbortQuery: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var CrlGetAllFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var CrlCache: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!
  var IsCertInCachedCrl: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE, UnsafeMutablePointer<CSSM_BOOL>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlGetFirstCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CrlGetNextCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CrlGetAllCachedRecordFields: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var CrlAbortCache: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var CrlDescribeFormat: (@convention(c) (CSSM_CL_HANDLE, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_OID_PTR>) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(CertCreateTemplate: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertGetAllTemplateFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, CertSign: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertVerify: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32) -> CSSM_RETURN)!, CertVerifyWithKey: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, CertGetFirstFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CertGetNextFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CertAbortQuery: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, CertGetKeyInfo: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_KEY_PTR>) -> CSSM_RETURN)!, CertGetAllFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, FreeFields: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, FreeFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_OID>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertCache: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!, CertGetFirstCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CertGetNextCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CertAbortCache: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, CertGroupToSignedBundle: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERT_BUNDLE_HEADER>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertGroupFromVerifiedBundle: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CERT_BUNDLE>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!, CertDescribeFormat: (@convention(c) (CSSM_CL_HANDLE, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_OID_PTR>) -> CSSM_RETURN)!, CrlCreateTemplate: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlSetFields: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlAddCert: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, UnsafePointer<CSSM_FIELD>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlRemoveCert: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlSign: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlVerify: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32) -> CSSM_RETURN)!, CrlVerifyWithKey: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, IsCertInCrl: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!, CrlGetFirstFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CrlGetNextFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CrlAbortQuery: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, CrlGetAllFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, CrlCache: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!, IsCertInCachedCrl: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE, UnsafeMutablePointer<CSSM_BOOL>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlGetFirstCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CrlGetNextCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CrlGetAllCachedRecordFields: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, CrlAbortCache: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, CrlDescribeFormat: (@convention(c) (CSSM_CL_HANDLE, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_OID_PTR>) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
typealias sint64 = Int64
typealias uint64 = UInt64
typealias sint32 = Int32
typealias sint16 = Int16
typealias sint8 = Int8
typealias uint32 = UInt32
typealias uint16 = UInt16
typealias uint8 = UInt8
typealias CSSM_INTPTR = Int
typealias CSSM_SIZE = Int
struct cssm_spi_csp_funcs {
  var EventNotify: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CONTEXT_EVENT, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var QuerySize: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_BOOL, uint32, CSSM_QUERY_SIZE_DATA_PTR) -> CSSM_RETURN)!
  var SignData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_ALGORITHMS, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var SignDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var SignDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var SignDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var VerifyData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_ALGORITHMS, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var VerifyDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var VerifyDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var VerifyDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var DigestData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var DigestDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var DigestDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var DigestDataClone: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_CC_HANDLE) -> CSSM_RETURN)!
  var DigestDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var GenerateMac: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var GenerateMacInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var GenerateMacUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var GenerateMacFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var VerifyMac: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var VerifyMacInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var VerifyMacUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var VerifyMacFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var EncryptData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var EncryptDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var EncryptDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>) -> CSSM_RETURN)!
  var EncryptDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var DecryptData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var DecryptDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var DecryptDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>) -> CSSM_RETURN)!
  var DecryptDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var QueryKeySizeInBits: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_KEY>, CSSM_KEY_SIZE_PTR) -> CSSM_RETURN)!
  var GenerateKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var GenerateKeyPair: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, uint32, UnsafePointer<CSSM_DATA>, CSSM_KEY_PTR, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var GenerateRandom: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var GenerateAlgorithmParams: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, CSSM_DATA_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_CONTEXT_ATTRIBUTE_PTR>) -> CSSM_RETURN)!
  var WrapKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_DATA>, CSSM_WRAP_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var UnwrapKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_WRAP_KEY>, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var DeriveKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_DATA_PTR, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR) -> CSSM_RETURN)!
  var FreeKey: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, CSSM_KEY_PTR, CSSM_BOOL) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  var Login: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_DATA>, UnsafePointer<Void>) -> CSSM_RETURN)!
  var Logout: (@convention(c) (CSSM_CSP_HANDLE) -> CSSM_RETURN)!
  var ChangeLoginAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>) -> CSSM_RETURN)!
  var ObtainPrivateKeyFromPublicKey: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, CSSM_KEY_PTR) -> CSSM_RETURN)!
  var RetrieveUniqueId: (@convention(c) (CSSM_CSP_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var RetrieveCounter: (@convention(c) (CSSM_CSP_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var VerifyDevice: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var GetTimeValue: (@convention(c) (CSSM_CSP_HANDLE, CSSM_ALGORITHMS, UnsafeMutablePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var GetOperationalStatistics: (@convention(c) (CSSM_CSP_HANDLE, UnsafeMutablePointer<CSSM_CSP_OPERATIONAL_STATISTICS>) -> CSSM_RETURN)!
  var GetLoginAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!
  var GetKeyAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!
  var ChangeKeyAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>, UnsafePointer<CSSM_KEY>) -> CSSM_RETURN)!
  var GetKeyOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!
  var ChangeKeyOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!
  var GetLoginOwner: (@convention(c) (CSSM_CSP_HANDLE, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!
  var ChangeLoginOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!
  init()
  init(EventNotify: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CONTEXT_EVENT, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, QuerySize: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_BOOL, uint32, CSSM_QUERY_SIZE_DATA_PTR) -> CSSM_RETURN)!, SignData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_ALGORITHMS, CSSM_DATA_PTR) -> CSSM_RETURN)!, SignDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, SignDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, SignDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, VerifyData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_ALGORITHMS, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, VerifyDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, VerifyDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, VerifyDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, DigestData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!, DigestDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, DigestDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, DigestDataClone: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_CC_HANDLE) -> CSSM_RETURN)!, DigestDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, GenerateMac: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!, GenerateMacInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, GenerateMacUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, GenerateMacFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, VerifyMac: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, VerifyMacInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, VerifyMacUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, VerifyMacFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, EncryptData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, EncryptDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_PRIVILEGE) -> CSSM_RETURN)!, EncryptDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>) -> CSSM_RETURN)!, EncryptDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, DecryptData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, DecryptDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_PRIVILEGE) -> CSSM_RETURN)!, DecryptDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>) -> CSSM_RETURN)!, DecryptDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, QueryKeySizeInBits: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_KEY>, CSSM_KEY_SIZE_PTR) -> CSSM_RETURN)!, GenerateKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, GenerateKeyPair: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, uint32, UnsafePointer<CSSM_DATA>, CSSM_KEY_PTR, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, GenerateRandom: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_DATA_PTR) -> CSSM_RETURN)!, GenerateAlgorithmParams: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, CSSM_DATA_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_CONTEXT_ATTRIBUTE_PTR>) -> CSSM_RETURN)!, WrapKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_DATA>, CSSM_WRAP_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, UnwrapKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_WRAP_KEY>, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, DeriveKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_DATA_PTR, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR) -> CSSM_RETURN)!, FreeKey: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, CSSM_KEY_PTR, CSSM_BOOL) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!, Login: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_DATA>, UnsafePointer<Void>) -> CSSM_RETURN)!, Logout: (@convention(c) (CSSM_CSP_HANDLE) -> CSSM_RETURN)!, ChangeLoginAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>) -> CSSM_RETURN)!, ObtainPrivateKeyFromPublicKey: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, CSSM_KEY_PTR) -> CSSM_RETURN)!, RetrieveUniqueId: (@convention(c) (CSSM_CSP_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, RetrieveCounter: (@convention(c) (CSSM_CSP_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, VerifyDevice: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, GetTimeValue: (@convention(c) (CSSM_CSP_HANDLE, CSSM_ALGORITHMS, UnsafeMutablePointer<CSSM_DATA>) -> CSSM_RETURN)!, GetOperationalStatistics: (@convention(c) (CSSM_CSP_HANDLE, UnsafeMutablePointer<CSSM_CSP_OPERATIONAL_STATISTICS>) -> CSSM_RETURN)!, GetLoginAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!, GetKeyAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!, ChangeKeyAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>, UnsafePointer<CSSM_KEY>) -> CSSM_RETURN)!, GetKeyOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!, ChangeKeyOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!, GetLoginOwner: (@convention(c) (CSSM_CSP_HANDLE, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!, ChangeLoginOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!)
}
struct cssm_spi_dl_funcs {
  var DbOpen: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!
  var DbClose: (@convention(c) (CSSM_DL_DB_HANDLE) -> CSSM_RETURN)!
  var DbCreate: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, UnsafePointer<CSSM_DBINFO>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!
  var DbDelete: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>) -> CSSM_RETURN)!
  var CreateRelation: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<Int8>, uint32, UnsafePointer<CSSM_DB_SCHEMA_ATTRIBUTE_INFO>, uint32, UnsafePointer<CSSM_DB_SCHEMA_INDEX_INFO>) -> CSSM_RETURN)!
  var DestroyRelation: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE) -> CSSM_RETURN)!
  var Authenticate: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>) -> CSSM_RETURN)!
  var GetDbAcl: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!
  var ChangeDbAcl: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>) -> CSSM_RETURN)!
  var GetDbOwner: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!
  var ChangeDbOwner: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!
  var GetDbNames: (@convention(c) (CSSM_DL_HANDLE, UnsafeMutablePointer<CSSM_NAME_LIST_PTR>) -> CSSM_RETURN)!
  var GetDbNameFromHandle: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> CSSM_RETURN)!
  var FreeNameList: (@convention(c) (CSSM_DL_HANDLE, CSSM_NAME_LIST_PTR) -> CSSM_RETURN)!
  var DataInsert: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataDelete: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>) -> CSSM_RETURN)!
  var DataModify: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, CSSM_DB_UNIQUE_RECORD_PTR, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DB_MODIFY_MODE) -> CSSM_RETURN)!
  var DataGetFirst: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_QUERY>, CSSM_HANDLE_PTR, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataGetNext: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_HANDLE, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataAbortQuery: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var DataGetFromUniqueRecordId: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var FreeUniqueRecord: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_UNIQUE_RECORD_PTR) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_DL_DB_HANDLE, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(DbOpen: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!, DbClose: (@convention(c) (CSSM_DL_DB_HANDLE) -> CSSM_RETURN)!, DbCreate: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, UnsafePointer<CSSM_DBINFO>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!, DbDelete: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>) -> CSSM_RETURN)!, CreateRelation: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<Int8>, uint32, UnsafePointer<CSSM_DB_SCHEMA_ATTRIBUTE_INFO>, uint32, UnsafePointer<CSSM_DB_SCHEMA_INDEX_INFO>) -> CSSM_RETURN)!, DestroyRelation: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE) -> CSSM_RETURN)!, Authenticate: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>) -> CSSM_RETURN)!, GetDbAcl: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!, ChangeDbAcl: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>) -> CSSM_RETURN)!, GetDbOwner: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!, ChangeDbOwner: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!, GetDbNames: (@convention(c) (CSSM_DL_HANDLE, UnsafeMutablePointer<CSSM_NAME_LIST_PTR>) -> CSSM_RETURN)!, GetDbNameFromHandle: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> CSSM_RETURN)!, FreeNameList: (@convention(c) (CSSM_DL_HANDLE, CSSM_NAME_LIST_PTR) -> CSSM_RETURN)!, DataInsert: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataDelete: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>) -> CSSM_RETURN)!, DataModify: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, CSSM_DB_UNIQUE_RECORD_PTR, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DB_MODIFY_MODE) -> CSSM_RETURN)!, DataGetFirst: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_QUERY>, CSSM_HANDLE_PTR, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataGetNext: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_HANDLE, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataAbortQuery: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, DataGetFromUniqueRecordId: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, FreeUniqueRecord: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_UNIQUE_RECORD_PTR) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_DL_DB_HANDLE, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
var CSSM_BASE_ERROR: Int { get }
var CSSM_ERRORCODE_MODULE_EXTENT: Int { get }
var CSSM_ERRORCODE_CUSTOM_OFFSET: Int { get }
var CSSM_ERRORCODE_COMMON_EXTENT: Int { get }
var CSSM_CSSM_BASE_ERROR: Int { get }
var CSSM_CSSM_PRIVATE_ERROR: Int { get }
var CSSM_CSP_BASE_ERROR: Int { get }
var CSSM_CSP_PRIVATE_ERROR: Int { get }
var CSSM_DL_BASE_ERROR: Int { get }
var CSSM_DL_PRIVATE_ERROR: Int { get }
var CSSM_CL_BASE_ERROR: Int { get }
var CSSM_CL_PRIVATE_ERROR: Int { get }
var CSSM_TP_BASE_ERROR: Int { get }
var CSSM_TP_PRIVATE_ERROR: Int { get }
var CSSM_KR_BASE_ERROR: Int { get }
var CSSM_KR_PRIVATE_ERROR: Int { get }
var CSSM_AC_BASE_ERROR: Int { get }
var CSSM_AC_PRIVATE_ERROR: Int { get }
var CSSM_MDS_BASE_ERROR: Int { get }
var CSSM_MDS_PRIVATE_ERROR: Int { get }
var CSSMERR_CSSM_INVALID_ADDIN_HANDLE: Int { get }
var CSSMERR_CSSM_NOT_INITIALIZED: Int { get }
var CSSMERR_CSSM_INVALID_HANDLE_USAGE: Int { get }
var CSSMERR_CSSM_PVC_REFERENT_NOT_FOUND: Int { get }
var CSSMERR_CSSM_FUNCTION_INTEGRITY_FAIL: Int { get }
var CSSM_ERRCODE_INTERNAL_ERROR: Int { get }
var CSSM_ERRCODE_MEMORY_ERROR: Int { get }
var CSSM_ERRCODE_MDS_ERROR: Int { get }
var CSSM_ERRCODE_INVALID_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_INPUT_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_OUTPUT_POINTER: Int { get }
var CSSM_ERRCODE_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSM_ERRCODE_SELF_CHECK_FAILED: Int { get }
var CSSM_ERRCODE_OS_ACCESS_DENIED: Int { get }
var CSSM_ERRCODE_FUNCTION_FAILED: Int { get }
var CSSM_ERRCODE_MODULE_MANIFEST_VERIFY_FAILED: Int { get }
var CSSM_ERRCODE_INVALID_GUID: Int { get }
var CSSM_ERRCODE_OPERATION_AUTH_DENIED: Int { get }
var CSSM_ERRCODE_OBJECT_USE_AUTH_DENIED: Int { get }
var CSSM_ERRCODE_OBJECT_MANIP_AUTH_DENIED: Int { get }
var CSSM_ERRCODE_OBJECT_ACL_NOT_SUPPORTED: Int { get }
var CSSM_ERRCODE_OBJECT_ACL_REQUIRED: Int { get }
var CSSM_ERRCODE_INVALID_ACCESS_CREDENTIALS: Int { get }
var CSSM_ERRCODE_INVALID_ACL_BASE_CERTS: Int { get }
var CSSM_ERRCODE_ACL_BASE_CERTS_NOT_SUPPORTED: Int { get }
var CSSM_ERRCODE_INVALID_SAMPLE_VALUE: Int { get }
var CSSM_ERRCODE_SAMPLE_VALUE_NOT_SUPPORTED: Int { get }
var CSSM_ERRCODE_INVALID_ACL_SUBJECT_VALUE: Int { get }
var CSSM_ERRCODE_ACL_SUBJECT_TYPE_NOT_SUPPORTED: Int { get }
var CSSM_ERRCODE_INVALID_ACL_CHALLENGE_CALLBACK: Int { get }
var CSSM_ERRCODE_ACL_CHALLENGE_CALLBACK_FAILED: Int { get }
var CSSM_ERRCODE_INVALID_ACL_ENTRY_TAG: Int { get }
var CSSM_ERRCODE_ACL_ENTRY_TAG_NOT_FOUND: Int { get }
var CSSM_ERRCODE_INVALID_ACL_EDIT_MODE: Int { get }
var CSSM_ERRCODE_ACL_CHANGE_FAILED: Int { get }
var CSSM_ERRCODE_INVALID_NEW_ACL_ENTRY: Int { get }
var CSSM_ERRCODE_INVALID_NEW_ACL_OWNER: Int { get }
var CSSM_ERRCODE_ACL_DELETE_FAILED: Int { get }
var CSSM_ERRCODE_ACL_REPLACE_FAILED: Int { get }
var CSSM_ERRCODE_ACL_ADD_FAILED: Int { get }
var CSSM_ERRCODE_INVALID_CONTEXT_HANDLE: Int { get }
var CSSM_ERRCODE_INCOMPATIBLE_VERSION: Int { get }
var CSSM_ERRCODE_INVALID_CERTGROUP_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_CERT_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_CRL_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_FIELD_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_DATA: Int { get }
var CSSM_ERRCODE_CRL_ALREADY_SIGNED: Int { get }
var CSSM_ERRCODE_INVALID_NUMBER_OF_FIELDS: Int { get }
var CSSM_ERRCODE_VERIFICATION_FAILURE: Int { get }
var CSSM_ERRCODE_INVALID_DB_HANDLE: Int { get }
var CSSM_ERRCODE_PRIVILEGE_NOT_GRANTED: Int { get }
var CSSM_ERRCODE_INVALID_DB_LIST: Int { get }
var CSSM_ERRCODE_INVALID_DB_LIST_POINTER: Int { get }
var CSSM_ERRCODE_UNKNOWN_FORMAT: Int { get }
var CSSM_ERRCODE_UNKNOWN_TAG: Int { get }
var CSSM_ERRCODE_INVALID_CSP_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_DL_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_CL_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_TP_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_KR_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_AC_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_PASSTHROUGH_ID: Int { get }
var CSSM_ERRCODE_INVALID_NETWORK_ADDR: Int { get }
var CSSM_ERRCODE_INVALID_CRYPTO_DATA: Int { get }
var CSSMERR_CSSM_INTERNAL_ERROR: Int { get }
var CSSMERR_CSSM_MEMORY_ERROR: Int { get }
var CSSMERR_CSSM_MDS_ERROR: Int { get }
var CSSMERR_CSSM_INVALID_POINTER: Int { get }
var CSSMERR_CSSM_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_CSSM_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_CSSM_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_CSSM_SELF_CHECK_FAILED: Int { get }
var CSSMERR_CSSM_OS_ACCESS_DENIED: Int { get }
var CSSMERR_CSSM_FUNCTION_FAILED: Int { get }
var CSSMERR_CSSM_MODULE_MANIFEST_VERIFY_FAILED: Int { get }
var CSSMERR_CSSM_INVALID_GUID: Int { get }
var CSSMERR_CSSM_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_CSSM_INCOMPATIBLE_VERSION: Int { get }
var CSSMERR_CSSM_PRIVILEGE_NOT_GRANTED: Int { get }
var CSSM_CSSM_BASE_CSSM_ERROR: Int { get }
var CSSMERR_CSSM_SCOPE_NOT_SUPPORTED: Int { get }
var CSSMERR_CSSM_PVC_ALREADY_CONFIGURED: Int { get }
var CSSMERR_CSSM_INVALID_PVC: Int { get }
var CSSMERR_CSSM_EMM_LOAD_FAILED: Int { get }
var CSSMERR_CSSM_EMM_UNLOAD_FAILED: Int { get }
var CSSMERR_CSSM_ADDIN_LOAD_FAILED: Int { get }
var CSSMERR_CSSM_INVALID_KEY_HIERARCHY: Int { get }
var CSSMERR_CSSM_ADDIN_UNLOAD_FAILED: Int { get }
var CSSMERR_CSSM_LIB_REF_NOT_FOUND: Int { get }
var CSSMERR_CSSM_INVALID_ADDIN_FUNCTION_TABLE: Int { get }
var CSSMERR_CSSM_EMM_AUTHENTICATE_FAILED: Int { get }
var CSSMERR_CSSM_ADDIN_AUTHENTICATE_FAILED: Int { get }
var CSSMERR_CSSM_INVALID_SERVICE_MASK: Int { get }
var CSSMERR_CSSM_MODULE_NOT_LOADED: Int { get }
var CSSMERR_CSSM_INVALID_SUBSERVICEID: Int { get }
var CSSMERR_CSSM_BUFFER_TOO_SMALL: Int { get }
var CSSMERR_CSSM_INVALID_ATTRIBUTE: Int { get }
var CSSMERR_CSSM_ATTRIBUTE_NOT_IN_CONTEXT: Int { get }
var CSSMERR_CSSM_MODULE_MANAGER_INITIALIZE_FAIL: Int { get }
var CSSMERR_CSSM_MODULE_MANAGER_NOT_FOUND: Int { get }
var CSSMERR_CSSM_EVENT_NOTIFICATION_CALLBACK_NOT_FOUND: Int { get }
var CSSMERR_CSP_INTERNAL_ERROR: Int { get }
var CSSMERR_CSP_MEMORY_ERROR: Int { get }
var CSSMERR_CSP_MDS_ERROR: Int { get }
var CSSMERR_CSP_INVALID_POINTER: Int { get }
var CSSMERR_CSP_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_CSP_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_CSP_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_CSP_SELF_CHECK_FAILED: Int { get }
var CSSMERR_CSP_OS_ACCESS_DENIED: Int { get }
var CSSMERR_CSP_FUNCTION_FAILED: Int { get }
var CSSMERR_CSP_OPERATION_AUTH_DENIED: Int { get }
var CSSMERR_CSP_OBJECT_USE_AUTH_DENIED: Int { get }
var CSSMERR_CSP_OBJECT_MANIP_AUTH_DENIED: Int { get }
var CSSMERR_CSP_OBJECT_ACL_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_OBJECT_ACL_REQUIRED: Int { get }
var CSSMERR_CSP_INVALID_ACCESS_CREDENTIALS: Int { get }
var CSSMERR_CSP_INVALID_ACL_BASE_CERTS: Int { get }
var CSSMERR_CSP_ACL_BASE_CERTS_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_INVALID_SAMPLE_VALUE: Int { get }
var CSSMERR_CSP_SAMPLE_VALUE_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_INVALID_ACL_SUBJECT_VALUE: Int { get }
var CSSMERR_CSP_ACL_SUBJECT_TYPE_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_INVALID_ACL_CHALLENGE_CALLBACK: Int { get }
var CSSMERR_CSP_ACL_CHALLENGE_CALLBACK_FAILED: Int { get }
var CSSMERR_CSP_INVALID_ACL_ENTRY_TAG: Int { get }
var CSSMERR_CSP_ACL_ENTRY_TAG_NOT_FOUND: Int { get }
var CSSMERR_CSP_INVALID_ACL_EDIT_MODE: Int { get }
var CSSMERR_CSP_ACL_CHANGE_FAILED: Int { get }
var CSSMERR_CSP_INVALID_NEW_ACL_ENTRY: Int { get }
var CSSMERR_CSP_INVALID_NEW_ACL_OWNER: Int { get }
var CSSMERR_CSP_ACL_DELETE_FAILED: Int { get }
var CSSMERR_CSP_ACL_REPLACE_FAILED: Int { get }
var CSSMERR_CSP_ACL_ADD_FAILED: Int { get }
var CSSMERR_CSP_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_CSP_PRIVILEGE_NOT_GRANTED: Int { get }
var CSSMERR_CSP_INVALID_DATA: Int { get }
var CSSMERR_CSP_INVALID_PASSTHROUGH_ID: Int { get }
var CSSMERR_CSP_INVALID_CRYPTO_DATA: Int { get }
var CSSM_CSP_BASE_CSP_ERROR: Int { get }
var CSSMERR_CSP_INPUT_LENGTH_ERROR: Int { get }
var CSSMERR_CSP_OUTPUT_LENGTH_ERROR: Int { get }
var CSSMERR_CSP_PRIVILEGE_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_DEVICE_ERROR: Int { get }
var CSSMERR_CSP_DEVICE_MEMORY_ERROR: Int { get }
var CSSMERR_CSP_ATTACH_HANDLE_BUSY: Int { get }
var CSSMERR_CSP_NOT_LOGGED_IN: Int { get }
var CSSMERR_CSP_INVALID_KEY: Int { get }
var CSSMERR_CSP_INVALID_KEY_REFERENCE: Int { get }
var CSSMERR_CSP_INVALID_KEY_CLASS: Int { get }
var CSSMERR_CSP_ALGID_MISMATCH: Int { get }
var CSSMERR_CSP_KEY_USAGE_INCORRECT: Int { get }
var CSSMERR_CSP_KEY_BLOB_TYPE_INCORRECT: Int { get }
var CSSMERR_CSP_KEY_HEADER_INCONSISTENT: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEY_FORMAT: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEY_SIZE: Int { get }
var CSSMERR_CSP_INVALID_KEY_POINTER: Int { get }
var CSSMERR_CSP_INVALID_KEYUSAGE_MASK: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEYUSAGE_MASK: Int { get }
var CSSMERR_CSP_INVALID_KEYATTR_MASK: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEYATTR_MASK: Int { get }
var CSSMERR_CSP_INVALID_KEY_LABEL: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEY_LABEL: Int { get }
var CSSMERR_CSP_INVALID_KEY_FORMAT: Int { get }
var CSSMERR_CSP_INVALID_DATA_COUNT: Int { get }
var CSSMERR_CSP_VECTOR_OF_BUFS_UNSUPPORTED: Int { get }
var CSSMERR_CSP_INVALID_INPUT_VECTOR: Int { get }
var CSSMERR_CSP_INVALID_OUTPUT_VECTOR: Int { get }
var CSSMERR_CSP_INVALID_CONTEXT: Int { get }
var CSSMERR_CSP_INVALID_ALGORITHM: Int { get }
var CSSMERR_CSP_INVALID_ATTR_KEY: Int { get }
var CSSMERR_CSP_MISSING_ATTR_KEY: Int { get }
var CSSMERR_CSP_INVALID_ATTR_INIT_VECTOR: Int { get }
var CSSMERR_CSP_MISSING_ATTR_INIT_VECTOR: Int { get }
var CSSMERR_CSP_INVALID_ATTR_SALT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_SALT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PADDING: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PADDING: Int { get }
var CSSMERR_CSP_INVALID_ATTR_RANDOM: Int { get }
var CSSMERR_CSP_MISSING_ATTR_RANDOM: Int { get }
var CSSMERR_CSP_INVALID_ATTR_SEED: Int { get }
var CSSMERR_CSP_MISSING_ATTR_SEED: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PASSPHRASE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PASSPHRASE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_KEY_LENGTH: Int { get }
var CSSMERR_CSP_MISSING_ATTR_KEY_LENGTH: Int { get }
var CSSMERR_CSP_INVALID_ATTR_BLOCK_SIZE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_BLOCK_SIZE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_OUTPUT_SIZE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_OUTPUT_SIZE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_ROUNDS: Int { get }
var CSSMERR_CSP_MISSING_ATTR_ROUNDS: Int { get }
var CSSMERR_CSP_INVALID_ATTR_ALG_PARAMS: Int { get }
var CSSMERR_CSP_MISSING_ATTR_ALG_PARAMS: Int { get }
var CSSMERR_CSP_INVALID_ATTR_LABEL: Int { get }
var CSSMERR_CSP_MISSING_ATTR_LABEL: Int { get }
var CSSMERR_CSP_INVALID_ATTR_KEY_TYPE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_KEY_TYPE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_MODE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_MODE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_EFFECTIVE_BITS: Int { get }
var CSSMERR_CSP_MISSING_ATTR_EFFECTIVE_BITS: Int { get }
var CSSMERR_CSP_INVALID_ATTR_START_DATE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_START_DATE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_END_DATE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_END_DATE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_VERSION: Int { get }
var CSSMERR_CSP_MISSING_ATTR_VERSION: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PRIME: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PRIME: Int { get }
var CSSMERR_CSP_INVALID_ATTR_BASE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_BASE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_SUBPRIME: Int { get }
var CSSMERR_CSP_MISSING_ATTR_SUBPRIME: Int { get }
var CSSMERR_CSP_INVALID_ATTR_ITERATION_COUNT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_ITERATION_COUNT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_DL_DB_HANDLE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_DL_DB_HANDLE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_ACCESS_CREDENTIALS: Int { get }
var CSSMERR_CSP_MISSING_ATTR_ACCESS_CREDENTIALS: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PUBLIC_KEY_FORMAT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PUBLIC_KEY_FORMAT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PRIVATE_KEY_FORMAT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PRIVATE_KEY_FORMAT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_SYMMETRIC_KEY_FORMAT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_SYMMETRIC_KEY_FORMAT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_WRAPPED_KEY_FORMAT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_WRAPPED_KEY_FORMAT: Int { get }
var CSSMERR_CSP_STAGED_OPERATION_IN_PROGRESS: Int { get }
var CSSMERR_CSP_STAGED_OPERATION_NOT_STARTED: Int { get }
var CSSMERR_CSP_VERIFY_FAILED: Int { get }
var CSSMERR_CSP_INVALID_SIGNATURE: Int { get }
var CSSMERR_CSP_QUERY_SIZE_UNKNOWN: Int { get }
var CSSMERR_CSP_BLOCK_SIZE_MISMATCH: Int { get }
var CSSMERR_CSP_PRIVATE_KEY_NOT_FOUND: Int { get }
var CSSMERR_CSP_PUBLIC_KEY_INCONSISTENT: Int { get }
var CSSMERR_CSP_DEVICE_VERIFY_FAILED: Int { get }
var CSSMERR_CSP_INVALID_LOGIN_NAME: Int { get }
var CSSMERR_CSP_ALREADY_LOGGED_IN: Int { get }
var CSSMERR_CSP_PRIVATE_KEY_ALREADY_EXISTS: Int { get }
var CSSMERR_CSP_KEY_LABEL_ALREADY_EXISTS: Int { get }
var CSSMERR_CSP_INVALID_DIGEST_ALGORITHM: Int { get }
var CSSMERR_CSP_CRYPTO_DATA_CALLBACK_FAILED: Int { get }
var CSSMERR_TP_INTERNAL_ERROR: Int { get }
var CSSMERR_TP_MEMORY_ERROR: Int { get }
var CSSMERR_TP_MDS_ERROR: Int { get }
var CSSMERR_TP_INVALID_POINTER: Int { get }
var CSSMERR_TP_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_TP_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_TP_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_TP_SELF_CHECK_FAILED: Int { get }
var CSSMERR_TP_OS_ACCESS_DENIED: Int { get }
var CSSMERR_TP_FUNCTION_FAILED: Int { get }
var CSSMERR_TP_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_TP_INVALID_DATA: Int { get }
var CSSMERR_TP_INVALID_DB_LIST: Int { get }
var CSSMERR_TP_INVALID_CERTGROUP_POINTER: Int { get }
var CSSMERR_TP_INVALID_CERT_POINTER: Int { get }
var CSSMERR_TP_INVALID_CRL_POINTER: Int { get }
var CSSMERR_TP_INVALID_FIELD_POINTER: Int { get }
var CSSMERR_TP_INVALID_NETWORK_ADDR: Int { get }
var CSSMERR_TP_CRL_ALREADY_SIGNED: Int { get }
var CSSMERR_TP_INVALID_NUMBER_OF_FIELDS: Int { get }
var CSSMERR_TP_VERIFICATION_FAILURE: Int { get }
var CSSMERR_TP_INVALID_DB_HANDLE: Int { get }
var CSSMERR_TP_UNKNOWN_FORMAT: Int { get }
var CSSMERR_TP_UNKNOWN_TAG: Int { get }
var CSSMERR_TP_INVALID_PASSTHROUGH_ID: Int { get }
var CSSMERR_TP_INVALID_CSP_HANDLE: Int { get }
var CSSMERR_TP_INVALID_DL_HANDLE: Int { get }
var CSSMERR_TP_INVALID_CL_HANDLE: Int { get }
var CSSMERR_TP_INVALID_DB_LIST_POINTER: Int { get }
var CSSM_TP_BASE_TP_ERROR: Int { get }
var CSSMERR_TP_INVALID_CALLERAUTH_CONTEXT_POINTER: Int { get }
var CSSMERR_TP_INVALID_IDENTIFIER_POINTER: Int { get }
var CSSMERR_TP_INVALID_KEYCACHE_HANDLE: Int { get }
var CSSMERR_TP_INVALID_CERTGROUP: Int { get }
var CSSMERR_TP_INVALID_CRLGROUP: Int { get }
var CSSMERR_TP_INVALID_CRLGROUP_POINTER: Int { get }
var CSSMERR_TP_AUTHENTICATION_FAILED: Int { get }
var CSSMERR_TP_CERTGROUP_INCOMPLETE: Int { get }
var CSSMERR_TP_CERTIFICATE_CANT_OPERATE: Int { get }
var CSSMERR_TP_CERT_EXPIRED: Int { get }
var CSSMERR_TP_CERT_NOT_VALID_YET: Int { get }
var CSSMERR_TP_CERT_REVOKED: Int { get }
var CSSMERR_TP_CERT_SUSPENDED: Int { get }
var CSSMERR_TP_INSUFFICIENT_CREDENTIALS: Int { get }
var CSSMERR_TP_INVALID_ACTION: Int { get }
var CSSMERR_TP_INVALID_ACTION_DATA: Int { get }
var CSSMERR_TP_INVALID_ANCHOR_CERT: Int { get }
var CSSMERR_TP_INVALID_AUTHORITY: Int { get }
var CSSMERR_TP_VERIFY_ACTION_FAILED: Int { get }
var CSSMERR_TP_INVALID_CERTIFICATE: Int { get }
var CSSMERR_TP_INVALID_CERT_AUTHORITY: Int { get }
var CSSMERR_TP_INVALID_CRL_AUTHORITY: Int { get }
var CSSMERR_TP_INVALID_CRL_ENCODING: Int { get }
var CSSMERR_TP_INVALID_CRL_TYPE: Int { get }
var CSSMERR_TP_INVALID_CRL: Int { get }
var CSSMERR_TP_INVALID_FORM_TYPE: Int { get }
var CSSMERR_TP_INVALID_ID: Int { get }
var CSSMERR_TP_INVALID_IDENTIFIER: Int { get }
var CSSMERR_TP_INVALID_INDEX: Int { get }
var CSSMERR_TP_INVALID_NAME: Int { get }
var CSSMERR_TP_INVALID_POLICY_IDENTIFIERS: Int { get }
var CSSMERR_TP_INVALID_TIMESTRING: Int { get }
var CSSMERR_TP_INVALID_REASON: Int { get }
var CSSMERR_TP_INVALID_REQUEST_INPUTS: Int { get }
var CSSMERR_TP_INVALID_RESPONSE_VECTOR: Int { get }
var CSSMERR_TP_INVALID_SIGNATURE: Int { get }
var CSSMERR_TP_INVALID_STOP_ON_POLICY: Int { get }
var CSSMERR_TP_INVALID_CALLBACK: Int { get }
var CSSMERR_TP_INVALID_TUPLE: Int { get }
var CSSMERR_TP_NOT_SIGNER: Int { get }
var CSSMERR_TP_NOT_TRUSTED: Int { get }
var CSSMERR_TP_NO_DEFAULT_AUTHORITY: Int { get }
var CSSMERR_TP_REJECTED_FORM: Int { get }
var CSSMERR_TP_REQUEST_LOST: Int { get }
var CSSMERR_TP_REQUEST_REJECTED: Int { get }
var CSSMERR_TP_UNSUPPORTED_ADDR_TYPE: Int { get }
var CSSMERR_TP_UNSUPPORTED_SERVICE: Int { get }
var CSSMERR_TP_INVALID_TUPLEGROUP_POINTER: Int { get }
var CSSMERR_TP_INVALID_TUPLEGROUP: Int { get }
var CSSMERR_AC_INTERNAL_ERROR: Int { get }
var CSSMERR_AC_MEMORY_ERROR: Int { get }
var CSSMERR_AC_MDS_ERROR: Int { get }
var CSSMERR_AC_INVALID_POINTER: Int { get }
var CSSMERR_AC_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_AC_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_AC_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_AC_SELF_CHECK_FAILED: Int { get }
var CSSMERR_AC_OS_ACCESS_DENIED: Int { get }
var CSSMERR_AC_FUNCTION_FAILED: Int { get }
var CSSMERR_AC_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_AC_INVALID_DATA: Int { get }
var CSSMERR_AC_INVALID_DB_LIST: Int { get }
var CSSMERR_AC_INVALID_PASSTHROUGH_ID: Int { get }
var CSSMERR_AC_INVALID_DL_HANDLE: Int { get }
var CSSMERR_AC_INVALID_CL_HANDLE: Int { get }
var CSSMERR_AC_INVALID_TP_HANDLE: Int { get }
var CSSMERR_AC_INVALID_DB_HANDLE: Int { get }
var CSSMERR_AC_INVALID_DB_LIST_POINTER: Int { get }
var CSSM_AC_BASE_AC_ERROR: Int { get }
var CSSMERR_AC_INVALID_BASE_ACLS: Int { get }
var CSSMERR_AC_INVALID_TUPLE_CREDENTIALS: Int { get }
var CSSMERR_AC_INVALID_ENCODING: Int { get }
var CSSMERR_AC_INVALID_VALIDITY_PERIOD: Int { get }
var CSSMERR_AC_INVALID_REQUESTOR: Int { get }
var CSSMERR_AC_INVALID_REQUEST_DESCRIPTOR: Int { get }
var CSSMERR_CL_INTERNAL_ERROR: Int { get }
var CSSMERR_CL_MEMORY_ERROR: Int { get }
var CSSMERR_CL_MDS_ERROR: Int { get }
var CSSMERR_CL_INVALID_POINTER: Int { get }
var CSSMERR_CL_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_CL_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_CL_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_CL_SELF_CHECK_FAILED: Int { get }
var CSSMERR_CL_OS_ACCESS_DENIED: Int { get }
var CSSMERR_CL_FUNCTION_FAILED: Int { get }
var CSSMERR_CL_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_CL_INVALID_CERTGROUP_POINTER: Int { get }
var CSSMERR_CL_INVALID_CERT_POINTER: Int { get }
var CSSMERR_CL_INVALID_CRL_POINTER: Int { get }
var CSSMERR_CL_INVALID_FIELD_POINTER: Int { get }
var CSSMERR_CL_INVALID_DATA: Int { get }
var CSSMERR_CL_CRL_ALREADY_SIGNED: Int { get }
var CSSMERR_CL_INVALID_NUMBER_OF_FIELDS: Int { get }
var CSSMERR_CL_VERIFICATION_FAILURE: Int { get }
var CSSMERR_CL_UNKNOWN_FORMAT: Int { get }
var CSSMERR_CL_UNKNOWN_TAG: Int { get }
var CSSMERR_CL_INVALID_PASSTHROUGH_ID: Int { get }
var CSSM_CL_BASE_CL_ERROR: Int { get }
var CSSMERR_CL_INVALID_BUNDLE_POINTER: Int { get }
var CSSMERR_CL_INVALID_CACHE_HANDLE: Int { get }
var CSSMERR_CL_INVALID_RESULTS_HANDLE: Int { get }
var CSSMERR_CL_INVALID_BUNDLE_INFO: Int { get }
var CSSMERR_CL_INVALID_CRL_INDEX: Int { get }
var CSSMERR_CL_INVALID_SCOPE: Int { get }
var CSSMERR_CL_NO_FIELD_VALUES: Int { get }
var CSSMERR_CL_SCOPE_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_INTERNAL_ERROR: Int { get }
var CSSMERR_DL_MEMORY_ERROR: Int { get }
var CSSMERR_DL_MDS_ERROR: Int { get }
var CSSMERR_DL_INVALID_POINTER: Int { get }
var CSSMERR_DL_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_DL_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_DL_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_DL_SELF_CHECK_FAILED: Int { get }
var CSSMERR_DL_OS_ACCESS_DENIED: Int { get }
var CSSMERR_DL_FUNCTION_FAILED: Int { get }
var CSSMERR_DL_INVALID_CSP_HANDLE: Int { get }
var CSSMERR_DL_INVALID_DL_HANDLE: Int { get }
var CSSMERR_DL_INVALID_CL_HANDLE: Int { get }
var CSSMERR_DL_INVALID_DB_LIST_POINTER: Int { get }
var CSSMERR_DL_OPERATION_AUTH_DENIED: Int { get }
var CSSMERR_DL_OBJECT_USE_AUTH_DENIED: Int { get }
var CSSMERR_DL_OBJECT_MANIP_AUTH_DENIED: Int { get }
var CSSMERR_DL_OBJECT_ACL_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_OBJECT_ACL_REQUIRED: Int { get }
var CSSMERR_DL_INVALID_ACCESS_CREDENTIALS: Int { get }
var CSSMERR_DL_INVALID_ACL_BASE_CERTS: Int { get }
var CSSMERR_DL_ACL_BASE_CERTS_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_INVALID_SAMPLE_VALUE: Int { get }
var CSSMERR_DL_SAMPLE_VALUE_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_INVALID_ACL_SUBJECT_VALUE: Int { get }
var CSSMERR_DL_ACL_SUBJECT_TYPE_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_INVALID_ACL_CHALLENGE_CALLBACK: Int { get }
var CSSMERR_DL_ACL_CHALLENGE_CALLBACK_FAILED: Int { get }
var CSSMERR_DL_INVALID_ACL_ENTRY_TAG: Int { get }
var CSSMERR_DL_ACL_ENTRY_TAG_NOT_FOUND: Int { get }
var CSSMERR_DL_INVALID_ACL_EDIT_MODE: Int { get }
var CSSMERR_DL_ACL_CHANGE_FAILED: Int { get }
var CSSMERR_DL_INVALID_NEW_ACL_ENTRY: Int { get }
var CSSMERR_DL_INVALID_NEW_ACL_OWNER: Int { get }
var CSSMERR_DL_ACL_DELETE_FAILED: Int { get }
var CSSMERR_DL_ACL_REPLACE_FAILED: Int { get }
var CSSMERR_DL_ACL_ADD_FAILED: Int { get }
var CSSMERR_DL_INVALID_DB_HANDLE: Int { get }
var CSSMERR_DL_INVALID_PASSTHROUGH_ID: Int { get }
var CSSMERR_DL_INVALID_NETWORK_ADDR: Int { get }
var CSSM_DL_BASE_DL_ERROR: Int { get }
var CSSMERR_DL_DATABASE_CORRUPT: Int { get }
var CSSMERR_DL_INVALID_RECORD_INDEX: Int { get }
var CSSMERR_DL_INVALID_RECORDTYPE: Int { get }
var CSSMERR_DL_INVALID_FIELD_NAME: Int { get }
var CSSMERR_DL_UNSUPPORTED_FIELD_FORMAT: Int { get }
var CSSMERR_DL_UNSUPPORTED_INDEX_INFO: Int { get }
var CSSMERR_DL_UNSUPPORTED_LOCALITY: Int { get }
var CSSMERR_DL_UNSUPPORTED_NUM_ATTRIBUTES: Int { get }
var CSSMERR_DL_UNSUPPORTED_NUM_INDEXES: Int { get }
var CSSMERR_DL_UNSUPPORTED_NUM_RECORDTYPES: Int { get }
var CSSMERR_DL_UNSUPPORTED_RECORDTYPE: Int { get }
var CSSMERR_DL_FIELD_SPECIFIED_MULTIPLE: Int { get }
var CSSMERR_DL_INCOMPATIBLE_FIELD_FORMAT: Int { get }
var CSSMERR_DL_INVALID_PARSING_MODULE: Int { get }
var CSSMERR_DL_INVALID_DB_NAME: Int { get }
var CSSMERR_DL_DATASTORE_DOESNOT_EXIST: Int { get }
var CSSMERR_DL_DATASTORE_ALREADY_EXISTS: Int { get }
var CSSMERR_DL_DB_LOCKED: Int { get }
var CSSMERR_DL_DATASTORE_IS_OPEN: Int { get }
var CSSMERR_DL_RECORD_NOT_FOUND: Int { get }
var CSSMERR_DL_MISSING_VALUE: Int { get }
var CSSMERR_DL_UNSUPPORTED_QUERY: Int { get }
var CSSMERR_DL_UNSUPPORTED_QUERY_LIMITS: Int { get }
var CSSMERR_DL_UNSUPPORTED_NUM_SELECTION_PREDS: Int { get }
var CSSMERR_DL_UNSUPPORTED_OPERATOR: Int { get }
var CSSMERR_DL_INVALID_RESULTS_HANDLE: Int { get }
var CSSMERR_DL_INVALID_DB_LOCATION: Int { get }
var CSSMERR_DL_INVALID_ACCESS_REQUEST: Int { get }
var CSSMERR_DL_INVALID_INDEX_INFO: Int { get }
var CSSMERR_DL_INVALID_SELECTION_TAG: Int { get }
var CSSMERR_DL_INVALID_NEW_OWNER: Int { get }
var CSSMERR_DL_INVALID_RECORD_UID: Int { get }
var CSSMERR_DL_INVALID_UNIQUE_INDEX_DATA: Int { get }
var CSSMERR_DL_INVALID_MODIFY_MODE: Int { get }
var CSSMERR_DL_INVALID_OPEN_PARAMETERS: Int { get }
var CSSMERR_DL_RECORD_MODIFIED: Int { get }
var CSSMERR_DL_ENDOFDATA: Int { get }
var CSSMERR_DL_INVALID_QUERY: Int { get }
var CSSMERR_DL_INVALID_VALUE: Int { get }
var CSSMERR_DL_MULTIPLE_VALUES_UNSUPPORTED: Int { get }
var CSSMERR_DL_STALE_UNIQUE_RECORD: Int { get }
typealias CSSM_KRSP_HANDLE = uint32
struct cssm_kr_name {
  var Type: uint8
  var Length: uint8
  var Name: UnsafeMutablePointer<Int8>
  init()
  init(Type: uint8, Length: uint8, Name: UnsafeMutablePointer<Int8>)
}
struct cssm_kr_profile {
  var UserName: CSSM_KR_NAME
  var UserCertificate: CSSM_CERTGROUP_PTR
  var KRSCertChain: CSSM_CERTGROUP_PTR
  var LE_KRANum: uint8
  var LE_KRACertChainList: CSSM_CERTGROUP_PTR
  var ENT_KRANum: uint8
  var ENT_KRACertChainList: CSSM_CERTGROUP_PTR
  var INDIV_KRANum: uint8
  var INDIV_KRACertChainList: CSSM_CERTGROUP_PTR
  var INDIV_AuthenticationInfo: CSSM_DATA_PTR
  var KRSPFlags: uint32
  var KRSPExtensions: CSSM_DATA_PTR
  init()
  init(UserName: CSSM_KR_NAME, UserCertificate: CSSM_CERTGROUP_PTR, KRSCertChain: CSSM_CERTGROUP_PTR, LE_KRANum: uint8, LE_KRACertChainList: CSSM_CERTGROUP_PTR, ENT_KRANum: uint8, ENT_KRACertChainList: CSSM_CERTGROUP_PTR, INDIV_KRANum: uint8, INDIV_KRACertChainList: CSSM_CERTGROUP_PTR, INDIV_AuthenticationInfo: CSSM_DATA_PTR, KRSPFlags: uint32, KRSPExtensions: CSSM_DATA_PTR)
}
struct cssm_kr_wrappedproductinfo {
  var StandardVersion: CSSM_VERSION
  var StandardDescription: CSSM_STRING
  var ProductVersion: CSSM_VERSION
  var ProductDescription: CSSM_STRING
  var ProductVendor: CSSM_STRING
  var ProductFlags: uint32
  init()
  init(StandardVersion: CSSM_VERSION, StandardDescription: CSSM_STRING, ProductVersion: CSSM_VERSION, ProductDescription: CSSM_STRING, ProductVendor: CSSM_STRING, ProductFlags: uint32)
}
struct cssm_krsubservice {
  var SubServiceId: uint32
  var Description: UnsafeMutablePointer<Int8>
  var WrappedProduct: CSSM_KR_WRAPPEDPRODUCT_INFO
  init()
  init(SubServiceId: uint32, Description: UnsafeMutablePointer<Int8>, WrappedProduct: CSSM_KR_WRAPPEDPRODUCT_INFO)
}
typealias CSSM_KRSUBSERVICE = cssm_krsubservice
typealias CSSM_KRSUBSERVICE_PTR = UnsafeMutablePointer<cssm_krsubservice>
typealias CSSM_KR_POLICY_TYPE = uint32
var CSSM_KR_INDIV_POLICY: Int32 { get }
var CSSM_KR_ENT_POLICY: Int32 { get }
var CSSM_KR_LE_MAN_POLICY: Int32 { get }
var CSSM_KR_LE_USE_POLICY: Int32 { get }
typealias CSSM_KR_POLICY_FLAGS = uint32
var CSSM_KR_INDIV: Int32 { get }
var CSSM_KR_ENT: Int32 { get }
var CSSM_KR_LE_MAN: Int32 { get }
var CSSM_KR_LE_USE: Int32 { get }
var CSSM_KR_OPTIMIZE: Int32 { get }
var CSSM_KR_DROP_WORKFACTOR: Int32 { get }
struct cssm_kr_policy_list_item {
  var next: COpaquePointer
  var AlgorithmId: CSSM_ALGORITHMS
  var Mode: CSSM_ENCRYPT_MODE
  var MaxKeyLength: uint32
  var MaxRounds: uint32
  var WorkFactor: uint8
  var PolicyFlags: CSSM_KR_POLICY_FLAGS
  var AlgClass: CSSM_CONTEXT_TYPE
  init()
}
struct cssm_kr_policy_info {
  var krbNotAllowed: CSSM_BOOL
  var numberOfEntries: uint32
  var policyEntry: UnsafeMutablePointer<CSSM_KR_POLICY_LIST_ITEM>
  init()
  init(krbNotAllowed: CSSM_BOOL, numberOfEntries: uint32, policyEntry: UnsafeMutablePointer<CSSM_KR_POLICY_LIST_ITEM>)
}
struct cssm_spi_kr_funcs {
  var RegistrationRequest: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, CSSM_KR_POLICY_FLAGS, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!
  var RegistrationRetrieve: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<sint32>, CSSM_KR_PROFILE_PTR) -> CSSM_RETURN)!
  var GenerateRecoveryFields: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, CSSM_KR_POLICY_FLAGS, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var ProcessRecoveryFields: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, CSSM_KR_POLICY_FLAGS, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var RecoveryRequest: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!
  var RecoveryRetrieve: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>) -> CSSM_RETURN)!
  var GetRecoveredObject: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, uint32, CSSM_CSP_HANDLE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, uint32, CSSM_KEY_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var RecoveryRequestAbort: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(RegistrationRequest: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, CSSM_KR_POLICY_FLAGS, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!, RegistrationRetrieve: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<sint32>, CSSM_KR_PROFILE_PTR) -> CSSM_RETURN)!, GenerateRecoveryFields: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, CSSM_KR_POLICY_FLAGS, CSSM_DATA_PTR) -> CSSM_RETURN)!, ProcessRecoveryFields: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, CSSM_KR_POLICY_FLAGS, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, RecoveryRequest: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!, RecoveryRetrieve: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>) -> CSSM_RETURN)!, GetRecoveredObject: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, uint32, CSSM_CSP_HANDLE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, uint32, CSSM_KEY_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, RecoveryRequestAbort: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
typealias CSSM_SPI_ModuleEventHandler = @convention(c) (UnsafePointer<CSSM_GUID>, UnsafeMutablePointer<Void>, uint32, CSSM_SERVICE_TYPE, CSSM_MODULE_EVENT) -> CSSM_RETURN
typealias CSSM_CONTEXT_EVENT = uint32
var CSSM_CONTEXT_EVENT_CREATE: Int { get }
var CSSM_CONTEXT_EVENT_DELETE: Int { get }
var CSSM_CONTEXT_EVENT_UPDATE: Int { get }
struct cssm_module_funcs {
  var ServiceType: CSSM_SERVICE_TYPE
  var NumberOfServiceFuncs: uint32
  var ServiceFuncs: UnsafePointer<CSSM_PROC_ADDR?>
  init()
  init(ServiceType: CSSM_SERVICE_TYPE, NumberOfServiceFuncs: uint32, ServiceFuncs: UnsafePointer<CSSM_PROC_ADDR?>)
}
struct cssm_upcalls {
  var malloc_func: CSSM_UPCALLS_MALLOC!
  var free_func: CSSM_UPCALLS_FREE!
  var realloc_func: CSSM_UPCALLS_REALLOC!
  var calloc_func: CSSM_UPCALLS_CALLOC!
  var CcToHandle_func: (@convention(c) (CSSM_CC_HANDLE, CSSM_MODULE_HANDLE_PTR) -> CSSM_RETURN)!
  var GetModuleInfo_func: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_GUID_PTR, CSSM_VERSION_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_SERVICE_TYPE>, UnsafeMutablePointer<CSSM_ATTACH_FLAGS>, UnsafeMutablePointer<CSSM_KEY_HIERARCHY>, CSSM_API_MEMORY_FUNCS_PTR, CSSM_FUNC_NAME_ADDR_PTR, uint32) -> CSSM_RETURN)!
  init()
  init(malloc_func: CSSM_UPCALLS_MALLOC!, free_func: CSSM_UPCALLS_FREE!, realloc_func: CSSM_UPCALLS_REALLOC!, calloc_func: CSSM_UPCALLS_CALLOC!, CcToHandle_func: (@convention(c) (CSSM_CC_HANDLE, CSSM_MODULE_HANDLE_PTR) -> CSSM_RETURN)!, GetModuleInfo_func: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_GUID_PTR, CSSM_VERSION_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_SERVICE_TYPE>, UnsafeMutablePointer<CSSM_ATTACH_FLAGS>, UnsafeMutablePointer<CSSM_KEY_HIERARCHY>, CSSM_API_MEMORY_FUNCS_PTR, CSSM_FUNC_NAME_ADDR_PTR, uint32) -> CSSM_RETURN)!)
}
struct cssm_spi_tp_funcs {
  var SubmitCredRequest: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_TP_AUTHORITY_REQUEST_TYPE, UnsafePointer<CSSM_TP_REQUEST_SET>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafeMutablePointer<sint32>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var RetrieveCredResult: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafeMutablePointer<sint32>, UnsafeMutablePointer<CSSM_BOOL>, UnsafeMutablePointer<CSSM_TP_RESULT_SET_PTR>) -> CSSM_RETURN)!
  var ConfirmCredResult: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafePointer<CSSM_TP_CONFIRM_RESPONSE>, UnsafePointer<CSSM_TP_AUTHORITY_ID>) -> CSSM_RETURN)!
  var ReceiveConfirmation: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_TP_CONFIRM_RESPONSE_PTR>, UnsafeMutablePointer<sint32>) -> CSSM_RETURN)!
  var CertReclaimKey: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_CERTGROUP>, uint32, CSSM_LONG_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>) -> CSSM_RETURN)!
  var CertReclaimAbort: (@convention(c) (CSSM_TP_HANDLE, CSSM_LONG_HANDLE) -> CSSM_RETURN)!
  var FormRequest: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_TP_FORM_TYPE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var FormSubmit: (@convention(c) (CSSM_TP_HANDLE, CSSM_TP_FORM_TYPE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_AUTHORITY_ID>, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_ACCESS_CREDENTIALS_PTR) -> CSSM_RETURN)!
  var CertGroupVerify: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!
  var CertCreateTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertGetAllTemplateFields: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var CertSign: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlVerify: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!
  var CrlCreateTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertRevoke: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_TP_CERTCHANGE_REASON, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertRemoveFromCrlTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlSign: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var ApplyCrlToDb: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!
  var CertGroupConstruct: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, UnsafePointer<Void>, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!
  var CertGroupPrune: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!
  var CertGroupToTupleGroup: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_TUPLEGROUP_PTR>) -> CSSM_RETURN)!
  var TupleGroupToCertGroup: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(SubmitCredRequest: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_TP_AUTHORITY_REQUEST_TYPE, UnsafePointer<CSSM_TP_REQUEST_SET>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafeMutablePointer<sint32>, CSSM_DATA_PTR) -> CSSM_RETURN)!, RetrieveCredResult: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafeMutablePointer<sint32>, UnsafeMutablePointer<CSSM_BOOL>, UnsafeMutablePointer<CSSM_TP_RESULT_SET_PTR>) -> CSSM_RETURN)!, ConfirmCredResult: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafePointer<CSSM_TP_CONFIRM_RESPONSE>, UnsafePointer<CSSM_TP_AUTHORITY_ID>) -> CSSM_RETURN)!, ReceiveConfirmation: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_TP_CONFIRM_RESPONSE_PTR>, UnsafeMutablePointer<sint32>) -> CSSM_RETURN)!, CertReclaimKey: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_CERTGROUP>, uint32, CSSM_LONG_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>) -> CSSM_RETURN)!, CertReclaimAbort: (@convention(c) (CSSM_TP_HANDLE, CSSM_LONG_HANDLE) -> CSSM_RETURN)!, FormRequest: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_TP_FORM_TYPE, CSSM_DATA_PTR) -> CSSM_RETURN)!, FormSubmit: (@convention(c) (CSSM_TP_HANDLE, CSSM_TP_FORM_TYPE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_AUTHORITY_ID>, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_ACCESS_CREDENTIALS_PTR) -> CSSM_RETURN)!, CertGroupVerify: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!, CertCreateTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertGetAllTemplateFields: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, CertSign: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlVerify: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!, CrlCreateTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertRevoke: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_TP_CERTCHANGE_REASON, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertRemoveFromCrlTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlSign: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, ApplyCrlToDb: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!, CertGroupConstruct: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, UnsafePointer<Void>, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!, CertGroupPrune: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!, CertGroupToTupleGroup: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_TUPLEGROUP_PTR>) -> CSSM_RETURN)!, TupleGroupToCertGroup: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
typealias CSSM_HANDLE = CSSM_INTPTR
typealias CSSM_HANDLE_PTR = UnsafeMutablePointer<CSSM_INTPTR>
typealias CSSM_LONG_HANDLE = uint64
typealias CSSM_LONG_HANDLE_PTR = UnsafeMutablePointer<uint64>
typealias CSSM_MODULE_HANDLE = CSSM_HANDLE
typealias CSSM_MODULE_HANDLE_PTR = UnsafeMutablePointer<CSSM_HANDLE>
typealias CSSM_CC_HANDLE = CSSM_LONG_HANDLE
typealias CSSM_CSP_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_TP_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_AC_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_CL_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_DL_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_DB_HANDLE = CSSM_MODULE_HANDLE
var CSSM_INVALID_HANDLE: Int { get }
typealias CSSM_BOOL = sint32
var CSSM_FALSE: Int { get }
var CSSM_TRUE: Int { get }
typealias CSSM_RETURN = sint32
var CSSM_OK: Int { get }
var CSSM_MODULE_STRING_SIZE: Int { get }
typealias CSSM_STRING = (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
struct cssm_data {
  var Length: CSSM_SIZE
  var Data: UnsafeMutablePointer<uint8>
  init()
  init(Length: CSSM_SIZE, Data: UnsafeMutablePointer<uint8>)
}
struct cssm_guid {
  var Data1: uint32
  var Data2: uint16
  var Data3: uint16
  var Data4: (uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8)
  init()
  init(Data1: uint32, Data2: uint16, Data3: uint16, Data4: (uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8))
}
typealias CSSM_BITMASK = uint32
typealias CSSM_KEY_HIERARCHY = CSSM_BITMASK
var CSSM_KEY_HIERARCHY_NONE: Int { get }
var CSSM_KEY_HIERARCHY_INTEG: Int { get }
var CSSM_KEY_HIERARCHY_EXPORT: Int { get }
typealias CSSM_PVC_MODE = CSSM_BITMASK
var CSSM_PVC_NONE: Int { get }
var CSSM_PVC_APP: Int { get }
var CSSM_PVC_SP: Int { get }
typealias CSSM_PRIVILEGE_SCOPE = uint32
var CSSM_PRIVILEGE_SCOPE_NONE: Int { get }
var CSSM_PRIVILEGE_SCOPE_PROCESS: Int { get }
var CSSM_PRIVILEGE_SCOPE_THREAD: Int { get }
struct cssm_version {
  var Major: uint32
  var Minor: uint32
  init()
  init(Major: uint32, Minor: uint32)
}
typealias CSSM_SERVICE_MASK = uint32
var CSSM_SERVICE_CSSM: Int { get }
var CSSM_SERVICE_CSP: Int { get }
var CSSM_SERVICE_DL: Int { get }
var CSSM_SERVICE_CL: Int { get }
var CSSM_SERVICE_TP: Int { get }
var CSSM_SERVICE_AC: Int { get }
var CSSM_SERVICE_KR: Int { get }
typealias CSSM_SERVICE_TYPE = CSSM_SERVICE_MASK
struct cssm_subservice_uid {
  var Guid: CSSM_GUID
  var Version: CSSM_VERSION
  var SubserviceId: uint32
  var SubserviceType: CSSM_SERVICE_TYPE
  init()
  init(Guid: CSSM_GUID, Version: CSSM_VERSION, SubserviceId: uint32, SubserviceType: CSSM_SERVICE_TYPE)
}
typealias CSSM_MODULE_EVENT = uint32
typealias CSSM_MODULE_EVENT_PTR = UnsafeMutablePointer<uint32>
var CSSM_NOTIFY_INSERT: Int { get }
var CSSM_NOTIFY_REMOVE: Int { get }
var CSSM_NOTIFY_FAULT: Int { get }
typealias CSSM_API_ModuleEventHandler = @convention(c) (UnsafePointer<CSSM_GUID>, UnsafeMutablePointer<Void>, uint32, CSSM_SERVICE_TYPE, CSSM_MODULE_EVENT) -> CSSM_RETURN
typealias CSSM_ATTACH_FLAGS = uint32
var CSSM_ATTACH_READ_ONLY: Int { get }
typealias CSSM_PRIVILEGE = uint64
typealias CSSM_USEE_TAG = CSSM_PRIVILEGE
var CSSM_USEE_LAST: Int { get }
var CSSM_USEE_NONE: Int { get }
var CSSM_USEE_DOMESTIC: Int { get }
var CSSM_USEE_FINANCIAL: Int { get }
var CSSM_USEE_KRLE: Int { get }
var CSSM_USEE_KRENT: Int { get }
var CSSM_USEE_SSL: Int { get }
var CSSM_USEE_AUTHENTICATION: Int { get }
var CSSM_USEE_KEYEXCH: Int { get }
var CSSM_USEE_MEDICAL: Int { get }
var CSSM_USEE_INSURANCE: Int { get }
var CSSM_USEE_WEAK: Int { get }
typealias CSSM_NET_ADDRESS_TYPE = uint32
var CSSM_ADDR_NONE: Int { get }
var CSSM_ADDR_CUSTOM: Int { get }
var CSSM_ADDR_URL: Int { get }
var CSSM_ADDR_SOCKADDR: Int { get }
var CSSM_ADDR_NAME: Int { get }
struct cssm_net_address {
  var AddressType: CSSM_NET_ADDRESS_TYPE
  var Address: CSSM_DATA
  init()
  init(AddressType: CSSM_NET_ADDRESS_TYPE, Address: CSSM_DATA)
}
typealias CSSM_NET_PROTOCOL = uint32
var CSSM_NET_PROTO_NONE: Int { get }
var CSSM_NET_PROTO_CUSTOM: Int { get }
var CSSM_NET_PROTO_UNSPECIFIED: Int { get }
var CSSM_NET_PROTO_LDAP: Int { get }
var CSSM_NET_PROTO_LDAPS: Int { get }
var CSSM_NET_PROTO_LDAPNS: Int { get }
var CSSM_NET_PROTO_X500DAP: Int { get }
var CSSM_NET_PROTO_FTP: Int { get }
var CSSM_NET_PROTO_FTPS: Int { get }
var CSSM_NET_PROTO_OCSP: Int { get }
var CSSM_NET_PROTO_CMP: Int { get }
var CSSM_NET_PROTO_CMPS: Int { get }
typealias CSSM_CALLBACK = @convention(c) (CSSM_DATA_PTR, UnsafeMutablePointer<Void>) -> CSSM_RETURN
struct cssm_crypto_data {
  var Param: CSSM_DATA
  var Callback: CSSM_CALLBACK!
  var CallerCtx: UnsafeMutablePointer<Void>
  init()
  init(Param: CSSM_DATA, Callback: CSSM_CALLBACK!, CallerCtx: UnsafeMutablePointer<Void>)
}
typealias CSSM_WORDID_TYPE = sint32
var CSSM_WORDID__UNK_: Int { get }
var CSSM_WORDID__NLU_: Int { get }
var CSSM_WORDID__STAR_: Int { get }
var CSSM_WORDID_A: Int { get }
var CSSM_WORDID_ACL: Int { get }
var CSSM_WORDID_ALPHA: Int { get }
var CSSM_WORDID_B: Int { get }
var CSSM_WORDID_BER: Int { get }
var CSSM_WORDID_BINARY: Int { get }
var CSSM_WORDID_BIOMETRIC: Int { get }
var CSSM_WORDID_C: Int { get }
var CSSM_WORDID_CANCELED: Int { get }
var CSSM_WORDID_CERT: Int { get }
var CSSM_WORDID_COMMENT: Int { get }
var CSSM_WORDID_CRL: Int { get }
var CSSM_WORDID_CUSTOM: Int { get }
var CSSM_WORDID_D: Int { get }
var CSSM_WORDID_DATE: Int { get }
var CSSM_WORDID_DB_DELETE: Int { get }
var CSSM_WORDID_DB_EXEC_STORED_QUERY: Int { get }
var CSSM_WORDID_DB_INSERT: Int { get }
var CSSM_WORDID_DB_MODIFY: Int { get }
var CSSM_WORDID_DB_READ: Int { get }
var CSSM_WORDID_DBS_CREATE: Int { get }
var CSSM_WORDID_DBS_DELETE: Int { get }
var CSSM_WORDID_DECRYPT: Int { get }
var CSSM_WORDID_DELETE: Int { get }
var CSSM_WORDID_DELTA_CRL: Int { get }
var CSSM_WORDID_DER: Int { get }
var CSSM_WORDID_DERIVE: Int { get }
var CSSM_WORDID_DISPLAY: Int { get }
var CSSM_WORDID_DO: Int { get }
var CSSM_WORDID_DSA: Int { get }
var CSSM_WORDID_DSA_SHA1: Int { get }
var CSSM_WORDID_E: Int { get }
var CSSM_WORDID_ELGAMAL: Int { get }
var CSSM_WORDID_ENCRYPT: Int { get }
var CSSM_WORDID_ENTRY: Int { get }
var CSSM_WORDID_EXPORT_CLEAR: Int { get }
var CSSM_WORDID_EXPORT_WRAPPED: Int { get }
var CSSM_WORDID_G: Int { get }
var CSSM_WORDID_GE: Int { get }
var CSSM_WORDID_GENKEY: Int { get }
var CSSM_WORDID_HASH: Int { get }
var CSSM_WORDID_HASHED_PASSWORD: Int { get }
var CSSM_WORDID_HASHED_SUBJECT: Int { get }
var CSSM_WORDID_HAVAL: Int { get }
var CSSM_WORDID_IBCHASH: Int { get }
var CSSM_WORDID_IMPORT_CLEAR: Int { get }
var CSSM_WORDID_IMPORT_WRAPPED: Int { get }
var CSSM_WORDID_INTEL: Int { get }
var CSSM_WORDID_ISSUER: Int { get }
var CSSM_WORDID_ISSUER_INFO: Int { get }
var CSSM_WORDID_K_OF_N: Int { get }
var CSSM_WORDID_KEA: Int { get }
var CSSM_WORDID_KEYHOLDER: Int { get }
var CSSM_WORDID_L: Int { get }
var CSSM_WORDID_LE: Int { get }
var CSSM_WORDID_LOGIN: Int { get }
var CSSM_WORDID_LOGIN_NAME: Int { get }
var CSSM_WORDID_MAC: Int { get }
var CSSM_WORDID_MD2: Int { get }
var CSSM_WORDID_MD2WITHRSA: Int { get }
var CSSM_WORDID_MD4: Int { get }
var CSSM_WORDID_MD5: Int { get }
var CSSM_WORDID_MD5WITHRSA: Int { get }
var CSSM_WORDID_N: Int { get }
var CSSM_WORDID_NAME: Int { get }
var CSSM_WORDID_NDR: Int { get }
var CSSM_WORDID_NHASH: Int { get }
var CSSM_WORDID_NOT_AFTER: Int { get }
var CSSM_WORDID_NOT_BEFORE: Int { get }
var CSSM_WORDID_NULL: Int { get }
var CSSM_WORDID_NUMERIC: Int { get }
var CSSM_WORDID_OBJECT_HASH: Int { get }
var CSSM_WORDID_ONE_TIME: Int { get }
var CSSM_WORDID_ONLINE: Int { get }
var CSSM_WORDID_OWNER: Int { get }
var CSSM_WORDID_P: Int { get }
var CSSM_WORDID_PAM_NAME: Int { get }
var CSSM_WORDID_PASSWORD: Int { get }
var CSSM_WORDID_PGP: Int { get }
var CSSM_WORDID_PREFIX: Int { get }
var CSSM_WORDID_PRIVATE_KEY: Int { get }
var CSSM_WORDID_PROMPTED_BIOMETRIC: Int { get }
var CSSM_WORDID_PROMPTED_PASSWORD: Int { get }
var CSSM_WORDID_PROPAGATE: Int { get }
var CSSM_WORDID_PROTECTED_BIOMETRIC: Int { get }
var CSSM_WORDID_PROTECTED_PASSWORD: Int { get }
var CSSM_WORDID_PROTECTED_PIN: Int { get }
var CSSM_WORDID_PUBLIC_KEY: Int { get }
var CSSM_WORDID_PUBLIC_KEY_FROM_CERT: Int { get }
var CSSM_WORDID_Q: Int { get }
var CSSM_WORDID_RANGE: Int { get }
var CSSM_WORDID_REVAL: Int { get }
var CSSM_WORDID_RIPEMAC: Int { get }
var CSSM_WORDID_RIPEMD: Int { get }
var CSSM_WORDID_RIPEMD160: Int { get }
var CSSM_WORDID_RSA: Int { get }
var CSSM_WORDID_RSA_ISO9796: Int { get }
var CSSM_WORDID_RSA_PKCS: Int { get }
var CSSM_WORDID_RSA_PKCS_MD5: Int { get }
var CSSM_WORDID_RSA_PKCS_SHA1: Int { get }
var CSSM_WORDID_RSA_PKCS1: Int { get }
var CSSM_WORDID_RSA_PKCS1_MD5: Int { get }
var CSSM_WORDID_RSA_PKCS1_SHA1: Int { get }
var CSSM_WORDID_RSA_PKCS1_SIG: Int { get }
var CSSM_WORDID_RSA_RAW: Int { get }
var CSSM_WORDID_SDSIV1: Int { get }
var CSSM_WORDID_SEQUENCE: Int { get }
var CSSM_WORDID_SET: Int { get }
var CSSM_WORDID_SEXPR: Int { get }
var CSSM_WORDID_SHA1: Int { get }
var CSSM_WORDID_SHA1WITHDSA: Int { get }
var CSSM_WORDID_SHA1WITHECDSA: Int { get }
var CSSM_WORDID_SHA1WITHRSA: Int { get }
var CSSM_WORDID_SIGN: Int { get }
var CSSM_WORDID_SIGNATURE: Int { get }
var CSSM_WORDID_SIGNED_NONCE: Int { get }
var CSSM_WORDID_SIGNED_SECRET: Int { get }
var CSSM_WORDID_SPKI: Int { get }
var CSSM_WORDID_SUBJECT: Int { get }
var CSSM_WORDID_SUBJECT_INFO: Int { get }
var CSSM_WORDID_TAG: Int { get }
var CSSM_WORDID_THRESHOLD: Int { get }
var CSSM_WORDID_TIME: Int { get }
var CSSM_WORDID_URI: Int { get }
var CSSM_WORDID_VERSION: Int { get }
var CSSM_WORDID_X509_ATTRIBUTE: Int { get }
var CSSM_WORDID_X509V1: Int { get }
var CSSM_WORDID_X509V2: Int { get }
var CSSM_WORDID_X509V3: Int { get }
var CSSM_WORDID_X9_ATTRIBUTE: Int { get }
var CSSM_WORDID_VENDOR_START: Int { get }
var CSSM_WORDID_VENDOR_END: Int { get }
typealias CSSM_LIST_ELEMENT_TYPE = uint32
typealias CSSM_LIST_ELEMENT_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_LIST_ELEMENT_DATUM: Int { get }
var CSSM_LIST_ELEMENT_SUBLIST: Int { get }
var CSSM_LIST_ELEMENT_WORDID: Int { get }
typealias CSSM_LIST_TYPE = uint32
typealias CSSM_LIST_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_LIST_TYPE_UNKNOWN: Int { get }
var CSSM_LIST_TYPE_CUSTOM: Int { get }
var CSSM_LIST_TYPE_SEXPR: Int { get }
typealias CSSM_LIST_ELEMENT_PTR = UnsafeMutablePointer<cssm_list_element>
struct cssm_list {
  var ListType: CSSM_LIST_TYPE
  var Head: CSSM_LIST_ELEMENT_PTR
  var Tail: CSSM_LIST_ELEMENT_PTR
  init()
  init(ListType: CSSM_LIST_TYPE, Head: CSSM_LIST_ELEMENT_PTR, Tail: CSSM_LIST_ELEMENT_PTR)
}
struct cssm_list_element {
  struct __Unnamed_union_Element {
    var Sublist: CSSM_LIST
    var Word: CSSM_DATA
    init(Sublist: CSSM_LIST)
    init(Word: CSSM_DATA)
    init()
  }
  var NextElement: UnsafeMutablePointer<cssm_list_element>
  var WordID: CSSM_WORDID_TYPE
  var ElementType: CSSM_LIST_ELEMENT_TYPE
  var Element: cssm_list_element.__Unnamed_union_Element
  init()
  init(NextElement: UnsafeMutablePointer<cssm_list_element>, WordID: CSSM_WORDID_TYPE, ElementType: CSSM_LIST_ELEMENT_TYPE, Element: cssm_list_element.__Unnamed_union_Element)
}
typealias CSSM_LIST_ELEMENT = cssm_list_element
struct cssm_tuplegroup {
  var NumberOfTuples: uint32
  var Tuples: CSSM_TUPLE_PTR
  init()
  init(NumberOfTuples: uint32, Tuples: CSSM_TUPLE_PTR)
}
typealias CSSM_SAMPLE_TYPE = CSSM_WORDID_TYPE
var CSSM_SAMPLE_TYPE_PASSWORD: Int { get }
var CSSM_SAMPLE_TYPE_HASHED_PASSWORD: Int { get }
var CSSM_SAMPLE_TYPE_PROTECTED_PASSWORD: Int { get }
var CSSM_SAMPLE_TYPE_PROMPTED_PASSWORD: Int { get }
var CSSM_SAMPLE_TYPE_SIGNED_NONCE: Int { get }
var CSSM_SAMPLE_TYPE_SIGNED_SECRET: Int { get }
var CSSM_SAMPLE_TYPE_BIOMETRIC: Int { get }
var CSSM_SAMPLE_TYPE_PROTECTED_BIOMETRIC: Int { get }
var CSSM_SAMPLE_TYPE_PROMPTED_BIOMETRIC: Int { get }
var CSSM_SAMPLE_TYPE_THRESHOLD: Int { get }
struct cssm_sample {
  var TypedSample: CSSM_LIST
  var Verifier: UnsafePointer<CSSM_SUBSERVICE_UID>
  init()
  init(TypedSample: CSSM_LIST, Verifier: UnsafePointer<CSSM_SUBSERVICE_UID>)
}
struct cssm_samplegroup {
  var NumberOfSamples: uint32
  var Samples: UnsafePointer<CSSM_SAMPLE>
  init()
  init(NumberOfSamples: uint32, Samples: UnsafePointer<CSSM_SAMPLE>)
}
typealias CSSM_MALLOC = @convention(c) (CSSM_SIZE, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CSSM_FREE = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CSSM_REALLOC = @convention(c) (UnsafeMutablePointer<Void>, CSSM_SIZE, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CSSM_CALLOC = @convention(c) (uint32, CSSM_SIZE, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
struct cssm_memory_funcs {
  var malloc_func: CSSM_MALLOC!
  var free_func: CSSM_FREE!
  var realloc_func: CSSM_REALLOC!
  var calloc_func: CSSM_CALLOC!
  var AllocRef: UnsafeMutablePointer<Void>
  init()
  init(malloc_func: CSSM_MALLOC!, free_func: CSSM_FREE!, realloc_func: CSSM_REALLOC!, calloc_func: CSSM_CALLOC!, AllocRef: UnsafeMutablePointer<Void>)
}
typealias CSSM_API_MEMORY_FUNCS = CSSM_MEMORY_FUNCS
typealias CSSM_API_MEMORY_FUNCS_PTR = UnsafeMutablePointer<CSSM_API_MEMORY_FUNCS>
typealias CSSM_CHALLENGE_CALLBACK = @convention(c) (UnsafePointer<CSSM_LIST>, CSSM_SAMPLEGROUP_PTR, UnsafeMutablePointer<Void>, UnsafePointer<CSSM_MEMORY_FUNCS>) -> CSSM_RETURN
typealias CSSM_CERT_TYPE = uint32
typealias CSSM_CERT_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_CERT_UNKNOWN: Int { get }
var CSSM_CERT_X_509v1: Int { get }
var CSSM_CERT_X_509v2: Int { get }
var CSSM_CERT_X_509v3: Int { get }
var CSSM_CERT_PGP: Int { get }
var CSSM_CERT_SPKI: Int { get }
var CSSM_CERT_SDSIv1: Int { get }
var CSSM_CERT_Intel: Int { get }
var CSSM_CERT_X_509_ATTRIBUTE: Int { get }
var CSSM_CERT_X9_ATTRIBUTE: Int { get }
var CSSM_CERT_TUPLE: Int { get }
var CSSM_CERT_ACL_ENTRY: Int { get }
var CSSM_CERT_MULTIPLE: Int { get }
var CSSM_CERT_LAST: Int { get }
var CSSM_CL_CUSTOM_CERT_TYPE: Int { get }
typealias CSSM_CERT_ENCODING = uint32
typealias CSSM_CERT_ENCODING_PTR = UnsafeMutablePointer<uint32>
var CSSM_CERT_ENCODING_UNKNOWN: Int { get }
var CSSM_CERT_ENCODING_CUSTOM: Int { get }
var CSSM_CERT_ENCODING_BER: Int { get }
var CSSM_CERT_ENCODING_DER: Int { get }
var CSSM_CERT_ENCODING_NDR: Int { get }
var CSSM_CERT_ENCODING_SEXPR: Int { get }
var CSSM_CERT_ENCODING_PGP: Int { get }
var CSSM_CERT_ENCODING_MULTIPLE: Int { get }
var CSSM_CERT_ENCODING_LAST: Int { get }
var CSSM_CL_CUSTOM_CERT_ENCODING: Int { get }
struct cssm_encoded_cert {
  var CertType: CSSM_CERT_TYPE
  var CertEncoding: CSSM_CERT_ENCODING
  var CertBlob: CSSM_DATA
  init()
  init(CertType: CSSM_CERT_TYPE, CertEncoding: CSSM_CERT_ENCODING, CertBlob: CSSM_DATA)
}
typealias CSSM_CERT_PARSE_FORMAT = uint32
typealias CSSM_CERT_PARSE_FORMAT_PTR = UnsafeMutablePointer<uint32>
var CSSM_CERT_PARSE_FORMAT_NONE: Int { get }
var CSSM_CERT_PARSE_FORMAT_CUSTOM: Int { get }
var CSSM_CERT_PARSE_FORMAT_SEXPR: Int { get }
var CSSM_CERT_PARSE_FORMAT_COMPLEX: Int { get }
var CSSM_CERT_PARSE_FORMAT_OID_NAMED: Int { get }
var CSSM_CERT_PARSE_FORMAT_TUPLE: Int { get }
var CSSM_CERT_PARSE_FORMAT_MULTIPLE: Int { get }
var CSSM_CERT_PARSE_FORMAT_LAST: Int { get }
var CSSM_CL_CUSTOM_CERT_PARSE_FORMAT: Int { get }
struct cssm_parsed_cert {
  var CertType: CSSM_CERT_TYPE
  var ParsedCertFormat: CSSM_CERT_PARSE_FORMAT
  var ParsedCert: UnsafeMutablePointer<Void>
  init()
  init(CertType: CSSM_CERT_TYPE, ParsedCertFormat: CSSM_CERT_PARSE_FORMAT, ParsedCert: UnsafeMutablePointer<Void>)
}
struct cssm_cert_pair {
  var EncodedCert: CSSM_ENCODED_CERT
  var ParsedCert: CSSM_PARSED_CERT
  init()
  init(EncodedCert: CSSM_ENCODED_CERT, ParsedCert: CSSM_PARSED_CERT)
}
typealias CSSM_CERTGROUP_TYPE = uint32
typealias CSSM_CERTGROUP_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_CERTGROUP_DATA: Int { get }
var CSSM_CERTGROUP_ENCODED_CERT: Int { get }
var CSSM_CERTGROUP_PARSED_CERT: Int { get }
var CSSM_CERTGROUP_CERT_PAIR: Int { get }
struct cssm_certgroup {
  struct __Unnamed_union_GroupList {
    var CertList: CSSM_DATA_PTR
    var EncodedCertList: CSSM_ENCODED_CERT_PTR
    var ParsedCertList: CSSM_PARSED_CERT_PTR
    var PairCertList: CSSM_CERT_PAIR_PTR
    init(CertList: CSSM_DATA_PTR)
    init(EncodedCertList: CSSM_ENCODED_CERT_PTR)
    init(ParsedCertList: CSSM_PARSED_CERT_PTR)
    init(PairCertList: CSSM_CERT_PAIR_PTR)
    init()
  }
  var CertType: CSSM_CERT_TYPE
  var CertEncoding: CSSM_CERT_ENCODING
  var NumCerts: uint32
  var GroupList: cssm_certgroup.__Unnamed_union_GroupList
  var CertGroupType: CSSM_CERTGROUP_TYPE
  var Reserved: UnsafeMutablePointer<Void>
  init()
  init(CertType: CSSM_CERT_TYPE, CertEncoding: CSSM_CERT_ENCODING, NumCerts: uint32, GroupList: cssm_certgroup.__Unnamed_union_GroupList, CertGroupType: CSSM_CERTGROUP_TYPE, Reserved: UnsafeMutablePointer<Void>)
}
typealias CSSM_CERTGROUP = cssm_certgroup
typealias CSSM_CERTGROUP_PTR = UnsafeMutablePointer<cssm_certgroup>
struct cssm_base_certs {
  var TPHandle: CSSM_TP_HANDLE
  var CLHandle: CSSM_CL_HANDLE
  var Certs: CSSM_CERTGROUP
  init()
  init(TPHandle: CSSM_TP_HANDLE, CLHandle: CSSM_CL_HANDLE, Certs: CSSM_CERTGROUP)
}
struct cssm_access_credentials {
  var EntryTag: CSSM_STRING
  var BaseCerts: CSSM_BASE_CERTS
  var Samples: CSSM_SAMPLEGROUP
  var Callback: CSSM_CHALLENGE_CALLBACK!
  var CallerCtx: UnsafeMutablePointer<Void>
  init()
  init(EntryTag: CSSM_STRING, BaseCerts: CSSM_BASE_CERTS, Samples: CSSM_SAMPLEGROUP, Callback: CSSM_CHALLENGE_CALLBACK!, CallerCtx: UnsafeMutablePointer<Void>)
}
typealias CSSM_ACL_SUBJECT_TYPE = sint32
var CSSM_ACL_SUBJECT_TYPE_ANY: Int { get }
var CSSM_ACL_SUBJECT_TYPE_THRESHOLD: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PASSWORD: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROTECTED_PASSWORD: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROMPTED_PASSWORD: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PUBLIC_KEY: Int { get }
var CSSM_ACL_SUBJECT_TYPE_HASHED_SUBJECT: Int { get }
var CSSM_ACL_SUBJECT_TYPE_BIOMETRIC: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROTECTED_BIOMETRIC: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROMPTED_BIOMETRIC: Int { get }
var CSSM_ACL_SUBJECT_TYPE_LOGIN_NAME: Int { get }
var CSSM_ACL_SUBJECT_TYPE_EXT_PAM_NAME: Int { get }
typealias CSSM_ACL_AUTHORIZATION_TAG = sint32
var CSSM_ACL_AUTHORIZATION_TAG_VENDOR_DEFINED_START: Int { get }
var CSSM_ACL_AUTHORIZATION_ANY: Int { get }
var CSSM_ACL_AUTHORIZATION_LOGIN: Int { get }
var CSSM_ACL_AUTHORIZATION_GENKEY: Int { get }
var CSSM_ACL_AUTHORIZATION_DELETE: Int { get }
var CSSM_ACL_AUTHORIZATION_EXPORT_WRAPPED: Int { get }
var CSSM_ACL_AUTHORIZATION_EXPORT_CLEAR: Int { get }
var CSSM_ACL_AUTHORIZATION_IMPORT_WRAPPED: Int { get }
var CSSM_ACL_AUTHORIZATION_IMPORT_CLEAR: Int { get }
var CSSM_ACL_AUTHORIZATION_SIGN: Int { get }
var CSSM_ACL_AUTHORIZATION_ENCRYPT: Int { get }
var CSSM_ACL_AUTHORIZATION_DECRYPT: Int { get }
var CSSM_ACL_AUTHORIZATION_MAC: Int { get }
var CSSM_ACL_AUTHORIZATION_DERIVE: Int { get }
var CSSM_ACL_AUTHORIZATION_DBS_CREATE: Int { get }
var CSSM_ACL_AUTHORIZATION_DBS_DELETE: Int { get }
var CSSM_ACL_AUTHORIZATION_DB_READ: Int { get }
var CSSM_ACL_AUTHORIZATION_DB_INSERT: Int { get }
var CSSM_ACL_AUTHORIZATION_DB_MODIFY: Int { get }
var CSSM_ACL_AUTHORIZATION_DB_DELETE: Int { get }
struct cssm_authorizationgroup {
  var NumberOfAuthTags: uint32
  var AuthTags: UnsafeMutablePointer<CSSM_ACL_AUTHORIZATION_TAG>
  init()
  init(NumberOfAuthTags: uint32, AuthTags: UnsafeMutablePointer<CSSM_ACL_AUTHORIZATION_TAG>)
}
struct cssm_acl_validity_period {
  var StartDate: CSSM_DATA
  var EndDate: CSSM_DATA
  init()
  init(StartDate: CSSM_DATA, EndDate: CSSM_DATA)
}
struct cssm_acl_entry_prototype {
  var TypedSubject: CSSM_LIST
  var Delegate: CSSM_BOOL
  var Authorization: CSSM_AUTHORIZATIONGROUP
  var TimeRange: CSSM_ACL_VALIDITY_PERIOD
  var EntryTag: CSSM_STRING
  init()
  init(TypedSubject: CSSM_LIST, Delegate: CSSM_BOOL, Authorization: CSSM_AUTHORIZATIONGROUP, TimeRange: CSSM_ACL_VALIDITY_PERIOD, EntryTag: CSSM_STRING)
}
struct cssm_acl_owner_prototype {
  var TypedSubject: CSSM_LIST
  var Delegate: CSSM_BOOL
  init()
  init(TypedSubject: CSSM_LIST, Delegate: CSSM_BOOL)
}
typealias CSSM_ACL_SUBJECT_CALLBACK = @convention(c) (UnsafePointer<CSSM_LIST>, CSSM_LIST_PTR, UnsafeMutablePointer<Void>, UnsafePointer<CSSM_MEMORY_FUNCS>) -> CSSM_RETURN
struct cssm_acl_entry_input {
  var Prototype: CSSM_ACL_ENTRY_PROTOTYPE
  var Callback: CSSM_ACL_SUBJECT_CALLBACK!
  var CallerContext: UnsafeMutablePointer<Void>
  init()
  init(Prototype: CSSM_ACL_ENTRY_PROTOTYPE, Callback: CSSM_ACL_SUBJECT_CALLBACK!, CallerContext: UnsafeMutablePointer<Void>)
}
struct cssm_resource_control_context {
  var AccessCred: CSSM_ACCESS_CREDENTIALS_PTR
  var InitialAclEntry: CSSM_ACL_ENTRY_INPUT
  init()
  init(AccessCred: CSSM_ACCESS_CREDENTIALS_PTR, InitialAclEntry: CSSM_ACL_ENTRY_INPUT)
}
typealias CSSM_ACL_HANDLE = CSSM_HANDLE
struct cssm_acl_entry_info {
  var EntryPublicInfo: CSSM_ACL_ENTRY_PROTOTYPE
  var EntryHandle: CSSM_ACL_HANDLE
  init()
  init(EntryPublicInfo: CSSM_ACL_ENTRY_PROTOTYPE, EntryHandle: CSSM_ACL_HANDLE)
}
typealias CSSM_ACL_EDIT_MODE = uint32
var CSSM_ACL_EDIT_MODE_ADD: Int { get }
var CSSM_ACL_EDIT_MODE_DELETE: Int { get }
var CSSM_ACL_EDIT_MODE_REPLACE: Int { get }
struct cssm_acl_edit {
  var EditMode: CSSM_ACL_EDIT_MODE
  var OldEntryHandle: CSSM_ACL_HANDLE
  var NewEntry: UnsafePointer<CSSM_ACL_ENTRY_INPUT>
  init()
  init(EditMode: CSSM_ACL_EDIT_MODE, OldEntryHandle: CSSM_ACL_HANDLE, NewEntry: UnsafePointer<CSSM_ACL_ENTRY_INPUT>)
}
typealias CSSM_PROC_ADDR = @convention(c) () -> Void
typealias CSSM_PROC_ADDR_PTR = UnsafeMutablePointer<CSSM_PROC_ADDR?>
struct cssm_func_name_addr {
  var Name: CSSM_STRING
  var Address: CSSM_PROC_ADDR!
  init()
  init(Name: CSSM_STRING, Address: CSSM_PROC_ADDR!)
}
struct cssm_date {
  var Year: (uint8, uint8, uint8, uint8)
  var Month: (uint8, uint8)
  var Day: (uint8, uint8)
  init()
  init(Year: (uint8, uint8, uint8, uint8), Month: (uint8, uint8), Day: (uint8, uint8))
}
struct cssm_range {
  var Min: uint32
  var Max: uint32
  init()
  init(Min: uint32, Max: uint32)
}
struct cssm_query_size_data {
  var SizeInputBlock: uint32
  var SizeOutputBlock: uint32
  init()
  init(SizeInputBlock: uint32, SizeOutputBlock: uint32)
}
typealias CSSM_HEADERVERSION = uint32
var CSSM_KEYHEADER_VERSION: Int { get }
struct cssm_key_size {
  var LogicalKeySizeInBits: uint32
  var EffectiveKeySizeInBits: uint32
  init()
  init(LogicalKeySizeInBits: uint32, EffectiveKeySizeInBits: uint32)
}
typealias CSSM_KEYBLOB_TYPE = uint32
var CSSM_KEYBLOB_RAW: UInt32 { get }
var CSSM_KEYBLOB_REFERENCE: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED: UInt32 { get }
var CSSM_KEYBLOB_OTHER: UInt32 { get }
typealias CSSM_KEYBLOB_FORMAT = uint32
var CSSM_KEYBLOB_RAW_FORMAT_NONE: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_PKCS1: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_PKCS3: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_MSCAPI: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_PGP: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_FIPS186: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_BSAFE: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_CCA: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_PKCS8: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_SPKI: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OCTET_STRING: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OTHER: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_NONE: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_PKCS8: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_PKCS7: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_MSCAPI: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_OTHER: UInt32 { get }
var CSSM_KEYBLOB_REF_FORMAT_INTEGER: UInt32 { get }
var CSSM_KEYBLOB_REF_FORMAT_STRING: UInt32 { get }
var CSSM_KEYBLOB_REF_FORMAT_SPKI: UInt32 { get }
var CSSM_KEYBLOB_REF_FORMAT_OTHER: UInt32 { get }
typealias CSSM_KEYCLASS = uint32
var CSSM_KEYCLASS_PUBLIC_KEY: UInt32 { get }
var CSSM_KEYCLASS_PRIVATE_KEY: UInt32 { get }
var CSSM_KEYCLASS_SESSION_KEY: UInt32 { get }
var CSSM_KEYCLASS_SECRET_PART: UInt32 { get }
var CSSM_KEYCLASS_OTHER: UInt32 { get }
typealias CSSM_KEYATTR_FLAGS = uint32
var CSSM_KEYATTR_RETURN_DEFAULT: Int { get }
var CSSM_KEYATTR_RETURN_DATA: Int { get }
var CSSM_KEYATTR_RETURN_REF: Int { get }
var CSSM_KEYATTR_RETURN_NONE: Int { get }
var CSSM_KEYATTR_PERMANENT: Int { get }
var CSSM_KEYATTR_PRIVATE: Int { get }
var CSSM_KEYATTR_MODIFIABLE: Int { get }
var CSSM_KEYATTR_SENSITIVE: Int { get }
var CSSM_KEYATTR_EXTRACTABLE: Int { get }
var CSSM_KEYATTR_ALWAYS_SENSITIVE: Int { get }
var CSSM_KEYATTR_NEVER_EXTRACTABLE: Int { get }
typealias CSSM_KEYUSE = uint32
var CSSM_KEYUSE_ANY: UInt32 { get }
var CSSM_KEYUSE_ENCRYPT: UInt32 { get }
var CSSM_KEYUSE_DECRYPT: UInt32 { get }
var CSSM_KEYUSE_SIGN: UInt32 { get }
var CSSM_KEYUSE_VERIFY: UInt32 { get }
var CSSM_KEYUSE_SIGN_RECOVER: UInt32 { get }
var CSSM_KEYUSE_VERIFY_RECOVER: UInt32 { get }
var CSSM_KEYUSE_WRAP: UInt32 { get }
var CSSM_KEYUSE_UNWRAP: UInt32 { get }
var CSSM_KEYUSE_DERIVE: UInt32 { get }
typealias CSSM_ALGORITHMS = uint32
var CSSM_ALGID_NONE: UInt32 { get }
var CSSM_ALGID_CUSTOM: UInt32 { get }
var CSSM_ALGID_DH: UInt32 { get }
var CSSM_ALGID_PH: UInt32 { get }
var CSSM_ALGID_KEA: UInt32 { get }
var CSSM_ALGID_MD2: UInt32 { get }
var CSSM_ALGID_MD4: UInt32 { get }
var CSSM_ALGID_MD5: UInt32 { get }
var CSSM_ALGID_SHA1: UInt32 { get }
var CSSM_ALGID_NHASH: UInt32 { get }
var CSSM_ALGID_HAVAL: UInt32 { get }
var CSSM_ALGID_RIPEMD: UInt32 { get }
var CSSM_ALGID_IBCHASH: UInt32 { get }
var CSSM_ALGID_RIPEMAC: UInt32 { get }
var CSSM_ALGID_DES: UInt32 { get }
var CSSM_ALGID_DESX: UInt32 { get }
var CSSM_ALGID_RDES: UInt32 { get }
var CSSM_ALGID_3DES_3KEY_EDE: UInt32 { get }
var CSSM_ALGID_3DES_2KEY_EDE: UInt32 { get }
var CSSM_ALGID_3DES_1KEY_EEE: UInt32 { get }
var CSSM_ALGID_3DES_3KEY: UInt32 { get }
var CSSM_ALGID_3DES_3KEY_EEE: UInt32 { get }
var CSSM_ALGID_3DES_2KEY: UInt32 { get }
var CSSM_ALGID_3DES_2KEY_EEE: UInt32 { get }
var CSSM_ALGID_3DES_1KEY: UInt32 { get }
var CSSM_ALGID_IDEA: UInt32 { get }
var CSSM_ALGID_RC2: UInt32 { get }
var CSSM_ALGID_RC5: UInt32 { get }
var CSSM_ALGID_RC4: UInt32 { get }
var CSSM_ALGID_SEAL: UInt32 { get }
var CSSM_ALGID_CAST: UInt32 { get }
var CSSM_ALGID_BLOWFISH: UInt32 { get }
var CSSM_ALGID_SKIPJACK: UInt32 { get }
var CSSM_ALGID_LUCIFER: UInt32 { get }
var CSSM_ALGID_MADRYGA: UInt32 { get }
var CSSM_ALGID_FEAL: UInt32 { get }
var CSSM_ALGID_REDOC: UInt32 { get }
var CSSM_ALGID_REDOC3: UInt32 { get }
var CSSM_ALGID_LOKI: UInt32 { get }
var CSSM_ALGID_KHUFU: UInt32 { get }
var CSSM_ALGID_KHAFRE: UInt32 { get }
var CSSM_ALGID_MMB: UInt32 { get }
var CSSM_ALGID_GOST: UInt32 { get }
var CSSM_ALGID_SAFER: UInt32 { get }
var CSSM_ALGID_CRAB: UInt32 { get }
var CSSM_ALGID_RSA: UInt32 { get }
var CSSM_ALGID_DSA: UInt32 { get }
var CSSM_ALGID_MD5WithRSA: UInt32 { get }
var CSSM_ALGID_MD2WithRSA: UInt32 { get }
var CSSM_ALGID_ElGamal: UInt32 { get }
var CSSM_ALGID_MD2Random: UInt32 { get }
var CSSM_ALGID_MD5Random: UInt32 { get }
var CSSM_ALGID_SHARandom: UInt32 { get }
var CSSM_ALGID_DESRandom: UInt32 { get }
var CSSM_ALGID_SHA1WithRSA: UInt32 { get }
var CSSM_ALGID_CDMF: UInt32 { get }
var CSSM_ALGID_CAST3: UInt32 { get }
var CSSM_ALGID_CAST5: UInt32 { get }
var CSSM_ALGID_GenericSecret: UInt32 { get }
var CSSM_ALGID_ConcatBaseAndKey: UInt32 { get }
var CSSM_ALGID_ConcatKeyAndBase: UInt32 { get }
var CSSM_ALGID_ConcatBaseAndData: UInt32 { get }
var CSSM_ALGID_ConcatDataAndBase: UInt32 { get }
var CSSM_ALGID_XORBaseAndData: UInt32 { get }
var CSSM_ALGID_ExtractFromKey: UInt32 { get }
var CSSM_ALGID_SSL3PreMasterGen: UInt32 { get }
var CSSM_ALGID_SSL3MasterDerive: UInt32 { get }
var CSSM_ALGID_SSL3KeyAndMacDerive: UInt32 { get }
var CSSM_ALGID_SSL3MD5_MAC: UInt32 { get }
var CSSM_ALGID_SSL3SHA1_MAC: UInt32 { get }
var CSSM_ALGID_PKCS5_PBKDF1_MD5: UInt32 { get }
var CSSM_ALGID_PKCS5_PBKDF1_MD2: UInt32 { get }
var CSSM_ALGID_PKCS5_PBKDF1_SHA1: UInt32 { get }
var CSSM_ALGID_WrapLynks: UInt32 { get }
var CSSM_ALGID_WrapSET_OAEP: UInt32 { get }
var CSSM_ALGID_BATON: UInt32 { get }
var CSSM_ALGID_ECDSA: UInt32 { get }
var CSSM_ALGID_MAYFLY: UInt32 { get }
var CSSM_ALGID_JUNIPER: UInt32 { get }
var CSSM_ALGID_FASTHASH: UInt32 { get }
var CSSM_ALGID_3DES: UInt32 { get }
var CSSM_ALGID_SSL3MD5: UInt32 { get }
var CSSM_ALGID_SSL3SHA1: UInt32 { get }
var CSSM_ALGID_FortezzaTimestamp: UInt32 { get }
var CSSM_ALGID_SHA1WithDSA: UInt32 { get }
var CSSM_ALGID_SHA1WithECDSA: UInt32 { get }
var CSSM_ALGID_DSA_BSAFE: UInt32 { get }
var CSSM_ALGID_ECDH: UInt32 { get }
var CSSM_ALGID_ECMQV: UInt32 { get }
var CSSM_ALGID_PKCS12_SHA1_PBE: UInt32 { get }
var CSSM_ALGID_ECNRA: UInt32 { get }
var CSSM_ALGID_SHA1WithECNRA: UInt32 { get }
var CSSM_ALGID_ECES: UInt32 { get }
var CSSM_ALGID_ECAES: UInt32 { get }
var CSSM_ALGID_SHA1HMAC: UInt32 { get }
var CSSM_ALGID_FIPS186Random: UInt32 { get }
var CSSM_ALGID_ECC: UInt32 { get }
var CSSM_ALGID_MQV: UInt32 { get }
var CSSM_ALGID_NRA: UInt32 { get }
var CSSM_ALGID_IntelPlatformRandom: UInt32 { get }
var CSSM_ALGID_UTC: UInt32 { get }
var CSSM_ALGID_HAVAL3: UInt32 { get }
var CSSM_ALGID_HAVAL4: UInt32 { get }
var CSSM_ALGID_HAVAL5: UInt32 { get }
var CSSM_ALGID_TIGER: UInt32 { get }
var CSSM_ALGID_MD5HMAC: UInt32 { get }
var CSSM_ALGID_PKCS5_PBKDF2: UInt32 { get }
var CSSM_ALGID_RUNNING_COUNTER: UInt32 { get }
var CSSM_ALGID_LAST: UInt32 { get }
var CSSM_ALGID_VENDOR_DEFINED: UInt32 { get }
typealias CSSM_ENCRYPT_MODE = uint32
var CSSM_ALGMODE_NONE: UInt32 { get }
var CSSM_ALGMODE_CUSTOM: UInt32 { get }
var CSSM_ALGMODE_ECB: UInt32 { get }
var CSSM_ALGMODE_ECBPad: UInt32 { get }
var CSSM_ALGMODE_CBC: UInt32 { get }
var CSSM_ALGMODE_CBC_IV8: UInt32 { get }
var CSSM_ALGMODE_CBCPadIV8: UInt32 { get }
var CSSM_ALGMODE_CFB: UInt32 { get }
var CSSM_ALGMODE_CFB_IV8: UInt32 { get }
var CSSM_ALGMODE_CFBPadIV8: UInt32 { get }
var CSSM_ALGMODE_OFB: UInt32 { get }
var CSSM_ALGMODE_OFB_IV8: UInt32 { get }
var CSSM_ALGMODE_OFBPadIV8: UInt32 { get }
var CSSM_ALGMODE_COUNTER: UInt32 { get }
var CSSM_ALGMODE_BC: UInt32 { get }
var CSSM_ALGMODE_PCBC: UInt32 { get }
var CSSM_ALGMODE_CBCC: UInt32 { get }
var CSSM_ALGMODE_OFBNLF: UInt32 { get }
var CSSM_ALGMODE_PBC: UInt32 { get }
var CSSM_ALGMODE_PFB: UInt32 { get }
var CSSM_ALGMODE_CBCPD: UInt32 { get }
var CSSM_ALGMODE_PUBLIC_KEY: UInt32 { get }
var CSSM_ALGMODE_PRIVATE_KEY: UInt32 { get }
var CSSM_ALGMODE_SHUFFLE: UInt32 { get }
var CSSM_ALGMODE_ECB64: UInt32 { get }
var CSSM_ALGMODE_CBC64: UInt32 { get }
var CSSM_ALGMODE_OFB64: UInt32 { get }
var CSSM_ALGMODE_CFB32: UInt32 { get }
var CSSM_ALGMODE_CFB16: UInt32 { get }
var CSSM_ALGMODE_CFB8: UInt32 { get }
var CSSM_ALGMODE_WRAP: UInt32 { get }
var CSSM_ALGMODE_PRIVATE_WRAP: UInt32 { get }
var CSSM_ALGMODE_RELAYX: UInt32 { get }
var CSSM_ALGMODE_ECB128: UInt32 { get }
var CSSM_ALGMODE_ECB96: UInt32 { get }
var CSSM_ALGMODE_CBC128: UInt32 { get }
var CSSM_ALGMODE_OAEP_HASH: UInt32 { get }
var CSSM_ALGMODE_PKCS1_EME_V15: UInt32 { get }
var CSSM_ALGMODE_PKCS1_EME_OAEP: UInt32 { get }
var CSSM_ALGMODE_PKCS1_EMSA_V15: UInt32 { get }
var CSSM_ALGMODE_ISO_9796: UInt32 { get }
var CSSM_ALGMODE_X9_31: UInt32 { get }
var CSSM_ALGMODE_LAST: UInt32 { get }
var CSSM_ALGMODE_VENDOR_DEFINED: UInt32 { get }
struct cssm_keyheader {
  var HeaderVersion: CSSM_HEADERVERSION
  var CspId: CSSM_GUID
  var BlobType: CSSM_KEYBLOB_TYPE
  var Format: CSSM_KEYBLOB_FORMAT
  var AlgorithmId: CSSM_ALGORITHMS
  var KeyClass: CSSM_KEYCLASS
  var LogicalKeySizeInBits: uint32
  var KeyAttr: CSSM_KEYATTR_FLAGS
  var KeyUsage: CSSM_KEYUSE
  var StartDate: CSSM_DATE
  var EndDate: CSSM_DATE
  var WrapAlgorithmId: CSSM_ALGORITHMS
  var WrapMode: CSSM_ENCRYPT_MODE
  var Reserved: uint32
  init()
  init(HeaderVersion: CSSM_HEADERVERSION, CspId: CSSM_GUID, BlobType: CSSM_KEYBLOB_TYPE, Format: CSSM_KEYBLOB_FORMAT, AlgorithmId: CSSM_ALGORITHMS, KeyClass: CSSM_KEYCLASS, LogicalKeySizeInBits: uint32, KeyAttr: CSSM_KEYATTR_FLAGS, KeyUsage: CSSM_KEYUSE, StartDate: CSSM_DATE, EndDate: CSSM_DATE, WrapAlgorithmId: CSSM_ALGORITHMS, WrapMode: CSSM_ENCRYPT_MODE, Reserved: uint32)
}
struct cssm_key {
  var KeyHeader: CSSM_KEYHEADER
  var KeyData: CSSM_DATA
  init()
  init(KeyHeader: CSSM_KEYHEADER, KeyData: CSSM_DATA)
}
typealias CSSM_WRAP_KEY = CSSM_KEY
typealias CSSM_WRAP_KEY_PTR = UnsafeMutablePointer<CSSM_KEY>
typealias CSSM_CSPTYPE = uint32
var CSSM_CSP_SOFTWARE: Int { get }
var CSSM_CSP_HARDWARE: Int { get }
var CSSM_CSP_HYBRID: Int { get }
struct cssm_dl_db_handle {
  var DLHandle: CSSM_DL_HANDLE
  var DBHandle: CSSM_DB_HANDLE
  init()
  init(DLHandle: CSSM_DL_HANDLE, DBHandle: CSSM_DB_HANDLE)
}
typealias CSSM_CONTEXT_TYPE = uint32
var CSSM_ALGCLASS_NONE: Int { get }
var CSSM_ALGCLASS_CUSTOM: Int { get }
var CSSM_ALGCLASS_SIGNATURE: Int { get }
var CSSM_ALGCLASS_SYMMETRIC: Int { get }
var CSSM_ALGCLASS_DIGEST: Int { get }
var CSSM_ALGCLASS_RANDOMGEN: Int { get }
var CSSM_ALGCLASS_UNIQUEGEN: Int { get }
var CSSM_ALGCLASS_MAC: Int { get }
var CSSM_ALGCLASS_ASYMMETRIC: Int { get }
var CSSM_ALGCLASS_KEYGEN: Int { get }
var CSSM_ALGCLASS_DERIVEKEY: Int { get }
var CSSM_ATTRIBUTE_DATA_NONE: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_UINT32: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_CSSM_DATA: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_CRYPTO_DATA: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_KEY: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_STRING: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_DATE: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_RANGE: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_ACCESS_CREDENTIALS: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_VERSION: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_DL_DB_HANDLE: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_KR_PROFILE: UInt32 { get }
var CSSM_ATTRIBUTE_TYPE_MASK: UInt32 { get }
typealias CSSM_ATTRIBUTE_TYPE = uint32
var CSSM_ATTRIBUTE_NONE: UInt32 { get }
var CSSM_ATTRIBUTE_CUSTOM: UInt32 { get }
var CSSM_ATTRIBUTE_DESCRIPTION: UInt32 { get }
var CSSM_ATTRIBUTE_KEY: UInt32 { get }
var CSSM_ATTRIBUTE_INIT_VECTOR: UInt32 { get }
var CSSM_ATTRIBUTE_SALT: UInt32 { get }
var CSSM_ATTRIBUTE_PADDING: UInt32 { get }
var CSSM_ATTRIBUTE_RANDOM: UInt32 { get }
var CSSM_ATTRIBUTE_SEED: UInt32 { get }
var CSSM_ATTRIBUTE_PASSPHRASE: UInt32 { get }
var CSSM_ATTRIBUTE_KEY_LENGTH: UInt32 { get }
var CSSM_ATTRIBUTE_KEY_LENGTH_RANGE: UInt32 { get }
var CSSM_ATTRIBUTE_BLOCK_SIZE: UInt32 { get }
var CSSM_ATTRIBUTE_OUTPUT_SIZE: UInt32 { get }
var CSSM_ATTRIBUTE_ROUNDS: UInt32 { get }
var CSSM_ATTRIBUTE_IV_SIZE: UInt32 { get }
var CSSM_ATTRIBUTE_ALG_PARAMS: UInt32 { get }
var CSSM_ATTRIBUTE_LABEL: UInt32 { get }
var CSSM_ATTRIBUTE_KEY_TYPE: UInt32 { get }
var CSSM_ATTRIBUTE_MODE: UInt32 { get }
var CSSM_ATTRIBUTE_EFFECTIVE_BITS: UInt32 { get }
var CSSM_ATTRIBUTE_START_DATE: UInt32 { get }
var CSSM_ATTRIBUTE_END_DATE: UInt32 { get }
var CSSM_ATTRIBUTE_KEYUSAGE: UInt32 { get }
var CSSM_ATTRIBUTE_KEYATTR: UInt32 { get }
var CSSM_ATTRIBUTE_VERSION: UInt32 { get }
var CSSM_ATTRIBUTE_PRIME: UInt32 { get }
var CSSM_ATTRIBUTE_BASE: UInt32 { get }
var CSSM_ATTRIBUTE_SUBPRIME: UInt32 { get }
var CSSM_ATTRIBUTE_ALG_ID: UInt32 { get }
var CSSM_ATTRIBUTE_ITERATION_COUNT: UInt32 { get }
var CSSM_ATTRIBUTE_ROUNDS_RANGE: UInt32 { get }
var CSSM_ATTRIBUTE_KRPROFILE_LOCAL: UInt32 { get }
var CSSM_ATTRIBUTE_KRPROFILE_REMOTE: UInt32 { get }
var CSSM_ATTRIBUTE_CSP_HANDLE: UInt32 { get }
var CSSM_ATTRIBUTE_DL_DB_HANDLE: UInt32 { get }
var CSSM_ATTRIBUTE_ACCESS_CREDENTIALS: UInt32 { get }
var CSSM_ATTRIBUTE_PUBLIC_KEY_FORMAT: UInt32 { get }
var CSSM_ATTRIBUTE_PRIVATE_KEY_FORMAT: UInt32 { get }
var CSSM_ATTRIBUTE_SYMMETRIC_KEY_FORMAT: UInt32 { get }
var CSSM_ATTRIBUTE_WRAPPED_KEY_FORMAT: UInt32 { get }
typealias CSSM_PADDING = uint32
var CSSM_PADDING_NONE: UInt32 { get }
var CSSM_PADDING_CUSTOM: UInt32 { get }
var CSSM_PADDING_ZERO: UInt32 { get }
var CSSM_PADDING_ONE: UInt32 { get }
var CSSM_PADDING_ALTERNATE: UInt32 { get }
var CSSM_PADDING_FF: UInt32 { get }
var CSSM_PADDING_PKCS5: UInt32 { get }
var CSSM_PADDING_PKCS7: UInt32 { get }
var CSSM_PADDING_CIPHERSTEALING: UInt32 { get }
var CSSM_PADDING_RANDOM: UInt32 { get }
var CSSM_PADDING_PKCS1: UInt32 { get }
var CSSM_PADDING_SIGRAW: UInt32 { get }
var CSSM_PADDING_VENDOR_DEFINED: UInt32 { get }
typealias CSSM_KEY_TYPE = CSSM_ALGORITHMS
struct cssm_context_attribute {
  var AttributeType: CSSM_ATTRIBUTE_TYPE
  var AttributeLength: uint32
  var Attribute: cssm_context_attribute_value
  init()
  init(AttributeType: CSSM_ATTRIBUTE_TYPE, AttributeLength: uint32, Attribute: cssm_context_attribute_value)
}
struct cssm_context_attribute_value {
  var String: UnsafeMutablePointer<Int8>
  var Uint32: uint32
  var AccessCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  var Key: CSSM_KEY_PTR
  var Data: CSSM_DATA_PTR
  var Padding: CSSM_PADDING
  var Date: CSSM_DATE_PTR
  var Range: CSSM_RANGE_PTR
  var CryptoData: CSSM_CRYPTO_DATA_PTR
  var Version: CSSM_VERSION_PTR
  var DLDBHandle: CSSM_DL_DB_HANDLE_PTR
  var KRProfile: UnsafeMutablePointer<cssm_kr_profile>
  init(String: UnsafeMutablePointer<Int8>)
  init(Uint32: uint32)
  init(AccessCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
  init(Key: CSSM_KEY_PTR)
  init(Data: CSSM_DATA_PTR)
  init(Padding: CSSM_PADDING)
  init(Date: CSSM_DATE_PTR)
  init(Range: CSSM_RANGE_PTR)
  init(CryptoData: CSSM_CRYPTO_DATA_PTR)
  init(Version: CSSM_VERSION_PTR)
  init(DLDBHandle: CSSM_DL_DB_HANDLE_PTR)
  init(KRProfile: UnsafeMutablePointer<cssm_kr_profile>)
  init()
}
typealias CSSM_CONTEXT_ATTRIBUTE = cssm_context_attribute
typealias CSSM_CONTEXT_ATTRIBUTE_PTR = UnsafeMutablePointer<cssm_context_attribute>
struct cssm_context {
  var ContextType: CSSM_CONTEXT_TYPE
  var AlgorithmType: CSSM_ALGORITHMS
  var NumberOfAttributes: uint32
  var ContextAttributes: CSSM_CONTEXT_ATTRIBUTE_PTR
  var CSPHandle: CSSM_CSP_HANDLE
  var Privileged: CSSM_BOOL
  var EncryptionProhibited: uint32
  var WorkFactor: uint32
  var Reserved: uint32
  init()
  init(ContextType: CSSM_CONTEXT_TYPE, AlgorithmType: CSSM_ALGORITHMS, NumberOfAttributes: uint32, ContextAttributes: CSSM_CONTEXT_ATTRIBUTE_PTR, CSPHandle: CSSM_CSP_HANDLE, Privileged: CSSM_BOOL, EncryptionProhibited: uint32, WorkFactor: uint32, Reserved: uint32)
}
typealias CSSM_SC_FLAGS = uint32
var CSSM_CSP_TOK_RNG: Int { get }
var CSSM_CSP_TOK_CLOCK_EXISTS: Int { get }
typealias CSSM_CSP_READER_FLAGS = uint32
var CSSM_CSP_RDR_TOKENPRESENT: Int { get }
var CSSM_CSP_RDR_EXISTS: Int { get }
var CSSM_CSP_RDR_HW: Int { get }
typealias CSSM_CSP_FLAGS = uint32
var CSSM_CSP_TOK_WRITE_PROTECTED: Int { get }
var CSSM_CSP_TOK_LOGIN_REQUIRED: Int { get }
var CSSM_CSP_TOK_USER_PIN_INITIALIZED: Int { get }
var CSSM_CSP_TOK_PROT_AUTHENTICATION: Int { get }
var CSSM_CSP_TOK_USER_PIN_EXPIRED: Int { get }
var CSSM_CSP_TOK_SESSION_KEY_PASSWORD: Int { get }
var CSSM_CSP_TOK_PRIVATE_KEY_PASSWORD: Int { get }
var CSSM_CSP_STORES_PRIVATE_KEYS: Int { get }
var CSSM_CSP_STORES_PUBLIC_KEYS: Int { get }
var CSSM_CSP_STORES_SESSION_KEYS: Int { get }
var CSSM_CSP_STORES_CERTIFICATES: Int { get }
var CSSM_CSP_STORES_GENERIC: Int { get }
typealias CSSM_PKCS_OAEP_MGF = uint32
var CSSM_PKCS_OAEP_MGF_NONE: Int { get }
var CSSM_PKCS_OAEP_MGF1_SHA1: Int { get }
var CSSM_PKCS_OAEP_MGF1_MD5: Int { get }
typealias CSSM_PKCS_OAEP_PSOURCE = uint32
var CSSM_PKCS_OAEP_PSOURCE_NONE: Int { get }
var CSSM_PKCS_OAEP_PSOURCE_Pspecified: Int { get }
struct cssm_pkcs1_oaep_params {
  var HashAlgorithm: uint32
  var HashParams: CSSM_DATA
  var MGF: CSSM_PKCS_OAEP_MGF
  var MGFParams: CSSM_DATA
  var PSource: CSSM_PKCS_OAEP_PSOURCE
  var PSourceParams: CSSM_DATA
  init()
  init(HashAlgorithm: uint32, HashParams: CSSM_DATA, MGF: CSSM_PKCS_OAEP_MGF, MGFParams: CSSM_DATA, PSource: CSSM_PKCS_OAEP_PSOURCE, PSourceParams: CSSM_DATA)
}
struct cssm_csp_operational_statistics {
  var UserAuthenticated: CSSM_BOOL
  var DeviceFlags: CSSM_CSP_FLAGS
  var TokenMaxSessionCount: uint32
  var TokenOpenedSessionCount: uint32
  var TokenMaxRWSessionCount: uint32
  var TokenOpenedRWSessionCount: uint32
  var TokenTotalPublicMem: uint32
  var TokenFreePublicMem: uint32
  var TokenTotalPrivateMem: uint32
  var TokenFreePrivateMem: uint32
  init()
  init(UserAuthenticated: CSSM_BOOL, DeviceFlags: CSSM_CSP_FLAGS, TokenMaxSessionCount: uint32, TokenOpenedSessionCount: uint32, TokenMaxRWSessionCount: uint32, TokenOpenedRWSessionCount: uint32, TokenTotalPublicMem: uint32, TokenFreePublicMem: uint32, TokenTotalPrivateMem: uint32, TokenFreePrivateMem: uint32)
}
var CSSM_VALUE_NOT_AVAILABLE: Int { get }
struct cssm_pkcs5_pbkdf1_params {
  var Passphrase: CSSM_DATA
  var InitVector: CSSM_DATA
  init()
  init(Passphrase: CSSM_DATA, InitVector: CSSM_DATA)
}
typealias CSSM_PKCS5_PBKDF2_PRF = uint32
var CSSM_PKCS5_PBKDF2_PRF_HMAC_SHA1: Int { get }
struct cssm_pkcs5_pbkdf2_params {
  var Passphrase: CSSM_DATA
  var PseudoRandomFunction: CSSM_PKCS5_PBKDF2_PRF
  init()
  init(Passphrase: CSSM_DATA, PseudoRandomFunction: CSSM_PKCS5_PBKDF2_PRF)
}
struct cssm_kea_derive_params {
  var Rb: CSSM_DATA
  var Yb: CSSM_DATA
  init()
  init(Rb: CSSM_DATA, Yb: CSSM_DATA)
}
struct cssm_tp_authority_id {
  var AuthorityCert: UnsafeMutablePointer<CSSM_DATA>
  var AuthorityLocation: CSSM_NET_ADDRESS_PTR
  init()
  init(AuthorityCert: UnsafeMutablePointer<CSSM_DATA>, AuthorityLocation: CSSM_NET_ADDRESS_PTR)
}
typealias CSSM_TP_AUTHORITY_REQUEST_TYPE = uint32
typealias CSSM_TP_AUTHORITY_REQUEST_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_TP_AUTHORITY_REQUEST_CERTISSUE: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTREVOKE: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTSUSPEND: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTRESUME: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTVERIFY: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTNOTARIZE: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTUSERECOVER: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CRLISSUE: Int { get }
typealias CSSM_TP_VERIFICATION_RESULTS_CALLBACK = @convention(c) (CSSM_MODULE_HANDLE, UnsafeMutablePointer<Void>, CSSM_DATA_PTR) -> CSSM_RETURN
typealias CSSM_OID = CSSM_DATA
typealias CSSM_OID_PTR = UnsafeMutablePointer<CSSM_DATA>
struct cssm_field {
  var FieldOid: CSSM_OID
  var FieldValue: CSSM_DATA
  init()
  init(FieldOid: CSSM_OID, FieldValue: CSSM_DATA)
}
struct cssm_tp_policyinfo {
  var NumberOfPolicyIds: uint32
  var PolicyIds: CSSM_FIELD_PTR
  var PolicyControl: UnsafeMutablePointer<Void>
  init()
  init(NumberOfPolicyIds: uint32, PolicyIds: CSSM_FIELD_PTR, PolicyControl: UnsafeMutablePointer<Void>)
}
typealias CSSM_TP_SERVICES = uint32
var CSSM_TP_KEY_ARCHIVE: Int { get }
var CSSM_TP_CERT_PUBLISH: Int { get }
var CSSM_TP_CERT_NOTIFY_RENEW: Int { get }
var CSSM_TP_CERT_DIR_UPDATE: Int { get }
var CSSM_TP_CRL_DISTRIBUTE: Int { get }
typealias CSSM_TP_ACTION = uint32
var CSSM_TP_ACTION_DEFAULT: Int { get }
typealias CSSM_TP_STOP_ON = uint32
var CSSM_TP_STOP_ON_POLICY: Int { get }
var CSSM_TP_STOP_ON_NONE: Int { get }
var CSSM_TP_STOP_ON_FIRST_PASS: Int { get }
var CSSM_TP_STOP_ON_FIRST_FAIL: Int { get }
typealias CSSM_TIMESTRING = UnsafeMutablePointer<Int8>
struct cssm_dl_db_list {
  var NumHandles: uint32
  var DLDBHandle: CSSM_DL_DB_HANDLE_PTR
  init()
  init(NumHandles: uint32, DLDBHandle: CSSM_DL_DB_HANDLE_PTR)
}
struct cssm_tp_callerauth_context {
  var Policy: CSSM_TP_POLICYINFO
  var VerifyTime: CSSM_TIMESTRING
  var VerificationAbortOn: CSSM_TP_STOP_ON
  var CallbackWithVerifiedCert: CSSM_TP_VERIFICATION_RESULTS_CALLBACK!
  var NumberOfAnchorCerts: uint32
  var AnchorCerts: CSSM_DATA_PTR
  var DBList: CSSM_DL_DB_LIST_PTR
  var CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(Policy: CSSM_TP_POLICYINFO, VerifyTime: CSSM_TIMESTRING, VerificationAbortOn: CSSM_TP_STOP_ON, CallbackWithVerifiedCert: CSSM_TP_VERIFICATION_RESULTS_CALLBACK!, NumberOfAnchorCerts: uint32, AnchorCerts: CSSM_DATA_PTR, DBList: CSSM_DL_DB_LIST_PTR, CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_CRL_PARSE_FORMAT = uint32
typealias CSSM_CRL_PARSE_FORMAT_PTR = UnsafeMutablePointer<uint32>
var CSSM_CRL_PARSE_FORMAT_NONE: Int { get }
var CSSM_CRL_PARSE_FORMAT_CUSTOM: Int { get }
var CSSM_CRL_PARSE_FORMAT_SEXPR: Int { get }
var CSSM_CRL_PARSE_FORMAT_COMPLEX: Int { get }
var CSSM_CRL_PARSE_FORMAT_OID_NAMED: Int { get }
var CSSM_CRL_PARSE_FORMAT_TUPLE: Int { get }
var CSSM_CRL_PARSE_FORMAT_MULTIPLE: Int { get }
var CSSM_CRL_PARSE_FORMAT_LAST: Int { get }
var CSSM_CL_CUSTOM_CRL_PARSE_FORMAT: Int { get }
typealias CSSM_CRL_TYPE = uint32
typealias CSSM_CRL_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_CRL_TYPE_UNKNOWN: Int { get }
var CSSM_CRL_TYPE_X_509v1: Int { get }
var CSSM_CRL_TYPE_X_509v2: Int { get }
var CSSM_CRL_TYPE_SPKI: Int { get }
var CSSM_CRL_TYPE_MULTIPLE: Int { get }
typealias CSSM_CRL_ENCODING = uint32
typealias CSSM_CRL_ENCODING_PTR = UnsafeMutablePointer<uint32>
var CSSM_CRL_ENCODING_UNKNOWN: Int { get }
var CSSM_CRL_ENCODING_CUSTOM: Int { get }
var CSSM_CRL_ENCODING_BER: Int { get }
var CSSM_CRL_ENCODING_DER: Int { get }
var CSSM_CRL_ENCODING_BLOOM: Int { get }
var CSSM_CRL_ENCODING_SEXPR: Int { get }
var CSSM_CRL_ENCODING_MULTIPLE: Int { get }
struct cssm_encoded_crl {
  var CrlType: CSSM_CRL_TYPE
  var CrlEncoding: CSSM_CRL_ENCODING
  var CrlBlob: CSSM_DATA
  init()
  init(CrlType: CSSM_CRL_TYPE, CrlEncoding: CSSM_CRL_ENCODING, CrlBlob: CSSM_DATA)
}
struct cssm_parsed_crl {
  var CrlType: CSSM_CRL_TYPE
  var ParsedCrlFormat: CSSM_CRL_PARSE_FORMAT
  var ParsedCrl: UnsafeMutablePointer<Void>
  init()
  init(CrlType: CSSM_CRL_TYPE, ParsedCrlFormat: CSSM_CRL_PARSE_FORMAT, ParsedCrl: UnsafeMutablePointer<Void>)
}
struct cssm_crl_pair {
  var EncodedCrl: CSSM_ENCODED_CRL
  var ParsedCrl: CSSM_PARSED_CRL
  init()
  init(EncodedCrl: CSSM_ENCODED_CRL, ParsedCrl: CSSM_PARSED_CRL)
}
typealias CSSM_CRLGROUP_TYPE = uint32
typealias CSSM_CRLGROUP_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_CRLGROUP_DATA: Int { get }
var CSSM_CRLGROUP_ENCODED_CRL: Int { get }
var CSSM_CRLGROUP_PARSED_CRL: Int { get }
var CSSM_CRLGROUP_CRL_PAIR: Int { get }
struct cssm_crlgroup {
  struct __Unnamed_union_GroupCrlList {
    var CrlList: CSSM_DATA_PTR
    var EncodedCrlList: CSSM_ENCODED_CRL_PTR
    var ParsedCrlList: CSSM_PARSED_CRL_PTR
    var PairCrlList: CSSM_CRL_PAIR_PTR
    init(CrlList: CSSM_DATA_PTR)
    init(EncodedCrlList: CSSM_ENCODED_CRL_PTR)
    init(ParsedCrlList: CSSM_PARSED_CRL_PTR)
    init(PairCrlList: CSSM_CRL_PAIR_PTR)
    init()
  }
  var CrlType: CSSM_CRL_TYPE
  var CrlEncoding: CSSM_CRL_ENCODING
  var NumberOfCrls: uint32
  var GroupCrlList: cssm_crlgroup.__Unnamed_union_GroupCrlList
  var CrlGroupType: CSSM_CRLGROUP_TYPE
  init()
  init(CrlType: CSSM_CRL_TYPE, CrlEncoding: CSSM_CRL_ENCODING, NumberOfCrls: uint32, GroupCrlList: cssm_crlgroup.__Unnamed_union_GroupCrlList, CrlGroupType: CSSM_CRLGROUP_TYPE)
}
typealias CSSM_CRLGROUP = cssm_crlgroup
typealias CSSM_CRLGROUP_PTR = UnsafeMutablePointer<cssm_crlgroup>
struct cssm_fieldgroup {
  var NumberOfFields: Int32
  var Fields: CSSM_FIELD_PTR
  init()
  init(NumberOfFields: Int32, Fields: CSSM_FIELD_PTR)
}
typealias CSSM_EVIDENCE_FORM = uint32
var CSSM_EVIDENCE_FORM_UNSPECIFIC: Int { get }
var CSSM_EVIDENCE_FORM_CERT: Int { get }
var CSSM_EVIDENCE_FORM_CRL: Int { get }
var CSSM_EVIDENCE_FORM_CERT_ID: Int { get }
var CSSM_EVIDENCE_FORM_CRL_ID: Int { get }
var CSSM_EVIDENCE_FORM_VERIFIER_TIME: Int { get }
var CSSM_EVIDENCE_FORM_CRL_THISTIME: Int { get }
var CSSM_EVIDENCE_FORM_CRL_NEXTTIME: Int { get }
var CSSM_EVIDENCE_FORM_POLICYINFO: Int { get }
var CSSM_EVIDENCE_FORM_TUPLEGROUP: Int { get }
struct cssm_evidence {
  var EvidenceForm: CSSM_EVIDENCE_FORM
  var Evidence: UnsafeMutablePointer<Void>
  init()
  init(EvidenceForm: CSSM_EVIDENCE_FORM, Evidence: UnsafeMutablePointer<Void>)
}
struct cssm_tp_verify_context {
  var Action: CSSM_TP_ACTION
  var ActionData: CSSM_DATA
  var Crls: CSSM_CRLGROUP
  var Cred: CSSM_TP_CALLERAUTH_CONTEXT_PTR
  init()
  init(Action: CSSM_TP_ACTION, ActionData: CSSM_DATA, Crls: CSSM_CRLGROUP, Cred: CSSM_TP_CALLERAUTH_CONTEXT_PTR)
}
struct cssm_tp_verify_context_result {
  var NumberOfEvidences: uint32
  var Evidence: CSSM_EVIDENCE_PTR
  init()
  init(NumberOfEvidences: uint32, Evidence: CSSM_EVIDENCE_PTR)
}
struct cssm_tp_request_set {
  var NumberOfRequests: uint32
  var Requests: UnsafeMutablePointer<Void>
  init()
  init(NumberOfRequests: uint32, Requests: UnsafeMutablePointer<Void>)
}
struct cssm_tp_result_set {
  var NumberOfResults: uint32
  var Results: UnsafeMutablePointer<Void>
  init()
  init(NumberOfResults: uint32, Results: UnsafeMutablePointer<Void>)
}
typealias CSSM_TP_CONFIRM_STATUS = uint32
typealias CSSM_TP_CONFIRM_STATUS_PTR = UnsafeMutablePointer<uint32>
var CSSM_TP_CONFIRM_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CONFIRM_ACCEPT: Int { get }
var CSSM_TP_CONFIRM_REJECT: Int { get }
struct cssm_tp_confirm_response {
  var NumberOfResponses: uint32
  var Responses: CSSM_TP_CONFIRM_STATUS_PTR
  init()
  init(NumberOfResponses: uint32, Responses: CSSM_TP_CONFIRM_STATUS_PTR)
}
var CSSM_ESTIMATED_TIME_UNKNOWN: Int { get }
var CSSM_ELAPSED_TIME_UNKNOWN: Int { get }
var CSSM_ELAPSED_TIME_COMPLETE: Int { get }
struct cssm_tp_certissue_input {
  var CSPSubserviceUid: CSSM_SUBSERVICE_UID
  var CLHandle: CSSM_CL_HANDLE
  var NumberOfTemplateFields: uint32
  var SubjectCertFields: CSSM_FIELD_PTR
  var MoreServiceRequests: CSSM_TP_SERVICES
  var NumberOfServiceControls: uint32
  var ServiceControls: CSSM_FIELD_PTR
  var UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(CSPSubserviceUid: CSSM_SUBSERVICE_UID, CLHandle: CSSM_CL_HANDLE, NumberOfTemplateFields: uint32, SubjectCertFields: CSSM_FIELD_PTR, MoreServiceRequests: CSSM_TP_SERVICES, NumberOfServiceControls: uint32, ServiceControls: CSSM_FIELD_PTR, UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CERTISSUE_STATUS = uint32
var CSSM_TP_CERTISSUE_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CERTISSUE_OK: Int { get }
var CSSM_TP_CERTISSUE_OKWITHCERTMODS: Int { get }
var CSSM_TP_CERTISSUE_OKWITHSERVICEMODS: Int { get }
var CSSM_TP_CERTISSUE_REJECTED: Int { get }
var CSSM_TP_CERTISSUE_NOT_AUTHORIZED: Int { get }
var CSSM_TP_CERTISSUE_WILL_BE_REVOKED: Int { get }
struct cssm_tp_certissue_output {
  var IssueStatus: CSSM_TP_CERTISSUE_STATUS
  var CertGroup: CSSM_CERTGROUP_PTR
  var PerformedServiceRequests: CSSM_TP_SERVICES
  init()
  init(IssueStatus: CSSM_TP_CERTISSUE_STATUS, CertGroup: CSSM_CERTGROUP_PTR, PerformedServiceRequests: CSSM_TP_SERVICES)
}
typealias CSSM_TP_CERTCHANGE_ACTION = uint32
var CSSM_TP_CERTCHANGE_NONE: Int { get }
var CSSM_TP_CERTCHANGE_REVOKE: Int { get }
var CSSM_TP_CERTCHANGE_HOLD: Int { get }
var CSSM_TP_CERTCHANGE_RELEASE: Int { get }
typealias CSSM_TP_CERTCHANGE_REASON = uint32
var CSSM_TP_CERTCHANGE_REASON_UNKNOWN: Int { get }
var CSSM_TP_CERTCHANGE_REASON_KEYCOMPROMISE: Int { get }
var CSSM_TP_CERTCHANGE_REASON_CACOMPROMISE: Int { get }
var CSSM_TP_CERTCHANGE_REASON_CEASEOPERATION: Int { get }
var CSSM_TP_CERTCHANGE_REASON_AFFILIATIONCHANGE: Int { get }
var CSSM_TP_CERTCHANGE_REASON_SUPERCEDED: Int { get }
var CSSM_TP_CERTCHANGE_REASON_SUSPECTEDCOMPROMISE: Int { get }
var CSSM_TP_CERTCHANGE_REASON_HOLDRELEASE: Int { get }
struct cssm_tp_certchange_input {
  var Action: CSSM_TP_CERTCHANGE_ACTION
  var Reason: CSSM_TP_CERTCHANGE_REASON
  var CLHandle: CSSM_CL_HANDLE
  var Cert: CSSM_DATA_PTR
  var ChangeInfo: CSSM_FIELD_PTR
  var StartTime: CSSM_TIMESTRING
  var CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(Action: CSSM_TP_CERTCHANGE_ACTION, Reason: CSSM_TP_CERTCHANGE_REASON, CLHandle: CSSM_CL_HANDLE, Cert: CSSM_DATA_PTR, ChangeInfo: CSSM_FIELD_PTR, StartTime: CSSM_TIMESTRING, CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CERTCHANGE_STATUS = uint32
var CSSM_TP_CERTCHANGE_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CERTCHANGE_OK: Int { get }
var CSSM_TP_CERTCHANGE_OKWITHNEWTIME: Int { get }
var CSSM_TP_CERTCHANGE_WRONGCA: Int { get }
var CSSM_TP_CERTCHANGE_REJECTED: Int { get }
var CSSM_TP_CERTCHANGE_NOT_AUTHORIZED: Int { get }
struct cssm_tp_certchange_output {
  var ActionStatus: CSSM_TP_CERTCHANGE_STATUS
  var RevokeInfo: CSSM_FIELD
  init()
  init(ActionStatus: CSSM_TP_CERTCHANGE_STATUS, RevokeInfo: CSSM_FIELD)
}
struct cssm_tp_certverify_input {
  var CLHandle: CSSM_CL_HANDLE
  var Cert: CSSM_DATA_PTR
  var VerifyContext: CSSM_TP_VERIFY_CONTEXT_PTR
  init()
  init(CLHandle: CSSM_CL_HANDLE, Cert: CSSM_DATA_PTR, VerifyContext: CSSM_TP_VERIFY_CONTEXT_PTR)
}
typealias CSSM_TP_CERTVERIFY_STATUS = uint32
var CSSM_TP_CERTVERIFY_UNKNOWN: Int { get }
var CSSM_TP_CERTVERIFY_VALID: Int { get }
var CSSM_TP_CERTVERIFY_INVALID: Int { get }
var CSSM_TP_CERTVERIFY_REVOKED: Int { get }
var CSSM_TP_CERTVERIFY_SUSPENDED: Int { get }
var CSSM_TP_CERTVERIFY_EXPIRED: Int { get }
var CSSM_TP_CERTVERIFY_NOT_VALID_YET: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_AUTHORITY: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_SIGNATURE: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_CERT_VALUE: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_CERTGROUP: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_POLICY: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_POLICY_IDS: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_BASIC_CONSTRAINTS: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_CRL_DIST_PT: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_NAME_TREE: Int { get }
var CSSM_TP_CERTVERIFY_UNKNOWN_CRITICAL_EXT: Int { get }
struct cssm_tp_certverify_output {
  var VerifyStatus: CSSM_TP_CERTVERIFY_STATUS
  var NumberOfEvidence: uint32
  var Evidence: CSSM_EVIDENCE_PTR
  init()
  init(VerifyStatus: CSSM_TP_CERTVERIFY_STATUS, NumberOfEvidence: uint32, Evidence: CSSM_EVIDENCE_PTR)
}
struct cssm_tp_certnotarize_input {
  var CLHandle: CSSM_CL_HANDLE
  var NumberOfFields: uint32
  var MoreFields: CSSM_FIELD_PTR
  var SignScope: CSSM_FIELD_PTR
  var ScopeSize: uint32
  var MoreServiceRequests: CSSM_TP_SERVICES
  var NumberOfServiceControls: uint32
  var ServiceControls: CSSM_FIELD_PTR
  var UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(CLHandle: CSSM_CL_HANDLE, NumberOfFields: uint32, MoreFields: CSSM_FIELD_PTR, SignScope: CSSM_FIELD_PTR, ScopeSize: uint32, MoreServiceRequests: CSSM_TP_SERVICES, NumberOfServiceControls: uint32, ServiceControls: CSSM_FIELD_PTR, UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CERTNOTARIZE_STATUS = uint32
var CSSM_TP_CERTNOTARIZE_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CERTNOTARIZE_OK: Int { get }
var CSSM_TP_CERTNOTARIZE_OKWITHOUTFIELDS: Int { get }
var CSSM_TP_CERTNOTARIZE_OKWITHSERVICEMODS: Int { get }
var CSSM_TP_CERTNOTARIZE_REJECTED: Int { get }
var CSSM_TP_CERTNOTARIZE_NOT_AUTHORIZED: Int { get }
struct cssm_tp_certnotarize_output {
  var NotarizeStatus: CSSM_TP_CERTNOTARIZE_STATUS
  var NotarizedCertGroup: CSSM_CERTGROUP_PTR
  var PerformedServiceRequests: CSSM_TP_SERVICES
  init()
  init(NotarizeStatus: CSSM_TP_CERTNOTARIZE_STATUS, NotarizedCertGroup: CSSM_CERTGROUP_PTR, PerformedServiceRequests: CSSM_TP_SERVICES)
}
struct cssm_tp_certreclaim_input {
  var CLHandle: CSSM_CL_HANDLE
  var NumberOfSelectionFields: uint32
  var SelectionFields: CSSM_FIELD_PTR
  var UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(CLHandle: CSSM_CL_HANDLE, NumberOfSelectionFields: uint32, SelectionFields: CSSM_FIELD_PTR, UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CERTRECLAIM_STATUS = uint32
var CSSM_TP_CERTRECLAIM_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CERTRECLAIM_OK: Int { get }
var CSSM_TP_CERTRECLAIM_NOMATCH: Int { get }
var CSSM_TP_CERTRECLAIM_REJECTED: Int { get }
var CSSM_TP_CERTRECLAIM_NOT_AUTHORIZED: Int { get }
struct cssm_tp_certreclaim_output {
  var ReclaimStatus: CSSM_TP_CERTRECLAIM_STATUS
  var ReclaimedCertGroup: CSSM_CERTGROUP_PTR
  var KeyCacheHandle: CSSM_LONG_HANDLE
  init()
  init(ReclaimStatus: CSSM_TP_CERTRECLAIM_STATUS, ReclaimedCertGroup: CSSM_CERTGROUP_PTR, KeyCacheHandle: CSSM_LONG_HANDLE)
}
struct cssm_tp_crlissue_input {
  var CLHandle: CSSM_CL_HANDLE
  var CrlIdentifier: uint32
  var CrlThisTime: CSSM_TIMESTRING
  var PolicyIdentifier: CSSM_FIELD_PTR
  var CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(CLHandle: CSSM_CL_HANDLE, CrlIdentifier: uint32, CrlThisTime: CSSM_TIMESTRING, PolicyIdentifier: CSSM_FIELD_PTR, CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CRLISSUE_STATUS = uint32
var CSSM_TP_CRLISSUE_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CRLISSUE_OK: Int { get }
var CSSM_TP_CRLISSUE_NOT_CURRENT: Int { get }
var CSSM_TP_CRLISSUE_INVALID_DOMAIN: Int { get }
var CSSM_TP_CRLISSUE_UNKNOWN_IDENTIFIER: Int { get }
var CSSM_TP_CRLISSUE_REJECTED: Int { get }
var CSSM_TP_CRLISSUE_NOT_AUTHORIZED: Int { get }
struct cssm_tp_crlissue_output {
  var IssueStatus: CSSM_TP_CRLISSUE_STATUS
  var Crl: CSSM_ENCODED_CRL_PTR
  var CrlNextTime: CSSM_TIMESTRING
  init()
  init(IssueStatus: CSSM_TP_CRLISSUE_STATUS, Crl: CSSM_ENCODED_CRL_PTR, CrlNextTime: CSSM_TIMESTRING)
}
typealias CSSM_TP_FORM_TYPE = uint32
var CSSM_TP_FORM_TYPE_GENERIC: Int { get }
var CSSM_TP_FORM_TYPE_REGISTRATION: Int { get }
typealias CSSM_CL_TEMPLATE_TYPE = uint32
var CSSM_CL_TEMPLATE_INTERMEDIATE_CERT: Int { get }
var CSSM_CL_TEMPLATE_PKIX_CERTTEMPLATE: Int { get }
typealias CSSM_CERT_BUNDLE_TYPE = uint32
var CSSM_CERT_BUNDLE_UNKNOWN: Int { get }
var CSSM_CERT_BUNDLE_CUSTOM: Int { get }
var CSSM_CERT_BUNDLE_PKCS7_SIGNED_DATA: Int { get }
var CSSM_CERT_BUNDLE_PKCS7_SIGNED_ENVELOPED_DATA: Int { get }
var CSSM_CERT_BUNDLE_PKCS12: Int { get }
var CSSM_CERT_BUNDLE_PFX: Int { get }
var CSSM_CERT_BUNDLE_SPKI_SEQUENCE: Int { get }
var CSSM_CERT_BUNDLE_PGP_KEYRING: Int { get }
var CSSM_CERT_BUNDLE_LAST: Int { get }
var CSSM_CL_CUSTOM_CERT_BUNDLE_TYPE: Int { get }
typealias CSSM_CERT_BUNDLE_ENCODING = uint32
var CSSM_CERT_BUNDLE_ENCODING_UNKNOWN: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_CUSTOM: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_BER: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_DER: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_SEXPR: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_PGP: Int { get }
struct cssm_cert_bundle_header {
  var BundleType: CSSM_CERT_BUNDLE_TYPE
  var BundleEncoding: CSSM_CERT_BUNDLE_ENCODING
  init()
  init(BundleType: CSSM_CERT_BUNDLE_TYPE, BundleEncoding: CSSM_CERT_BUNDLE_ENCODING)
}
struct cssm_cert_bundle {
  var BundleHeader: CSSM_CERT_BUNDLE_HEADER
  var Bundle: CSSM_DATA
  init()
  init(BundleHeader: CSSM_CERT_BUNDLE_HEADER, Bundle: CSSM_DATA)
}
var CSSM_FIELDVALUE_COMPLEX_DATA_TYPE: UInt32 { get }
typealias CSSM_DB_ATTRIBUTE_NAME_FORMAT = uint32
typealias CSSM_DB_ATTRIBUTE_NAME_FORMAT_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_ATTRIBUTE_NAME_AS_STRING: Int { get }
var CSSM_DB_ATTRIBUTE_NAME_AS_OID: Int { get }
var CSSM_DB_ATTRIBUTE_NAME_AS_INTEGER: Int { get }
typealias CSSM_DB_ATTRIBUTE_FORMAT = uint32
typealias CSSM_DB_ATTRIBUTE_FORMAT_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_ATTRIBUTE_FORMAT_STRING: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_SINT32: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_UINT32: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_BIG_NUM: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_REAL: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_TIME_DATE: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_BLOB: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_MULTI_UINT32: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_COMPLEX: Int { get }
struct cssm_db_attribute_info {
  var AttributeNameFormat: CSSM_DB_ATTRIBUTE_NAME_FORMAT
  var Label: cssm_db_attribute_label
  var AttributeFormat: CSSM_DB_ATTRIBUTE_FORMAT
  init()
  init(AttributeNameFormat: CSSM_DB_ATTRIBUTE_NAME_FORMAT, Label: cssm_db_attribute_label, AttributeFormat: CSSM_DB_ATTRIBUTE_FORMAT)
}
struct cssm_db_attribute_label {
  var AttributeName: UnsafeMutablePointer<Int8>
  var AttributeOID: CSSM_OID
  var AttributeID: uint32
  init(AttributeName: UnsafeMutablePointer<Int8>)
  init(AttributeOID: CSSM_OID)
  init(AttributeID: uint32)
  init()
}
typealias CSSM_DB_ATTRIBUTE_INFO = cssm_db_attribute_info
typealias CSSM_DB_ATTRIBUTE_INFO_PTR = UnsafeMutablePointer<cssm_db_attribute_info>
struct cssm_db_attribute_data {
  var Info: CSSM_DB_ATTRIBUTE_INFO
  var NumberOfValues: uint32
  var Value: CSSM_DATA_PTR
  init()
  init(Info: CSSM_DB_ATTRIBUTE_INFO, NumberOfValues: uint32, Value: CSSM_DATA_PTR)
}
typealias CSSM_DB_RECORDTYPE = uint32
var CSSM_DB_RECORDTYPE_SCHEMA_START: UInt32 { get }
var CSSM_DB_RECORDTYPE_SCHEMA_END: UInt32 { get }
var CSSM_DB_RECORDTYPE_OPEN_GROUP_START: UInt32 { get }
var CSSM_DB_RECORDTYPE_OPEN_GROUP_END: UInt32 { get }
var CSSM_DB_RECORDTYPE_APP_DEFINED_START: UInt32 { get }
var CSSM_DB_RECORDTYPE_APP_DEFINED_END: UInt32 { get }
var CSSM_DL_DB_SCHEMA_INFO: UInt32 { get }
var CSSM_DL_DB_SCHEMA_INDEXES: UInt32 { get }
var CSSM_DL_DB_SCHEMA_ATTRIBUTES: UInt32 { get }
var CSSM_DL_DB_SCHEMA_PARSING_MODULE: UInt32 { get }
var CSSM_DL_DB_RECORD_ANY: UInt32 { get }
var CSSM_DL_DB_RECORD_CERT: UInt32 { get }
var CSSM_DL_DB_RECORD_CRL: UInt32 { get }
var CSSM_DL_DB_RECORD_POLICY: UInt32 { get }
var CSSM_DL_DB_RECORD_GENERIC: UInt32 { get }
var CSSM_DL_DB_RECORD_PUBLIC_KEY: UInt32 { get }
var CSSM_DL_DB_RECORD_PRIVATE_KEY: UInt32 { get }
var CSSM_DL_DB_RECORD_SYMMETRIC_KEY: UInt32 { get }
var CSSM_DL_DB_RECORD_ALL_KEYS: UInt32 { get }
var CSSM_DB_CERT_USE_TRUSTED: Int { get }
var CSSM_DB_CERT_USE_SYSTEM: Int { get }
var CSSM_DB_CERT_USE_OWNER: Int { get }
var CSSM_DB_CERT_USE_REVOKED: Int { get }
var CSSM_DB_CERT_USE_SIGNING: Int { get }
var CSSM_DB_CERT_USE_PRIVACY: Int { get }
struct cssm_db_record_attribute_info {
  var DataRecordType: CSSM_DB_RECORDTYPE
  var NumberOfAttributes: uint32
  var AttributeInfo: CSSM_DB_ATTRIBUTE_INFO_PTR
  init()
  init(DataRecordType: CSSM_DB_RECORDTYPE, NumberOfAttributes: uint32, AttributeInfo: CSSM_DB_ATTRIBUTE_INFO_PTR)
}
struct cssm_db_record_attribute_data {
  var DataRecordType: CSSM_DB_RECORDTYPE
  var SemanticInformation: uint32
  var NumberOfAttributes: uint32
  var AttributeData: CSSM_DB_ATTRIBUTE_DATA_PTR
  init()
  init(DataRecordType: CSSM_DB_RECORDTYPE, SemanticInformation: uint32, NumberOfAttributes: uint32, AttributeData: CSSM_DB_ATTRIBUTE_DATA_PTR)
}
struct cssm_db_parsing_module_info {
  var RecordType: CSSM_DB_RECORDTYPE
  var ModuleSubserviceUid: CSSM_SUBSERVICE_UID
  init()
  init(RecordType: CSSM_DB_RECORDTYPE, ModuleSubserviceUid: CSSM_SUBSERVICE_UID)
}
typealias CSSM_DB_INDEX_TYPE = uint32
var CSSM_DB_INDEX_UNIQUE: Int { get }
var CSSM_DB_INDEX_NONUNIQUE: Int { get }
typealias CSSM_DB_INDEXED_DATA_LOCATION = uint32
var CSSM_DB_INDEX_ON_UNKNOWN: Int { get }
var CSSM_DB_INDEX_ON_ATTRIBUTE: Int { get }
var CSSM_DB_INDEX_ON_RECORD: Int { get }
struct cssm_db_index_info {
  var IndexType: CSSM_DB_INDEX_TYPE
  var IndexedDataLocation: CSSM_DB_INDEXED_DATA_LOCATION
  var Info: CSSM_DB_ATTRIBUTE_INFO
  init()
  init(IndexType: CSSM_DB_INDEX_TYPE, IndexedDataLocation: CSSM_DB_INDEXED_DATA_LOCATION, Info: CSSM_DB_ATTRIBUTE_INFO)
}
struct cssm_db_unique_record {
  var RecordLocator: CSSM_DB_INDEX_INFO
  var RecordIdentifier: CSSM_DATA
  init()
  init(RecordLocator: CSSM_DB_INDEX_INFO, RecordIdentifier: CSSM_DATA)
}
struct cssm_db_record_index_info {
  var DataRecordType: CSSM_DB_RECORDTYPE
  var NumberOfIndexes: uint32
  var IndexInfo: CSSM_DB_INDEX_INFO_PTR
  init()
  init(DataRecordType: CSSM_DB_RECORDTYPE, NumberOfIndexes: uint32, IndexInfo: CSSM_DB_INDEX_INFO_PTR)
}
typealias CSSM_DB_ACCESS_TYPE = uint32
typealias CSSM_DB_ACCESS_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_ACCESS_READ: Int { get }
var CSSM_DB_ACCESS_WRITE: Int { get }
var CSSM_DB_ACCESS_PRIVILEGED: Int { get }
typealias CSSM_DB_MODIFY_MODE = uint32
var CSSM_DB_MODIFY_ATTRIBUTE_NONE: Int { get }
var CSSM_DB_MODIFY_ATTRIBUTE_ADD: Int { get }
var CSSM_DB_MODIFY_ATTRIBUTE_DELETE: Int { get }
var CSSM_DB_MODIFY_ATTRIBUTE_REPLACE: Int { get }
struct cssm_dbinfo {
  var NumberOfRecordTypes: uint32
  var DefaultParsingModules: CSSM_DB_PARSING_MODULE_INFO_PTR
  var RecordAttributeNames: CSSM_DB_RECORD_ATTRIBUTE_INFO_PTR
  var RecordIndexes: CSSM_DB_RECORD_INDEX_INFO_PTR
  var IsLocal: CSSM_BOOL
  var AccessPath: UnsafeMutablePointer<Int8>
  var Reserved: UnsafeMutablePointer<Void>
  init()
  init(NumberOfRecordTypes: uint32, DefaultParsingModules: CSSM_DB_PARSING_MODULE_INFO_PTR, RecordAttributeNames: CSSM_DB_RECORD_ATTRIBUTE_INFO_PTR, RecordIndexes: CSSM_DB_RECORD_INDEX_INFO_PTR, IsLocal: CSSM_BOOL, AccessPath: UnsafeMutablePointer<Int8>, Reserved: UnsafeMutablePointer<Void>)
}
typealias CSSM_DB_OPERATOR = uint32
typealias CSSM_DB_OPERATOR_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_EQUAL: Int { get }
var CSSM_DB_NOT_EQUAL: Int { get }
var CSSM_DB_LESS_THAN: Int { get }
var CSSM_DB_GREATER_THAN: Int { get }
var CSSM_DB_CONTAINS: Int { get }
var CSSM_DB_CONTAINS_INITIAL_SUBSTRING: Int { get }
var CSSM_DB_CONTAINS_FINAL_SUBSTRING: Int { get }
typealias CSSM_DB_CONJUNCTIVE = uint32
typealias CSSM_DB_CONJUNCTIVE_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_NONE: Int { get }
var CSSM_DB_AND: Int { get }
var CSSM_DB_OR: Int { get }
struct cssm_selection_predicate {
  var DbOperator: CSSM_DB_OPERATOR
  var Attribute: CSSM_DB_ATTRIBUTE_DATA
  init()
  init(DbOperator: CSSM_DB_OPERATOR, Attribute: CSSM_DB_ATTRIBUTE_DATA)
}
var CSSM_QUERY_TIMELIMIT_NONE: Int { get }
var CSSM_QUERY_SIZELIMIT_NONE: Int { get }
struct cssm_query_limits {
  var TimeLimit: uint32
  var SizeLimit: uint32
  init()
  init(TimeLimit: uint32, SizeLimit: uint32)
}
typealias CSSM_QUERY_FLAGS = uint32
var CSSM_QUERY_RETURN_DATA: Int { get }
struct cssm_query {
  var RecordType: CSSM_DB_RECORDTYPE
  var Conjunctive: CSSM_DB_CONJUNCTIVE
  var NumSelectionPredicates: uint32
  var SelectionPredicate: CSSM_SELECTION_PREDICATE_PTR
  var QueryLimits: CSSM_QUERY_LIMITS
  var QueryFlags: CSSM_QUERY_FLAGS
  init()
  init(RecordType: CSSM_DB_RECORDTYPE, Conjunctive: CSSM_DB_CONJUNCTIVE, NumSelectionPredicates: uint32, SelectionPredicate: CSSM_SELECTION_PREDICATE_PTR, QueryLimits: CSSM_QUERY_LIMITS, QueryFlags: CSSM_QUERY_FLAGS)
}
typealias CSSM_DLTYPE = uint32
typealias CSSM_DLTYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_DL_UNKNOWN: Int { get }
var CSSM_DL_CUSTOM: Int { get }
var CSSM_DL_LDAP: Int { get }
var CSSM_DL_ODBC: Int { get }
var CSSM_DL_PKCS11: Int { get }
var CSSM_DL_FFS: Int { get }
var CSSM_DL_MEMORY: Int { get }
var CSSM_DL_REMOTEDIR: Int { get }
typealias CSSM_DL_CUSTOM_ATTRIBUTES = UnsafeMutablePointer<Void>
typealias CSSM_DL_LDAP_ATTRIBUTES = UnsafeMutablePointer<Void>
typealias CSSM_DL_ODBC_ATTRIBUTES = UnsafeMutablePointer<Void>
typealias CSSM_DL_FFS_ATTRIBUTES = UnsafeMutablePointer<Void>
struct cssm_dl_pkcs11_attributes {
  var DeviceAccessFlags: uint32
  init()
  init(DeviceAccessFlags: uint32)
}
typealias CSSM_DL_PKCS11_ATTRIBUTE = UnsafeMutablePointer<cssm_dl_pkcs11_attributes>
typealias CSSM_DL_PKCS11_ATTRIBUTE_PTR = UnsafeMutablePointer<cssm_dl_pkcs11_attributes>
var CSSM_DB_DATASTORES_UNKNOWN: UInt32 { get }
struct cssm_name_list {
  var NumStrings: uint32
  var String: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>
  init()
  init(NumStrings: uint32, String: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>)
}
typealias CSSM_DB_RETRIEVAL_MODES = uint32
var CSSM_DB_TRANSACTIONAL_MODE: Int { get }
var CSSM_DB_FILESYSTEMSCAN_MODE: Int { get }
struct cssm_db_schema_attribute_info {
  var AttributeId: uint32
  var AttributeName: UnsafeMutablePointer<Int8>
  var AttributeNameID: CSSM_OID
  var DataType: CSSM_DB_ATTRIBUTE_FORMAT
  init()
  init(AttributeId: uint32, AttributeName: UnsafeMutablePointer<Int8>, AttributeNameID: CSSM_OID, DataType: CSSM_DB_ATTRIBUTE_FORMAT)
}
struct cssm_db_schema_index_info {
  var AttributeId: uint32
  var IndexId: uint32
  var IndexType: CSSM_DB_INDEX_TYPE
  var IndexedDataLocation: CSSM_DB_INDEXED_DATA_LOCATION
  init()
  init(AttributeId: uint32, IndexId: uint32, IndexType: CSSM_DB_INDEX_TYPE, IndexedDataLocation: CSSM_DB_INDEXED_DATA_LOCATION)
}
struct cssm_state_funcs {
  var cssm_GetAttachFunctions: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_SERVICE_MASK, UnsafeMutablePointer<UnsafeMutablePointer<Void>>, CSSM_GUID_PTR, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!
  var cssm_ReleaseAttachFunctions: (@convention(c) (CSSM_MODULE_HANDLE) -> CSSM_RETURN)!
  var cssm_GetAppMemoryFunctions: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_UPCALLS_PTR) -> CSSM_RETURN)!
  var cssm_IsFuncCallValid: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_PROC_ADDR!, CSSM_PROC_ADDR!, CSSM_PRIVILEGE, UnsafeMutablePointer<CSSM_PRIVILEGE>, CSSM_BITMASK, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!
  var cssm_DeregisterManagerServices: (@convention(c) (UnsafePointer<CSSM_GUID>) -> CSSM_RETURN)!
  var cssm_DeliverModuleManagerEvent: (@convention(c) (UnsafePointer<CSSM_MANAGER_EVENT_NOTIFICATION>) -> CSSM_RETURN)!
  init()
  init(cssm_GetAttachFunctions: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_SERVICE_MASK, UnsafeMutablePointer<UnsafeMutablePointer<Void>>, CSSM_GUID_PTR, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!, cssm_ReleaseAttachFunctions: (@convention(c) (CSSM_MODULE_HANDLE) -> CSSM_RETURN)!, cssm_GetAppMemoryFunctions: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_UPCALLS_PTR) -> CSSM_RETURN)!, cssm_IsFuncCallValid: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_PROC_ADDR!, CSSM_PROC_ADDR!, CSSM_PRIVILEGE, UnsafeMutablePointer<CSSM_PRIVILEGE>, CSSM_BITMASK, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!, cssm_DeregisterManagerServices: (@convention(c) (UnsafePointer<CSSM_GUID>) -> CSSM_RETURN)!, cssm_DeliverModuleManagerEvent: (@convention(c) (UnsafePointer<CSSM_MANAGER_EVENT_NOTIFICATION>) -> CSSM_RETURN)!)
}
struct cssm_manager_registration_info {
  var Initialize: (@convention(c) (uint32, uint32) -> CSSM_RETURN)!
  var Terminate: (@convention(c) () -> CSSM_RETURN)!
  var RegisterDispatchTable: (@convention(c) (CSSM_STATE_FUNCS_PTR) -> CSSM_RETURN)!
  var DeregisterDispatchTable: (@convention(c) () -> CSSM_RETURN)!
  var EventNotifyManager: (@convention(c) (UnsafePointer<CSSM_MANAGER_EVENT_NOTIFICATION>) -> CSSM_RETURN)!
  var RefreshFunctionTable: (@convention(c) (CSSM_FUNC_NAME_ADDR_PTR, uint32) -> CSSM_RETURN)!
  init()
  init(Initialize: (@convention(c) (uint32, uint32) -> CSSM_RETURN)!, Terminate: (@convention(c) () -> CSSM_RETURN)!, RegisterDispatchTable: (@convention(c) (CSSM_STATE_FUNCS_PTR) -> CSSM_RETURN)!, DeregisterDispatchTable: (@convention(c) () -> CSSM_RETURN)!, EventNotifyManager: (@convention(c) (UnsafePointer<CSSM_MANAGER_EVENT_NOTIFICATION>) -> CSSM_RETURN)!, RefreshFunctionTable: (@convention(c) (CSSM_FUNC_NAME_ADDR_PTR, uint32) -> CSSM_RETURN)!)
}
var CSSM_HINT_NONE: Int { get }
var CSSM_HINT_ADDRESS_APP: Int { get }
var CSSM_HINT_ADDRESS_SP: Int { get }
var CSSM_HINT_CALLBACK: Int32 { get }
typealias CSSM_MANAGER_EVENT_TYPES = uint32
var CSSM_MANAGER_SERVICE_REQUEST: Int32 { get }
var CSSM_MANAGER_REPLY: Int32 { get }
struct cssm_manager_event_notification {
  var DestinationModuleManagerType: CSSM_SERVICE_MASK
  var SourceModuleManagerType: CSSM_SERVICE_MASK
  var Event: CSSM_MANAGER_EVENT_TYPES
  var EventId: uint32
  var EventData: CSSM_DATA
  init()
  init(DestinationModuleManagerType: CSSM_SERVICE_MASK, SourceModuleManagerType: CSSM_SERVICE_MASK, Event: CSSM_MANAGER_EVENT_TYPES, EventId: uint32, EventData: CSSM_DATA)
}
typealias MDS_HANDLE = CSSM_DL_HANDLE
typealias MDS_DB_HANDLE = CSSM_DL_DB_HANDLE
struct mds_funcs {
  var DbOpen: (@convention(c) (MDS_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!
  var DbClose: (@convention(c) (MDS_DB_HANDLE) -> CSSM_RETURN)!
  var GetDbNames: (@convention(c) (MDS_HANDLE, UnsafeMutablePointer<CSSM_NAME_LIST_PTR>) -> CSSM_RETURN)!
  var GetDbNameFromHandle: (@convention(c) (MDS_DB_HANDLE, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> CSSM_RETURN)!
  var FreeNameList: (@convention(c) (MDS_HANDLE, CSSM_NAME_LIST_PTR) -> CSSM_RETURN)!
  var DataInsert: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataDelete: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>) -> CSSM_RETURN)!
  var DataModify: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, CSSM_DB_UNIQUE_RECORD_PTR, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DB_MODIFY_MODE) -> CSSM_RETURN)!
  var DataGetFirst: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_QUERY>, CSSM_HANDLE_PTR, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataGetNext: (@convention(c) (MDS_DB_HANDLE, CSSM_HANDLE, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataAbortQuery: (@convention(c) (MDS_DB_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var DataGetFromUniqueRecordId: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var FreeUniqueRecord: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_UNIQUE_RECORD_PTR) -> CSSM_RETURN)!
  var CreateRelation: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<Int8>, uint32, UnsafePointer<CSSM_DB_SCHEMA_ATTRIBUTE_INFO>, uint32, UnsafePointer<CSSM_DB_SCHEMA_INDEX_INFO>) -> CSSM_RETURN)!
  var DestroyRelation: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE) -> CSSM_RETURN)!
  init()
  init(DbOpen: (@convention(c) (MDS_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!, DbClose: (@convention(c) (MDS_DB_HANDLE) -> CSSM_RETURN)!, GetDbNames: (@convention(c) (MDS_HANDLE, UnsafeMutablePointer<CSSM_NAME_LIST_PTR>) -> CSSM_RETURN)!, GetDbNameFromHandle: (@convention(c) (MDS_DB_HANDLE, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> CSSM_RETURN)!, FreeNameList: (@convention(c) (MDS_HANDLE, CSSM_NAME_LIST_PTR) -> CSSM_RETURN)!, DataInsert: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataDelete: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>) -> CSSM_RETURN)!, DataModify: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, CSSM_DB_UNIQUE_RECORD_PTR, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DB_MODIFY_MODE) -> CSSM_RETURN)!, DataGetFirst: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_QUERY>, CSSM_HANDLE_PTR, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataGetNext: (@convention(c) (MDS_DB_HANDLE, CSSM_HANDLE, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataAbortQuery: (@convention(c) (MDS_DB_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, DataGetFromUniqueRecordId: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, FreeUniqueRecord: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_UNIQUE_RECORD_PTR) -> CSSM_RETURN)!, CreateRelation: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<Int8>, uint32, UnsafePointer<CSSM_DB_SCHEMA_ATTRIBUTE_INFO>, uint32, UnsafePointer<CSSM_DB_SCHEMA_INDEX_INFO>) -> CSSM_RETURN)!, DestroyRelation: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE) -> CSSM_RETURN)!)
}
var MDS_OBJECT_DIRECTORY_NAME: String { get }
var MDS_CDSA_DIRECTORY_NAME: String { get }
var CSSM_DB_RELATIONID_MDS_START: Int32 { get }
var CSSM_DB_RELATIONID_MDS_END: Int32 { get }
var MDS_OBJECT_RECORDTYPE: Int32 { get }
var MDS_CDSA_SCHEMA_START: Int32 { get }
var CSSM_DB_ATTRIBUTE_MDS_START: Int32 { get }
var CSSM_DB_ATTRIBUTE_MDS_END: Int32 { get }
var MDS_OBJECT_NUM_RELATIONS: Int32 { get }
var MDS_OBJECT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_NUM_RELATIONS: Int32 { get }
var MDS_CDSADIR_CSSM_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_EMM_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_COMMON_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CSP_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CSP_CAPABILITY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CSP_ENCAPSULATED_PRODUCT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CSP_SC_INFO_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_DL_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_DL_ENCAPSULATED_PRODUCT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CL_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CL_ENCAPSULATED_PRODUCT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_TP_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_TP_OIDS_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_TP_ENCAPSULATED_PRODUCT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_EMM_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_AC_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_SCHEMA_RELATONS_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_SCHEMA_ATTRIBUTES_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_SCHEMA_INDEXES_NUM_ATTRIBUTES: Int32 { get }
typealias DERByte = UInt8
typealias DERSize = Int
struct DERItem {
  var data: UnsafeMutablePointer<DERByte>
  var length: DERSize
  init()
  init(data: UnsafeMutablePointer<DERByte>, length: DERSize)
}
let oidRsa: DERItem
let oidMd2Rsa: DERItem
let oidMd4Rsa: DERItem
let oidMd5Rsa: DERItem
let oidSha1Rsa: DERItem
let oidSha256Rsa: DERItem
let oidSha384Rsa: DERItem
let oidSha512Rsa: DERItem
let oidSha224Rsa: DERItem
let oidEcPubKey: DERItem
let oidSha1Ecdsa: DERItem
let oidSha224Ecdsa: DERItem
let oidSha256Ecdsa: DERItem
let oidSha384Ecdsa: DERItem
let oidSha512Ecdsa: DERItem
let oidSha1Dsa: DERItem
let oidMd2: DERItem
let oidMd4: DERItem
let oidMd5: DERItem
let oidSha1: DERItem
let oidSha1DsaOIW: DERItem
let oidSha1DsaCommonOIW: DERItem
let oidSha1RsaOIW: DERItem
let oidSha256: DERItem
let oidSha384: DERItem
let oidSha512: DERItem
let oidSha224: DERItem
let oidFee: DERItem
let oidMd5Fee: DERItem
let oidSha1Fee: DERItem
let oidSubjectKeyIdentifier: DERItem
let oidKeyUsage: DERItem
let oidPrivateKeyUsagePeriod: DERItem
let oidSubjectAltName: DERItem
let oidIssuerAltName: DERItem
let oidBasicConstraints: DERItem
let oidNameConstraints: DERItem
let oidCrlDistributionPoints: DERItem
let oidCertificatePolicies: DERItem
let oidAnyPolicy: DERItem
let oidPolicyMappings: DERItem
let oidAuthorityKeyIdentifier: DERItem
let oidPolicyConstraints: DERItem
let oidExtendedKeyUsage: DERItem
let oidAnyExtendedKeyUsage: DERItem
let oidInhibitAnyPolicy: DERItem
let oidAuthorityInfoAccess: DERItem
let oidSubjectInfoAccess: DERItem
let oidAdOCSP: DERItem
let oidAdCAIssuer: DERItem
let oidNetscapeCertType: DERItem
let oidEntrustVersInfo: DERItem
let oidMSNTPrincipalName: DERItem
let oidQtCps: DERItem
let oidQtUNotice: DERItem
let oidCommonName: DERItem
let oidCountryName: DERItem
let oidLocalityName: DERItem
let oidStateOrProvinceName: DERItem
let oidOrganizationName: DERItem
let oidOrganizationalUnitName: DERItem
let oidDescription: DERItem
let oidEmailAddress: DERItem
let oidFriendlyName: DERItem
let oidLocalKeyId: DERItem
let oidExtendedKeyUsageServerAuth: DERItem
let oidExtendedKeyUsageClientAuth: DERItem
let oidExtendedKeyUsageCodeSigning: DERItem
let oidExtendedKeyUsageEmailProtection: DERItem
let oidExtendedKeyUsageTimeStamping: DERItem
let oidExtendedKeyUsageOCSPSigning: DERItem
let oidExtendedKeyUsageIPSec: DERItem
let oidExtendedKeyUsageMicrosoftSGC: DERItem
let oidExtendedKeyUsageNetscapeSGC: DERItem
let oidGoogleEmbeddedSignedCertificateTimestamp: DERItem
let oidGoogleOCSPSignedCertificateTimestamp: DERItem
var INTEL_LENGTH: Int32 { get }
var OID_ISO_CCITT_DIR_SERVICE: Int32 { get }
var OID_DS: Int32 { get }
var OID_DS_LENGTH: Int32 { get }
var OID_ISO_STANDARD: Int32 { get }
var OID_ISO_MEMBER: Int32 { get }
var OID_ISO_IDENTIFIED_ORG: Int32 { get }
var OID_ITU_RFCDATA_MEMBER_LENGTH: Int32 { get }
var OID_ITU_RFCDATA: Int32 { get }
var OID_ISO_MEMBER_LENGTH: Int32 { get }
var OID_ANSI_X9_62_LEN: Int32 { get }
var OID_PKIX_LENGTH: Int32 { get }
var OID_ETSI_LENGTH: Int32 { get }
var OID_ETSI_QCS_LENGTH: Int32 { get }
var OID_OIW_LENGTH: Int32 { get }
var OID_NIST_HASHALG_LENGTH: Int32 { get }
var OID_KERBv5_LEN: Int32 { get }
var OID_CERTICOM_LEN: Int32 { get }
var NETSCAPE_BASE_OID_LEN: Int32 { get }
var INTEL_X509_C_DATATYPE: Int32 { get }
var INTEL_X509_LDAPSTRING_DATATYPE: Int32 { get }
var CE_NCT_SSL_Client: Int32 { get }
var CE_NCT_SSL_Server: Int32 { get }
var CE_NCT_SMIME: Int32 { get }
var CE_NCT_ObjSign: Int32 { get }
var CE_NCT_Reserved: Int32 { get }
var CE_NCT_SSL_CA: Int32 { get }
var CE_NCT_SMIME_CA: Int32 { get }
var CE_NCT_ObjSignCA: Int32 { get }
typealias CSSM_BER_TAG = uint8
var BER_TAG_UNKNOWN: Int32 { get }
var BER_TAG_BOOLEAN: Int32 { get }
var BER_TAG_INTEGER: Int32 { get }
var BER_TAG_BIT_STRING: Int32 { get }
var BER_TAG_OCTET_STRING: Int32 { get }
var BER_TAG_NULL: Int32 { get }
var BER_TAG_OID: Int32 { get }
var BER_TAG_OBJECT_DESCRIPTOR: Int32 { get }
var BER_TAG_EXTERNAL: Int32 { get }
var BER_TAG_REAL: Int32 { get }
var BER_TAG_ENUMERATED: Int32 { get }
var BER_TAG_PKIX_UTF8_STRING: Int32 { get }
var BER_TAG_SEQUENCE: Int32 { get }
var BER_TAG_SET: Int32 { get }
var BER_TAG_NUMERIC_STRING: Int32 { get }
var BER_TAG_PRINTABLE_STRING: Int32 { get }
var BER_TAG_T61_STRING: Int32 { get }
var BER_TAG_TELETEX_STRING: Int32 { get }
var BER_TAG_VIDEOTEX_STRING: Int32 { get }
var BER_TAG_IA5_STRING: Int32 { get }
var BER_TAG_UTC_TIME: Int32 { get }
var BER_TAG_GENERALIZED_TIME: Int32 { get }
var BER_TAG_GRAPHIC_STRING: Int32 { get }
var BER_TAG_ISO646_STRING: Int32 { get }
var BER_TAG_GENERAL_STRING: Int32 { get }
var BER_TAG_VISIBLE_STRING: Int32 { get }
var BER_TAG_PKIX_UNIVERSAL_STRING: Int32 { get }
var BER_TAG_PKIX_BMP_STRING: Int32 { get }
struct cssm_x509_algorithm_identifier {
  var algorithm: CSSM_OID
  var parameters: CSSM_DATA
  init()
  init(algorithm: CSSM_OID, parameters: CSSM_DATA)
}
struct cssm_x509_type_value_pair {
  var type: CSSM_OID
  var valueType: CSSM_BER_TAG
  var value: CSSM_DATA
  init()
  init(type: CSSM_OID, valueType: CSSM_BER_TAG, value: CSSM_DATA)
}
struct cssm_x509_rdn {
  var numberOfPairs: uint32
  var AttributeTypeAndValue: CSSM_X509_TYPE_VALUE_PAIR_PTR
  init()
  init(numberOfPairs: uint32, AttributeTypeAndValue: CSSM_X509_TYPE_VALUE_PAIR_PTR)
}
struct cssm_x509_name {
  var numberOfRDNs: uint32
  var RelativeDistinguishedName: CSSM_X509_RDN_PTR
  init()
  init(numberOfRDNs: uint32, RelativeDistinguishedName: CSSM_X509_RDN_PTR)
}
struct cssm_x509_subject_public_key_info {
  var algorithm: CSSM_X509_ALGORITHM_IDENTIFIER
  var subjectPublicKey: CSSM_DATA
  init()
  init(algorithm: CSSM_X509_ALGORITHM_IDENTIFIER, subjectPublicKey: CSSM_DATA)
}
struct cssm_x509_time {
  var timeType: CSSM_BER_TAG
  var time: CSSM_DATA
  init()
  init(timeType: CSSM_BER_TAG, time: CSSM_DATA)
}
struct x509_validity {
  var notBefore: CSSM_X509_TIME
  var notAfter: CSSM_X509_TIME
  init()
  init(notBefore: CSSM_X509_TIME, notAfter: CSSM_X509_TIME)
}
typealias CSSM_X509_OPTION = CSSM_BOOL
struct cssm_x509ext_basicConstraints {
  var cA: CSSM_BOOL
  var pathLenConstraintPresent: CSSM_X509_OPTION
  var pathLenConstraint: uint32
  init()
  init(cA: CSSM_BOOL, pathLenConstraintPresent: CSSM_X509_OPTION, pathLenConstraint: uint32)
}
struct extension_data_format : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CSSM_X509_DATAFORMAT_ENCODED: extension_data_format { get }
var CSSM_X509_DATAFORMAT_PARSED: extension_data_format { get }
var CSSM_X509_DATAFORMAT_PAIR: extension_data_format { get }
typealias CSSM_X509EXT_DATA_FORMAT = extension_data_format
struct cssm_x509_extensionTagAndValue {
  var type: CSSM_BER_TAG
  var value: CSSM_DATA
  init()
  init(type: CSSM_BER_TAG, value: CSSM_DATA)
}
struct cssm_x509ext_pair {
  var tagAndValue: CSSM_X509EXT_TAGandVALUE
  var parsedValue: UnsafeMutablePointer<Void>
  init()
  init(tagAndValue: CSSM_X509EXT_TAGandVALUE, parsedValue: UnsafeMutablePointer<Void>)
}
struct cssm_x509_extension {
  var extnId: CSSM_OID
  var critical: CSSM_BOOL
  var format: CSSM_X509EXT_DATA_FORMAT
  var value: cssm_x509ext_value
  var BERvalue: CSSM_DATA
  init()
  init(extnId: CSSM_OID, critical: CSSM_BOOL, format: CSSM_X509EXT_DATA_FORMAT, value: cssm_x509ext_value, BERvalue: CSSM_DATA)
}
struct cssm_x509ext_value {
  var tagAndValue: UnsafeMutablePointer<CSSM_X509EXT_TAGandVALUE>
  var parsedValue: UnsafeMutablePointer<Void>
  var valuePair: UnsafeMutablePointer<CSSM_X509EXT_PAIR>
  init(tagAndValue: UnsafeMutablePointer<CSSM_X509EXT_TAGandVALUE>)
  init(parsedValue: UnsafeMutablePointer<Void>)
  init(valuePair: UnsafeMutablePointer<CSSM_X509EXT_PAIR>)
  init()
}
struct cssm_x509_extensions {
  var numberOfExtensions: uint32
  var extensions: CSSM_X509_EXTENSION_PTR
  init()
  init(numberOfExtensions: uint32, extensions: CSSM_X509_EXTENSION_PTR)
}
struct cssm_x509_tbs_certificate {
  var version: CSSM_DATA
  var serialNumber: CSSM_DATA
  var signature: CSSM_X509_ALGORITHM_IDENTIFIER
  var issuer: CSSM_X509_NAME
  var validity: CSSM_X509_VALIDITY
  var subject: CSSM_X509_NAME
  var subjectPublicKeyInfo: CSSM_X509_SUBJECT_PUBLIC_KEY_INFO
  var issuerUniqueIdentifier: CSSM_DATA
  var subjectUniqueIdentifier: CSSM_DATA
  var extensions: CSSM_X509_EXTENSIONS
  init()
  init(version: CSSM_DATA, serialNumber: CSSM_DATA, signature: CSSM_X509_ALGORITHM_IDENTIFIER, issuer: CSSM_X509_NAME, validity: CSSM_X509_VALIDITY, subject: CSSM_X509_NAME, subjectPublicKeyInfo: CSSM_X509_SUBJECT_PUBLIC_KEY_INFO, issuerUniqueIdentifier: CSSM_DATA, subjectUniqueIdentifier: CSSM_DATA, extensions: CSSM_X509_EXTENSIONS)
}
struct cssm_x509_signature {
  var algorithmIdentifier: CSSM_X509_ALGORITHM_IDENTIFIER
  var encrypted: CSSM_DATA
  init()
  init(algorithmIdentifier: CSSM_X509_ALGORITHM_IDENTIFIER, encrypted: CSSM_DATA)
}
struct cssm_x509_signed_certificate {
  var certificate: CSSM_X509_TBS_CERTIFICATE
  var signature: CSSM_X509_SIGNATURE
  init()
  init(certificate: CSSM_X509_TBS_CERTIFICATE, signature: CSSM_X509_SIGNATURE)
}
struct cssm_x509ext_policyQualifierInfo {
  var policyQualifierId: CSSM_OID
  var value: CSSM_DATA
  init()
  init(policyQualifierId: CSSM_OID, value: CSSM_DATA)
}
struct cssm_x509ext_policyQualifiers {
  var numberOfPolicyQualifiers: uint32
  var policyQualifier: UnsafeMutablePointer<CSSM_X509EXT_POLICYQUALIFIERINFO>
  init()
  init(numberOfPolicyQualifiers: uint32, policyQualifier: UnsafeMutablePointer<CSSM_X509EXT_POLICYQUALIFIERINFO>)
}
struct cssm_x509ext_policyInfo {
  var policyIdentifier: CSSM_OID
  var policyQualifiers: CSSM_X509EXT_POLICYQUALIFIERS
  init()
  init(policyIdentifier: CSSM_OID, policyQualifiers: CSSM_X509EXT_POLICYQUALIFIERS)
}
struct cssm_x509_revoked_cert_entry {
  var certificateSerialNumber: CSSM_DATA
  var revocationDate: CSSM_X509_TIME
  var extensions: CSSM_X509_EXTENSIONS
  init()
  init(certificateSerialNumber: CSSM_DATA, revocationDate: CSSM_X509_TIME, extensions: CSSM_X509_EXTENSIONS)
}
struct cssm_x509_revoked_cert_list {
  var numberOfRevokedCertEntries: uint32
  var revokedCertEntry: CSSM_X509_REVOKED_CERT_ENTRY_PTR
  init()
  init(numberOfRevokedCertEntries: uint32, revokedCertEntry: CSSM_X509_REVOKED_CERT_ENTRY_PTR)
}
struct cssm_x509_tbs_certlist {
  var version: CSSM_DATA
  var signature: CSSM_X509_ALGORITHM_IDENTIFIER
  var issuer: CSSM_X509_NAME
  var thisUpdate: CSSM_X509_TIME
  var nextUpdate: CSSM_X509_TIME
  var revokedCertificates: CSSM_X509_REVOKED_CERT_LIST_PTR
  var extensions: CSSM_X509_EXTENSIONS
  init()
  init(version: CSSM_DATA, signature: CSSM_X509_ALGORITHM_IDENTIFIER, issuer: CSSM_X509_NAME, thisUpdate: CSSM_X509_TIME, nextUpdate: CSSM_X509_TIME, revokedCertificates: CSSM_X509_REVOKED_CERT_LIST_PTR, extensions: CSSM_X509_EXTENSIONS)
}
struct cssm_x509_signed_crl {
  var tbsCertList: CSSM_X509_TBS_CERTLIST
  var signature: CSSM_X509_SIGNATURE
  init()
  init(tbsCertList: CSSM_X509_TBS_CERTLIST, signature: CSSM_X509_SIGNATURE)
}
