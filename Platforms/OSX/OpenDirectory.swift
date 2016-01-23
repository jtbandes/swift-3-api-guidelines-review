
let ODFrameworkErrorDomain: String
class ODContext {
}
typealias ODContextRef = ODContext
class ODNode {
}
typealias ODNodeRef = ODNode
class ODQuery {
}
typealias ODQueryRef = ODQuery
class ODRecord {
}
typealias ODRecordRef = ODRecord
class ODSession {
}
typealias ODSessionRef = ODSession
let kODErrorDomainFramework: CFString!
func ODContextGetTypeID() -> CFTypeID
func ODNodeGetTypeID() -> CFTypeID
func ODNodeCreateWithNodeType(allocator: CFAllocator!, _ session: ODSession!, _ nodeType: ODNodeType, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODNode>!
func ODNodeCreateWithName(allocator: CFAllocator!, _ session: ODSession!, _ nodeName: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODNode>!
func ODNodeCreateCopy(allocator: CFAllocator!, _ node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODNode>!
func ODNodeCopySubnodeNames(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!
func ODNodeCopyUnreachableSubnodeNames(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!
func ODNodeGetName(node: ODNode!) -> Unmanaged<CFString>!
func ODNodeCopyDetails(node: ODNode!, _ keys: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
func ODNodeCopySupportedRecordTypes(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!
func ODNodeCopySupportedAttributes(node: ODNode!, _ recordType: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!
func ODNodeSetCredentials(node: ODNode!, _ recordType: String!, _ recordName: CFString!, _ password: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODNodeSetCredentialsExtended(node: ODNode!, _ recordType: String!, _ authType: String!, _ authItems: CFArray!, _ outAuthItems: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ outContext: UnsafeMutablePointer<Unmanaged<ODContext>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODNodeCreateRecord(node: ODNode!, _ recordType: String!, _ recordName: CFString!, _ attributeDict: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODRecord>!
func ODNodeCopyRecord(node: ODNode!, _ recordType: String!, _ recordName: CFString!, _ attributes: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODRecord>!
func ODNodeCustomCall(node: ODNode!, _ customCode: CFIndex, _ data: CFData!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData!
func ODNodeCustomFunction(node: ODNode!, _ function: CFString!, _ payload: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> AnyObject!
func ODNodeCopyPolicies(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
func ODNodeCopySupportedPolicies(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
func ODNodeSetPolicies(node: ODNode!, _ policies: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODNodeSetPolicy(node: ODNode!, _ policyType: ODPolicyType!, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODNodeRemovePolicy(node: ODNode!, _ policyType: ODPolicyType!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODNodeAddAccountPolicy(node: ODNode!, _ policy: CFDictionary!, _ category: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODNodeRemoveAccountPolicy(node: ODNode!, _ policy: CFDictionary!, _ category: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODNodeSetAccountPolicies(node: ODNode!, _ policies: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODNodeCopyAccountPolicies(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary!
func ODNodePasswordContentCheck(node: ODNode!, _ password: CFString!, _ recordName: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
typealias ODQueryCallback = @convention(c) (ODQuery!, CFArray!, CFError!, UnsafeMutablePointer<Void>) -> Void
func ODQueryGetTypeID() -> CFTypeID
func ODQueryCreateWithNode(allocator: CFAllocator!, _ node: ODNode!, _ recordTypeOrList: AnyObject!, _ attribute: String!, _ matchType: ODMatchType, _ queryValueOrList: AnyObject!, _ returnAttributeOrList: AnyObject!, _ maxResults: CFIndex, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODQuery>!
func ODQueryCreateWithNodeType(allocator: CFAllocator!, _ nodeType: ODNodeType, _ recordTypeOrList: AnyObject!, _ attribute: String!, _ matchType: ODMatchType, _ queryValueOrList: AnyObject!, _ returnAttributeOrList: AnyObject!, _ maxResults: CFIndex, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODQuery>!
func ODQueryCopyResults(query: ODQuery!, _ allowPartialResults: Bool, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!
func ODQuerySynchronize(query: ODQuery!)
func ODQuerySetCallback(query: ODQuery!, _ callback: ODQueryCallback!, _ userInfo: UnsafeMutablePointer<Void>)
func ODQueryScheduleWithRunLoop(query: ODQuery!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func ODQueryUnscheduleFromRunLoop(query: ODQuery!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func ODQuerySetDispatchQueue(query: ODQuery!, _ queue: dispatch_queue_t!)
func ODRecordGetTypeID() -> CFTypeID
func ODRecordSetNodeCredentials(record: ODRecord!, _ username: CFString!, _ password: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordSetNodeCredentialsExtended(record: ODRecord!, _ recordType: String!, _ authType: String!, _ authItems: CFArray!, _ outAuthItems: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ outContext: UnsafeMutablePointer<Unmanaged<ODContext>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordVerifyPassword(record: ODRecord!, _ password: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordVerifyPasswordExtended(record: ODRecord!, _ authType: String!, _ authItems: CFArray!, _ outAuthItems: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ outContext: UnsafeMutablePointer<Unmanaged<ODContext>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordChangePassword(record: ODRecord!, _ oldPassword: CFString!, _ newPassword: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordGetRecordType(record: ODRecord!) -> Unmanaged<CFString>!
func ODRecordGetRecordName(record: ODRecord!) -> Unmanaged<CFString>!
func ODRecordCopyValues(record: ODRecord!, _ attribute: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!
func ODRecordSetValue(record: ODRecord!, _ attribute: String!, _ valueOrValues: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordAddValue(record: ODRecord!, _ attribute: String!, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordRemoveValue(record: ODRecord!, _ attribute: String!, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordCopyDetails(record: ODRecord!, _ attributes: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
func ODRecordSynchronize(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordDelete(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordAddMember(group: ODRecord!, _ member: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordRemoveMember(group: ODRecord!, _ member: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordContainsMember(group: ODRecord!, _ member: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordCopyPolicies(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
func ODRecordCopyEffectivePolicies(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
func ODRecordCopySupportedPolicies(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
func ODRecordSetPolicies(record: ODRecord!, _ policies: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordSetPolicy(record: ODRecord!, _ policy: ODPolicyType!, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordRemovePolicy(record: ODRecord!, _ policy: ODPolicyType!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordAddAccountPolicy(record: ODRecord!, _ policy: CFDictionary!, _ category: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordRemoveAccountPolicy(record: ODRecord!, _ policy: CFDictionary!, _ category: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordSetAccountPolicies(record: ODRecord!, _ policies: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordCopyAccountPolicies(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary!
func ODRecordAuthenticationAllowed(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordPasswordChangeAllowed(record: ODRecord!, _ newPassword: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ODRecordWillPasswordExpire(record: ODRecord!, _ willExpireIn: UInt64) -> Bool
func ODRecordWillAuthenticationsExpire(record: ODRecord!, _ willExpireIn: UInt64) -> Bool
func ODRecordSecondsUntilPasswordExpires(record: ODRecord!) -> Int64
func ODRecordSecondsUntilAuthenticationsExpire(record: ODRecord!) -> Int64
var kODSessionDefault: Unmanaged<ODSession>!
func ODSessionGetTypeID() -> CFTypeID
func ODSessionCreate(allocator: CFAllocator!, _ options: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODSession>!
func ODSessionCopyNodeNames(allocator: CFAllocator!, _ session: ODSession!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!
let kODSessionProxyAddress: CFString!
let kODSessionProxyPort: CFString!
let kODSessionProxyUsername: CFString!
let kODSessionProxyPassword: CFString!
let kODModuleConfigOptionQueryTimeout: CFString!
let kODModuleConfigOptionConnectionSetupTimeout: CFString!
let kODModuleConfigOptionConnectionIdleDisconnect: CFString!
let kODModuleConfigOptionPacketSigning: CFString!
let kODModuleConfigOptionPacketEncryption: CFString!
let kODModuleConfigOptionManInTheMiddle: CFString!
var kODNodeTypeAuthentication: Int { get }
var kODNodeTypeContacts: Int { get }
var kODNodeTypeNetwork: Int { get }
var kODNodeTypeLocalNodes: Int { get }
var kODNodeTypeConfigure: Int { get }
typealias ODNodeType = UInt32
let kODNodeOptionsQuerySkippedSubnode: CFString!
var kODMatchAny: Int { get }
var kODMatchEqualTo: Int { get }
var kODMatchBeginsWith: Int { get }
var kODMatchContains: Int { get }
var kODMatchEndsWith: Int { get }
var kODMatchInsensitiveEqualTo: Int { get }
var kODMatchInsensitiveBeginsWith: Int { get }
var kODMatchInsensitiveContains: Int { get }
var kODMatchInsensitiveEndsWith: Int { get }
var kODMatchGreaterThan: Int { get }
var kODMatchLessThan: Int { get }
typealias ODMatchType = UInt32
typealias ODRecordType = NSString
typealias ODAttributeType = NSString
typealias ODAuthenticationType = NSString
typealias ODPolicyType = CFStringRef
typealias _ODRecordType = ODRecordType
typealias _ODAttributeType = ODAttributeType
typealias _ODAuthenticationType = ODAuthenticationType
let kODRecordTypeAttributeTypes: String
let kODRecordTypeAFPServer: String
let kODRecordTypeAliases: String
let kODRecordTypeAugments: String
let kODRecordTypeAutomount: String
let kODRecordTypeAutomountMap: String
let kODRecordTypeAutoServerSetup: String
let kODRecordTypeBootp: String
let kODRecordTypeCertificateAuthorities: String
let kODRecordTypeComputerLists: String
let kODRecordTypeComputerGroups: String
let kODRecordTypeComputers: String
let kODRecordTypeConfiguration: String
let kODRecordTypeEthernets: String
let kODRecordTypeFileMakerServers: String
let kODRecordTypeFTPServer: String
let kODRecordTypeGroups: String
let kODRecordTypeHostServices: String
let kODRecordTypeHosts: String
let kODRecordTypeLDAPServer: String
let kODRecordTypeLocations: String
let kODRecordTypeMounts: String
let kODRecordTypeNFS: String
let kODRecordTypeNetDomains: String
let kODRecordTypeNetGroups: String
let kODRecordTypeNetworks: String
let kODRecordTypePeople: String
let kODRecordTypePresetComputers: String
let kODRecordTypePresetComputerGroups: String
let kODRecordTypePresetComputerLists: String
let kODRecordTypePresetGroups: String
let kODRecordTypePresetUsers: String
let kODRecordTypePrintService: String
let kODRecordTypePrintServiceUser: String
let kODRecordTypePrinters: String
let kODRecordTypeProtocols: String
let kODRecordTypeQTSServer: String
let kODRecordTypeQueryInformation: String
let kODRecordTypeRecordTypes: String
let kODRecordTypeResources: String
let kODRecordTypeRPC: String
let kODRecordTypeSMBServer: String
let kODRecordTypeServer: String
let kODRecordTypeServices: String
let kODRecordTypeSharePoints: String
let kODRecordTypeUsers: String
let kODRecordTypeWebServer: String
let kODAttributeTypeAllAttributes: String
let kODAttributeTypeStandardOnly: String
let kODAttributeTypeNativeOnly: String
let kODAttributeTypeMetaAmbiguousName: String
let kODAttributeTypeMetaAugmentedAttributes: String
let kODAttributeTypeMetaRecordName: String
let kODAttributeTypeAdminLimits: String
let kODAttributeTypeAltSecurityIdentities: String
let kODAttributeTypeAuthenticationHint: String
let kODAttributeTypeAllTypes: String
let kODAttributeTypeAuthorityRevocationList: String
let kODAttributeTypeBirthday: String
let kODAttributeTypeCACertificate: String
let kODAttributeTypeCapacity: String
let kODAttributeTypeCertificateRevocationList: String
let kODAttributeTypeComment: String
let kODAttributeTypeContactGUID: String
let kODAttributeTypeContactPerson: String
let kODAttributeTypeCreationTimestamp: String
let kODAttributeTypeCrossCertificatePair: String
let kODAttributeTypeDataStamp: String
let kODAttributeTypeFullName: String
let kODAttributeTypeDNSDomain: String
let kODAttributeTypeDNSNameServer: String
let kODAttributeTypeENetAddress: String
let kODAttributeTypeExpire: String
let kODAttributeTypeFirstName: String
let kODAttributeTypeGUID: String
let kODAttributeTypeHardwareUUID: String
let kODAttributeTypeHomeDirectoryQuota: String
let kODAttributeTypeHomeDirectorySoftQuota: String
let kODAttributeTypeHomeLocOwner: String
let kODAttributeTypeInternetAlias: String
let kODAttributeTypeKDCConfigData: String
let kODAttributeTypeKerberosServices: String
let kODAttributeTypeLastName: String
let kODAttributeTypeLDAPSearchBaseSuffix: String
let kODAttributeTypeLocation: String
let kODAttributeTypeMapGUID: String
let kODAttributeTypeMCXFlags: String
let kODAttributeTypeMCXSettings: String
let kODAttributeTypeMailAttribute: String
let kODAttributeTypeMetaAutomountMap: String
let kODAttributeTypeMiddleName: String
let kODAttributeTypeModificationTimestamp: String
let kODAttributeTypeNFSHomeDirectory: String
let kODAttributeTypeNote: String
let kODAttributeTypeOperatingSystem: String
let kODAttributeTypeOperatingSystemVersion: String
let kODAttributeTypeOwner: String
let kODAttributeTypeOwnerGUID: String
let kODAttributeTypePassword: String
let kODAttributeTypePasswordPlus: String
let kODAttributeTypePasswordPolicyOptions: String
let kODAttributeTypePasswordServerList: String
let kODAttributeTypePasswordServerLocation: String
let kODAttributeTypePicture: String
let kODAttributeTypePort: String
let kODAttributeTypePresetUserIsAdmin: String
let kODAttributeTypePrimaryComputerGUID: String
let kODAttributeTypePrimaryComputerList: String
let kODAttributeTypePrimaryGroupID: String
let kODAttributeTypePrinter1284DeviceID: String
let kODAttributeTypePrinterLPRHost: String
let kODAttributeTypePrinterLPRQueue: String
let kODAttributeTypePrinterMakeAndModel: String
let kODAttributeTypePrinterType: String
let kODAttributeTypePrinterURI: String
let kODAttributeTypePrinterXRISupported: String
let kODAttributeTypePrintServiceInfoText: String
let kODAttributeTypePrintServiceInfoXML: String
let kODAttributeTypePrintServiceUserData: String
let kODAttributeTypeRealUserID: String
let kODAttributeTypeRelativeDNPrefix: String
let kODAttributeTypeSMBAcctFlags: String
let kODAttributeTypeSMBGroupRID: String
let kODAttributeTypeSMBHome: String
let kODAttributeTypeSMBHomeDrive: String
let kODAttributeTypeSMBKickoffTime: String
let kODAttributeTypeSMBLogoffTime: String
let kODAttributeTypeSMBLogonTime: String
let kODAttributeTypeSMBPrimaryGroupSID: String
let kODAttributeTypeSMBPWDLastSet: String
let kODAttributeTypeSMBProfilePath: String
let kODAttributeTypeSMBRID: String
let kODAttributeTypeSMBScriptPath: String
let kODAttributeTypeSMBSID: String
let kODAttributeTypeSMBUserWorkstations: String
let kODAttributeTypeServiceType: String
let kODAttributeTypeSetupAdvertising: String
let kODAttributeTypeSetupAutoRegister: String
let kODAttributeTypeSetupLocation: String
let kODAttributeTypeSetupOccupation: String
let kODAttributeTypeTimeToLive: String
let kODAttributeTypeTrustInformation: String
let kODAttributeTypeUniqueID: String
let kODAttributeTypeUserCertificate: String
let kODAttributeTypeUserPKCS12Data: String
let kODAttributeTypeUserShell: String
let kODAttributeTypeUserSMIMECertificate: String
let kODAttributeTypeVFSDumpFreq: String
let kODAttributeTypeVFSLinkDir: String
let kODAttributeTypeVFSPassNo: String
let kODAttributeTypeVFSType: String
let kODAttributeTypeWeblogURI: String
let kODAttributeTypeXMLPlist: String
let kODAttributeTypeProtocolNumber: String
let kODAttributeTypeRPCNumber: String
let kODAttributeTypeNetworkNumber: String
let kODAttributeTypeAccessControlEntry: String
let kODAttributeTypeAddressLine1: String
let kODAttributeTypeAddressLine2: String
let kODAttributeTypeAddressLine3: String
let kODAttributeTypeAreaCode: String
let kODAttributeTypeAuthenticationAuthority: String
let kODAttributeTypeAutomountInformation: String
let kODAttributeTypeBootParams: String
let kODAttributeTypeBuilding: String
let kODAttributeTypeServicesLocator: String
let kODAttributeTypeCity: String
let kODAttributeTypeCompany: String
let kODAttributeTypeComputers: String
let kODAttributeTypeCountry: String
let kODAttributeTypeDepartment: String
let kODAttributeTypeDNSName: String
let kODAttributeTypeEMailAddress: String
let kODAttributeTypeEMailContacts: String
let kODAttributeTypeFaxNumber: String
let kODAttributeTypeGroup: String
let kODAttributeTypeGroupMembers: String
let kODAttributeTypeGroupMembership: String
let kODAttributeTypeGroupServices: String
let kODAttributeTypeHomePhoneNumber: String
let kODAttributeTypeHTML: String
let kODAttributeTypeHomeDirectory: String
let kODAttributeTypeIMHandle: String
let kODAttributeTypeIPAddress: String
let kODAttributeTypeIPAddressAndENetAddress: String
let kODAttributeTypeIPv6Address: String
let kODAttributeTypeJPEGPhoto: String
let kODAttributeTypeJobTitle: String
let kODAttributeTypeKDCAuthKey: String
let kODAttributeTypeKeywords: String
let kODAttributeTypeLDAPReadReplicas: String
let kODAttributeTypeLDAPWriteReplicas: String
let kODAttributeTypeMapCoordinates: String
let kODAttributeTypeMapURI: String
let kODAttributeTypeMIME: String
let kODAttributeTypeMobileNumber: String
let kODAttributeTypeNestedGroups: String
let kODAttributeTypeNetGroups: String
let kODAttributeTypeNickName: String
let kODAttributeTypeOrganizationInfo: String
let kODAttributeTypeOrganizationName: String
let kODAttributeTypePagerNumber: String
let kODAttributeTypePhoneContacts: String
let kODAttributeTypePhoneNumber: String
let kODAttributeTypePGPPublicKey: String
let kODAttributeTypePostalAddress: String
let kODAttributeTypePostalAddressContacts: String
let kODAttributeTypePostalCode: String
let kODAttributeTypeNamePrefix: String
let kODAttributeTypeProfiles: String
let kODAttributeTypeProfilesTimestamp: String
let kODAttributeTypeProtocols: String
let kODAttributeTypeRecordName: String
let kODAttributeTypeRelationships: String
let kODAttributeTypeResourceInfo: String
let kODAttributeTypeResourceType: String
let kODAttributeTypeState: String
let kODAttributeTypeStreet: String
let kODAttributeTypeNameSuffix: String
let kODAttributeTypeURL: String
let kODAttributeTypeVFSOpts: String
let kODAttributeTypeAlias: String
let kODAttributeTypeAuthCredential: String
let kODAttributeTypeCopyTimestamp: String
let kODAttributeTypeDateRecordCreated: String
let kODAttributeTypeKerberosRealm: String
let kODAttributeTypeNTDomainComputerAccount: String
let kODAttributeTypeOriginalHomeDirectory: String
let kODAttributeTypeOriginalNFSHomeDirectory: String
let kODAttributeTypeOriginalNodeName: String
let kODAttributeTypePrimaryNTDomain: String
let kODAttributeTypePwdAgingPolicy: String
let kODAttributeTypeReadOnlyNode: String
let kODAttributeTypeTimePackage: String
let kODAttributeTypeTotalSize: String
let kODAttributeTypeAuthMethod: String
let kODAttributeTypeMetaNodeLocation: String
let kODAttributeTypeNodePath: String
let kODAttributeTypePlugInInfo: String
let kODAttributeTypeRecordType: String
let kODAttributeTypeSchema: String
let kODAttributeTypeSubNodes: String
let kODAttributeTypeNetGroupTriplet: String
let kODAttributeTypeSearchPath: String
let kODAttributeTypeSearchPolicy: String
let kODAttributeTypeAutomaticSearchPath: String
let kODAttributeTypeLocalOnlySearchPath: String
let kODAttributeTypeCustomSearchPath: String
let kODAttributeTypeNodeOptions: String
let kODAttributeTypeNodeSASLRealm: String
let kODAttributeTypeAdvertisedServices: String
let kODAttributeTypeLocaleRelay: String
let kODAttributeTypeLocaleSubnets: String
let kODAttributeTypeNetworkInterfaces: String
let kODAttributeTypeParentLocales: String
let kODAttributeTypePrimaryLocale: String
let kODAttributeTypeBuildVersion: String
let kODAttributeTypeConfigAvailable: String
let kODAttributeTypeConfigFile: String
let kODAttributeTypeCoreFWVersion: String
let kODAttributeTypeFunctionalState: String
let kODAttributeTypeFWVersion: String
let kODAttributeTypePluginIndex: String
let kODAttributeTypeNumTableList: String
let kODAttributeTypeVersion: String
let kODAttributeTypePIDValue: String
let kODAttributeTypeProcessName: String
let kODAttributeTypeTotalRefCount: String
let kODAttributeTypeDirRefCount: String
let kODAttributeTypeNodeRefCount: String
let kODAttributeTypeRecRefCount: String
let kODAttributeTypeAttrListRefCount: String
let kODAttributeTypeAttrListValueRefCount: String
let kODAttributeTypeDirRefs: String
let kODAttributeTypeNodeRefs: String
let kODAttributeTypeRecRefs: String
let kODAttributeTypeAttrListRefs: String
let kODAttributeTypeAttrListValueRefs: String
let kODAuthenticationType2WayRandom: String
let kODAuthenticationType2WayRandomChangePasswd: String
let kODAuthenticationTypeAPOP: String
let kODAuthenticationTypeCRAM_MD5: String
let kODAuthenticationTypeChangePasswd: String
let kODAuthenticationTypeClearText: String
let kODAuthenticationTypeCrypt: String
let kODAuthenticationTypeDIGEST_MD5: String
let kODAuthenticationTypeDeleteUser: String
let kODAuthenticationTypeGetEffectivePolicy: String
let kODAuthenticationTypeGetGlobalPolicy: String
let kODAuthenticationTypeGetKerberosPrincipal: String
let kODAuthenticationTypeGetPolicy: String
let kODAuthenticationTypeGetUserData: String
let kODAuthenticationTypeGetUserName: String
let kODAuthenticationTypeKerberosTickets: String
let kODAuthenticationTypeMPPEMasterKeys: String
let kODAuthenticationTypeMSCHAP2: String
let kODAuthenticationTypeNTLMv2: String
let kODAuthenticationTypeNTLMv2WithSessionKey: String
let kODAuthenticationTypeNewUser: String
let kODAuthenticationTypeNewUserWithPolicy: String
let kODAuthenticationTypeNodeNativeClearTextOK: String
let kODAuthenticationTypeNodeNativeNoClearText: String
let kODAuthenticationTypeReadSecureHash: String
let kODAuthenticationTypeSMBNTv2UserSessionKey: String
let kODAuthenticationTypeSMBWorkstationCredentialSessionKey: String
let kODAuthenticationTypeSMB_LM_Key: String
let kODAuthenticationTypeSMB_NT_Key: String
let kODAuthenticationTypeSMB_NT_UserSessionKey: String
let kODAuthenticationTypeSMB_NT_WithUserSessionKey: String
let kODAuthenticationTypeSetCertificateHashAsCurrent: String
let kODAuthenticationTypeSetGlobalPolicy: String
let kODAuthenticationTypeSetLMHash: String
let kODAuthenticationTypeSetNTHash: String
let kODAuthenticationTypeSetPassword: String
let kODAuthenticationTypeSetPasswordAsCurrent: String
let kODAuthenticationTypeSetPolicy: String
let kODAuthenticationTypeSetPolicyAsCurrent: String
let kODAuthenticationTypeSetUserData: String
let kODAuthenticationTypeSetUserName: String
let kODAuthenticationTypeSetWorkstationPassword: String
let kODAuthenticationTypeWithAuthorizationRef: String
let kODAuthenticationTypeWriteSecureHash: String
let kODPolicyTypePasswordCannotBeAccountName: ODPolicyType!
let kODPolicyTypePasswordChangeRequired: ODPolicyType!
let kODPolicyTypePasswordHistory: ODPolicyType!
let kODPolicyTypePasswordMinimumNumberOfCharacters: ODPolicyType!
let kODPolicyTypePasswordMaximumNumberOfCharacters: ODPolicyType!
let kODPolicyTypePasswordMaximumAgeInMinutes: ODPolicyType!
let kODPolicyTypePasswordRequiresAlpha: ODPolicyType!
let kODPolicyTypePasswordRequiresMixedCase: ODPolicyType!
let kODPolicyTypePasswordRequiresNumeric: ODPolicyType!
let kODPolicyTypePasswordRequiresSymbol: ODPolicyType!
let kODPolicyTypePasswordSelfModification: ODPolicyType!
let kODPolicyTypeAccountExpiresOnDate: ODPolicyType!
let kODPolicyTypeAccountMaximumFailedLogins: ODPolicyType!
let kODPolicyTypeAccountMaximumMinutesUntilDisabled: ODPolicyType!
let kODPolicyTypeAccountMinutesUntilFailedLoginReset: ODPolicyType!
let kODPolicyTypeAccountMaximumMinutesOfNonUse: ODPolicyType!
var kODExpirationTimeExpired: Int { get }
var kODExpirationTimeNeverExpires: Int { get }
typealias ODPolicyKeyType = NSString
let kODPolicyKeyIdentifier: String
let kODPolicyKeyParameters: String
let kODPolicyKeyContent: String
let kODPolicyKeyContentDescription: String
let kODPolicyKeyEvaluationDetails: String
let kODPolicyKeyPolicySatisfied: String
typealias ODPolicyCategoryType = NSString
let kODPolicyCategoryAuthentication: String
let kODPolicyCategoryPasswordContent: String
let kODPolicyCategoryPasswordChange: String
typealias ODPolicyAttributeType = NSString
let kODPolicyAttributeRecordName: String
let kODPolicyAttributeRecordType: String
let kODPolicyAttributePassword: String
let kODPolicyAttributePasswordHashes: String
let kODPolicyAttributePasswordHistory: String
let kODPolicyAttributePasswordHistoryDepth: String
let kODPolicyAttributeCurrentDate: String
let kODPolicyAttributeCurrentTime: String
let kODPolicyAttributeCurrentTimeOfDay: String
let kODPolicyAttributeCurrentDayOfWeek: String
let kODPolicyAttributeFailedAuthentications: String
let kODPolicyAttributeMaximumFailedAuthentications: String
let kODPolicyAttributeLastFailedAuthenticationTime: String
let kODPolicyAttributeLastAuthenticationTime: String
let kODPolicyAttributeLastPasswordChangeTime: String
let kODPolicyAttributeNewPasswordRequiredTime: String
let kODPolicyAttributeCreationTime: String
let kODPolicyAttributeExpiresEveryNDays: String
let kODPolicyAttributeEnableOnDate: String
let kODPolicyAttributeExpiresOnDate: String
let kODPolicyAttributeEnableOnDayOfWeek: String
let kODPolicyAttributeExpiresOnDayOfWeek: String
let kODPolicyAttributeEnableAtTimeOfDay: String
let kODPolicyAttributeExpiresAtTimeOfDay: String
let kODPolicyAttributeDaysUntilExpiration: String
struct ODFrameworkErrors : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kODErrorSuccess: ODFrameworkErrors { get }
var kODErrorSessionLocalOnlyDaemonInUse: ODFrameworkErrors { get }
var kODErrorSessionNormalDaemonInUse: ODFrameworkErrors { get }
var kODErrorSessionDaemonNotRunning: ODFrameworkErrors { get }
var kODErrorSessionDaemonRefused: ODFrameworkErrors { get }
var kODErrorSessionProxyCommunicationError: ODFrameworkErrors { get }
var kODErrorSessionProxyVersionMismatch: ODFrameworkErrors { get }
var kODErrorSessionProxyIPUnreachable: ODFrameworkErrors { get }
var kODErrorSessionProxyUnknownHost: ODFrameworkErrors { get }
var kODErrorNodeUnknownName: ODFrameworkErrors { get }
var kODErrorNodeUnknownType: ODFrameworkErrors { get }
var kODErrorNodeDisabled: ODFrameworkErrors { get }
var kODErrorNodeConnectionFailed: ODFrameworkErrors { get }
var kODErrorNodeUnknownHost: ODFrameworkErrors { get }
var kODErrorQuerySynchronize: ODFrameworkErrors { get }
var kODErrorQueryInvalidMatchType: ODFrameworkErrors { get }
var kODErrorQueryUnsupportedMatchType: ODFrameworkErrors { get }
var kODErrorQueryTimeout: ODFrameworkErrors { get }
var kODErrorRecordReadOnlyNode: ODFrameworkErrors { get }
var kODErrorRecordPermissionError: ODFrameworkErrors { get }
var kODErrorRecordParameterError: ODFrameworkErrors { get }
var kODErrorRecordInvalidType: ODFrameworkErrors { get }
var kODErrorRecordAlreadyExists: ODFrameworkErrors { get }
var kODErrorRecordTypeDisabled: ODFrameworkErrors { get }
var kODErrorRecordNoLongerExists: ODFrameworkErrors { get }
var kODErrorRecordAttributeUnknownType: ODFrameworkErrors { get }
var kODErrorRecordAttributeNotFound: ODFrameworkErrors { get }
var kODErrorRecordAttributeValueSchemaError: ODFrameworkErrors { get }
var kODErrorRecordAttributeValueNotFound: ODFrameworkErrors { get }
var kODErrorCredentialsInvalid: ODFrameworkErrors { get }
var kODErrorCredentialsMethodNotSupported: ODFrameworkErrors { get }
var kODErrorCredentialsNotAuthorized: ODFrameworkErrors { get }
var kODErrorCredentialsParameterError: ODFrameworkErrors { get }
var kODErrorCredentialsOperationFailed: ODFrameworkErrors { get }
var kODErrorCredentialsServerUnreachable: ODFrameworkErrors { get }
var kODErrorCredentialsServerNotFound: ODFrameworkErrors { get }
var kODErrorCredentialsServerError: ODFrameworkErrors { get }
var kODErrorCredentialsServerTimeout: ODFrameworkErrors { get }
var kODErrorCredentialsContactMaster: ODFrameworkErrors { get }
var kODErrorCredentialsServerCommunicationError: ODFrameworkErrors { get }
var kODErrorCredentialsAccountNotFound: ODFrameworkErrors { get }
var kODErrorCredentialsAccountDisabled: ODFrameworkErrors { get }
var kODErrorCredentialsAccountExpired: ODFrameworkErrors { get }
var kODErrorCredentialsAccountInactive: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordExpired: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordChangeRequired: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordQualityFailed: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordTooShort: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordTooLong: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordNeedsLetter: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordNeedsDigit: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordChangeTooSoon: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordUnrecoverable: ODFrameworkErrors { get }
var kODErrorCredentialsInvalidLogonHours: ODFrameworkErrors { get }
var kODErrorCredentialsInvalidComputer: ODFrameworkErrors { get }
var kODErrorPolicyUnsupported: ODFrameworkErrors { get }
var kODErrorPolicyOutOfRange: ODFrameworkErrors { get }
var kODErrorPluginOperationNotSupported: ODFrameworkErrors { get }
var kODErrorPluginError: ODFrameworkErrors { get }
var kODErrorDaemonError: ODFrameworkErrors { get }
var kODErrorPluginOperationTimeout: ODFrameworkErrors { get }
class ODAttributeMap : NSObject {
  var customQueryFunction: String!
  var customTranslationFunction: String!
  var customAttributes: [AnyObject]!
  var value: String!
  convenience init!(value: String!)
  convenience init!(staticValue: String!)
  func setStaticValue(staticValue: String!)
  func setVariableSubstitution(variableSubstitution: String!)
  init()
}
var ODPacketSigningDisabled: Int { get }
var ODPacketSigningAllow: Int { get }
var ODPacketSigningRequired: Int { get }
var ODPacketEncryptionDisabled: Int { get }
var ODPacketEncryptionAllow: Int { get }
var ODPacketEncryptionRequired: Int { get }
var ODPacketEncryptionSSL: Int { get }
let ODTrustTypeJoined: String
let ODTrustTypeUsingCredentials: String
let ODTrustTypeAnonymous: String
class ODConfiguration : NSObject {
  var nodeName: String!
  var comment: String!
  var defaultMappings: ODMappings!
  var templateName: String!
  var virtualSubnodes: [AnyObject]!
  var hideRegistration: Bool
  var preferredDestinationHostName: String!
  var preferredDestinationHostPort: UInt16
  var trustAccount: String! { get }
  var trustMetaAccount: String! { get }
  var trustKerberosPrincipal: String! { get }
  var trustType: String! { get }
  var trustUsesMutualAuthentication: Bool { get }
  var trustUsesKerberosKeytab: Bool { get }
  var trustUsesSystemKeychain: Bool { get }
  var packetSigning: Int
  var packetEncryption: Int
  var manInTheMiddleProtection: Bool
  var queryTimeoutInSeconds: Int
  var connectionSetupTimeoutInSeconds: Int
  var connectionIdleTimeoutInSeconds: Int
  var defaultModuleEntries: [AnyObject]!
  var authenticationModuleEntries: [AnyObject]!
  var discoveryModuleEntries: [AnyObject]!
  var generalModuleEntries: [AnyObject]!
  class func suggestedTrustAccount(hostname: String!) -> String!
  class func suggestedTrustPassword(length: Int) -> String!
  func addTrustType(trustType: String!, trustAccount account: String!, trustPassword accountPassword: String!, username: String!, password: String!, joinExisting join: Bool) throws
  func removeTrustUsingUsername(username: String!, password: String!, deleteTrustAccount deleteAccount: Bool) throws
  init()
}
class ODMappings : NSObject {
  var comment: String!
  var templateName: String!
  var identifier: String!
  var recordTypes: [AnyObject]! { get }
  var function: String!
  var functionAttributes: [AnyObject]!
  func recordMapForStandardRecordType(stdType: String!) -> ODRecordMap!
  func setRecordMap(map: ODRecordMap!, forStandardRecordType stdType: String!)
  init()
}
class ODModuleEntry : NSObject {
  var mappings: ODMappings!
  var supportedOptions: [AnyObject]! { get }
  var name: String!
  var xpcServiceName: String!
  var uuidString: String!
  convenience init!(name: String!, xpcServiceName: String!)
  func setOption(optionName: String!, value: AnyObject!)
  func option(optionName: String!) -> AnyObject!
  init()
}
class ODNode : NSObject {
  init(session inSession: ODSession!, type inType: ODNodeType) throws
  init(session inSession: ODSession!, name inName: String!) throws
  func subnodeNames() throws -> [AnyObject]
  func unreachableSubnodeNames() throws -> [AnyObject]
  var nodeName: String! { get }
  func nodeDetailsForKeys(inKeys: [AnyObject]!) throws -> [NSObject : AnyObject]
  func supportedRecordTypes() throws -> [AnyObject]
  func supportedAttributesForRecordType(inRecordType: String!) throws -> [AnyObject]
  func setCredentialsWithRecordType(inRecordType: String!, recordName inRecordName: String!, password inPassword: String!) throws
  func setCredentialsWithRecordType(inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws
  func setCredentialsUsingKerberosCache(inCacheName: String!) throws
  func createRecordWithRecordType(inRecordType: String!, name inRecordName: String!, attributes inAttributes: [NSObject : AnyObject]!) throws -> ODRecord
  func recordWithRecordType(inRecordType: String!, name inRecordName: String!, attributes inAttributes: AnyObject!) throws -> ODRecord
  func customCall(inCustomCode: Int, sendData inSendData: NSData!) throws -> NSData
  func customFunction(function: String!, payload: AnyObject!) throws -> AnyObject
  var configuration: ODConfiguration! { get }
  func policies() throws -> [NSObject : AnyObject]
  func supportedPolicies() throws -> [NSObject : AnyObject]
  func setPolicies(policies: [NSObject : AnyObject]!) throws
  func setPolicy(policy: ODPolicyType!, value: AnyObject!) throws
  func removePolicy(policy: ODPolicyType!) throws
  func addAccountPolicy(policy: [NSObject : AnyObject]!, toCategory category: String!) throws
  func removeAccountPolicy(policy: [NSObject : AnyObject]!, fromCategory category: String!) throws
  func setAccountPolicies(policies: [NSObject : AnyObject]!) throws
  func accountPolicies() throws -> [NSObject : AnyObject]
  func passwordContentCheck(password: String!, forRecordName recordName: String!) throws
  init()
}
protocol ODQueryDelegate : NSObjectProtocol {
  func query(inQuery: ODQuery!, foundResults inResults: [AnyObject]!, error inError: NSError!)
}
class ODQuery : NSObject, NSCopying {
  init(node inNode: ODNode!, forRecordTypes inRecordTypeOrList: AnyObject!, attribute inAttribute: String!, matchType inMatchType: ODMatchType, queryValues inQueryValueOrList: AnyObject!, returnAttributes inReturnAttributeOrList: AnyObject!, maximumResults inMaximumResults: Int) throws
  func resultsAllowingPartial(inAllowPartialResults: Bool) throws -> [AnyObject]
  unowned(unsafe) var delegate: @sil_unmanaged ODQueryDelegate!
  func scheduleInRunLoop(inRunLoop: NSRunLoop!, forMode inMode: String!)
  func removeFromRunLoop(inRunLoop: NSRunLoop!, forMode inMode: String!)
  func synchronize()
  var operationQueue: NSOperationQueue!
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class ODRecord : NSObject {
  func setNodeCredentials(inUsername: String!, password inPassword: String!) throws
  func setNodeCredentialsWithRecordType(inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws
  func verifyPassword(inPassword: String!) throws
  func verifyExtendedWithAuthenticationType(inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws
  func changePassword(oldPassword: String!, toPassword newPassword: String!) throws
  func synchronize() throws
  var recordType: String! { get }
  var recordName: String! { get }
  func recordDetailsForAttributes(inAttributes: [AnyObject]!) throws -> [NSObject : AnyObject]
  func valuesForAttribute(inAttribute: String!) throws -> [AnyObject]
  func setValue(inValueOrValues: AnyObject!, forAttribute inAttribute: String!) throws
  func removeValuesForAttribute(inAttribute: String!) throws
  func addValue(inValue: AnyObject!, toAttribute inAttribute: String!) throws
  func removeValue(inValue: AnyObject!, fromAttribute inAttribute: String!) throws
  func deleteRecord() throws
  func policies() throws -> [NSObject : AnyObject]
  func effectivePolicies() throws -> [NSObject : AnyObject]
  func supportedPolicies() throws -> [NSObject : AnyObject]
  func setPolicies(policies: [NSObject : AnyObject]!) throws
  func setPolicy(policy: ODPolicyType!, value: AnyObject!) throws
  func removePolicy(policy: ODPolicyType!) throws
  func addAccountPolicy(policy: [NSObject : AnyObject]!, toCategory category: String!) throws
  func removeAccountPolicy(policy: [NSObject : AnyObject]!, fromCategory category: String!) throws
  func setAccountPolicies(policies: [NSObject : AnyObject]!) throws
  func accountPolicies() throws -> [NSObject : AnyObject]
  func authenticationAllowed() throws
  func passwordChangeAllowed(newPassword: String!) throws
  func willPasswordExpire(willExpireIn: UInt64) -> Bool
  func willAuthenticationsExpire(willExpireIn: UInt64) -> Bool
  var secondsUntilPasswordExpires: Int64 { get }
  var secondsUntilAuthenticationsExpire: Int64 { get }
  init()
}
extension ODRecord {
  func addMemberRecord(inRecord: ODRecord!) throws
  func removeMemberRecord(inRecord: ODRecord!) throws
  func isMemberRecord(inRecord: ODRecord!) throws
}
class ODRecordMap : NSObject {
  var native: String!
  var odPredicate: [NSObject : AnyObject]!
  var attributes: [NSObject : AnyObject]! { get }
  var standardAttributeTypes: [AnyObject]! { get }
  func attributeMapForStandardAttribute(standardAttribute: String!) -> ODAttributeMap!
  func setAttributeMap(attributeMap: ODAttributeMap!, forStandardAttribute standardAttribute: String!)
  init()
}
let ODSessionProxyAddress: String
let ODSessionProxyPort: String
let ODSessionProxyUsername: String
let ODSessionProxyPassword: String
class ODSession : NSObject {
  class func defaultSession() -> ODSession!
  init(options inOptions: [NSObject : AnyObject]!) throws
  func nodeNames() throws -> [AnyObject]
  var configurationTemplateNames: [AnyObject]! { get }
  var mappingTemplateNames: [AnyObject]! { get }
  func configurationForNodename(nodename: String!) -> ODConfiguration!
  init()
}
