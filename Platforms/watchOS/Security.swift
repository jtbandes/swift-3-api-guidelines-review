
func SecAccessControlGetTypeID() -> CFTypeID
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
  static var UserPresence: SecAccessControlCreateFlags { get }
  static var TouchIDAny: SecAccessControlCreateFlags { get }
  static var TouchIDCurrentSet: SecAccessControlCreateFlags { get }
  static var DevicePasscode: SecAccessControlCreateFlags { get }
  static var Or: SecAccessControlCreateFlags { get }
  static var And: SecAccessControlCreateFlags { get }
  static var PrivateKeyUsage: SecAccessControlCreateFlags { get }
  static var ApplicationPassword: SecAccessControlCreateFlags { get }
}
func SecAccessControlCreateWithFlags(allocator: CFAllocator?, _ protection: AnyObject, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?
class SecCertificate {
}
typealias SecCertificateRef = SecCertificate
class SecIdentity {
}
typealias SecIdentityRef = SecIdentity
typealias SecKeyRef = SecKey
class SecKey {
}
typealias SecPolicyRef = SecPolicy
class SecPolicy {
}
class SecAccessControl {
}
typealias SecAccessControlRef = SecAccessControl
var errSecSuccess: OSStatus { get }
var errSecUnimplemented: OSStatus { get }
var errSecIO: OSStatus { get }
var errSecOpWr: OSStatus { get }
var errSecParam: OSStatus { get }
var errSecAllocate: OSStatus { get }
var errSecUserCanceled: OSStatus { get }
var errSecBadReq: OSStatus { get }
var errSecInternalComponent: OSStatus { get }
var errSecNotAvailable: OSStatus { get }
var errSecDuplicateItem: OSStatus { get }
var errSecItemNotFound: OSStatus { get }
var errSecInteractionNotAllowed: OSStatus { get }
var errSecDecode: OSStatus { get }
var errSecAuthFailed: OSStatus { get }
func SecCertificateGetTypeID() -> CFTypeID
func SecCertificateCreateWithData(allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
func SecCertificateCopyData(certificate: SecCertificate) -> CFData
func SecCertificateCopySubjectSummary(certificate: SecCertificate) -> CFString
func SecIdentityGetTypeID() -> CFTypeID
func SecIdentityCopyCertificate(identityRef: SecIdentity, _ certificateRef: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
func SecIdentityCopyPrivateKey(identityRef: SecIdentity, _ privateKeyRef: UnsafeMutablePointer<SecKey?>) -> OSStatus
let kSecImportExportPassphrase: CFString
let kSecImportItemLabel: CFString
let kSecImportItemKeyID: CFString
let kSecImportItemTrust: CFString
let kSecImportItemCertChain: CFString
let kSecImportItemIdentity: CFString
func SecPKCS12Import(pkcs12_data: CFData, _ options: CFDictionary, _ items: UnsafeMutablePointer<CFArray?>) -> OSStatus
let kSecClass: CFString
let kSecClassGenericPassword: CFString
let kSecClassInternetPassword: CFString
let kSecClassCertificate: CFString
let kSecClassKey: CFString
let kSecClassIdentity: CFString
let kSecAttrAccessible: CFString
let kSecAttrAccessControl: CFString
let kSecAttrAccessGroup: CFString
let kSecAttrSynchronizable: CFString
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
let kSecAttrApplicationTag: CFString
let kSecAttrKeyType: CFString
let kSecAttrKeySizeInBits: CFString
let kSecAttrEffectiveKeySize: CFString
let kSecAttrCanEncrypt: CFString
let kSecAttrCanDecrypt: CFString
let kSecAttrCanDerive: CFString
let kSecAttrCanSign: CFString
let kSecAttrCanVerify: CFString
let kSecAttrCanWrap: CFString
let kSecAttrCanUnwrap: CFString
let kSecAttrSyncViewHint: CFString
let kSecAttrTokenID: CFString
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
let kSecAttrKeyTypeEC: CFString
let kSecAttrSynchronizableAny: CFString
let kSecMatchPolicy: CFString
let kSecMatchItemList: CFString
let kSecMatchSearchList: CFString
let kSecMatchIssuers: CFString
let kSecMatchEmailAddressIfPresent: CFString
let kSecMatchSubjectContains: CFString
let kSecMatchCaseInsensitive: CFString
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
let kSecUseOperationPrompt: CFString
let kSecUseNoAuthenticationUI: CFString
let kSecUseAuthenticationUI: CFString
let kSecUseAuthenticationContext: CFString
let kSecUseAuthenticationUIAllow: CFString
let kSecUseAuthenticationUIFail: CFString
let kSecUseAuthenticationUISkip: CFString
let kSecAttrTokenIDSecureEnclave: CFString
func SecItemCopyMatching(query: CFDictionary, _ result: UnsafeMutablePointer<AnyObject?>) -> OSStatus
func SecItemAdd(attributes: CFDictionary, _ result: UnsafeMutablePointer<AnyObject?>) -> OSStatus
func SecItemUpdate(query: CFDictionary, _ attributesToUpdate: CFDictionary) -> OSStatus
func SecItemDelete(query: CFDictionary) -> OSStatus
struct SecPadding : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var None: SecPadding { get }
  static var PKCS1: SecPadding { get }
  static var OAEP: SecPadding { get }
  static var SigRaw: SecPadding { get }
  static var PKCS1MD2: SecPadding { get }
  static var PKCS1MD5: SecPadding { get }
  static var PKCS1SHA1: SecPadding { get }
  static var PKCS1SHA224: SecPadding { get }
  static var PKCS1SHA256: SecPadding { get }
  static var PKCS1SHA384: SecPadding { get }
  static var PKCS1SHA512: SecPadding { get }
}
func SecKeyGetTypeID() -> CFTypeID
let kSecPrivateKeyAttrs: CFString
let kSecPublicKeyAttrs: CFString
func SecKeyGeneratePair(parameters: CFDictionary, _ publicKey: UnsafeMutablePointer<SecKey?>, _ privateKey: UnsafeMutablePointer<SecKey?>) -> OSStatus
func SecKeyRawSign(key: SecKey, _ padding: SecPadding, _ dataToSign: UnsafePointer<UInt8>, _ dataToSignLen: Int, _ sig: UnsafeMutablePointer<UInt8>, _ sigLen: UnsafeMutablePointer<Int>) -> OSStatus
func SecKeyRawVerify(key: SecKey, _ padding: SecPadding, _ signedData: UnsafePointer<UInt8>, _ signedDataLen: Int, _ sig: UnsafePointer<UInt8>, _ sigLen: Int) -> OSStatus
func SecKeyEncrypt(key: SecKey, _ padding: SecPadding, _ plainText: UnsafePointer<UInt8>, _ plainTextLen: Int, _ cipherText: UnsafeMutablePointer<UInt8>, _ cipherTextLen: UnsafeMutablePointer<Int>) -> OSStatus
func SecKeyDecrypt(key: SecKey, _ padding: SecPadding, _ cipherText: UnsafePointer<UInt8>, _ cipherTextLen: Int, _ plainText: UnsafeMutablePointer<UInt8>, _ plainTextLen: UnsafeMutablePointer<Int>) -> OSStatus
func SecKeyGetBlockSize(key: SecKey) -> Int
let kSecPolicyAppleX509Basic: CFString
let kSecPolicyAppleSSL: CFString
let kSecPolicyAppleSMIME: CFString
let kSecPolicyAppleEAP: CFString
let kSecPolicyAppleIPsec: CFString
let kSecPolicyAppleCodeSigning: CFString
let kSecPolicyMacAppStoreReceipt: CFString
let kSecPolicyAppleIDValidation: CFString
let kSecPolicyAppleTimeStamping: CFString
let kSecPolicyAppleRevocation: CFString
let kSecPolicyApplePayIssuerEncryption: CFString
let kSecPolicyOid: CFString
let kSecPolicyName: CFString
let kSecPolicyClient: CFString
let kSecPolicyRevocationFlags: CFString
func SecPolicyGetTypeID() -> CFTypeID
func SecPolicyCopyProperties(policyRef: SecPolicy) -> CFDictionary
func SecPolicyCreateBasicX509() -> SecPolicy
func SecPolicyCreateSSL(server: Bool, _ hostname: CFString?) -> SecPolicy
var kSecRevocationOCSPMethod: CFOptionFlags { get }
var kSecRevocationCRLMethod: CFOptionFlags { get }
var kSecRevocationPreferCRL: CFOptionFlags { get }
var kSecRevocationRequirePositiveResponse: CFOptionFlags { get }
var kSecRevocationNetworkAccessDisabled: CFOptionFlags { get }
var kSecRevocationUseAnyAvailableMethod: CFOptionFlags { get }
func SecPolicyCreateRevocation(revocationFlags: CFOptionFlags) -> SecPolicy
func SecPolicyCreateWithProperties(policyIdentifier: AnyObject, _ properties: CFDictionary?) -> SecPolicy
typealias SecRandomRef = COpaquePointer
let kSecRandomDefault: SecRandomRef
func SecRandomCopyBytes(rnd: SecRandomRef, _ count: Int, _ bytes: UnsafeMutablePointer<UInt8>) -> Int32
typealias SecTrustResultType = UInt32
var kSecTrustResultInvalid: Int { get }
var kSecTrustResultProceed: Int { get }
var kSecTrustResultConfirm: Int { get }
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
let kSecTrustCertificateTransparency: CFString
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
