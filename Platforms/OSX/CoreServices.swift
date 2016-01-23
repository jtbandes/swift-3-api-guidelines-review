
var typeBoolean: Int { get }
var typeChar: Int { get }
var typeStyledUnicodeText: Int { get }
var typeEncodedString: Int { get }
var typeUnicodeText: Int { get }
var typeCString: Int { get }
var typePString: Int { get }
var typeUTF16ExternalRepresentation: Int { get }
var typeUTF8Text: Int { get }
var typeSInt16: Int { get }
var typeUInt16: Int { get }
var typeSInt32: Int { get }
var typeUInt32: Int { get }
var typeSInt64: Int { get }
var typeUInt64: Int { get }
var typeIEEE32BitFloatingPoint: Int { get }
var typeIEEE64BitFloatingPoint: Int { get }
var type128BitFloatingPoint: Int { get }
var typeDecimalStruct: Int { get }
var typeAEList: Int { get }
var typeAERecord: Int { get }
var typeAppleEvent: Int { get }
var typeEventRecord: Int { get }
var typeTrue: Int { get }
var typeFalse: Int { get }
var typeAlias: Int { get }
var typeEnumerated: Int { get }
var typeType: Int { get }
var typeAppParameters: Int { get }
var typeProperty: Int { get }
var typeFSRef: Int { get }
var typeFileURL: Int { get }
var typeBookmarkData: Int { get }
var typeKeyword: Int { get }
var typeSectionH: Int { get }
var typeWildCard: Int { get }
var typeApplSignature: Int { get }
var typeQDRectangle: Int { get }
var typeFixed: Int { get }
var typeProcessSerialNumber: Int { get }
var typeApplicationURL: Int { get }
var typeNull: Int { get }
var typeCFAttributedStringRef: Int { get }
var typeCFMutableAttributedStringRef: Int { get }
var typeCFStringRef: Int { get }
var typeCFMutableStringRef: Int { get }
var typeCFArrayRef: Int { get }
var typeCFMutableArrayRef: Int { get }
var typeCFDictionaryRef: Int { get }
var typeCFMutableDictionaryRef: Int { get }
var typeCFNumberRef: Int { get }
var typeCFBooleanRef: Int { get }
var typeCFTypeRef: Int { get }
var typeKernelProcessID: Int { get }
var typeMachPort: Int { get }
var typeAuditToken: Int { get }
var typeApplicationBundleID: Int { get }
var keyTransactionIDAttr: Int { get }
var keyReturnIDAttr: Int { get }
var keyEventClassAttr: Int { get }
var keyEventIDAttr: Int { get }
var keyAddressAttr: Int { get }
var keyOptionalKeywordAttr: Int { get }
var keyTimeoutAttr: Int { get }
var keyInteractLevelAttr: Int { get }
var keyEventSourceAttr: Int { get }
var keyMissedKeywordAttr: Int { get }
var keyOriginalAddressAttr: Int { get }
var keyAcceptTimeoutAttr: Int { get }
var keyReplyRequestedAttr: Int { get }
var keySenderEUIDAttr: Int { get }
var keySenderEGIDAttr: Int { get }
var keySenderUIDAttr: Int { get }
var keySenderGIDAttr: Int { get }
var keySenderPIDAttr: Int { get }
var keySenderAuditTokenAttr: Int { get }
var keySenderApplescriptEntitlementsAttr: Int { get }
var keySenderApplicationIdentifierEntitlementAttr: Int { get }
var keySenderApplicationSandboxed: Int { get }
var keyActualSenderAuditToken: Int { get }
var kAEDebugPOSTHeader: Int { get }
var kAEDebugReplyHeader: Int { get }
var kAEDebugXMLRequest: Int { get }
var kAEDebugXMLResponse: Int { get }
var kAEDebugXMLDebugAll: Int { get }
var kSOAP1999Schema: Int { get }
var kSOAP2001Schema: Int { get }
var keyUserNameAttr: Int { get }
var keyUserPasswordAttr: Int { get }
var keyDisableAuthenticationAttr: Int { get }
var keyXMLDebuggingAttr: Int { get }
var kAERPCClass: Int { get }
var kAEXMLRPCScheme: Int { get }
var kAESOAPScheme: Int { get }
var kAESharedScriptHandler: Int { get }
var keyRPCMethodName: Int { get }
var keyRPCMethodParam: Int { get }
var keyRPCMethodParamOrder: Int { get }
var keyAEPOSTHeaderData: Int { get }
var keyAEReplyHeaderData: Int { get }
var keyAEXMLRequestData: Int { get }
var keyAEXMLReplyData: Int { get }
var keyAdditionalHTTPHeaders: Int { get }
var keySOAPAction: Int { get }
var keySOAPMethodNameSpace: Int { get }
var keySOAPMethodNameSpaceURI: Int { get }
var keySOAPSchemaVersion: Int { get }
var keySOAPStructureMetaData: Int { get }
var keySOAPSMDNamespace: Int { get }
var keySOAPSMDNamespaceURI: Int { get }
var keySOAPSMDType: Int { get }
var kAEUseHTTPProxyAttr: Int { get }
var kAEHTTPProxyPortAttr: Int { get }
var kAEHTTPProxyHostAttr: Int { get }
var kAESocks4Protocol: Int { get }
var kAESocks5Protocol: Int { get }
var kAEUseSocksAttr: Int { get }
var kAESocksProxyAttr: Int { get }
var kAESocksHostAttr: Int { get }
var kAESocksPortAttr: Int { get }
var kAESocksUserAttr: Int { get }
var kAESocksPasswordAttr: Int { get }
var kAEDescListFactorNone: Int { get }
var kAEDescListFactorType: Int { get }
var kAEDescListFactorTypeAndSize: Int { get }
var kAutoGenerateReturnID: Int { get }
var kAnyTransactionID: Int { get }
typealias DescType = ResType
typealias AEKeyword = FourCharCode
typealias AEDataStorageType = COpaquePointer
typealias AEDataStorage = UnsafeMutablePointer<AEDataStorageType>
struct AEDesc {
  var descriptorType: DescType
  var dataHandle: AEDataStorage
  init()
  init(descriptorType: DescType, dataHandle: AEDataStorage)
}
typealias AEDescPtr = UnsafeMutablePointer<AEDesc>
struct AEKeyDesc {
  var descKey: AEKeyword
  var descContent: AEDesc
  init()
  init(descKey: AEKeyword, descContent: AEDesc)
}
typealias AEDescList = AEDesc
typealias AERecord = AEDescList
typealias AEAddressDesc = AEDesc
typealias AppleEvent = AERecord
typealias AppleEventPtr = UnsafeMutablePointer<AppleEvent>
typealias AEReturnID = Int16
typealias AETransactionID = Int32
typealias AEEventClass = FourCharCode
typealias AEEventID = FourCharCode
typealias AEArrayType = Int8
var kAEDataArray: Int { get }
var kAEPackedArray: Int { get }
var kAEDescArray: Int { get }
var kAEKeyDescArray: Int { get }
var kAEHandleArray: Int { get }
struct AEArrayData {
  var kAEDataArray: (Int16)
  var kAEPackedArray: (Int8)
  var kAEHandleArray: (Handle)
  var kAEDescArray: (AEDesc)
  var kAEKeyDescArray: (AEKeyDesc)
  init(kAEDataArray: (Int16))
  init(kAEPackedArray: (Int8))
  init(kAEHandleArray: (Handle))
  init(kAEDescArray: (AEDesc))
  init(kAEKeyDescArray: (AEKeyDesc))
  init()
}
typealias AEArrayDataPointer = UnsafeMutablePointer<AEArrayData>
typealias AESendPriority = Int16
var kAENormalPriority: Int { get }
var kAEHighPriority: Int { get }
typealias AESendMode = Int32
var kAENoReply: Int { get }
var kAEQueueReply: Int { get }
var kAEWaitReply: Int { get }
var kAEDontReconnect: Int { get }
var kAEWantReceipt: Int { get }
var kAENeverInteract: Int { get }
var kAECanInteract: Int { get }
var kAEAlwaysInteract: Int { get }
var kAECanSwitchLayer: Int { get }
var kAEDontRecord: Int { get }
var kAEDontExecute: Int { get }
var kAEProcessNonReplyEvents: Int { get }
var kAEDoNotAutomaticallyAddAnnotationsToEvent: Int { get }
var kAEDefaultTimeout: Int { get }
var kNoTimeOut: Int { get }
typealias AECoerceDescProcPtr = @convention(c) (UnsafePointer<AEDesc>, DescType, SRefCon, UnsafeMutablePointer<AEDesc>) -> OSErr
typealias AECoercePtrProcPtr = @convention(c) (DescType, UnsafePointer<Void>, Size, DescType, SRefCon, UnsafeMutablePointer<AEDesc>) -> OSErr
typealias AECoerceDescUPP = AECoerceDescProcPtr
typealias AECoercePtrUPP = AECoercePtrProcPtr
func NewAECoerceDescUPP(userRoutine: AECoerceDescProcPtr!) -> AECoerceDescUPP!
func NewAECoercePtrUPP(userRoutine: AECoercePtrProcPtr!) -> AECoercePtrUPP!
func DisposeAECoerceDescUPP(userUPP: AECoerceDescUPP!)
func DisposeAECoercePtrUPP(userUPP: AECoercePtrUPP!)
func InvokeAECoerceDescUPP(fromDesc: UnsafePointer<AEDesc>, _ toType: DescType, _ handlerRefcon: SRefCon, _ toDesc: UnsafeMutablePointer<AEDesc>, _ userUPP: AECoerceDescUPP!) -> OSErr
func InvokeAECoercePtrUPP(typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size, _ toType: DescType, _ handlerRefcon: SRefCon, _ result: UnsafeMutablePointer<AEDesc>, _ userUPP: AECoercePtrUPP!) -> OSErr
typealias AECoercionHandlerUPP = AECoerceDescUPP
func AEInstallCoercionHandler(fromType: DescType, _ toType: DescType, _ handler: AECoercionHandlerUPP!, _ handlerRefcon: SRefCon, _ fromTypeIsDesc: Bool, _ isSysHandler: Bool) -> OSErr
func AERemoveCoercionHandler(fromType: DescType, _ toType: DescType, _ handler: AECoercionHandlerUPP!, _ isSysHandler: Bool) -> OSErr
func AEGetCoercionHandler(fromType: DescType, _ toType: DescType, _ handler: UnsafeMutablePointer<AECoercionHandlerUPP?>, _ handlerRefcon: UnsafeMutablePointer<SRefCon>, _ fromTypeIsDesc: UnsafeMutablePointer<DarwinBoolean>, _ isSysHandler: Bool) -> OSErr
func AECoercePtr(typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size, _ toType: DescType, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
func AECoerceDesc(theAEDesc: UnsafePointer<AEDesc>, _ toType: DescType, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
func AEInitializeDesc(desc: UnsafeMutablePointer<AEDesc>)
func AECreateDesc(typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
func AEDisposeDesc(theAEDesc: UnsafeMutablePointer<AEDesc>) -> OSErr
func AEDuplicateDesc(theAEDesc: UnsafePointer<AEDesc>, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
typealias AEDisposeExternalProcPtr = @convention(c) (UnsafePointer<Void>, Size, SRefCon) -> Void
typealias AEDisposeExternalUPP = AEDisposeExternalProcPtr
func AECreateDescFromExternalPtr(descriptorType: OSType, _ dataPtr: UnsafePointer<Void>, _ dataLength: Size, _ disposeCallback: AEDisposeExternalUPP!, _ disposeRefcon: SRefCon, _ theDesc: UnsafeMutablePointer<AEDesc>) -> OSStatus
func AECompareDesc(desc1: UnsafePointer<AEDesc>, _ desc2: UnsafePointer<AEDesc>, _ resultP: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AECreateList(factoringPtr: UnsafePointer<Void>, _ factoredSize: Size, _ isRecord: Bool, _ resultList: UnsafeMutablePointer<AEDescList>) -> OSErr
func AECountItems(theAEDescList: UnsafePointer<AEDescList>, _ theCount: UnsafeMutablePointer<Int>) -> OSErr
func AEPutPtr(theAEDescList: UnsafeMutablePointer<AEDescList>, _ index: Int, _ typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size) -> OSErr
func AEPutDesc(theAEDescList: UnsafeMutablePointer<AEDescList>, _ index: Int, _ theAEDesc: UnsafePointer<AEDesc>) -> OSErr
func AEGetNthPtr(theAEDescList: UnsafePointer<AEDescList>, _ index: Int, _ desiredType: DescType, _ theAEKeyword: UnsafeMutablePointer<AEKeyword>, _ typeCode: UnsafeMutablePointer<DescType>, _ dataPtr: UnsafeMutablePointer<Void>, _ maximumSize: Size, _ actualSize: UnsafeMutablePointer<Size>) -> OSErr
func AEGetNthDesc(theAEDescList: UnsafePointer<AEDescList>, _ index: Int, _ desiredType: DescType, _ theAEKeyword: UnsafeMutablePointer<AEKeyword>, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
func AESizeOfNthItem(theAEDescList: UnsafePointer<AEDescList>, _ index: Int, _ typeCode: UnsafeMutablePointer<DescType>, _ dataSize: UnsafeMutablePointer<Size>) -> OSErr
func AEGetArray(theAEDescList: UnsafePointer<AEDescList>, _ arrayType: AEArrayType, _ arrayPtr: AEArrayDataPointer, _ maximumSize: Size, _ itemType: UnsafeMutablePointer<DescType>, _ itemSize: UnsafeMutablePointer<Size>, _ itemCount: UnsafeMutablePointer<Int>) -> OSErr
func AEPutArray(theAEDescList: UnsafeMutablePointer<AEDescList>, _ arrayType: AEArrayType, _ arrayPtr: UnsafePointer<AEArrayData>, _ itemType: DescType, _ itemSize: Size, _ itemCount: Int) -> OSErr
func AEDeleteItem(theAEDescList: UnsafeMutablePointer<AEDescList>, _ index: Int) -> OSErr
func AECheckIsRecord(theDesc: UnsafePointer<AEDesc>) -> Bool
func AECreateAppleEvent(theAEEventClass: AEEventClass, _ theAEEventID: AEEventID, _ target: UnsafePointer<AEAddressDesc>, _ returnID: AEReturnID, _ transactionID: AETransactionID, _ result: UnsafeMutablePointer<AppleEvent>) -> OSErr
func AEPutParamPtr(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size) -> OSErr
func AEPutParamDesc(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ theAEDesc: UnsafePointer<AEDesc>) -> OSErr
func AEGetParamPtr(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ desiredType: DescType, _ actualType: UnsafeMutablePointer<DescType>, _ dataPtr: UnsafeMutablePointer<Void>, _ maximumSize: Size, _ actualSize: UnsafeMutablePointer<Size>) -> OSErr
func AEGetParamDesc(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ desiredType: DescType, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
func AESizeOfParam(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ typeCode: UnsafeMutablePointer<DescType>, _ dataSize: UnsafeMutablePointer<Size>) -> OSErr
func AEDeleteParam(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword) -> OSErr
func AEGetAttributePtr(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ desiredType: DescType, _ typeCode: UnsafeMutablePointer<DescType>, _ dataPtr: UnsafeMutablePointer<Void>, _ maximumSize: Size, _ actualSize: UnsafeMutablePointer<Size>) -> OSErr
func AEGetAttributeDesc(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ desiredType: DescType, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
func AESizeOfAttribute(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ typeCode: UnsafeMutablePointer<DescType>, _ dataSize: UnsafeMutablePointer<Size>) -> OSErr
func AEPutAttributePtr(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size) -> OSErr
func AEPutAttributeDesc(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ theAEDesc: UnsafePointer<AEDesc>) -> OSErr
func AESizeOfFlattenedDesc(theAEDesc: UnsafePointer<AEDesc>) -> Size
func AEFlattenDesc(theAEDesc: UnsafePointer<AEDesc>, _ buffer: Ptr, _ bufferSize: Size, _ actualSize: UnsafeMutablePointer<Size>) -> OSStatus
func AEUnflattenDesc(buffer: UnsafePointer<Void>, _ result: UnsafeMutablePointer<AEDesc>) -> OSStatus
func AEGetDescData(theAEDesc: UnsafePointer<AEDesc>, _ dataPtr: UnsafeMutablePointer<Void>, _ maximumSize: Size) -> OSErr
func AEGetDescDataSize(theAEDesc: UnsafePointer<AEDesc>) -> Size
func AEReplaceDescData(typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size, _ theAEDesc: UnsafeMutablePointer<AEDesc>) -> OSErr
func AEGetDescDataRange(dataDesc: UnsafePointer<AEDesc>, _ buffer: UnsafeMutablePointer<Void>, _ offset: Size, _ length: Size) -> OSStatus
typealias AEEventHandlerProcPtr = @convention(c) (UnsafePointer<AppleEvent>, UnsafeMutablePointer<AppleEvent>, SRefCon) -> OSErr
typealias AEEventHandlerUPP = AEEventHandlerProcPtr
func NewAEDisposeExternalUPP(userRoutine: AEDisposeExternalProcPtr!) -> AEDisposeExternalUPP!
func NewAEEventHandlerUPP(userRoutine: AEEventHandlerProcPtr!) -> AEEventHandlerUPP!
func DisposeAEDisposeExternalUPP(userUPP: AEDisposeExternalUPP!)
func DisposeAEEventHandlerUPP(userUPP: AEEventHandlerUPP!)
func InvokeAEDisposeExternalUPP(dataPtr: UnsafePointer<Void>, _ dataLength: Size, _ refcon: SRefCon, _ userUPP: AEDisposeExternalUPP!)
func InvokeAEEventHandlerUPP(theAppleEvent: UnsafePointer<AppleEvent>, _ reply: UnsafeMutablePointer<AppleEvent>, _ handlerRefcon: SRefCon, _ userUPP: AEEventHandlerUPP!) -> OSErr
typealias AEBuildErrorCode = UInt32
var aeBuildSyntaxNoErr: Int { get }
var aeBuildSyntaxBadToken: Int { get }
var aeBuildSyntaxBadEOF: Int { get }
var aeBuildSyntaxNoEOF: Int { get }
var aeBuildSyntaxBadNegative: Int { get }
var aeBuildSyntaxMissingQuote: Int { get }
var aeBuildSyntaxBadHex: Int { get }
var aeBuildSyntaxOddHex: Int { get }
var aeBuildSyntaxNoCloseHex: Int { get }
var aeBuildSyntaxUncoercedHex: Int { get }
var aeBuildSyntaxNoCloseString: Int { get }
var aeBuildSyntaxBadDesc: Int { get }
var aeBuildSyntaxBadData: Int { get }
var aeBuildSyntaxNoCloseParen: Int { get }
var aeBuildSyntaxNoCloseBracket: Int { get }
var aeBuildSyntaxNoCloseBrace: Int { get }
var aeBuildSyntaxNoKey: Int { get }
var aeBuildSyntaxNoColon: Int { get }
var aeBuildSyntaxCoercedList: Int { get }
var aeBuildSyntaxUncoercedDoubleAt: Int { get }
struct AEBuildError {
  var fError: AEBuildErrorCode
  var fErrorPos: UInt32
  init()
  init(fError: AEBuildErrorCode, fErrorPos: UInt32)
}
func vAEBuildDesc(dst: UnsafeMutablePointer<AEDesc>, _ error: UnsafeMutablePointer<AEBuildError>, _ src: UnsafePointer<Int8>, _ args: CVaListPointer) -> OSStatus
func vAEBuildParameters(event: UnsafeMutablePointer<AppleEvent>, _ error: UnsafeMutablePointer<AEBuildError>, _ format: UnsafePointer<Int8>, _ args: CVaListPointer) -> OSStatus
func vAEBuildAppleEvent(theClass: AEEventClass, _ theID: AEEventID, _ addressType: DescType, _ addressData: UnsafePointer<Void>, _ addressLength: Size, _ returnID: Int16, _ transactionID: Int32, _ resultEvt: UnsafeMutablePointer<AppleEvent>, _ error: UnsafeMutablePointer<AEBuildError>, _ paramsFmt: UnsafePointer<Int8>, _ args: CVaListPointer) -> OSStatus
func AEPrintDescToHandle(desc: UnsafePointer<AEDesc>, _ result: UnsafeMutablePointer<Handle>) -> OSStatus
typealias AEStreamRef = COpaquePointer
func AEStreamOpen() -> AEStreamRef
func AEStreamClose(ref: AEStreamRef, _ desc: UnsafeMutablePointer<AEDesc>) -> OSStatus
func AEStreamOpenDesc(ref: AEStreamRef, _ newType: DescType) -> OSStatus
func AEStreamWriteData(ref: AEStreamRef, _ data: UnsafePointer<Void>, _ length: Size) -> OSStatus
func AEStreamCloseDesc(ref: AEStreamRef) -> OSStatus
func AEStreamWriteDesc(ref: AEStreamRef, _ newType: DescType, _ data: UnsafePointer<Void>, _ length: Size) -> OSStatus
func AEStreamWriteAEDesc(ref: AEStreamRef, _ desc: UnsafePointer<AEDesc>) -> OSStatus
func AEStreamOpenList(ref: AEStreamRef) -> OSStatus
func AEStreamCloseList(ref: AEStreamRef) -> OSStatus
func AEStreamOpenRecord(ref: AEStreamRef, _ newType: DescType) -> OSStatus
func AEStreamSetRecordType(ref: AEStreamRef, _ newType: DescType) -> OSStatus
func AEStreamCloseRecord(ref: AEStreamRef) -> OSStatus
func AEStreamWriteKeyDesc(ref: AEStreamRef, _ key: AEKeyword, _ newType: DescType, _ data: UnsafePointer<Void>, _ length: Size) -> OSStatus
func AEStreamOpenKeyDesc(ref: AEStreamRef, _ key: AEKeyword, _ newType: DescType) -> OSStatus
func AEStreamWriteKey(ref: AEStreamRef, _ key: AEKeyword) -> OSStatus
func AEStreamCreateEvent(clazz: AEEventClass, _ id: AEEventID, _ targetType: DescType, _ targetData: UnsafePointer<Void>, _ targetLength: Size, _ returnID: Int16, _ transactionID: Int32) -> AEStreamRef
func AEStreamOpenEvent(event: UnsafeMutablePointer<AppleEvent>) -> AEStreamRef
func AEStreamOptionalParam(ref: AEStreamRef, _ key: AEKeyword) -> OSStatus
var keyReplyPortAttr: Int { get }
var typeReplyPortAttr: Int { get }
func AEGetRegisteredMachPort() -> mach_port_t
func AEDecodeMessage(header: UnsafeMutablePointer<mach_msg_header_t>, _ event: UnsafeMutablePointer<AppleEvent>, _ reply: UnsafeMutablePointer<AppleEvent>) -> OSStatus
func AEProcessMessage(header: UnsafeMutablePointer<mach_msg_header_t>) -> OSStatus
func AESendMessage(event: UnsafePointer<AppleEvent>, _ reply: UnsafeMutablePointer<AppleEvent>, _ sendMode: AESendMode, _ timeOutInTicks: Int) -> OSStatus
var kAEAND: Int { get }
var kAEOR: Int { get }
var kAENOT: Int { get }
var kAEFirst: Int { get }
var kAELast: Int { get }
var kAEMiddle: Int { get }
var kAEAny: Int { get }
var kAEAll: Int { get }
var kAENext: Int { get }
var kAEPrevious: Int { get }
var keyAECompOperator: Int { get }
var keyAELogicalTerms: Int { get }
var keyAELogicalOperator: Int { get }
var keyAEObject1: Int { get }
var keyAEObject2: Int { get }
var keyAEDesiredClass: Int { get }
var keyAEContainer: Int { get }
var keyAEKeyForm: Int { get }
var keyAEKeyData: Int { get }
var keyAERangeStart: Int { get }
var keyAERangeStop: Int { get }
var keyDisposeTokenProc: Int { get }
var keyAECompareProc: Int { get }
var keyAECountProc: Int { get }
var keyAEMarkTokenProc: Int { get }
var keyAEMarkProc: Int { get }
var keyAEAdjustMarksProc: Int { get }
var keyAEGetErrDescProc: Int { get }
var formAbsolutePosition: Int { get }
var formRelativePosition: Int { get }
var formTest: Int { get }
var formRange: Int { get }
var formPropertyID: Int { get }
var formName: Int { get }
var formUniqueID: Int { get }
var typeObjectSpecifier: Int { get }
var typeObjectBeingExamined: Int { get }
var typeCurrentContainer: Int { get }
var typeToken: Int { get }
var typeRelativeDescriptor: Int { get }
var typeAbsoluteOrdinal: Int { get }
var typeIndexDescriptor: Int { get }
var typeRangeDescriptor: Int { get }
var typeLogicalDescriptor: Int { get }
var typeCompDescriptor: Int { get }
var typeOSLTokenList: Int { get }
var kAEIDoMinimum: Int { get }
var kAEIDoWhose: Int { get }
var kAEIDoMarking: Int { get }
var kAEPassSubDescs: Int { get }
var kAEResolveNestedLists: Int { get }
var kAEHandleSimpleRanges: Int { get }
var kAEUseRelativeIterators: Int { get }
var typeWhoseDescriptor: Int { get }
var formWhose: Int { get }
var typeWhoseRange: Int { get }
var keyAEWhoseRangeStart: Int { get }
var keyAEWhoseRangeStop: Int { get }
var keyAEIndex: Int { get }
var keyAETest: Int { get }
struct ccntTokenRecord {
  var tokenClass: DescType
  var token: AEDesc
  init()
  init(tokenClass: DescType, token: AEDesc)
}
typealias ccntTokenRecPtr = UnsafeMutablePointer<ccntTokenRecord>
typealias ccntTokenRecHandle = UnsafeMutablePointer<ccntTokenRecPtr>
typealias OSLAccessorProcPtr = @convention(c) (DescType, UnsafePointer<AEDesc>, DescType, DescType, UnsafePointer<AEDesc>, UnsafeMutablePointer<AEDesc>, SRefCon) -> OSErr
typealias OSLCompareProcPtr = @convention(c) (DescType, UnsafePointer<AEDesc>, UnsafePointer<AEDesc>, UnsafeMutablePointer<DarwinBoolean>) -> OSErr
typealias OSLCountProcPtr = @convention(c) (DescType, DescType, UnsafePointer<AEDesc>, UnsafeMutablePointer<Int>) -> OSErr
typealias OSLDisposeTokenProcPtr = @convention(c) (UnsafeMutablePointer<AEDesc>) -> OSErr
typealias OSLGetMarkTokenProcPtr = @convention(c) (UnsafePointer<AEDesc>, DescType, UnsafeMutablePointer<AEDesc>) -> OSErr
typealias OSLGetErrDescProcPtr = @convention(c) (UnsafeMutablePointer<UnsafeMutablePointer<AEDesc>>) -> OSErr
typealias OSLMarkProcPtr = @convention(c) (UnsafePointer<AEDesc>, UnsafePointer<AEDesc>, Int) -> OSErr
typealias OSLAdjustMarksProcPtr = @convention(c) (Int, Int, UnsafePointer<AEDesc>) -> OSErr
typealias OSLAccessorUPP = OSLAccessorProcPtr
typealias OSLCompareUPP = OSLCompareProcPtr
typealias OSLCountUPP = OSLCountProcPtr
typealias OSLDisposeTokenUPP = OSLDisposeTokenProcPtr
typealias OSLGetMarkTokenUPP = OSLGetMarkTokenProcPtr
typealias OSLGetErrDescUPP = OSLGetErrDescProcPtr
typealias OSLMarkUPP = OSLMarkProcPtr
typealias OSLAdjustMarksUPP = OSLAdjustMarksProcPtr
func NewOSLAccessorUPP(userRoutine: OSLAccessorProcPtr!) -> OSLAccessorUPP!
func NewOSLCompareUPP(userRoutine: OSLCompareProcPtr!) -> OSLCompareUPP!
func NewOSLCountUPP(userRoutine: OSLCountProcPtr!) -> OSLCountUPP!
func NewOSLDisposeTokenUPP(userRoutine: OSLDisposeTokenProcPtr!) -> OSLDisposeTokenUPP!
func NewOSLGetMarkTokenUPP(userRoutine: OSLGetMarkTokenProcPtr!) -> OSLGetMarkTokenUPP!
func NewOSLGetErrDescUPP(userRoutine: OSLGetErrDescProcPtr!) -> OSLGetErrDescUPP!
func NewOSLMarkUPP(userRoutine: OSLMarkProcPtr!) -> OSLMarkUPP!
func NewOSLAdjustMarksUPP(userRoutine: OSLAdjustMarksProcPtr!) -> OSLAdjustMarksUPP!
func DisposeOSLAccessorUPP(userUPP: OSLAccessorUPP!)
func DisposeOSLCompareUPP(userUPP: OSLCompareUPP!)
func DisposeOSLCountUPP(userUPP: OSLCountUPP!)
func DisposeOSLDisposeTokenUPP(userUPP: OSLDisposeTokenUPP!)
func DisposeOSLGetMarkTokenUPP(userUPP: OSLGetMarkTokenUPP!)
func DisposeOSLGetErrDescUPP(userUPP: OSLGetErrDescUPP!)
func DisposeOSLMarkUPP(userUPP: OSLMarkUPP!)
func DisposeOSLAdjustMarksUPP(userUPP: OSLAdjustMarksUPP!)
func InvokeOSLAccessorUPP(desiredClass: DescType, _ container: UnsafePointer<AEDesc>, _ containerClass: DescType, _ form: DescType, _ selectionData: UnsafePointer<AEDesc>, _ value: UnsafeMutablePointer<AEDesc>, _ accessorRefcon: SRefCon, _ userUPP: OSLAccessorUPP!) -> OSErr
func InvokeOSLCompareUPP(oper: DescType, _ obj1: UnsafePointer<AEDesc>, _ obj2: UnsafePointer<AEDesc>, _ result: UnsafeMutablePointer<DarwinBoolean>, _ userUPP: OSLCompareUPP!) -> OSErr
func InvokeOSLCountUPP(desiredType: DescType, _ containerClass: DescType, _ container: UnsafePointer<AEDesc>, _ result: UnsafeMutablePointer<Int>, _ userUPP: OSLCountUPP!) -> OSErr
func InvokeOSLDisposeTokenUPP(unneededToken: UnsafeMutablePointer<AEDesc>, _ userUPP: OSLDisposeTokenUPP!) -> OSErr
func InvokeOSLGetMarkTokenUPP(dContainerToken: UnsafePointer<AEDesc>, _ containerClass: DescType, _ result: UnsafeMutablePointer<AEDesc>, _ userUPP: OSLGetMarkTokenUPP!) -> OSErr
func InvokeOSLGetErrDescUPP(appDescPtr: UnsafeMutablePointer<UnsafeMutablePointer<AEDesc>>, _ userUPP: OSLGetErrDescUPP!) -> OSErr
func InvokeOSLMarkUPP(dToken: UnsafePointer<AEDesc>, _ markToken: UnsafePointer<AEDesc>, _ index: Int, _ userUPP: OSLMarkUPP!) -> OSErr
func InvokeOSLAdjustMarksUPP(newStart: Int, _ newStop: Int, _ markToken: UnsafePointer<AEDesc>, _ userUPP: OSLAdjustMarksUPP!) -> OSErr
func AEObjectInit() -> OSErr
func AESetObjectCallbacks(myCompareProc: OSLCompareUPP!, _ myCountProc: OSLCountUPP!, _ myDisposeTokenProc: OSLDisposeTokenUPP!, _ myGetMarkTokenProc: OSLGetMarkTokenUPP!, _ myMarkProc: OSLMarkUPP!, _ myAdjustMarksProc: OSLAdjustMarksUPP!, _ myGetErrDescProcPtr: OSLGetErrDescUPP!) -> OSErr
func AEResolve(objectSpecifier: UnsafePointer<AEDesc>, _ callbackFlags: Int16, _ theToken: UnsafeMutablePointer<AEDesc>) -> OSErr
func AEInstallObjectAccessor(desiredClass: DescType, _ containerType: DescType, _ theAccessor: OSLAccessorUPP!, _ accessorRefcon: SRefCon, _ isSysHandler: Bool) -> OSErr
func AERemoveObjectAccessor(desiredClass: DescType, _ containerType: DescType, _ theAccessor: OSLAccessorUPP!, _ isSysHandler: Bool) -> OSErr
func AEGetObjectAccessor(desiredClass: DescType, _ containerType: DescType, _ accessor: UnsafeMutablePointer<OSLAccessorUPP?>, _ accessorRefcon: UnsafeMutablePointer<SRefCon>, _ isSysHandler: Bool) -> OSErr
func AEDisposeToken(theToken: UnsafeMutablePointer<AEDesc>) -> OSErr
func AECallObjectAccessor(desiredClass: DescType, _ containerToken: UnsafePointer<AEDesc>, _ containerClass: DescType, _ keyForm: DescType, _ keyData: UnsafePointer<AEDesc>, _ token: UnsafeMutablePointer<AEDesc>) -> OSErr
func CreateOffsetDescriptor(theOffset: Int, _ theDescriptor: UnsafeMutablePointer<AEDesc>) -> OSErr
func CreateCompDescriptor(comparisonOperator: DescType, _ operand1: UnsafeMutablePointer<AEDesc>, _ operand2: UnsafeMutablePointer<AEDesc>, _ disposeInputs: Bool, _ theDescriptor: UnsafeMutablePointer<AEDesc>) -> OSErr
func CreateLogicalDescriptor(theLogicalTerms: UnsafeMutablePointer<AEDescList>, _ theLogicOperator: DescType, _ disposeInputs: Bool, _ theDescriptor: UnsafeMutablePointer<AEDesc>) -> OSErr
func CreateObjSpecifier(desiredClass: DescType, _ theContainer: UnsafeMutablePointer<AEDesc>, _ keyForm: DescType, _ keyData: UnsafeMutablePointer<AEDesc>, _ disposeInputs: Bool, _ objSpecifier: UnsafeMutablePointer<AEDesc>) -> OSErr
func CreateRangeDescriptor(rangeStart: UnsafeMutablePointer<AEDesc>, _ rangeStop: UnsafeMutablePointer<AEDesc>, _ disposeInputs: Bool, _ theDescriptor: UnsafeMutablePointer<AEDesc>) -> OSErr
var cAEList: Int { get }
var cApplication: Int { get }
var cArc: Int { get }
var cBoolean: Int { get }
var cCell: Int { get }
var cChar: Int { get }
var cColorTable: Int { get }
var cColumn: Int { get }
var cDocument: Int { get }
var cDrawingArea: Int { get }
var cEnumeration: Int { get }
var cFile: Int { get }
var cFixed: Int { get }
var cFixedPoint: Int { get }
var cFixedRectangle: Int { get }
var cGraphicLine: Int { get }
var cGraphicObject: Int { get }
var cGraphicShape: Int { get }
var cGraphicText: Int { get }
var cGroupedGraphic: Int { get }
var cInsertionLoc: Int { get }
var cInsertionPoint: Int { get }
var cIntlText: Int { get }
var cIntlWritingCode: Int { get }
var cItem: Int { get }
var cLine: Int { get }
var cLongDateTime: Int { get }
var cLongFixed: Int { get }
var cLongFixedPoint: Int { get }
var cLongFixedRectangle: Int { get }
var cLongInteger: Int { get }
var cLongPoint: Int { get }
var cLongRectangle: Int { get }
var cMachineLoc: Int { get }
var cMenu: Int { get }
var cMenuItem: Int { get }
var cObject: Int { get }
var cObjectSpecifier: Int { get }
var cOpenableObject: Int { get }
var cOval: Int { get }
var cParagraph: Int { get }
var cPICT: Int { get }
var cPixel: Int { get }
var cPixelMap: Int { get }
var cPolygon: Int { get }
var cProperty: Int { get }
var cQDPoint: Int { get }
var cQDRectangle: Int { get }
var cRectangle: Int { get }
var cRGBColor: Int { get }
var cRotation: Int { get }
var cRoundedRectangle: Int { get }
var cRow: Int { get }
var cSelection: Int { get }
var cShortInteger: Int { get }
var cTable: Int { get }
var cText: Int { get }
var cTextFlow: Int { get }
var cTextStyles: Int { get }
var cType: Int { get }
var cVersion: Int { get }
var cWindow: Int { get }
var cWord: Int { get }
var enumArrows: Int { get }
var enumJustification: Int { get }
var enumKeyForm: Int { get }
var enumPosition: Int { get }
var enumProtection: Int { get }
var enumQuality: Int { get }
var enumSaveOptions: Int { get }
var enumStyle: Int { get }
var enumTransferMode: Int { get }
var kAEAbout: Int { get }
var kAEAfter: Int { get }
var kAEAliasSelection: Int { get }
var kAEAllCaps: Int { get }
var kAEArrowAtEnd: Int { get }
var kAEArrowAtStart: Int { get }
var kAEArrowBothEnds: Int { get }
var kAEAsk: Int { get }
var kAEBefore: Int { get }
var kAEBeginning: Int { get }
var kAEBeginsWith: Int { get }
var kAEBeginTransaction: Int { get }
var kAEBold: Int { get }
var kAECaseSensEquals: Int { get }
var kAECentered: Int { get }
var kAEChangeView: Int { get }
var kAEClone: Int { get }
var kAEClose: Int { get }
var kAECondensed: Int { get }
var kAEContains: Int { get }
var kAECopy: Int { get }
var kAECoreSuite: Int { get }
var kAECountElements: Int { get }
var kAECreateElement: Int { get }
var kAECreatePublisher: Int { get }
var kAECut: Int { get }
var kAEDelete: Int { get }
var kAEDoObjectsExist: Int { get }
var kAEDoScript: Int { get }
var kAEDrag: Int { get }
var kAEDuplicateSelection: Int { get }
var kAEEditGraphic: Int { get }
var kAEEmptyTrash: Int { get }
var kAEEnd: Int { get }
var kAEEndsWith: Int { get }
var kAEEndTransaction: Int { get }
var kAEEquals: Int { get }
var kAEExpanded: Int { get }
var kAEFast: Int { get }
var kAEFinderEvents: Int { get }
var kAEFormulaProtect: Int { get }
var kAEFullyJustified: Int { get }
var kAEGetClassInfo: Int { get }
var kAEGetData: Int { get }
var kAEGetDataSize: Int { get }
var kAEGetEventInfo: Int { get }
var kAEGetInfoSelection: Int { get }
var kAEGetPrivilegeSelection: Int { get }
var kAEGetSuiteInfo: Int { get }
var kAEGreaterThan: Int { get }
var kAEGreaterThanEquals: Int { get }
var kAEGrow: Int { get }
var kAEHidden: Int { get }
var kAEHiQuality: Int { get }
var kAEImageGraphic: Int { get }
var kAEIsUniform: Int { get }
var kAEItalic: Int { get }
var kAELeftJustified: Int { get }
var kAELessThan: Int { get }
var kAELessThanEquals: Int { get }
var kAELowercase: Int { get }
var kAEMakeObjectsVisible: Int { get }
var kAEMiscStandards: Int { get }
var kAEModifiable: Int { get }
var kAEMove: Int { get }
var kAENo: Int { get }
var kAENoArrow: Int { get }
var kAENonmodifiable: Int { get }
var kAEOpen: Int { get }
var kAEOpenSelection: Int { get }
var kAEOutline: Int { get }
var kAEPageSetup: Int { get }
var kAEPaste: Int { get }
var kAEPlain: Int { get }
var kAEPrint: Int { get }
var kAEPrintSelection: Int { get }
var kAEPrintWindow: Int { get }
var kAEPutAwaySelection: Int { get }
var kAEQDAddOver: Int { get }
var kAEQDAddPin: Int { get }
var kAEQDAdMax: Int { get }
var kAEQDAdMin: Int { get }
var kAEQDBic: Int { get }
var kAEQDBlend: Int { get }
var kAEQDCopy: Int { get }
var kAEQDNotBic: Int { get }
var kAEQDNotCopy: Int { get }
var kAEQDNotOr: Int { get }
var kAEQDNotXor: Int { get }
var kAEQDOr: Int { get }
var kAEQDSubOver: Int { get }
var kAEQDSubPin: Int { get }
var kAEQDSupplementalSuite: Int { get }
var kAEQDXor: Int { get }
var kAEQuickdrawSuite: Int { get }
var kAEQuitAll: Int { get }
var kAERedo: Int { get }
var kAERegular: Int { get }
var kAEReopenApplication: Int { get }
var kAEReplace: Int { get }
var kAERequiredSuite: Int { get }
var kAERestart: Int { get }
var kAERevealSelection: Int { get }
var kAERevert: Int { get }
var kAERightJustified: Int { get }
var kAESave: Int { get }
var kAESelect: Int { get }
var kAESetData: Int { get }
var kAESetPosition: Int { get }
var kAEShadow: Int { get }
var kAEShowClipboard: Int { get }
var kAEShutDown: Int { get }
var kAESleep: Int { get }
var kAESmallCaps: Int { get }
var kAESpecialClassProperties: Int { get }
var kAEStrikethrough: Int { get }
var kAESubscript: Int { get }
var kAESuperscript: Int { get }
var kAETableSuite: Int { get }
var kAETextSuite: Int { get }
var kAETransactionTerminated: Int { get }
var kAEUnderline: Int { get }
var kAEUndo: Int { get }
var kAEWholeWordEquals: Int { get }
var kAEYes: Int { get }
var kAEZoom: Int { get }
var kAELogOut: Int { get }
var kAEReallyLogOut: Int { get }
var kAEShowRestartDialog: Int { get }
var kAEShowShutdownDialog: Int { get }
var kAEMouseClass: Int { get }
var kAEDown: Int { get }
var kAEUp: Int { get }
var kAEMoved: Int { get }
var kAEStoppedMoving: Int { get }
var kAEWindowClass: Int { get }
var kAEUpdate: Int { get }
var kAEActivate: Int { get }
var kAEDeactivate: Int { get }
var kAECommandClass: Int { get }
var kAEKeyClass: Int { get }
var kAERawKey: Int { get }
var kAEVirtualKey: Int { get }
var kAENavigationKey: Int { get }
var kAEAutoDown: Int { get }
var kAEApplicationClass: Int { get }
var kAESuspend: Int { get }
var kAEResume: Int { get }
var kAEDiskEvent: Int { get }
var kAENullEvent: Int { get }
var kAEWakeUpEvent: Int { get }
var kAEScrapEvent: Int { get }
var kAEHighLevel: Int { get }
var keyAEAngle: Int { get }
var keyAEArcAngle: Int { get }
var keyAEBaseAddr: Int { get }
var keyAEBestType: Int { get }
var keyAEBgndColor: Int { get }
var keyAEBgndPattern: Int { get }
var keyAEBounds: Int { get }
var keyAECellList: Int { get }
var keyAEClassID: Int { get }
var keyAEColor: Int { get }
var keyAEColorTable: Int { get }
var keyAECurveHeight: Int { get }
var keyAECurveWidth: Int { get }
var keyAEDashStyle: Int { get }
var keyAEData: Int { get }
var keyAEDefaultType: Int { get }
var keyAEDefinitionRect: Int { get }
var keyAEDescType: Int { get }
var keyAEDestination: Int { get }
var keyAEDoAntiAlias: Int { get }
var keyAEDoDithered: Int { get }
var keyAEDoRotate: Int { get }
var keyAEDoScale: Int { get }
var keyAEDoTranslate: Int { get }
var keyAEEditionFileLoc: Int { get }
var keyAEElements: Int { get }
var keyAEEndPoint: Int { get }
var keyAEEventClass: Int { get }
var keyAEEventID: Int { get }
var keyAEFile: Int { get }
var keyAEFileType: Int { get }
var keyAEFillColor: Int { get }
var keyAEFillPattern: Int { get }
var keyAEFlipHorizontal: Int { get }
var keyAEFlipVertical: Int { get }
var keyAEFont: Int { get }
var keyAEFormula: Int { get }
var keyAEGraphicObjects: Int { get }
var keyAEID: Int { get }
var keyAEImageQuality: Int { get }
var keyAEInsertHere: Int { get }
var keyAEKeyForms: Int { get }
var keyAEKeyword: Int { get }
var keyAELevel: Int { get }
var keyAELineArrow: Int { get }
var keyAEName: Int { get }
var keyAENewElementLoc: Int { get }
var keyAEObject: Int { get }
var keyAEObjectClass: Int { get }
var keyAEOffStyles: Int { get }
var keyAEOnStyles: Int { get }
var keyAEParameters: Int { get }
var keyAEParamFlags: Int { get }
var keyAEPenColor: Int { get }
var keyAEPenPattern: Int { get }
var keyAEPenWidth: Int { get }
var keyAEPixelDepth: Int { get }
var keyAEPixMapMinus: Int { get }
var keyAEPMTable: Int { get }
var keyAEPointList: Int { get }
var keyAEPointSize: Int { get }
var keyAEPosition: Int { get }
var keyAEPropData: Int { get }
var keyAEProperties: Int { get }
var keyAEProperty: Int { get }
var keyAEPropFlags: Int { get }
var keyAEPropID: Int { get }
var keyAEProtection: Int { get }
var keyAERenderAs: Int { get }
var keyAERequestedType: Int { get }
var keyAEResult: Int { get }
var keyAEResultInfo: Int { get }
var keyAERotation: Int { get }
var keyAERotPoint: Int { get }
var keyAERowList: Int { get }
var keyAESaveOptions: Int { get }
var keyAEScale: Int { get }
var keyAEScriptTag: Int { get }
var keyAESearchText: Int { get }
var keyAEShowWhere: Int { get }
var keyAEStartAngle: Int { get }
var keyAEStartPoint: Int { get }
var keyAEStyles: Int { get }
var keyAESuiteID: Int { get }
var keyAEText: Int { get }
var keyAETextColor: Int { get }
var keyAETextFont: Int { get }
var keyAETextPointSize: Int { get }
var keyAETextStyles: Int { get }
var keyAETextLineHeight: Int { get }
var keyAETextLineAscent: Int { get }
var keyAETheText: Int { get }
var keyAETransferMode: Int { get }
var keyAETranslation: Int { get }
var keyAETryAsStructGraf: Int { get }
var keyAEUniformStyles: Int { get }
var keyAEUpdateOn: Int { get }
var keyAEUserTerm: Int { get }
var keyAEWindow: Int { get }
var keyAEWritingCode: Int { get }
var keyMiscellaneous: Int { get }
var keySelection: Int { get }
var keyWindow: Int { get }
var keyWhen: Int { get }
var keyWhere: Int { get }
var keyModifiers: Int { get }
var keyKey: Int { get }
var keyKeyCode: Int { get }
var keyKeyboard: Int { get }
var keyDriveNumber: Int { get }
var keyErrorCode: Int { get }
var keyHighLevelClass: Int { get }
var keyHighLevelID: Int { get }
var pArcAngle: Int { get }
var pBackgroundColor: Int { get }
var pBackgroundPattern: Int { get }
var pBestType: Int { get }
var pBounds: Int { get }
var pClass: Int { get }
var pClipboard: Int { get }
var pColor: Int { get }
var pColorTable: Int { get }
var pContents: Int { get }
var pCornerCurveHeight: Int { get }
var pCornerCurveWidth: Int { get }
var pDashStyle: Int { get }
var pDefaultType: Int { get }
var pDefinitionRect: Int { get }
var pEnabled: Int { get }
var pEndPoint: Int { get }
var pFillColor: Int { get }
var pFillPattern: Int { get }
var pFont: Int { get }
var pFormula: Int { get }
var pGraphicObjects: Int { get }
var pHasCloseBox: Int { get }
var pHasTitleBar: Int { get }
var pID: Int { get }
var pIndex: Int { get }
var pInsertionLoc: Int { get }
var pIsFloating: Int { get }
var pIsFrontProcess: Int { get }
var pIsModal: Int { get }
var pIsModified: Int { get }
var pIsResizable: Int { get }
var pIsStationeryPad: Int { get }
var pIsZoomable: Int { get }
var pIsZoomed: Int { get }
var pItemNumber: Int { get }
var pJustification: Int { get }
var pLineArrow: Int { get }
var pMenuID: Int { get }
var pName: Int { get }
var pNewElementLoc: Int { get }
var pPenColor: Int { get }
var pPenPattern: Int { get }
var pPenWidth: Int { get }
var pPixelDepth: Int { get }
var pPointList: Int { get }
var pPointSize: Int { get }
var pProtection: Int { get }
var pRotation: Int { get }
var pScale: Int { get }
var pScript: Int { get }
var pScriptTag: Int { get }
var pSelected: Int { get }
var pSelection: Int { get }
var pStartAngle: Int { get }
var pStartPoint: Int { get }
var pTextColor: Int { get }
var pTextFont: Int { get }
var pTextItemDelimiters: Int { get }
var pTextPointSize: Int { get }
var pTextStyles: Int { get }
var pTransferMode: Int { get }
var pTranslation: Int { get }
var pUniformStyles: Int { get }
var pUpdateOn: Int { get }
var pUserSelection: Int { get }
var pVersion: Int { get }
var pVisible: Int { get }
var typeAEText: Int { get }
var typeArc: Int { get }
var typeBest: Int { get }
var typeCell: Int { get }
var typeClassInfo: Int { get }
var typeColorTable: Int { get }
var typeColumn: Int { get }
var typeDashStyle: Int { get }
var typeData: Int { get }
var typeDrawingArea: Int { get }
var typeElemInfo: Int { get }
var typeEnumeration: Int { get }
var typeEPS: Int { get }
var typeEventInfo: Int { get }
var typeFinderWindow: Int { get }
var typeFixedPoint: Int { get }
var typeFixedRectangle: Int { get }
var typeGraphicLine: Int { get }
var typeGraphicText: Int { get }
var typeGroupedGraphic: Int { get }
var typeInsertionLoc: Int { get }
var typeIntlText: Int { get }
var typeIntlWritingCode: Int { get }
var typeLongDateTime: Int { get }
var typeCFAbsoluteTime: Int { get }
var typeISO8601DateTime: Int { get }
var typeLongFixed: Int { get }
var typeLongFixedPoint: Int { get }
var typeLongFixedRectangle: Int { get }
var typeLongPoint: Int { get }
var typeLongRectangle: Int { get }
var typeMachineLoc: Int { get }
var typeOval: Int { get }
var typeParamInfo: Int { get }
var typePict: Int { get }
var typePixelMap: Int { get }
var typePixMapMinus: Int { get }
var typePolygon: Int { get }
var typePropInfo: Int { get }
var typePtr: Int { get }
var typeQDPoint: Int { get }
var typeQDRegion: Int { get }
var typeRectangle: Int { get }
var typeRGB16: Int { get }
var typeRGB96: Int { get }
var typeRGBColor: Int { get }
var typeRotation: Int { get }
var typeRoundedRectangle: Int { get }
var typeRow: Int { get }
var typeScrapStyles: Int { get }
var typeScript: Int { get }
var typeStyledText: Int { get }
var typeSuiteInfo: Int { get }
var typeTable: Int { get }
var typeTextStyles: Int { get }
var typeTIFF: Int { get }
var typeJPEG: Int { get }
var typeGIF: Int { get }
var typeVersion: Int { get }
var kAEMenuClass: Int { get }
var kAEMenuSelect: Int { get }
var kAEMouseDown: Int { get }
var kAEMouseDownInBack: Int { get }
var kAEKeyDown: Int { get }
var kAEResized: Int { get }
var kAEPromise: Int { get }
var keyMenuID: Int { get }
var keyMenuItem: Int { get }
var keyCloseAllWindows: Int { get }
var keyOriginalBounds: Int { get }
var keyNewBounds: Int { get }
var keyLocalWhere: Int { get }
var typeHIMenu: Int { get }
var typeHIWindow: Int { get }
var kAEQuitPreserveState: Int { get }
var kAEQuitReason: Int { get }
var kBySmallIcon: Int { get }
var kByIconView: Int { get }
var kByNameView: Int { get }
var kByDateView: Int { get }
var kBySizeView: Int { get }
var kByKindView: Int { get }
var kByCommentView: Int { get }
var kByLabelView: Int { get }
var kByVersionView: Int { get }
var kAEInfo: Int { get }
var kAEMain: Int { get }
var kAESharing: Int { get }
var kAEZoomIn: Int { get }
var kAEZoomOut: Int { get }
var kTextServiceClass: Int { get }
var kUpdateActiveInputArea: Int { get }
var kShowHideInputWindow: Int { get }
var kPos2Offset: Int { get }
var kOffset2Pos: Int { get }
var kUnicodeNotFromInputMethod: Int { get }
var kGetSelectedText: Int { get }
var keyAETSMDocumentRefcon: Int { get }
var keyAEServerInstance: Int { get }
var keyAETheData: Int { get }
var keyAEFixLength: Int { get }
var keyAEUpdateRange: Int { get }
var keyAECurrentPoint: Int { get }
var keyAEBufferSize: Int { get }
var keyAEMoveView: Int { get }
var keyAENextBody: Int { get }
var keyAETSMScriptTag: Int { get }
var keyAETSMTextFont: Int { get }
var keyAETSMTextFMFont: Int { get }
var keyAETSMTextPointSize: Int { get }
var keyAETSMEventRecord: Int { get }
var keyAETSMEventRef: Int { get }
var keyAETextServiceEncoding: Int { get }
var keyAETextServiceMacEncoding: Int { get }
var keyAETSMGlyphInfoArray: Int { get }
var typeTextRange: Int { get }
var typeComponentInstance: Int { get }
var typeOffsetArray: Int { get }
var typeTextRangeArray: Int { get }
var typeLowLevelEventRecord: Int { get }
var typeGlyphInfoArray: Int { get }
var typeEventRef: Int { get }
var typeText: Int { get }
var kTSMOutsideOfBody: Int { get }
var kTSMInsideOfBody: Int { get }
var kTSMInsideOfActiveInputArea: Int { get }
var kNextBody: Int { get }
var kPreviousBody: Int { get }
struct TextRange {
  var fStart: Int32
  var fEnd: Int32
  var fHiliteStyle: Int16
  init()
  init(fStart: Int32, fEnd: Int32, fHiliteStyle: Int16)
}
typealias TextRangePtr = UnsafeMutablePointer<TextRange>
typealias TextRangeHandle = UnsafeMutablePointer<TextRangePtr>
struct TextRangeArray {
  var fNumOfRanges: Int16
  var fRange: (TextRange)
  init()
  init(fNumOfRanges: Int16, fRange: (TextRange))
}
typealias TextRangeArrayPtr = UnsafeMutablePointer<TextRangeArray>
typealias TextRangeArrayHandle = UnsafeMutablePointer<TextRangeArrayPtr>
struct OffsetArray {
  var fNumOfOffsets: Int16
  var fOffset: (Int32)
  init()
  init(fNumOfOffsets: Int16, fOffset: (Int32))
}
typealias OffsetArrayPtr = UnsafeMutablePointer<OffsetArray>
typealias OffsetArrayHandle = UnsafeMutablePointer<OffsetArrayPtr>
struct WritingCode {
  var theScriptCode: ScriptCode
  var theLangCode: LangCode
  init()
  init(theScriptCode: ScriptCode, theLangCode: LangCode)
}
struct IntlText {
  var theScriptCode: ScriptCode
  var theLangCode: LangCode
  var theText: (Int8)
  init()
  init(theScriptCode: ScriptCode, theLangCode: LangCode, theText: (Int8))
}
var kTSMHiliteCaretPosition: Int { get }
var kTSMHiliteRawText: Int { get }
var kTSMHiliteSelectedRawText: Int { get }
var kTSMHiliteConvertedText: Int { get }
var kTSMHiliteSelectedConvertedText: Int { get }
var kTSMHiliteBlockFillText: Int { get }
var kTSMHiliteOutlineText: Int { get }
var kTSMHiliteSelectedText: Int { get }
var kTSMHiliteNoHilite: Int { get }
var keyAEHiliteRange: Int { get }
var keyAEPinRange: Int { get }
var keyAEClauseOffsets: Int { get }
var keyAEOffset: Int { get }
var keyAEPoint: Int { get }
var keyAELeftSide: Int { get }
var keyAERegionClass: Int { get }
var keyAEDragging: Int { get }
var typeMeters: Int { get }
var typeInches: Int { get }
var typeFeet: Int { get }
var typeYards: Int { get }
var typeMiles: Int { get }
var typeKilometers: Int { get }
var typeCentimeters: Int { get }
var typeSquareMeters: Int { get }
var typeSquareFeet: Int { get }
var typeSquareYards: Int { get }
var typeSquareMiles: Int { get }
var typeSquareKilometers: Int { get }
var typeLiters: Int { get }
var typeQuarts: Int { get }
var typeGallons: Int { get }
var typeCubicMeters: Int { get }
var typeCubicFeet: Int { get }
var typeCubicInches: Int { get }
var typeCubicCentimeter: Int { get }
var typeCubicYards: Int { get }
var typeKilograms: Int { get }
var typeGrams: Int { get }
var typeOunces: Int { get }
var typePounds: Int { get }
var typeDegreesC: Int { get }
var typeDegreesF: Int { get }
var typeDegreesK: Int { get }
var kFAServerApp: Int { get }
var kDoFolderActionEvent: Int { get }
var kFolderActionCode: Int { get }
var kFolderOpenedEvent: Int { get }
var kFolderClosedEvent: Int { get }
var kFolderWindowMovedEvent: Int { get }
var kFolderItemsAddedEvent: Int { get }
var kFolderItemsRemovedEvent: Int { get }
var kItemList: Int { get }
var kNewSizeParameter: Int { get }
var kFASuiteCode: Int { get }
var kFAAttachCommand: Int { get }
var kFARemoveCommand: Int { get }
var kFAEditCommand: Int { get }
var kFAFileParam: Int { get }
var kFAIndexParam: Int { get }
var kAEInternetSuite: Int { get }
var kAEISWebStarSuite: Int { get }
var kAEISGetURL: Int { get }
var KAEISHandleCGI: Int { get }
var cURL: Int { get }
var cInternetAddress: Int { get }
var cHTML: Int { get }
var cFTPItem: Int { get }
var kAEISHTTPSearchArgs: Int { get }
var kAEISPostArgs: Int { get }
var kAEISMethod: Int { get }
var kAEISClientAddress: Int { get }
var kAEISUserName: Int { get }
var kAEISPassword: Int { get }
var kAEISFromUser: Int { get }
var kAEISServerName: Int { get }
var kAEISServerPort: Int { get }
var kAEISScriptName: Int { get }
var kAEISContentType: Int { get }
var kAEISReferrer: Int { get }
var kAEISUserAgent: Int { get }
var kAEISAction: Int { get }
var kAEISActionPath: Int { get }
var kAEISClientIP: Int { get }
var kAEISFullRequest: Int { get }
var pScheme: Int { get }
var pHost: Int { get }
var pPath: Int { get }
var pUserName: Int { get }
var pUserPassword: Int { get }
var pDNSForm: Int { get }
var pURL: Int { get }
var pTextEncoding: Int { get }
var pFTPKind: Int { get }
var eScheme: Int { get }
var eurlHTTP: Int { get }
var eurlHTTPS: Int { get }
var eurlFTP: Int { get }
var eurlMail: Int { get }
var eurlFile: Int { get }
var eurlGopher: Int { get }
var eurlTelnet: Int { get }
var eurlNews: Int { get }
var eurlSNews: Int { get }
var eurlNNTP: Int { get }
var eurlMessage: Int { get }
var eurlMailbox: Int { get }
var eurlMulti: Int { get }
var eurlLaunch: Int { get }
var eurlAFP: Int { get }
var eurlAT: Int { get }
var eurlEPPC: Int { get }
var eurlRTSP: Int { get }
var eurlIMAP: Int { get }
var eurlNFS: Int { get }
var eurlPOP: Int { get }
var eurlLDAP: Int { get }
var eurlUnknown: Int { get }
var kConnSuite: Int { get }
var cDevSpec: Int { get }
var cAddressSpec: Int { get }
var cADBAddress: Int { get }
var cAppleTalkAddress: Int { get }
var cBusAddress: Int { get }
var cEthernetAddress: Int { get }
var cFireWireAddress: Int { get }
var cIPAddress: Int { get }
var cLocalTalkAddress: Int { get }
var cSCSIAddress: Int { get }
var cTokenRingAddress: Int { get }
var cUSBAddress: Int { get }
var pDeviceType: Int { get }
var pDeviceAddress: Int { get }
var pConduit: Int { get }
var pProtocol: Int { get }
var pATMachine: Int { get }
var pATZone: Int { get }
var pATType: Int { get }
var pDottedDecimal: Int { get }
var pDNS: Int { get }
var pPort: Int { get }
var pNetwork: Int { get }
var pNode: Int { get }
var pSocket: Int { get }
var pSCSIBus: Int { get }
var pSCSILUN: Int { get }
var eDeviceType: Int { get }
var eAddressSpec: Int { get }
var eConduit: Int { get }
var eProtocol: Int { get }
var eADB: Int { get }
var eAnalogAudio: Int { get }
var eAppleTalk: Int { get }
var eAudioLineIn: Int { get }
var eAudioLineOut: Int { get }
var eAudioOut: Int { get }
var eBus: Int { get }
var eCDROM: Int { get }
var eCommSlot: Int { get }
var eDigitalAudio: Int { get }
var eDisplay: Int { get }
var eDVD: Int { get }
var eEthernet: Int { get }
var eFireWire: Int { get }
var eFloppy: Int { get }
var eHD: Int { get }
var eInfrared: Int { get }
var eIP: Int { get }
var eIrDA: Int { get }
var eIRTalk: Int { get }
var eKeyboard: Int { get }
var eLCD: Int { get }
var eLocalTalk: Int { get }
var eMacIP: Int { get }
var eMacVideo: Int { get }
var eMicrophone: Int { get }
var eModemPort: Int { get }
var eModemPrinterPort: Int { get }
var eModem: Int { get }
var eMonitorOut: Int { get }
var eMouse: Int { get }
var eNuBusCard: Int { get }
var eNuBus: Int { get }
var ePCcard: Int { get }
var ePCIbus: Int { get }
var ePCIcard: Int { get }
var ePDSslot: Int { get }
var ePDScard: Int { get }
var ePointingDevice: Int { get }
var ePostScript: Int { get }
var ePPP: Int { get }
var ePrinterPort: Int { get }
var ePrinter: Int { get }
var eSvideo: Int { get }
var eSCSI: Int { get }
var eSerial: Int { get }
var eSpeakers: Int { get }
var eStorageDevice: Int { get }
var eSVGA: Int { get }
var eTokenRing: Int { get }
var eTrackball: Int { get }
var eTrackpad: Int { get }
var eUSB: Int { get }
var eVideoIn: Int { get }
var eVideoMonitor: Int { get }
var eVideoOut: Int { get }
var cKeystroke: Int { get }
var pKeystrokeKey: Int { get }
var pModifiers: Int { get }
var pKeyKind: Int { get }
var eModifiers: Int { get }
var eOptionDown: Int { get }
var eCommandDown: Int { get }
var eControlDown: Int { get }
var eShiftDown: Int { get }
var eCapsLockDown: Int { get }
var eKeyKind: Int { get }
var eEscapeKey: Int { get }
var eDeleteKey: Int { get }
var eTabKey: Int { get }
var eReturnKey: Int { get }
var eClearKey: Int { get }
var eEnterKey: Int { get }
var eUpArrowKey: Int { get }
var eDownArrowKey: Int { get }
var eLeftArrowKey: Int { get }
var eRightArrowKey: Int { get }
var eHelpKey: Int { get }
var eHomeKey: Int { get }
var ePageUpKey: Int { get }
var ePageDownKey: Int { get }
var eForwardDelKey: Int { get }
var eEndKey: Int { get }
var eF1Key: Int { get }
var eF2Key: Int { get }
var eF3Key: Int { get }
var eF4Key: Int { get }
var eF5Key: Int { get }
var eF6Key: Int { get }
var eF7Key: Int { get }
var eF8Key: Int { get }
var eF9Key: Int { get }
var eF10Key: Int { get }
var eF11Key: Int { get }
var eF12Key: Int { get }
var eF13Key: Int { get }
var eF14Key: Int { get }
var eF15Key: Int { get }
var keyAELaunchedAsLogInItem: Int { get }
var keyAELaunchedAsServiceItem: Int { get }
var kAEUserTerminology: Int { get }
var kAETerminologyExtension: Int { get }
var kAEScriptingSizeResource: Int { get }
var kAEOSAXSizeResource: Int { get }
var kAEUTHasReturningParam: Int { get }
var kAEUTOptional: Int { get }
var kAEUTlistOfItems: Int { get }
var kAEUTEnumerated: Int { get }
var kAEUTReadWrite: Int { get }
var kAEUTChangesState: Int { get }
var kAEUTTightBindingFunction: Int { get }
var kAEUTEnumsAreTypes: Int { get }
var kAEUTEnumListIsExclusive: Int { get }
var kAEUTReplyIsReference: Int { get }
var kAEUTDirectParamIsReference: Int { get }
var kAEUTParamIsReference: Int { get }
var kAEUTPropertyIsReference: Int { get }
var kAEUTNotDirectParamIsTarget: Int { get }
var kAEUTParamIsTarget: Int { get }
var kAEUTApostrophe: Int { get }
var kAEUTFeminine: Int { get }
var kAEUTMasculine: Int { get }
var kAEUTPlural: Int { get }
struct TScriptingSizeResource {
  var scriptingSizeFlags: Int16
  var minStackSize: UInt32
  var preferredStackSize: UInt32
  var maxStackSize: UInt32
  var minHeapSize: UInt32
  var preferredHeapSize: UInt32
  var maxHeapSize: UInt32
  init()
  init(scriptingSizeFlags: Int16, minStackSize: UInt32, preferredStackSize: UInt32, maxStackSize: UInt32, minHeapSize: UInt32, preferredHeapSize: UInt32, maxHeapSize: UInt32)
}
var kLaunchToGetTerminology: Int { get }
var kDontFindAppBySignature: Int { get }
var kAlwaysSendSubject: Int { get }
var kReadExtensionTermsMask: Int { get }
var kOSIZDontOpenResourceFile: Int { get }
var kOSIZdontAcceptRemoteEvents: Int { get }
var kOSIZOpenWithReadPermission: Int { get }
var kOSIZCodeInSharedLibraries: Int { get }
var keyDirectObject: Int { get }
var keyErrorNumber: Int { get }
var keyErrorString: Int { get }
var keyProcessSerialNumber: Int { get }
var keyPreDispatch: Int { get }
var keySelectProc: Int { get }
var keyAERecorderCount: Int { get }
var keyAEVersion: Int { get }
var kCoreEventClass: Int { get }
var kAEOpenApplication: Int { get }
var kAEOpenDocuments: Int { get }
var kAEPrintDocuments: Int { get }
var kAEOpenContents: Int { get }
var kAEQuitApplication: Int { get }
var kAEAnswer: Int { get }
var kAEApplicationDied: Int { get }
var kAEShowPreferences: Int { get }
var kAEStartRecording: Int { get }
var kAEStopRecording: Int { get }
var kAENotifyStartRecording: Int { get }
var kAENotifyStopRecording: Int { get }
var kAENotifyRecording: Int { get }
typealias AEEventSource = Int8
var kAEUnknownSource: Int { get }
var kAEDirectCall: Int { get }
var kAESameProcess: Int { get }
var kAELocalProcess: Int { get }
var kAERemoteProcess: Int { get }
var errAETargetAddressNotPermitted: Int { get }
var errAEEventNotPermitted: Int { get }
func AEInstallEventHandler(theAEEventClass: AEEventClass, _ theAEEventID: AEEventID, _ handler: AEEventHandlerUPP!, _ handlerRefcon: SRefCon, _ isSysHandler: Bool) -> OSErr
func AERemoveEventHandler(theAEEventClass: AEEventClass, _ theAEEventID: AEEventID, _ handler: AEEventHandlerUPP!, _ isSysHandler: Bool) -> OSErr
func AEGetEventHandler(theAEEventClass: AEEventClass, _ theAEEventID: AEEventID, _ handler: UnsafeMutablePointer<AEEventHandlerUPP?>, _ handlerRefcon: UnsafeMutablePointer<SRefCon>, _ isSysHandler: Bool) -> OSErr
func AEInstallSpecialHandler(functionClass: AEKeyword, _ handler: AEEventHandlerUPP!, _ isSysHandler: Bool) -> OSErr
func AERemoveSpecialHandler(functionClass: AEKeyword, _ handler: AEEventHandlerUPP!, _ isSysHandler: Bool) -> OSErr
func AEGetSpecialHandler(functionClass: AEKeyword, _ handler: UnsafeMutablePointer<AEEventHandlerUPP?>, _ isSysHandler: Bool) -> OSErr
func AEManagerInfo(keyWord: AEKeyword, _ result: UnsafeMutablePointer<Int>) -> OSErr
let kAERemoteProcessURLKey: CFString!
let kAERemoteProcessNameKey: CFString!
let kAERemoteProcessUserIDKey: CFString!
let kAERemoteProcessProcessIDKey: CFString!
struct AERemoteProcessResolverContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack!
  var release: CFAllocatorReleaseCallBack!
  var copyDescription: CFAllocatorCopyDescriptionCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack!, release: CFAllocatorReleaseCallBack!, copyDescription: CFAllocatorCopyDescriptionCallBack!)
}
typealias AERemoteProcessResolverRef = COpaquePointer
func AECreateRemoteProcessResolver(allocator: CFAllocator!, _ url: CFURL!) -> AERemoteProcessResolverRef
func AEDisposeRemoteProcessResolver(ref: AERemoteProcessResolverRef)
func AERemoteProcessResolverGetProcesses(ref: AERemoteProcessResolverRef, _ outError: UnsafeMutablePointer<CFStreamError>) -> Unmanaged<CFArray>!
typealias AERemoteProcessResolverCallback = @convention(c) (AERemoteProcessResolverRef, UnsafeMutablePointer<Void>) -> Void
func AERemoteProcessResolverScheduleWithRunLoop(ref: AERemoteProcessResolverRef, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!, _ callback: AERemoteProcessResolverCallback!, _ ctx: UnsafePointer<AERemoteProcessResolverContext>)
func CSBackupSetItemExcluded(item: CFURL!, _ exclude: Bool, _ excludeByPath: Bool) -> OSStatus
func CSBackupIsItemExcluded(item: CFURL!, _ excludeByPath: UnsafeMutablePointer<DarwinBoolean>) -> Bool
var kCSDiskSpaceRecoveryOptionNoUI: Int { get }
typealias CSDiskSpaceRecoveryOptions = Int32
typealias CSDiskSpaceRecoveryCallback = (Bool, UInt64, CFError!) -> Void
func CSDiskSpaceStartRecovery(volumeURL: CFURL!, _ bytesNeeded: UInt64, _ options: CSDiskSpaceRecoveryOptions, _ outOperationUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>, _ callbackQueue: dispatch_queue_t!, _ callback: CSDiskSpaceRecoveryCallback!)
func CSDiskSpaceCancelRecovery(operationUUID: CFUUID!)
func CSDiskSpaceGetRecoveryEstimate(volumeURL: CFURL!) -> UInt64
var paramErr: Int { get }
var noHardwareErr: Int { get }
var notEnoughHardwareErr: Int { get }
var userCanceledErr: Int { get }
var qErr: Int { get }
var vTypErr: Int { get }
var corErr: Int { get }
var unimpErr: Int { get }
var SlpTypeErr: Int { get }
var seNoDB: Int { get }
var controlErr: Int { get }
var statusErr: Int { get }
var readErr: Int { get }
var writErr: Int { get }
var badUnitErr: Int { get }
var unitEmptyErr: Int { get }
var openErr: Int { get }
var closErr: Int { get }
var dRemovErr: Int { get }
var dInstErr: Int { get }
var abortErr: Int { get }
var iIOAbortErr: Int { get }
var notOpenErr: Int { get }
var unitTblFullErr: Int { get }
var dceExtErr: Int { get }
var slotNumErr: Int { get }
var gcrOnMFMErr: Int { get }
var dirFulErr: Int { get }
var dskFulErr: Int { get }
var nsvErr: Int { get }
var ioErr: Int { get }
var bdNamErr: Int { get }
var fnOpnErr: Int { get }
var eofErr: Int { get }
var posErr: Int { get }
var mFulErr: Int { get }
var tmfoErr: Int { get }
var fnfErr: Int { get }
var wPrErr: Int { get }
var fLckdErr: Int { get }
var vLckdErr: Int { get }
var fBsyErr: Int { get }
var dupFNErr: Int { get }
var opWrErr: Int { get }
var rfNumErr: Int { get }
var gfpErr: Int { get }
var volOffLinErr: Int { get }
var permErr: Int { get }
var volOnLinErr: Int { get }
var nsDrvErr: Int { get }
var noMacDskErr: Int { get }
var extFSErr: Int { get }
var fsRnErr: Int { get }
var badMDBErr: Int { get }
var wrPermErr: Int { get }
var dirNFErr: Int { get }
var tmwdoErr: Int { get }
var badMovErr: Int { get }
var wrgVolTypErr: Int { get }
var volGoneErr: Int { get }
var fidNotFound: Int { get }
var fidExists: Int { get }
var notAFileErr: Int { get }
var diffVolErr: Int { get }
var catChangedErr: Int { get }
var desktopDamagedErr: Int { get }
var sameFileErr: Int { get }
var badFidErr: Int { get }
var notARemountErr: Int { get }
var fileBoundsErr: Int { get }
var fsDataTooBigErr: Int { get }
var volVMBusyErr: Int { get }
var badFCBErr: Int { get }
var errFSUnknownCall: Int { get }
var errFSBadFSRef: Int { get }
var errFSBadForkName: Int { get }
var errFSBadBuffer: Int { get }
var errFSBadForkRef: Int { get }
var errFSBadInfoBitmap: Int { get }
var errFSMissingCatInfo: Int { get }
var errFSNotAFolder: Int { get }
var errFSForkNotFound: Int { get }
var errFSNameTooLong: Int { get }
var errFSMissingName: Int { get }
var errFSBadPosMode: Int { get }
var errFSBadAllocFlags: Int { get }
var errFSNoMoreItems: Int { get }
var errFSBadItemCount: Int { get }
var errFSBadSearchParams: Int { get }
var errFSRefsDifferent: Int { get }
var errFSForkExists: Int { get }
var errFSBadIteratorFlags: Int { get }
var errFSIteratorNotFound: Int { get }
var errFSIteratorNotSupported: Int { get }
var errFSQuotaExceeded: Int { get }
var errFSOperationNotSupported: Int { get }
var errFSAttributeNotFound: Int { get }
var errFSPropertyNotValid: Int { get }
var errFSNotEnoughSpaceForOperation: Int { get }
var envNotPresent: Int { get }
var envBadVers: Int { get }
var envVersTooBig: Int { get }
var fontDecError: Int { get }
var fontNotDeclared: Int { get }
var fontSubErr: Int { get }
var fontNotOutlineErr: Int { get }
var firstDskErr: Int { get }
var lastDskErr: Int { get }
var noDriveErr: Int { get }
var offLinErr: Int { get }
var noNybErr: Int { get }
var noAdrMkErr: Int { get }
var dataVerErr: Int { get }
var badCksmErr: Int { get }
var badBtSlpErr: Int { get }
var noDtaMkErr: Int { get }
var badDCksum: Int { get }
var badDBtSlp: Int { get }
var wrUnderrun: Int { get }
var cantStepErr: Int { get }
var tk0BadErr: Int { get }
var initIWMErr: Int { get }
var twoSideErr: Int { get }
var spdAdjErr: Int { get }
var seekErr: Int { get }
var sectNFErr: Int { get }
var fmt1Err: Int { get }
var fmt2Err: Int { get }
var verErr: Int { get }
var clkRdErr: Int { get }
var clkWrErr: Int { get }
var prWrErr: Int { get }
var prInitErr: Int { get }
var rcvrErr: Int { get }
var breakRecd: Int { get }
var noScrapErr: Int { get }
var noTypeErr: Int { get }
var eLenErr: Int { get }
var eMultiErr: Int { get }
var ddpSktErr: Int { get }
var ddpLenErr: Int { get }
var noBridgeErr: Int { get }
var lapProtErr: Int { get }
var excessCollsns: Int { get }
var portNotPwr: Int { get }
var portInUse: Int { get }
var portNotCf: Int { get }
var memROZWarn: Int { get }
var memROZError: Int { get }
var memROZErr: Int { get }
var memFullErr: Int { get }
var nilHandleErr: Int { get }
var memWZErr: Int { get }
var memPurErr: Int { get }
var memAdrErr: Int { get }
var memAZErr: Int { get }
var memPCErr: Int { get }
var memBCErr: Int { get }
var memSCErr: Int { get }
var memLockedErr: Int { get }
var iMemFullErr: Int { get }
var iIOAbort: Int { get }
var resourceInMemory: Int { get }
var writingPastEnd: Int { get }
var inputOutOfBounds: Int { get }
var resNotFound: Int { get }
var resFNotFound: Int { get }
var addResFailed: Int { get }
var addRefFailed: Int { get }
var rmvResFailed: Int { get }
var rmvRefFailed: Int { get }
var resAttrErr: Int { get }
var mapReadErr: Int { get }
var CantDecompress: Int { get }
var badExtResource: Int { get }
var noMemForPictPlaybackErr: Int { get }
var rgnOverflowErr: Int { get }
var rgnTooBigError: Int { get }
var pixMapTooDeepErr: Int { get }
var insufficientStackErr: Int { get }
var nsStackErr: Int { get }
var evtNotEnb: Int { get }
var cMatchErr: Int { get }
var cTempMemErr: Int { get }
var cNoMemErr: Int { get }
var cRangeErr: Int { get }
var cProtectErr: Int { get }
var cDevErr: Int { get }
var cResErr: Int { get }
var cDepthErr: Int { get }
var rgnTooBigErr: Int { get }
var updPixMemErr: Int { get }
var pictInfoVersionErr: Int { get }
var pictInfoIDErr: Int { get }
var pictInfoVerbErr: Int { get }
var cantLoadPickMethodErr: Int { get }
var colorsRequestedErr: Int { get }
var pictureDataErr: Int { get }
var cmProfileError: Int { get }
var cmMethodError: Int { get }
var cmMethodNotFound: Int { get }
var cmProfileNotFound: Int { get }
var cmProfilesIdentical: Int { get }
var cmCantConcatenateError: Int { get }
var cmCantXYZ: Int { get }
var cmCantDeleteProfile: Int { get }
var cmUnsupportedDataType: Int { get }
var cmNoCurrentProfile: Int { get }
var noHardware: Int { get }
var notEnoughHardware: Int { get }
var queueFull: Int { get }
var resProblem: Int { get }
var badChannel: Int { get }
var badFormat: Int { get }
var notEnoughBufferSpace: Int { get }
var badFileFormat: Int { get }
var channelBusy: Int { get }
var buffersTooSmall: Int { get }
var channelNotBusy: Int { get }
var noMoreRealTime: Int { get }
var siVBRCompressionNotSupported: Int { get }
var siNoSoundInHardware: Int { get }
var siBadSoundInDevice: Int { get }
var siNoBufferSpecified: Int { get }
var siInvalidCompression: Int { get }
var siHardDriveTooSlow: Int { get }
var siInvalidSampleRate: Int { get }
var siInvalidSampleSize: Int { get }
var siDeviceBusyErr: Int { get }
var siBadDeviceName: Int { get }
var siBadRefNum: Int { get }
var siInputDeviceErr: Int { get }
var siUnknownInfoType: Int { get }
var siUnknownQuality: Int { get }
var noSynthFound: Int { get }
var synthOpenFailed: Int { get }
var synthNotReady: Int { get }
var bufTooSmall: Int { get }
var voiceNotFound: Int { get }
var incompatibleVoice: Int { get }
var badDictFormat: Int { get }
var badInputText: Int { get }
var midiNoClientErr: Int { get }
var midiNoPortErr: Int { get }
var midiTooManyPortsErr: Int { get }
var midiTooManyConsErr: Int { get }
var midiVConnectErr: Int { get }
var midiVConnectMade: Int { get }
var midiVConnectRmvd: Int { get }
var midiNoConErr: Int { get }
var midiWriteErr: Int { get }
var midiNameLenErr: Int { get }
var midiDupIDErr: Int { get }
var midiInvalidCmdErr: Int { get }
var nmTypErr: Int { get }
var siInitSDTblErr: Int { get }
var siInitVBLQsErr: Int { get }
var siInitSPTblErr: Int { get }
var sdmJTInitErr: Int { get }
var sdmInitErr: Int { get }
var sdmSRTInitErr: Int { get }
var sdmPRAMInitErr: Int { get }
var sdmPriInitErr: Int { get }
var smSDMInitErr: Int { get }
var smSRTInitErr: Int { get }
var smPRAMInitErr: Int { get }
var smPriInitErr: Int { get }
var smEmptySlot: Int { get }
var smCRCFail: Int { get }
var smFormatErr: Int { get }
var smRevisionErr: Int { get }
var smNoDir: Int { get }
var smDisabledSlot: Int { get }
var smNosInfoArray: Int { get }
var smResrvErr: Int { get }
var smUnExBusErr: Int { get }
var smBLFieldBad: Int { get }
var smFHBlockRdErr: Int { get }
var smFHBlkDispErr: Int { get }
var smDisposePErr: Int { get }
var smNoBoardSRsrc: Int { get }
var smGetPRErr: Int { get }
var smNoBoardId: Int { get }
var smInitStatVErr: Int { get }
var smInitTblVErr: Int { get }
var smNoJmpTbl: Int { get }
var smReservedSlot: Int { get }
var smBadBoardId: Int { get }
var smBusErrTO: Int { get }
var svTempDisable: Int { get }
var svDisabled: Int { get }
var smBadRefId: Int { get }
var smBadsList: Int { get }
var smReservedErr: Int { get }
var smCodeRevErr: Int { get }
var smCPUErr: Int { get }
var smsPointerNil: Int { get }
var smNilsBlockErr: Int { get }
var smSlotOOBErr: Int { get }
var smSelOOBErr: Int { get }
var smNewPErr: Int { get }
var smBlkMoveErr: Int { get }
var smCkStatusErr: Int { get }
var smGetDrvrNamErr: Int { get }
var smDisDrvrNamErr: Int { get }
var smNoMoresRsrcs: Int { get }
var smsGetDrvrErr: Int { get }
var smBadsPtrErr: Int { get }
var smByteLanesErr: Int { get }
var smOffsetErr: Int { get }
var smNoGoodOpens: Int { get }
var smSRTOvrFlErr: Int { get }
var smRecNotFnd: Int { get }
var notBTree: Int { get }
var btNoSpace: Int { get }
var btDupRecErr: Int { get }
var btRecNotFnd: Int { get }
var btKeyLenErr: Int { get }
var btKeyAttrErr: Int { get }
var unknownInsertModeErr: Int { get }
var recordDataTooBigErr: Int { get }
var invalidIndexErr: Int { get }
var fsmFFSNotFoundErr: Int { get }
var fsmBusyFFSErr: Int { get }
var fsmBadFFSNameErr: Int { get }
var fsmBadFSDLenErr: Int { get }
var fsmDuplicateFSIDErr: Int { get }
var fsmBadFSDVersionErr: Int { get }
var fsmNoAlternateStackErr: Int { get }
var fsmUnknownFSMMessageErr: Int { get }
var editionMgrInitErr: Int { get }
var badSectionErr: Int { get }
var notRegisteredSectionErr: Int { get }
var badEditionFileErr: Int { get }
var badSubPartErr: Int { get }
var multiplePublisherWrn: Int { get }
var containerNotFoundWrn: Int { get }
var containerAlreadyOpenWrn: Int { get }
var notThePublisherWrn: Int { get }
var teScrapSizeErr: Int { get }
var hwParamErr: Int { get }
var driverHardwareGoneErr: Int { get }
var procNotFound: Int { get }
var memFragErr: Int { get }
var appModeErr: Int { get }
var protocolErr: Int { get }
var hardwareConfigErr: Int { get }
var appMemFullErr: Int { get }
var appIsDaemon: Int { get }
var bufferIsSmall: Int { get }
var noOutstandingHLE: Int { get }
var connectionInvalid: Int { get }
var noUserInteractionAllowed: Int { get }
var wrongApplicationPlatform: Int { get }
var appVersionTooOld: Int { get }
var notAppropriateForClassic: Int { get }
var threadTooManyReqsErr: Int { get }
var threadNotFoundErr: Int { get }
var threadProtocolErr: Int { get }
var threadBadAppContextErr: Int { get }
var notEnoughMemoryErr: Int { get }
var notHeldErr: Int { get }
var cannotMakeContiguousErr: Int { get }
var notLockedErr: Int { get }
var interruptsMaskedErr: Int { get }
var cannotDeferErr: Int { get }
var noMMUErr: Int { get }
var vmMorePhysicalThanVirtualErr: Int { get }
var vmKernelMMUInitErr: Int { get }
var vmOffErr: Int { get }
var vmMemLckdErr: Int { get }
var vmBadDriver: Int { get }
var vmNoVectorErr: Int { get }
var vmInvalidBackingFileIDErr: Int { get }
var vmMappingPrivilegesErr: Int { get }
var vmBusyBackingFileErr: Int { get }
var vmNoMoreBackingFilesErr: Int { get }
var vmInvalidFileViewIDErr: Int { get }
var vmFileViewAccessErr: Int { get }
var vmNoMoreFileViewsErr: Int { get }
var vmAddressNotInFileViewErr: Int { get }
var vmInvalidOwningProcessErr: Int { get }
var rcDBNull: Int { get }
var rcDBValue: Int { get }
var rcDBError: Int { get }
var rcDBBadType: Int { get }
var rcDBBreak: Int { get }
var rcDBExec: Int { get }
var rcDBBadSessID: Int { get }
var rcDBBadSessNum: Int { get }
var rcDBBadDDEV: Int { get }
var rcDBAsyncNotSupp: Int { get }
var rcDBBadAsyncPB: Int { get }
var rcDBNoHandler: Int { get }
var rcDBWrongVersion: Int { get }
var rcDBPackNotInited: Int { get }
var hmHelpDisabled: Int { get }
var hmBalloonAborted: Int { get }
var hmSameAsLastBalloon: Int { get }
var hmHelpManagerNotInited: Int { get }
var hmSkippedBalloon: Int { get }
var hmWrongVersion: Int { get }
var hmUnknownHelpType: Int { get }
var hmOperationUnsupported: Int { get }
var hmNoBalloonUp: Int { get }
var hmCloseViewActive: Int { get }
var notInitErr: Int { get }
var nameTypeErr: Int { get }
var noPortErr: Int { get }
var noGlobalsErr: Int { get }
var localOnlyErr: Int { get }
var destPortErr: Int { get }
var sessTableErr: Int { get }
var noSessionErr: Int { get }
var badReqErr: Int { get }
var portNameExistsErr: Int { get }
var noUserNameErr: Int { get }
var userRejectErr: Int { get }
var noMachineNameErr: Int { get }
var noToolboxNameErr: Int { get }
var noResponseErr: Int { get }
var portClosedErr: Int { get }
var sessClosedErr: Int { get }
var badPortNameErr: Int { get }
var noDefaultUserErr: Int { get }
var notLoggedInErr: Int { get }
var noUserRefErr: Int { get }
var networkErr: Int { get }
var noInformErr: Int { get }
var authFailErr: Int { get }
var noUserRecErr: Int { get }
var badServiceMethodErr: Int { get }
var badLocNameErr: Int { get }
var guestNotAllowedErr: Int { get }
var kFMIterationCompleted: Int { get }
var kFMInvalidFontFamilyErr: Int { get }
var kFMInvalidFontErr: Int { get }
var kFMIterationScopeModifiedErr: Int { get }
var kFMFontTableAccessErr: Int { get }
var kFMFontContainerAccessErr: Int { get }
var noMaskFoundErr: Int { get }
var nbpBuffOvr: Int { get }
var nbpNoConfirm: Int { get }
var nbpConfDiff: Int { get }
var nbpDuplicate: Int { get }
var nbpNotFound: Int { get }
var nbpNISErr: Int { get }
var aspBadVersNum: Int { get }
var aspBufTooSmall: Int { get }
var aspNoMoreSess: Int { get }
var aspNoServers: Int { get }
var aspParamErr: Int { get }
var aspServerBusy: Int { get }
var aspSessClosed: Int { get }
var aspSizeErr: Int { get }
var aspTooMany: Int { get }
var aspNoAck: Int { get }
var reqFailed: Int { get }
var tooManyReqs: Int { get }
var tooManySkts: Int { get }
var badATPSkt: Int { get }
var badBuffNum: Int { get }
var noRelErr: Int { get }
var cbNotFound: Int { get }
var noSendResp: Int { get }
var noDataArea: Int { get }
var reqAborted: Int { get }
var errRefNum: Int { get }
var errAborted: Int { get }
var errState: Int { get }
var errOpening: Int { get }
var errAttention: Int { get }
var errFwdReset: Int { get }
var errDSPQueueSize: Int { get }
var errOpenDenied: Int { get }
var errAECoercionFail: Int { get }
var errAEDescNotFound: Int { get }
var errAECorruptData: Int { get }
var errAEWrongDataType: Int { get }
var errAENotAEDesc: Int { get }
var errAEBadListItem: Int { get }
var errAENewerVersion: Int { get }
var errAENotAppleEvent: Int { get }
var errAEEventNotHandled: Int { get }
var errAEReplyNotValid: Int { get }
var errAEUnknownSendMode: Int { get }
var errAEWaitCanceled: Int { get }
var errAETimeout: Int { get }
var errAENoUserInteraction: Int { get }
var errAENotASpecialFunction: Int { get }
var errAEParamMissed: Int { get }
var errAEUnknownAddressType: Int { get }
var errAEHandlerNotFound: Int { get }
var errAEReplyNotArrived: Int { get }
var errAEIllegalIndex: Int { get }
var errAEImpossibleRange: Int { get }
var errAEWrongNumberArgs: Int { get }
var errAEAccessorNotFound: Int { get }
var errAENoSuchLogical: Int { get }
var errAEBadTestKey: Int { get }
var errAENotAnObjSpec: Int { get }
var errAENoSuchObject: Int { get }
var errAENegativeCount: Int { get }
var errAEEmptyListContainer: Int { get }
var errAEUnknownObjectType: Int { get }
var errAERecordingIsAlreadyOn: Int { get }
var errAEReceiveTerminate: Int { get }
var errAEReceiveEscapeCurrent: Int { get }
var errAEEventFiltered: Int { get }
var errAEDuplicateHandler: Int { get }
var errAEStreamBadNesting: Int { get }
var errAEStreamAlreadyConverted: Int { get }
var errAEDescIsNull: Int { get }
var errAEBuildSyntaxError: Int { get }
var errAEBufferTooSmall: Int { get }
var errOSASystemError: Int { get }
var errOSAInvalidID: Int { get }
var errOSABadStorageType: Int { get }
var errOSAScriptError: Int { get }
var errOSABadSelector: Int { get }
var errOSASourceNotAvailable: Int { get }
var errOSANoSuchDialect: Int { get }
var errOSADataFormatObsolete: Int { get }
var errOSADataFormatTooNew: Int { get }
var errOSACorruptData: Int { get }
var errOSARecordingIsAlreadyOn: Int { get }
var errOSAComponentMismatch: Int { get }
var errOSACantOpenComponent: Int { get }
var errOSACantStorePointers: Int { get }
var errOffsetInvalid: Int { get }
var errOffsetIsOutsideOfView: Int { get }
var errTopOfDocument: Int { get }
var errTopOfBody: Int { get }
var errEndOfDocument: Int { get }
var errEndOfBody: Int { get }
var badDragRefErr: Int { get }
var badDragItemErr: Int { get }
var badDragFlavorErr: Int { get }
var duplicateFlavorErr: Int { get }
var cantGetFlavorErr: Int { get }
var duplicateHandlerErr: Int { get }
var handlerNotFoundErr: Int { get }
var dragNotAcceptedErr: Int { get }
var unsupportedForPlatformErr: Int { get }
var noSuitableDisplaysErr: Int { get }
var badImageRgnErr: Int { get }
var badImageErr: Int { get }
var nonDragOriginatorErr: Int { get }
var couldNotResolveDataRef: Int { get }
var badImageDescription: Int { get }
var badPublicMovieAtom: Int { get }
var cantFindHandler: Int { get }
var cantOpenHandler: Int { get }
var badComponentType: Int { get }
var noMediaHandler: Int { get }
var noDataHandler: Int { get }
var invalidMedia: Int { get }
var invalidTrack: Int { get }
var invalidMovie: Int { get }
var invalidSampleTable: Int { get }
var invalidDataRef: Int { get }
var invalidHandler: Int { get }
var invalidDuration: Int { get }
var invalidTime: Int { get }
var cantPutPublicMovieAtom: Int { get }
var badEditList: Int { get }
var mediaTypesDontMatch: Int { get }
var progressProcAborted: Int { get }
var movieToolboxUninitialized: Int { get }
var noRecordOfApp: Int { get }
var wfFileNotFound: Int { get }
var cantCreateSingleForkFile: Int { get }
var invalidEditState: Int { get }
var nonMatchingEditState: Int { get }
var staleEditState: Int { get }
var userDataItemNotFound: Int { get }
var maxSizeToGrowTooSmall: Int { get }
var badTrackIndex: Int { get }
var trackIDNotFound: Int { get }
var trackNotInMovie: Int { get }
var timeNotInTrack: Int { get }
var timeNotInMedia: Int { get }
var badEditIndex: Int { get }
var internalQuickTimeError: Int { get }
var cantEnableTrack: Int { get }
var invalidRect: Int { get }
var invalidSampleNum: Int { get }
var invalidChunkNum: Int { get }
var invalidSampleDescIndex: Int { get }
var invalidChunkCache: Int { get }
var invalidSampleDescription: Int { get }
var dataNotOpenForRead: Int { get }
var dataNotOpenForWrite: Int { get }
var dataAlreadyOpenForWrite: Int { get }
var dataAlreadyClosed: Int { get }
var endOfDataReached: Int { get }
var dataNoDataRef: Int { get }
var noMovieFound: Int { get }
var invalidDataRefContainer: Int { get }
var badDataRefIndex: Int { get }
var noDefaultDataRef: Int { get }
var couldNotUseAnExistingSample: Int { get }
var featureUnsupported: Int { get }
var noVideoTrackInMovieErr: Int { get }
var noSoundTrackInMovieErr: Int { get }
var soundSupportNotAvailableErr: Int { get }
var unsupportedAuxiliaryImportData: Int { get }
var auxiliaryExportDataUnavailable: Int { get }
var samplesAlreadyInMediaErr: Int { get }
var noSourceTreeFoundErr: Int { get }
var sourceNotFoundErr: Int { get }
var movieTextNotFoundErr: Int { get }
var missingRequiredParameterErr: Int { get }
var invalidSpriteWorldPropertyErr: Int { get }
var invalidSpritePropertyErr: Int { get }
var gWorldsNotSameDepthAndSizeErr: Int { get }
var invalidSpriteIndexErr: Int { get }
var invalidImageIndexErr: Int { get }
var invalidSpriteIDErr: Int { get }
var internalComponentErr: Int { get }
var notImplementedMusicOSErr: Int { get }
var cantSendToSynthesizerOSErr: Int { get }
var cantReceiveFromSynthesizerOSErr: Int { get }
var illegalVoiceAllocationOSErr: Int { get }
var illegalPartOSErr: Int { get }
var illegalChannelOSErr: Int { get }
var illegalKnobOSErr: Int { get }
var illegalKnobValueOSErr: Int { get }
var illegalInstrumentOSErr: Int { get }
var illegalControllerOSErr: Int { get }
var midiManagerAbsentOSErr: Int { get }
var synthesizerNotRespondingOSErr: Int { get }
var synthesizerOSErr: Int { get }
var illegalNoteChannelOSErr: Int { get }
var noteChannelNotAllocatedOSErr: Int { get }
var tunePlayerFullOSErr: Int { get }
var tuneParseOSErr: Int { get }
var noExportProcAvailableErr: Int { get }
var videoOutputInUseErr: Int { get }
var componentDllLoadErr: Int { get }
var componentDllEntryNotFoundErr: Int { get }
var qtmlDllLoadErr: Int { get }
var qtmlDllEntryNotFoundErr: Int { get }
var qtmlUninitialized: Int { get }
var unsupportedOSErr: Int { get }
var unsupportedProcessorErr: Int { get }
var componentNotThreadSafeErr: Int { get }
var cannotFindAtomErr: Int { get }
var notLeafAtomErr: Int { get }
var atomsNotOfSameTypeErr: Int { get }
var atomIndexInvalidErr: Int { get }
var duplicateAtomTypeAndIDErr: Int { get }
var invalidAtomErr: Int { get }
var invalidAtomContainerErr: Int { get }
var invalidAtomTypeErr: Int { get }
var cannotBeLeafAtomErr: Int { get }
var pathTooLongErr: Int { get }
var emptyPathErr: Int { get }
var noPathMappingErr: Int { get }
var pathNotVerifiedErr: Int { get }
var unknownFormatErr: Int { get }
var wackBadFileErr: Int { get }
var wackForkNotFoundErr: Int { get }
var wackBadMetaDataErr: Int { get }
var qfcbNotFoundErr: Int { get }
var qfcbNotCreatedErr: Int { get }
var AAPNotCreatedErr: Int { get }
var AAPNotFoundErr: Int { get }
var ASDBadHeaderErr: Int { get }
var ASDBadForkErr: Int { get }
var ASDEntryNotFoundErr: Int { get }
var fileOffsetTooBigErr: Int { get }
var notAllowedToSaveMovieErr: Int { get }
var qtNetworkAlreadyAllocatedErr: Int { get }
var urlDataHHTTPProtocolErr: Int { get }
var urlDataHHTTPNoNetDriverErr: Int { get }
var urlDataHHTTPURLErr: Int { get }
var urlDataHHTTPRedirectErr: Int { get }
var urlDataHFTPProtocolErr: Int { get }
var urlDataHFTPShutdownErr: Int { get }
var urlDataHFTPBadUserErr: Int { get }
var urlDataHFTPBadPasswordErr: Int { get }
var urlDataHFTPServerErr: Int { get }
var urlDataHFTPDataConnectionErr: Int { get }
var urlDataHFTPNoDirectoryErr: Int { get }
var urlDataHFTPQuotaErr: Int { get }
var urlDataHFTPPermissionsErr: Int { get }
var urlDataHFTPFilenameErr: Int { get }
var urlDataHFTPNoNetDriverErr: Int { get }
var urlDataHFTPBadNameListErr: Int { get }
var urlDataHFTPNeedPasswordErr: Int { get }
var urlDataHFTPNoPasswordErr: Int { get }
var urlDataHFTPServerDisconnectedErr: Int { get }
var urlDataHFTPURLErr: Int { get }
var notEnoughDataErr: Int { get }
var qtActionNotHandledErr: Int { get }
var qtXMLParseErr: Int { get }
var qtXMLApplicationErr: Int { get }
var digiUnimpErr: Int { get }
var qtParamErr: Int { get }
var matrixErr: Int { get }
var notExactMatrixErr: Int { get }
var noMoreKeyColorsErr: Int { get }
var notExactSizeErr: Int { get }
var badDepthErr: Int { get }
var noDMAErr: Int { get }
var badCallOrderErr: Int { get }
var kernelIncompleteErr: Int { get }
var kernelCanceledErr: Int { get }
var kernelOptionsErr: Int { get }
var kernelPrivilegeErr: Int { get }
var kernelUnsupportedErr: Int { get }
var kernelObjectExistsErr: Int { get }
var kernelWritePermissionErr: Int { get }
var kernelReadPermissionErr: Int { get }
var kernelExecutePermissionErr: Int { get }
var kernelDeletePermissionErr: Int { get }
var kernelExecutionLevelErr: Int { get }
var kernelAttributeErr: Int { get }
var kernelAsyncSendLimitErr: Int { get }
var kernelAsyncReceiveLimitErr: Int { get }
var kernelTimeoutErr: Int { get }
var kernelInUseErr: Int { get }
var kernelTerminatedErr: Int { get }
var kernelExceptionErr: Int { get }
var kernelIDErr: Int { get }
var kernelAlreadyFreeErr: Int { get }
var kernelReturnValueErr: Int { get }
var kernelUnrecoverableErr: Int { get }
var tsmComponentNoErr: Int { get }
var tsmUnsupScriptLanguageErr: Int { get }
var tsmInputMethodNotFoundErr: Int { get }
var tsmNotAnAppErr: Int { get }
var tsmAlreadyRegisteredErr: Int { get }
var tsmNeverRegisteredErr: Int { get }
var tsmInvalidDocIDErr: Int { get }
var tsmTSMDocBusyErr: Int { get }
var tsmDocNotActiveErr: Int { get }
var tsmNoOpenTSErr: Int { get }
var tsmCantOpenComponentErr: Int { get }
var tsmTextServiceNotFoundErr: Int { get }
var tsmDocumentOpenErr: Int { get }
var tsmUseInputWindowErr: Int { get }
var tsmTSHasNoMenuErr: Int { get }
var tsmTSNotOpenErr: Int { get }
var tsmComponentAlreadyOpenErr: Int { get }
var tsmInputMethodIsOldErr: Int { get }
var tsmScriptHasNoIMErr: Int { get }
var tsmUnsupportedTypeErr: Int { get }
var tsmUnknownErr: Int { get }
var tsmInvalidContext: Int { get }
var tsmNoHandler: Int { get }
var tsmNoMoreTokens: Int { get }
var tsmNoStem: Int { get }
var tsmDefaultIsNotInputMethodErr: Int { get }
var tsmDocPropertyNotFoundErr: Int { get }
var tsmDocPropertyBufferTooSmallErr: Int { get }
var tsmCantChangeForcedClassStateErr: Int { get }
var tsmComponentPropertyUnsupportedErr: Int { get }
var tsmComponentPropertyNotFoundErr: Int { get }
var tsmInputModeChangeFailedErr: Int { get }
var mmInternalError: Int { get }
var nrLockedErr: Int { get }
var nrNotEnoughMemoryErr: Int { get }
var nrInvalidNodeErr: Int { get }
var nrNotFoundErr: Int { get }
var nrNotCreatedErr: Int { get }
var nrNameErr: Int { get }
var nrNotSlotDeviceErr: Int { get }
var nrDataTruncatedErr: Int { get }
var nrPowerErr: Int { get }
var nrPowerSwitchAbortErr: Int { get }
var nrTypeMismatchErr: Int { get }
var nrNotModifiedErr: Int { get }
var nrOverrunErr: Int { get }
var nrResultCodeBase: Int { get }
var nrPathNotFound: Int { get }
var nrPathBufferTooSmall: Int { get }
var nrInvalidEntryIterationOp: Int { get }
var nrPropertyAlreadyExists: Int { get }
var nrIterationDone: Int { get }
var nrExitedIteratorScope: Int { get }
var nrTransactionAborted: Int { get }
var nrCallNotSupported: Int { get }
var invalidIconRefErr: Int { get }
var noSuchIconErr: Int { get }
var noIconDataAvailableErr: Int { get }
var errOSACantCoerce: Int { get }
var errOSACantAccess: Int { get }
var errOSACantAssign: Int { get }
var errOSAGeneralError: Int { get }
var errOSADivideByZero: Int { get }
var errOSANumericOverflow: Int { get }
var errOSACantLaunch: Int { get }
var errOSAAppNotHighLevelEventAware: Int { get }
var errOSACorruptTerminology: Int { get }
var errOSAStackOverflow: Int { get }
var errOSAInternalTableOverflow: Int { get }
var errOSADataBlockTooLarge: Int { get }
var errOSACantGetTerminology: Int { get }
var errOSACantCreate: Int { get }
var errOSATypeError: Int { get }
var OSAMessageNotUnderstood: Int { get }
var OSAUndefinedHandler: Int { get }
var OSAIllegalAccess: Int { get }
var OSAIllegalIndex: Int { get }
var OSAIllegalRange: Int { get }
var OSAIllegalAssign: Int { get }
var OSASyntaxError: Int { get }
var OSASyntaxTypeError: Int { get }
var OSATokenTooLong: Int { get }
var OSAMissingParameter: Int { get }
var OSAParameterMismatch: Int { get }
var OSADuplicateParameter: Int { get }
var OSADuplicateProperty: Int { get }
var OSADuplicateHandler: Int { get }
var OSAUndefinedVariable: Int { get }
var OSAInconsistentDeclarations: Int { get }
var OSAControlFlowError: Int { get }
var errASCantConsiderAndIgnore: Int { get }
var errASCantCompareMoreThan32k: Int { get }
var errASTerminologyNestingTooDeep: Int { get }
var errASIllegalFormalParameter: Int { get }
var errASParameterNotForEvent: Int { get }
var errASNoResultReturned: Int { get }
var errASInconsistentNames: Int { get }
var cfragFirstErrCode: Int { get }
var cfragContextIDErr: Int { get }
var cfragConnectionIDErr: Int { get }
var cfragNoSymbolErr: Int { get }
var cfragNoSectionErr: Int { get }
var cfragNoLibraryErr: Int { get }
var cfragDupRegistrationErr: Int { get }
var cfragFragmentFormatErr: Int { get }
var cfragUnresolvedErr: Int { get }
var cfragNoPositionErr: Int { get }
var cfragNoPrivateMemErr: Int { get }
var cfragNoClientMemErr: Int { get }
var cfragNoIDsErr: Int { get }
var cfragInitOrderErr: Int { get }
var cfragImportTooOldErr: Int { get }
var cfragImportTooNewErr: Int { get }
var cfragInitLoopErr: Int { get }
var cfragInitAtBootErr: Int { get }
var cfragLibConnErr: Int { get }
var cfragCFMStartupErr: Int { get }
var cfragCFMInternalErr: Int { get }
var cfragFragmentCorruptErr: Int { get }
var cfragInitFunctionErr: Int { get }
var cfragNoApplicationErr: Int { get }
var cfragArchitectureErr: Int { get }
var cfragFragmentUsageErr: Int { get }
var cfragFileSizeErr: Int { get }
var cfragNotClosureErr: Int { get }
var cfragNoRegistrationErr: Int { get }
var cfragContainerIDErr: Int { get }
var cfragClosureIDErr: Int { get }
var cfragAbortClosureErr: Int { get }
var cfragOutputLengthErr: Int { get }
var cfragMapFileErr: Int { get }
var cfragExecFileRefErr: Int { get }
var cfragStdFolderErr: Int { get }
var cfragRsrcForkErr: Int { get }
var cfragCFragRsrcErr: Int { get }
var cfragLastErrCode: Int { get }
var cfragFirstReservedCode: Int { get }
var cfragReservedCode_3: Int { get }
var cfragReservedCode_2: Int { get }
var cfragReservedCode_1: Int { get }
var invalidComponentID: Int { get }
var validInstancesExist: Int { get }
var componentNotCaptured: Int { get }
var componentDontRegister: Int { get }
var unresolvedComponentDLLErr: Int { get }
var retryComponentRegistrationErr: Int { get }
var invalidTranslationPathErr: Int { get }
var couldNotParseSourceFileErr: Int { get }
var noTranslationPathErr: Int { get }
var badTranslationSpecErr: Int { get }
var noPrefAppErr: Int { get }
var buf2SmallErr: Int { get }
var noMPPErr: Int { get }
var ckSumErr: Int { get }
var extractErr: Int { get }
var readQErr: Int { get }
var atpLenErr: Int { get }
var atpBadRsp: Int { get }
var recNotFnd: Int { get }
var sktClosedErr: Int { get }
var kOTNoError: Int { get }
var kOTOutOfMemoryErr: Int { get }
var kOTNotFoundErr: Int { get }
var kOTDuplicateFoundErr: Int { get }
var kOTBadAddressErr: Int { get }
var kOTBadOptionErr: Int { get }
var kOTAccessErr: Int { get }
var kOTBadReferenceErr: Int { get }
var kOTNoAddressErr: Int { get }
var kOTOutStateErr: Int { get }
var kOTBadSequenceErr: Int { get }
var kOTSysErrorErr: Int { get }
var kOTLookErr: Int { get }
var kOTBadDataErr: Int { get }
var kOTBufferOverflowErr: Int { get }
var kOTFlowErr: Int { get }
var kOTNoDataErr: Int { get }
var kOTNoDisconnectErr: Int { get }
var kOTNoUDErrErr: Int { get }
var kOTBadFlagErr: Int { get }
var kOTNoReleaseErr: Int { get }
var kOTNotSupportedErr: Int { get }
var kOTStateChangeErr: Int { get }
var kOTNoStructureTypeErr: Int { get }
var kOTBadNameErr: Int { get }
var kOTBadQLenErr: Int { get }
var kOTAddressBusyErr: Int { get }
var kOTIndOutErr: Int { get }
var kOTProviderMismatchErr: Int { get }
var kOTResQLenErr: Int { get }
var kOTResAddressErr: Int { get }
var kOTQFullErr: Int { get }
var kOTProtocolErr: Int { get }
var kOTBadSyncErr: Int { get }
var kOTCanceledErr: Int { get }
var kEPERMErr: Int { get }
var kENOENTErr: Int { get }
var kENORSRCErr: Int { get }
var kEINTRErr: Int { get }
var kEIOErr: Int { get }
var kENXIOErr: Int { get }
var kEBADFErr: Int { get }
var kEAGAINErr: Int { get }
var kENOMEMErr: Int { get }
var kEACCESErr: Int { get }
var kEFAULTErr: Int { get }
var kEBUSYErr: Int { get }
var kEEXISTErr: Int { get }
var kENODEVErr: Int { get }
var kEINVALErr: Int { get }
var kENOTTYErr: Int { get }
var kEPIPEErr: Int { get }
var kERANGEErr: Int { get }
var kEWOULDBLOCKErr: Int { get }
var kEDEADLKErr: Int { get }
var kEALREADYErr: Int { get }
var kENOTSOCKErr: Int { get }
var kEDESTADDRREQErr: Int { get }
var kEMSGSIZEErr: Int { get }
var kEPROTOTYPEErr: Int { get }
var kENOPROTOOPTErr: Int { get }
var kEPROTONOSUPPORTErr: Int { get }
var kESOCKTNOSUPPORTErr: Int { get }
var kEOPNOTSUPPErr: Int { get }
var kEADDRINUSEErr: Int { get }
var kEADDRNOTAVAILErr: Int { get }
var kENETDOWNErr: Int { get }
var kENETUNREACHErr: Int { get }
var kENETRESETErr: Int { get }
var kECONNABORTEDErr: Int { get }
var kECONNRESETErr: Int { get }
var kENOBUFSErr: Int { get }
var kEISCONNErr: Int { get }
var kENOTCONNErr: Int { get }
var kESHUTDOWNErr: Int { get }
var kETOOMANYREFSErr: Int { get }
var kETIMEDOUTErr: Int { get }
var kECONNREFUSEDErr: Int { get }
var kEHOSTDOWNErr: Int { get }
var kEHOSTUNREACHErr: Int { get }
var kEPROTOErr: Int { get }
var kETIMEErr: Int { get }
var kENOSRErr: Int { get }
var kEBADMSGErr: Int { get }
var kECANCELErr: Int { get }
var kENOSTRErr: Int { get }
var kENODATAErr: Int { get }
var kEINPROGRESSErr: Int { get }
var kESRCHErr: Int { get }
var kENOMSGErr: Int { get }
var kOTClientNotInittedErr: Int { get }
var kOTPortHasDiedErr: Int { get }
var kOTPortWasEjectedErr: Int { get }
var kOTBadConfigurationErr: Int { get }
var kOTConfigurationChangedErr: Int { get }
var kOTUserRequestedErr: Int { get }
var kOTPortLostConnection: Int { get }
var kQDNoPalette: Int { get }
var kQDNoColorHWCursorSupport: Int { get }
var kQDCursorAlreadyRegistered: Int { get }
var kQDCursorNotRegistered: Int { get }
var kQDCorruptPICTDataErr: Int { get }
var firstPickerError: Int { get }
var invalidPickerType: Int { get }
var requiredFlagsDontMatch: Int { get }
var pickerResourceError: Int { get }
var cantLoadPicker: Int { get }
var cantCreatePickerWindow: Int { get }
var cantLoadPackage: Int { get }
var pickerCantLive: Int { get }
var colorSyncNotInstalled: Int { get }
var badProfileError: Int { get }
var noHelpForItem: Int { get }
var kNSL68kContextNotSupported: Int { get }
var kNSLSchedulerError: Int { get }
var kNSLBadURLSyntax: Int { get }
var kNSLNoCarbonLib: Int { get }
var kNSLUILibraryNotAvailable: Int { get }
var kNSLNotImplementedYet: Int { get }
var kNSLErrNullPtrError: Int { get }
var kNSLSomePluginsFailedToLoad: Int { get }
var kNSLNullNeighborhoodPtr: Int { get }
var kNSLNoPluginsForSearch: Int { get }
var kNSLSearchAlreadyInProgress: Int { get }
var kNSLNoPluginsFound: Int { get }
var kNSLPluginLoadFailed: Int { get }
var kNSLBadProtocolTypeErr: Int { get }
var kNSLNullListPtr: Int { get }
var kNSLBadClientInfoPtr: Int { get }
var kNSLCannotContinueLookup: Int { get }
var kNSLBufferTooSmallForData: Int { get }
var kNSLNoContextAvailable: Int { get }
var kNSLRequestBufferAlreadyInList: Int { get }
var kNSLInvalidPluginSpec: Int { get }
var kNSLNoSupportForService: Int { get }
var kNSLBadNetConnection: Int { get }
var kNSLBadDataTypeErr: Int { get }
var kNSLBadServiceTypeErr: Int { get }
var kNSLBadReferenceErr: Int { get }
var kNSLNoElementsInList: Int { get }
var kNSLInsufficientOTVer: Int { get }
var kNSLInsufficientSysVer: Int { get }
var kNSLNotInitialized: Int { get }
var kNSLInitializationFailed: Int { get }
var kDTPHoldJobErr: Int { get }
var kDTPStopQueueErr: Int { get }
var kDTPTryAgainErr: Int { get }
var kDTPAbortJobErr: Int { get }
var cmElementTagNotFound: Int { get }
var cmIndexRangeErr: Int { get }
var cmCantDeleteElement: Int { get }
var cmFatalProfileErr: Int { get }
var cmInvalidProfile: Int { get }
var cmInvalidProfileLocation: Int { get }
var cmCantCopyModifiedV1Profile: Int { get }
var cmInvalidSearch: Int { get }
var cmSearchError: Int { get }
var cmErrIncompatibleProfile: Int { get }
var cmInvalidColorSpace: Int { get }
var cmInvalidSrcMap: Int { get }
var cmInvalidDstMap: Int { get }
var cmNoGDevicesError: Int { get }
var cmInvalidProfileComment: Int { get }
var cmRangeOverFlow: Int { get }
var cmNamedColorNotFound: Int { get }
var cmCantGamutCheckError: Int { get }
var badFolderDescErr: Int { get }
var duplicateFolderDescErr: Int { get }
var noMoreFolderDescErr: Int { get }
var invalidFolderTypeErr: Int { get }
var duplicateRoutingErr: Int { get }
var routingNotFoundErr: Int { get }
var badRoutingSizeErr: Int { get }
var coreFoundationUnknownErr: Int { get }
var errCoreEndianDataTooShortForFormat: Int { get }
var errCoreEndianDataTooLongForFormat: Int { get }
var errCoreEndianDataDoesNotMatchFormat: Int { get }
var internalScrapErr: Int { get }
var duplicateScrapFlavorErr: Int { get }
var badScrapRefErr: Int { get }
var processStateIncorrectErr: Int { get }
var scrapPromiseNotKeptErr: Int { get }
var noScrapPromiseKeeperErr: Int { get }
var nilScrapFlavorDataErr: Int { get }
var scrapFlavorFlagsMismatchErr: Int { get }
var scrapFlavorSizeMismatchErr: Int { get }
var illegalScrapFlavorFlagsErr: Int { get }
var illegalScrapFlavorTypeErr: Int { get }
var illegalScrapFlavorSizeErr: Int { get }
var scrapFlavorNotFoundErr: Int { get }
var needClearScrapErr: Int { get }
var afpAccessDenied: Int { get }
var afpAuthContinue: Int { get }
var afpBadUAM: Int { get }
var afpBadVersNum: Int { get }
var afpBitmapErr: Int { get }
var afpCantMove: Int { get }
var afpDenyConflict: Int { get }
var afpDirNotEmpty: Int { get }
var afpDiskFull: Int { get }
var afpEofError: Int { get }
var afpFileBusy: Int { get }
var afpFlatVol: Int { get }
var afpItemNotFound: Int { get }
var afpLockErr: Int { get }
var afpMiscErr: Int { get }
var afpNoMoreLocks: Int { get }
var afpNoServer: Int { get }
var afpObjectExists: Int { get }
var afpObjectNotFound: Int { get }
var afpParmErr: Int { get }
var afpRangeNotLocked: Int { get }
var afpRangeOverlap: Int { get }
var afpSessClosed: Int { get }
var afpUserNotAuth: Int { get }
var afpCallNotSupported: Int { get }
var afpObjectTypeErr: Int { get }
var afpTooManyFilesOpen: Int { get }
var afpServerGoingDown: Int { get }
var afpCantRename: Int { get }
var afpDirNotFound: Int { get }
var afpIconTypeError: Int { get }
var afpVolLocked: Int { get }
var afpObjectLocked: Int { get }
var afpContainsSharedErr: Int { get }
var afpIDNotFound: Int { get }
var afpIDExists: Int { get }
var afpDiffVolErr: Int { get }
var afpCatalogChanged: Int { get }
var afpSameObjectErr: Int { get }
var afpBadIDErr: Int { get }
var afpPwdSameErr: Int { get }
var afpPwdTooShortErr: Int { get }
var afpPwdExpiredErr: Int { get }
var afpInsideSharedErr: Int { get }
var afpInsideTrashErr: Int { get }
var afpPwdNeedsChangeErr: Int { get }
var afpPwdPolicyErr: Int { get }
var afpAlreadyLoggedInErr: Int { get }
var afpCallNotAllowed: Int { get }
var afpBadDirIDType: Int { get }
var afpCantMountMoreSrvre: Int { get }
var afpAlreadyMounted: Int { get }
var afpSameNodeErr: Int { get }
var numberFormattingNotANumberErr: Int { get }
var numberFormattingOverflowInDestinationErr: Int { get }
var numberFormattingBadNumberFormattingObjectErr: Int { get }
var numberFormattingSpuriousCharErr: Int { get }
var numberFormattingLiteralMissingErr: Int { get }
var numberFormattingDelimiterMissingErr: Int { get }
var numberFormattingEmptyFormatErr: Int { get }
var numberFormattingBadFormatErr: Int { get }
var numberFormattingBadOptionsErr: Int { get }
var numberFormattingBadTokenErr: Int { get }
var numberFormattingUnOrderedCurrencyRangeErr: Int { get }
var numberFormattingBadCurrencyPositionErr: Int { get }
var numberFormattingNotADigitErr: Int { get }
var numberFormattingUnOrdredCurrencyRangeErr: Int { get }
var numberFortmattingNotADigitErr: Int { get }
var textParserBadParamErr: Int { get }
var textParserObjectNotFoundErr: Int { get }
var textParserBadTokenValueErr: Int { get }
var textParserBadParserObjectErr: Int { get }
var textParserParamErr: Int { get }
var textParserNoMoreTextErr: Int { get }
var textParserBadTextLanguageErr: Int { get }
var textParserBadTextEncodingErr: Int { get }
var textParserNoSuchTokenFoundErr: Int { get }
var textParserNoMoreTokensErr: Int { get }
var errUnknownAttributeTag: Int { get }
var errMarginWilllNotFit: Int { get }
var errNotInImagingMode: Int { get }
var errAlreadyInImagingMode: Int { get }
var errEngineNotFound: Int { get }
var errIteratorReachedEnd: Int { get }
var errInvalidRange: Int { get }
var errOffsetNotOnElementBounday: Int { get }
var errNoHiliteText: Int { get }
var errEmptyScrap: Int { get }
var errReadOnlyText: Int { get }
var errUnknownElement: Int { get }
var errNonContiuousAttribute: Int { get }
var errCannotUndo: Int { get }
var hrHTMLRenderingLibNotInstalledErr: Int { get }
var hrMiscellaneousExceptionErr: Int { get }
var hrUnableToResizeHandleErr: Int { get }
var hrURLNotHandledErr: Int { get }
var errIANoErr: Int { get }
var errIAUnknownErr: Int { get }
var errIAAllocationErr: Int { get }
var errIAParamErr: Int { get }
var errIANoMoreItems: Int { get }
var errIABufferTooSmall: Int { get }
var errIACanceled: Int { get }
var errIAInvalidDocument: Int { get }
var errIATextExtractionErr: Int { get }
var errIAEndOfTextRun: Int { get }
var qtsBadSelectorErr: Int { get }
var qtsBadStateErr: Int { get }
var qtsBadDataErr: Int { get }
var qtsUnsupportedDataTypeErr: Int { get }
var qtsUnsupportedRateErr: Int { get }
var qtsUnsupportedFeatureErr: Int { get }
var qtsTooMuchDataErr: Int { get }
var qtsUnknownValueErr: Int { get }
var qtsTimeoutErr: Int { get }
var qtsConnectionFailedErr: Int { get }
var qtsAddressBusyErr: Int { get }
var gestaltUnknownErr: Int { get }
var gestaltUndefSelectorErr: Int { get }
var gestaltDupSelectorErr: Int { get }
var gestaltLocationErr: Int { get }
var menuPropertyInvalidErr: Int { get }
var menuPropertyInvalid: Int { get }
var menuPropertyNotFoundErr: Int { get }
var menuNotFoundErr: Int { get }
var menuUsesSystemDefErr: Int { get }
var menuItemNotFoundErr: Int { get }
var menuInvalidErr: Int { get }
var errInvalidWindowPtr: Int { get }
var errInvalidWindowRef: Int { get }
var errUnsupportedWindowAttributesForClass: Int { get }
var errWindowDoesNotHaveProxy: Int { get }
var errInvalidWindowProperty: Int { get }
var errWindowPropertyNotFound: Int { get }
var errUnrecognizedWindowClass: Int { get }
var errCorruptWindowDescription: Int { get }
var errUserWantsToDragWindow: Int { get }
var errWindowsAlreadyInitialized: Int { get }
var errFloatingWindowsNotInitialized: Int { get }
var errWindowNotFound: Int { get }
var errWindowDoesNotFitOnscreen: Int { get }
var windowAttributeImmutableErr: Int { get }
var windowAttributesConflictErr: Int { get }
var windowManagerInternalErr: Int { get }
var windowWrongStateErr: Int { get }
var windowGroupInvalidErr: Int { get }
var windowAppModalStateAlreadyExistsErr: Int { get }
var windowNoAppModalStateErr: Int { get }
var errWindowDoesntSupportFocus: Int { get }
var errWindowRegionCodeInvalid: Int { get }
var dialogNoTimeoutErr: Int { get }
var kNavWrongDialogStateErr: Int { get }
var kNavWrongDialogClassErr: Int { get }
var kNavInvalidSystemConfigErr: Int { get }
var kNavCustomControlMessageFailedErr: Int { get }
var kNavInvalidCustomControlMessageErr: Int { get }
var kNavMissingKindStringErr: Int { get }
var collectionItemLockedErr: Int { get }
var collectionItemNotFoundErr: Int { get }
var collectionIndexRangeErr: Int { get }
var collectionVersionErr: Int { get }
var kQTSSUnknownErr: Int { get }
var kDMGenErr: Int { get }
var kDMMirroringOnAlready: Int { get }
var kDMWrongNumberOfDisplays: Int { get }
var kDMMirroringBlocked: Int { get }
var kDMCantBlock: Int { get }
var kDMMirroringNotOn: Int { get }
var kSysSWTooOld: Int { get }
var kDMSWNotInitializedErr: Int { get }
var kDMDriverNotDisplayMgrAwareErr: Int { get }
var kDMDisplayNotFoundErr: Int { get }
var kDMNotFoundErr: Int { get }
var kDMDisplayAlreadyInstalledErr: Int { get }
var kDMMainDisplayCannotMoveErr: Int { get }
var kDMNoDeviceTableclothErr: Int { get }
var kDMFoundErr: Int { get }
var laTooSmallBufferErr: Int { get }
var laEnvironmentBusyErr: Int { get }
var laEnvironmentNotFoundErr: Int { get }
var laEnvironmentExistErr: Int { get }
var laInvalidPathErr: Int { get }
var laNoMoreMorphemeErr: Int { get }
var laFailAnalysisErr: Int { get }
var laTextOverFlowErr: Int { get }
var laDictionaryNotOpenedErr: Int { get }
var laDictionaryUnknownErr: Int { get }
var laDictionaryTooManyErr: Int { get }
var laPropertyValueErr: Int { get }
var laPropertyUnknownErr: Int { get }
var laPropertyIsReadOnlyErr: Int { get }
var laPropertyNotFoundErr: Int { get }
var laPropertyErr: Int { get }
var laEngineNotFoundErr: Int { get }
var kUSBNoErr: Int { get }
var kUSBNoTran: Int { get }
var kUSBNoDelay: Int { get }
var kUSBPending: Int { get }
var kUSBNotSent2Err: Int { get }
var kUSBNotSent1Err: Int { get }
var kUSBBufUnderRunErr: Int { get }
var kUSBBufOvrRunErr: Int { get }
var kUSBRes2Err: Int { get }
var kUSBRes1Err: Int { get }
var kUSBUnderRunErr: Int { get }
var kUSBOverRunErr: Int { get }
var kUSBWrongPIDErr: Int { get }
var kUSBPIDCheckErr: Int { get }
var kUSBNotRespondingErr: Int { get }
var kUSBEndpointStallErr: Int { get }
var kUSBDataToggleErr: Int { get }
var kUSBBitstufErr: Int { get }
var kUSBCRCErr: Int { get }
var kUSBLinkErr: Int { get }
var kUSBQueueFull: Int { get }
var kUSBNotHandled: Int { get }
var kUSBUnknownNotification: Int { get }
var kUSBBadDispatchTable: Int { get }
var kUSBInternalReserved10: Int { get }
var kUSBInternalReserved9: Int { get }
var kUSBInternalReserved8: Int { get }
var kUSBInternalReserved7: Int { get }
var kUSBInternalReserved6: Int { get }
var kUSBInternalReserved5: Int { get }
var kUSBInternalReserved4: Int { get }
var kUSBInternalReserved3: Int { get }
var kUSBInternalReserved2: Int { get }
var kUSBInternalReserved1: Int { get }
var kUSBPortDisabled: Int { get }
var kUSBQueueAborted: Int { get }
var kUSBTimedOut: Int { get }
var kUSBDeviceDisconnected: Int { get }
var kUSBDeviceNotSuspended: Int { get }
var kUSBDeviceSuspended: Int { get }
var kUSBInvalidBuffer: Int { get }
var kUSBDevicePowerProblem: Int { get }
var kUSBDeviceBusy: Int { get }
var kUSBUnknownInterfaceErr: Int { get }
var kUSBPipeStalledError: Int { get }
var kUSBPipeIdleError: Int { get }
var kUSBNoBandwidthError: Int { get }
var kUSBAbortedError: Int { get }
var kUSBFlagsError: Int { get }
var kUSBCompletionError: Int { get }
var kUSBPBLengthError: Int { get }
var kUSBPBVersionError: Int { get }
var kUSBNotFound: Int { get }
var kUSBOutOfMemoryErr: Int { get }
var kUSBDeviceErr: Int { get }
var kUSBNoDeviceErr: Int { get }
var kUSBAlreadyOpenErr: Int { get }
var kUSBTooManyTransactionsErr: Int { get }
var kUSBUnknownRequestErr: Int { get }
var kUSBRqErr: Int { get }
var kUSBIncorrectTypeErr: Int { get }
var kUSBTooManyPipesErr: Int { get }
var kUSBUnknownPipeErr: Int { get }
var kUSBUnknownDeviceErr: Int { get }
var kUSBInternalErr: Int { get }
var dcmParamErr: Int { get }
var dcmNotDictionaryErr: Int { get }
var dcmBadDictionaryErr: Int { get }
var dcmPermissionErr: Int { get }
var dcmDictionaryNotOpenErr: Int { get }
var dcmDictionaryBusyErr: Int { get }
var dcmBlockFullErr: Int { get }
var dcmNoRecordErr: Int { get }
var dcmDupRecordErr: Int { get }
var dcmNecessaryFieldErr: Int { get }
var dcmBadFieldInfoErr: Int { get }
var dcmBadFieldTypeErr: Int { get }
var dcmNoFieldErr: Int { get }
var dcmBadKeyErr: Int { get }
var dcmTooManyKeyErr: Int { get }
var dcmBadDataSizeErr: Int { get }
var dcmBadFindMethodErr: Int { get }
var dcmBadPropertyErr: Int { get }
var dcmProtectedErr: Int { get }
var dcmNoAccessMethodErr: Int { get }
var dcmBadFeatureErr: Int { get }
var dcmIterationCompleteErr: Int { get }
var dcmBufferOverflowErr: Int { get }
var kRAInvalidParameter: Int { get }
var kRAInvalidPort: Int { get }
var kRAStartupFailed: Int { get }
var kRAPortSetupFailed: Int { get }
var kRAOutOfMemory: Int { get }
var kRANotSupported: Int { get }
var kRAMissingResources: Int { get }
var kRAIncompatiblePrefs: Int { get }
var kRANotConnected: Int { get }
var kRAConnectionCanceled: Int { get }
var kRAUnknownUser: Int { get }
var kRAInvalidPassword: Int { get }
var kRAInternalError: Int { get }
var kRAInstallationDamaged: Int { get }
var kRAPortBusy: Int { get }
var kRAUnknownPortState: Int { get }
var kRAInvalidPortState: Int { get }
var kRAInvalidSerialProtocol: Int { get }
var kRAUserLoginDisabled: Int { get }
var kRAUserPwdChangeRequired: Int { get }
var kRAUserPwdEntryRequired: Int { get }
var kRAUserInteractionRequired: Int { get }
var kRAInitOpenTransportFailed: Int { get }
var kRARemoteAccessNotReady: Int { get }
var kRATCPIPInactive: Int { get }
var kRATCPIPNotConfigured: Int { get }
var kRANotPrimaryInterface: Int { get }
var kRAConfigurationDBInitErr: Int { get }
var kRAPPPProtocolRejected: Int { get }
var kRAPPPAuthenticationFailed: Int { get }
var kRAPPPNegotiationFailed: Int { get }
var kRAPPPUserDisconnected: Int { get }
var kRAPPPPeerDisconnected: Int { get }
var kRAPeerNotResponding: Int { get }
var kRAATalkInactive: Int { get }
var kRAExtAuthenticationFailed: Int { get }
var kRANCPRejectedbyPeer: Int { get }
var kRADuplicateIPAddr: Int { get }
var kRACallBackFailed: Int { get }
var kRANotEnabled: Int { get }
var kATSUInvalidTextLayoutErr: Int { get }
var kATSUInvalidStyleErr: Int { get }
var kATSUInvalidTextRangeErr: Int { get }
var kATSUFontsMatched: Int { get }
var kATSUFontsNotMatched: Int { get }
var kATSUNoCorrespondingFontErr: Int { get }
var kATSUInvalidFontErr: Int { get }
var kATSUInvalidAttributeValueErr: Int { get }
var kATSUInvalidAttributeSizeErr: Int { get }
var kATSUInvalidAttributeTagErr: Int { get }
var kATSUInvalidCacheErr: Int { get }
var kATSUNotSetErr: Int { get }
var kATSUNoStyleRunsAssignedErr: Int { get }
var kATSUQuickDrawTextErr: Int { get }
var kATSULowLevelErr: Int { get }
var kATSUNoFontCmapAvailableErr: Int { get }
var kATSUNoFontScalerAvailableErr: Int { get }
var kATSUCoordinateOverflowErr: Int { get }
var kATSULineBreakInWord: Int { get }
var kATSUBusyObjectErr: Int { get }
var kTextUnsupportedEncodingErr: Int { get }
var kTextMalformedInputErr: Int { get }
var kTextUndefinedElementErr: Int { get }
var kTECMissingTableErr: Int { get }
var kTECTableChecksumErr: Int { get }
var kTECTableFormatErr: Int { get }
var kTECCorruptConverterErr: Int { get }
var kTECNoConversionPathErr: Int { get }
var kTECBufferBelowMinimumSizeErr: Int { get }
var kTECArrayFullErr: Int { get }
var kTECBadTextRunErr: Int { get }
var kTECPartialCharErr: Int { get }
var kTECUnmappableElementErr: Int { get }
var kTECIncompleteElementErr: Int { get }
var kTECDirectionErr: Int { get }
var kTECGlobalsUnavailableErr: Int { get }
var kTECItemUnavailableErr: Int { get }
var kTECUsedFallbacksStatus: Int { get }
var kTECNeedFlushStatus: Int { get }
var kTECOutputBufferFullStatus: Int { get }
var unicodeChecksumErr: Int { get }
var unicodeNoTableErr: Int { get }
var unicodeVariantErr: Int { get }
var unicodeFallbacksErr: Int { get }
var unicodePartConvertErr: Int { get }
var unicodeBufErr: Int { get }
var unicodeCharErr: Int { get }
var unicodeElementErr: Int { get }
var unicodeNotFoundErr: Int { get }
var unicodeTableFormatErr: Int { get }
var unicodeDirectionErr: Int { get }
var unicodeContextualErr: Int { get }
var unicodeTextEncodingDataErr: Int { get }
var kUTCUnderflowErr: Int { get }
var kUTCOverflowErr: Int { get }
var kIllegalClockValueErr: Int { get }
var kATSUInvalidFontFallbacksErr: Int { get }
var kATSUUnsupportedStreamFormatErr: Int { get }
var kATSUBadStreamErr: Int { get }
var kATSUOutputBufferTooSmallErr: Int { get }
var kATSUInvalidCallInsideCallbackErr: Int { get }
var kATSUNoFontNameErr: Int { get }
var kATSULastErr: Int { get }
var codecErr: Int { get }
var noCodecErr: Int { get }
var codecUnimpErr: Int { get }
var codecSizeErr: Int { get }
var codecScreenBufErr: Int { get }
var codecImageBufErr: Int { get }
var codecSpoolErr: Int { get }
var codecAbortErr: Int { get }
var codecWouldOffscreenErr: Int { get }
var codecBadDataErr: Int { get }
var codecDataVersErr: Int { get }
var codecExtensionNotFoundErr: Int { get }
var scTypeNotFoundErr: Int { get }
var codecConditionErr: Int { get }
var codecOpenErr: Int { get }
var codecCantWhenErr: Int { get }
var codecCantQueueErr: Int { get }
var codecNothingToBlitErr: Int { get }
var codecNoMemoryPleaseWaitErr: Int { get }
var codecDisabledErr: Int { get }
var codecNeedToFlushChainErr: Int { get }
var lockPortBitsBadSurfaceErr: Int { get }
var lockPortBitsWindowMovedErr: Int { get }
var lockPortBitsWindowResizedErr: Int { get }
var lockPortBitsWindowClippedErr: Int { get }
var lockPortBitsBadPortErr: Int { get }
var lockPortBitsSurfaceLostErr: Int { get }
var codecParameterDialogConfirm: Int { get }
var codecNeedAccessKeyErr: Int { get }
var codecOffscreenFailedErr: Int { get }
var codecDroppedFrameErr: Int { get }
var directXObjectAlreadyExists: Int { get }
var lockPortBitsWrongGDeviceErr: Int { get }
var codecOffscreenFailedPleaseRetryErr: Int { get }
var badCodecCharacterizationErr: Int { get }
var noThumbnailFoundErr: Int { get }
var kBadAdapterErr: Int { get }
var kBadAttributeErr: Int { get }
var kBadBaseErr: Int { get }
var kBadEDCErr: Int { get }
var kBadIRQErr: Int { get }
var kBadOffsetErr: Int { get }
var kBadPageErr: Int { get }
var kBadSizeErr: Int { get }
var kBadSocketErr: Int { get }
var kBadTypeErr: Int { get }
var kBadVccErr: Int { get }
var kBadVppErr: Int { get }
var kBadWindowErr: Int { get }
var kBadArgLengthErr: Int { get }
var kBadArgsErr: Int { get }
var kBadHandleErr: Int { get }
var kBadCISErr: Int { get }
var kBadSpeedErr: Int { get }
var kReadFailureErr: Int { get }
var kWriteFailureErr: Int { get }
var kGeneralFailureErr: Int { get }
var kNoCardErr: Int { get }
var kUnsupportedFunctionErr: Int { get }
var kUnsupportedModeErr: Int { get }
var kBusyErr: Int { get }
var kWriteProtectedErr: Int { get }
var kConfigurationLockedErr: Int { get }
var kInUseErr: Int { get }
var kNoMoreItemsErr: Int { get }
var kOutOfResourceErr: Int { get }
var kNoCardSevicesSocketsErr: Int { get }
var kInvalidRegEntryErr: Int { get }
var kBadLinkErr: Int { get }
var kBadDeviceErr: Int { get }
var k16BitCardErr: Int { get }
var kCardBusCardErr: Int { get }
var kPassCallToChainErr: Int { get }
var kCantConfigureCardErr: Int { get }
var kPostCardEventErr: Int { get }
var kInvalidDeviceNumber: Int { get }
var kUnsupportedVsErr: Int { get }
var kInvalidCSClientErr: Int { get }
var kBadTupleDataErr: Int { get }
var kBadCustomIFIDErr: Int { get }
var kNoIOWindowRequestedErr: Int { get }
var kNoMoreTimerClientsErr: Int { get }
var kNoMoreInterruptSlotsErr: Int { get }
var kNoClientTableErr: Int { get }
var kUnsupportedCardErr: Int { get }
var kNoCardEnablersFoundErr: Int { get }
var kNoEnablerForCardErr: Int { get }
var kNoCompatibleNameErr: Int { get }
var kClientRequestDenied: Int { get }
var kNotReadyErr: Int { get }
var kTooManyIOWindowsErr: Int { get }
var kAlreadySavedStateErr: Int { get }
var kAttemptDupCardEntryErr: Int { get }
var kCardPowerOffErr: Int { get }
var kNotZVCapableErr: Int { get }
var kNoCardBusCISErr: Int { get }
var noDeviceForChannel: Int { get }
var grabTimeComplete: Int { get }
var cantDoThatInCurrentMode: Int { get }
var notEnoughMemoryToGrab: Int { get }
var notEnoughDiskSpaceToGrab: Int { get }
var couldntGetRequiredComponent: Int { get }
var badSGChannel: Int { get }
var seqGrabInfoNotAvailable: Int { get }
var deviceCantMeetRequest: Int { get }
var badControllerHeight: Int { get }
var editingNotAllowed: Int { get }
var controllerBoundsNotExact: Int { get }
var cannotSetWidthOfAttachedController: Int { get }
var controllerHasFixedHeight: Int { get }
var cannotMoveAttachedController: Int { get }
var errAEBadKeyForm: Int { get }
var errAECantHandleClass: Int { get }
var errAECantSupplyType: Int { get }
var errAECantUndo: Int { get }
var errAEEventFailed: Int { get }
var errAEIndexTooLarge: Int { get }
var errAEInTransaction: Int { get }
var errAELocalOnly: Int { get }
var errAENoSuchTransaction: Int { get }
var errAENotAnElement: Int { get }
var errAENotASingleObject: Int { get }
var errAENotModifiable: Int { get }
var errAENoUserSelection: Int { get }
var errAEPrivilegeError: Int { get }
var errAEReadDenied: Int { get }
var errAETypeError: Int { get }
var errAEWriteDenied: Int { get }
var errAENotAnEnumMember: Int { get }
var errAECantPutThatThere: Int { get }
var errAEPropertiesClash: Int { get }
var telGenericError: Int { get }
var telNoErr: Int { get }
var telNoTools: Int { get }
var telBadTermErr: Int { get }
var telBadDNErr: Int { get }
var telBadCAErr: Int { get }
var telBadHandErr: Int { get }
var telBadProcErr: Int { get }
var telCAUnavail: Int { get }
var telNoMemErr: Int { get }
var telNoOpenErr: Int { get }
var telBadHTypeErr: Int { get }
var telHTypeNotSupp: Int { get }
var telBadLevelErr: Int { get }
var telBadVTypeErr: Int { get }
var telVTypeNotSupp: Int { get }
var telBadAPattErr: Int { get }
var telAPattNotSupp: Int { get }
var telBadIndex: Int { get }
var telIndexNotSupp: Int { get }
var telBadStateErr: Int { get }
var telStateNotSupp: Int { get }
var telBadIntExt: Int { get }
var telIntExtNotSupp: Int { get }
var telBadDNDType: Int { get }
var telDNDTypeNotSupp: Int { get }
var telFeatNotSub: Int { get }
var telFeatNotAvail: Int { get }
var telFeatActive: Int { get }
var telFeatNotSupp: Int { get }
var telConfLimitErr: Int { get }
var telConfNoLimit: Int { get }
var telConfErr: Int { get }
var telConfRej: Int { get }
var telTransferErr: Int { get }
var telTransferRej: Int { get }
var telCBErr: Int { get }
var telConfLimitExceeded: Int { get }
var telBadDNType: Int { get }
var telBadPageID: Int { get }
var telBadIntercomID: Int { get }
var telBadFeatureID: Int { get }
var telBadFwdType: Int { get }
var telBadPickupGroupID: Int { get }
var telBadParkID: Int { get }
var telBadSelect: Int { get }
var telBadBearerType: Int { get }
var telBadRate: Int { get }
var telDNTypeNotSupp: Int { get }
var telFwdTypeNotSupp: Int { get }
var telBadDisplayMode: Int { get }
var telDisplayModeNotSupp: Int { get }
var telNoCallbackRef: Int { get }
var telAlreadyOpen: Int { get }
var telStillNeeded: Int { get }
var telTermNotOpen: Int { get }
var telCANotAcceptable: Int { get }
var telCANotRejectable: Int { get }
var telCANotDeflectable: Int { get }
var telPBErr: Int { get }
var telBadFunction: Int { get }
var telNoSuchTool: Int { get }
var telUnknownErr: Int { get }
var telNoCommFolder: Int { get }
var telInitFailed: Int { get }
var telBadCodeResource: Int { get }
var telDeviceNotFound: Int { get }
var telBadProcID: Int { get }
var telValidateFailed: Int { get }
var telAutoAnsNotOn: Int { get }
var telDetAlreadyOn: Int { get }
var telBadSWErr: Int { get }
var telBadSampleRate: Int { get }
var telNotEnoughdspBW: Int { get }
var errTaskNotFound: Int { get }
var pmBusyErr: Int { get }
var pmReplyTOErr: Int { get }
var pmSendStartErr: Int { get }
var pmSendEndErr: Int { get }
var pmRecvStartErr: Int { get }
var pmRecvEndErr: Int { get }
var kPowerHandlerExistsForDeviceErr: Int { get }
var kPowerHandlerNotFoundForDeviceErr: Int { get }
var kPowerHandlerNotFoundForProcErr: Int { get }
var kPowerMgtMessageNotHandled: Int { get }
var kPowerMgtRequestDenied: Int { get }
var kCantReportProcessorTemperatureErr: Int { get }
var kProcessorTempRoutineRequiresMPLib2: Int { get }
var kNoSuchPowerSource: Int { get }
var kBridgeSoftwareRunningCantSleep: Int { get }
var debuggingExecutionContextErr: Int { get }
var debuggingDuplicateSignatureErr: Int { get }
var debuggingDuplicateOptionErr: Int { get }
var debuggingInvalidSignatureErr: Int { get }
var debuggingInvalidOptionErr: Int { get }
var debuggingInvalidNameErr: Int { get }
var debuggingNoCallbackErr: Int { get }
var debuggingNoMatchErr: Int { get }
var kHIDVersionIncompatibleErr: Int { get }
var kHIDDeviceNotReady: Int { get }
var kHIDSuccess: Int { get }
var kHIDInvalidRangePageErr: Int { get }
var kHIDReportIDZeroErr: Int { get }
var kHIDReportCountZeroErr: Int { get }
var kHIDReportSizeZeroErr: Int { get }
var kHIDUnmatchedDesignatorRangeErr: Int { get }
var kHIDUnmatchedStringRangeErr: Int { get }
var kHIDInvertedUsageRangeErr: Int { get }
var kHIDUnmatchedUsageRangeErr: Int { get }
var kHIDInvertedPhysicalRangeErr: Int { get }
var kHIDInvertedLogicalRangeErr: Int { get }
var kHIDBadLogicalMaximumErr: Int { get }
var kHIDBadLogicalMinimumErr: Int { get }
var kHIDUsagePageZeroErr: Int { get }
var kHIDEndOfDescriptorErr: Int { get }
var kHIDNotEnoughMemoryErr: Int { get }
var kHIDBadParameterErr: Int { get }
var kHIDNullPointerErr: Int { get }
var kHIDInvalidReportLengthErr: Int { get }
var kHIDInvalidReportTypeErr: Int { get }
var kHIDBadLogPhysValuesErr: Int { get }
var kHIDIncompatibleReportErr: Int { get }
var kHIDInvalidPreparsedDataErr: Int { get }
var kHIDNotValueArrayErr: Int { get }
var kHIDUsageNotFoundErr: Int { get }
var kHIDValueOutOfRangeErr: Int { get }
var kHIDBufferTooSmallErr: Int { get }
var kHIDNullStateErr: Int { get }
var kHIDBaseError: Int { get }
var kModemOutOfMemory: Int { get }
var kModemPreferencesMissing: Int { get }
var kModemScriptMissing: Int { get }
var kTXNEndIterationErr: Int { get }
var kTXNCannotAddFrameErr: Int { get }
var kTXNInvalidFrameIDErr: Int { get }
var kTXNIllegalToCrossDataBoundariesErr: Int { get }
var kTXNUserCanceledOperationErr: Int { get }
var kTXNBadDefaultFileTypeWarning: Int { get }
var kTXNCannotSetAutoIndentErr: Int { get }
var kTXNRunIndexOutofBoundsErr: Int { get }
var kTXNNoMatchErr: Int { get }
var kTXNAttributeTagInvalidForRunErr: Int { get }
var kTXNSomeOrAllTagsInvalidForRunErr: Int { get }
var kTXNInvalidRunIndex: Int { get }
var kTXNAlreadyInitializedErr: Int { get }
var kTXNCannotTurnTSMOffWhenUsingUnicodeErr: Int { get }
var kTXNCopyNotAllowedInEchoModeErr: Int { get }
var kTXNDataTypeNotAllowedErr: Int { get }
var kTXNATSUIIsNotInstalledErr: Int { get }
var kTXNOutsideOfLineErr: Int { get }
var kTXNOutsideOfFrameErr: Int { get }
var printerStatusOpCodeNotSupportedErr: Int { get }
var errKCNotAvailable: Int { get }
var errKCReadOnly: Int { get }
var errKCAuthFailed: Int { get }
var errKCNoSuchKeychain: Int { get }
var errKCInvalidKeychain: Int { get }
var errKCDuplicateKeychain: Int { get }
var errKCDuplicateCallback: Int { get }
var errKCInvalidCallback: Int { get }
var errKCDuplicateItem: Int { get }
var errKCItemNotFound: Int { get }
var errKCBufferTooSmall: Int { get }
var errKCDataTooLarge: Int { get }
var errKCNoSuchAttr: Int { get }
var errKCInvalidItemRef: Int { get }
var errKCInvalidSearchRef: Int { get }
var errKCNoSuchClass: Int { get }
var errKCNoDefaultKeychain: Int { get }
var errKCInteractionNotAllowed: Int { get }
var errKCReadOnlyAttr: Int { get }
var errKCWrongKCVersion: Int { get }
var errKCKeySizeNotAllowed: Int { get }
var errKCNoStorageModule: Int { get }
var errKCNoCertificateModule: Int { get }
var errKCNoPolicyModule: Int { get }
var errKCInteractionRequired: Int { get }
var errKCDataNotAvailable: Int { get }
var errKCDataNotModifiable: Int { get }
var errKCCreateChainFailed: Int { get }
var kUCOutputBufferTooSmall: Int { get }
var kUCTextBreakLocatorMissingType: Int { get }
var kUCTSNoKeysAddedToObjectErr: Int { get }
var kUCTSSearchListErr: Int { get }
var kUCTokenizerIterationFinished: Int { get }
var kUCTokenizerUnknownLang: Int { get }
var kUCTokenNotFound: Int { get }
var kMPIterationEndErr: Int { get }
var kMPPrivilegedErr: Int { get }
var kMPProcessCreatedErr: Int { get }
var kMPProcessTerminatedErr: Int { get }
var kMPTaskCreatedErr: Int { get }
var kMPTaskBlockedErr: Int { get }
var kMPTaskStoppedErr: Int { get }
var kMPBlueBlockingErr: Int { get }
var kMPDeletedErr: Int { get }
var kMPTimeoutErr: Int { get }
var kMPTaskAbortedErr: Int { get }
var kMPInsufficientResourcesErr: Int { get }
var kMPInvalidIDErr: Int { get }
var kMPNanokernelNeedsMemoryErr: Int { get }
var kCollateAttributesNotFoundErr: Int { get }
var kCollateInvalidOptions: Int { get }
var kCollateMissingUnicodeTableErr: Int { get }
var kCollateUnicodeConvertFailedErr: Int { get }
var kCollatePatternNotFoundErr: Int { get }
var kCollateInvalidChar: Int { get }
var kCollateBufferTooSmall: Int { get }
var kCollateInvalidCollationRef: Int { get }
var kFNSInvalidReferenceErr: Int { get }
var kFNSBadReferenceVersionErr: Int { get }
var kFNSInvalidProfileErr: Int { get }
var kFNSBadProfileVersionErr: Int { get }
var kFNSDuplicateReferenceErr: Int { get }
var kFNSMismatchErr: Int { get }
var kFNSInsufficientDataErr: Int { get }
var kFNSBadFlattenedSizeErr: Int { get }
var kFNSNameNotFoundErr: Int { get }
var kLocalesBufferTooSmallErr: Int { get }
var kLocalesTableFormatErr: Int { get }
var kLocalesDefaultDisplayStatus: Int { get }
var kALMInternalErr: Int { get }
var kALMGroupNotFoundErr: Int { get }
var kALMNoSuchModuleErr: Int { get }
var kALMModuleCommunicationErr: Int { get }
var kALMDuplicateModuleErr: Int { get }
var kALMInstallationErr: Int { get }
var kALMDeferSwitchErr: Int { get }
var kALMRebootFlagsLevelErr: Int { get }
var kALMLocationNotFoundErr: Int { get }
var kSSpInternalErr: Int { get }
var kSSpVersionErr: Int { get }
var kSSpCantInstallErr: Int { get }
var kSSpParallelUpVectorErr: Int { get }
var kSSpScaleToZeroErr: Int { get }
var kNSpInitializationFailedErr: Int { get }
var kNSpAlreadyInitializedErr: Int { get }
var kNSpTopologyNotSupportedErr: Int { get }
var kNSpPipeFullErr: Int { get }
var kNSpHostFailedErr: Int { get }
var kNSpProtocolNotAvailableErr: Int { get }
var kNSpInvalidGameRefErr: Int { get }
var kNSpInvalidParameterErr: Int { get }
var kNSpOTNotPresentErr: Int { get }
var kNSpOTVersionTooOldErr: Int { get }
var kNSpMemAllocationErr: Int { get }
var kNSpAlreadyAdvertisingErr: Int { get }
var kNSpNotAdvertisingErr: Int { get }
var kNSpInvalidAddressErr: Int { get }
var kNSpFreeQExhaustedErr: Int { get }
var kNSpRemovePlayerFailedErr: Int { get }
var kNSpAddressInUseErr: Int { get }
var kNSpFeatureNotImplementedErr: Int { get }
var kNSpNameRequiredErr: Int { get }
var kNSpInvalidPlayerIDErr: Int { get }
var kNSpInvalidGroupIDErr: Int { get }
var kNSpNoPlayersErr: Int { get }
var kNSpNoGroupsErr: Int { get }
var kNSpNoHostVolunteersErr: Int { get }
var kNSpCreateGroupFailedErr: Int { get }
var kNSpAddPlayerFailedErr: Int { get }
var kNSpInvalidDefinitionErr: Int { get }
var kNSpInvalidProtocolRefErr: Int { get }
var kNSpInvalidProtocolListErr: Int { get }
var kNSpTimeoutErr: Int { get }
var kNSpGameTerminatedErr: Int { get }
var kNSpConnectFailedErr: Int { get }
var kNSpSendFailedErr: Int { get }
var kNSpMessageTooBigErr: Int { get }
var kNSpCantBlockErr: Int { get }
var kNSpJoinFailedErr: Int { get }
var kISpInternalErr: Int { get }
var kISpSystemListErr: Int { get }
var kISpBufferToSmallErr: Int { get }
var kISpElementInListErr: Int { get }
var kISpElementNotInListErr: Int { get }
var kISpSystemInactiveErr: Int { get }
var kISpDeviceInactiveErr: Int { get }
var kISpSystemActiveErr: Int { get }
var kISpDeviceActiveErr: Int { get }
var kISpListBusyErr: Int { get }
var kDSpNotInitializedErr: Int { get }
var kDSpSystemSWTooOldErr: Int { get }
var kDSpInvalidContextErr: Int { get }
var kDSpInvalidAttributesErr: Int { get }
var kDSpContextAlreadyReservedErr: Int { get }
var kDSpContextNotReservedErr: Int { get }
var kDSpContextNotFoundErr: Int { get }
var kDSpFrameRateNotReadyErr: Int { get }
var kDSpConfirmSwitchWarning: Int { get }
var kDSpInternalErr: Int { get }
var kDSpStereoContextErr: Int { get }
var kFBCvTwinExceptionErr: Int { get }
var kFBCnoIndexesFound: Int { get }
var kFBCallocFailed: Int { get }
var kFBCbadParam: Int { get }
var kFBCfileNotIndexed: Int { get }
var kFBCbadIndexFile: Int { get }
var kFBCcompactionFailed: Int { get }
var kFBCvalidationFailed: Int { get }
var kFBCindexingFailed: Int { get }
var kFBCcommitFailed: Int { get }
var kFBCdeletionFailed: Int { get }
var kFBCmoveFailed: Int { get }
var kFBCtokenizationFailed: Int { get }
var kFBCmergingFailed: Int { get }
var kFBCindexCreationFailed: Int { get }
var kFBCaccessorStoreFailed: Int { get }
var kFBCaddDocFailed: Int { get }
var kFBCflushFailed: Int { get }
var kFBCindexNotFound: Int { get }
var kFBCnoSearchSession: Int { get }
var kFBCindexingCanceled: Int { get }
var kFBCaccessCanceled: Int { get }
var kFBCindexFileDestroyed: Int { get }
var kFBCindexNotAvailable: Int { get }
var kFBCsearchFailed: Int { get }
var kFBCsomeFilesNotIndexed: Int { get }
var kFBCillegalSessionChange: Int { get }
var kFBCanalysisNotAvailable: Int { get }
var kFBCbadIndexFileVersion: Int { get }
var kFBCsummarizationCanceled: Int { get }
var kFBCindexDiskIOFailed: Int { get }
var kFBCbadSearchSession: Int { get }
var kFBCnoSuchHit: Int { get }
var notAQTVRMovieErr: Int { get }
var constraintReachedErr: Int { get }
var callNotSupportedByNodeErr: Int { get }
var selectorNotSupportedByNodeErr: Int { get }
var invalidNodeIDErr: Int { get }
var invalidViewStateErr: Int { get }
var timeNotInViewErr: Int { get }
var propertyNotSupportedByNodeErr: Int { get }
var settingNotSupportedByNodeErr: Int { get }
var limitReachedErr: Int { get }
var invalidNodeFormatErr: Int { get }
var invalidHotSpotIDErr: Int { get }
var noMemoryNodeFailedInitialize: Int { get }
var streamingNodeNotReadyErr: Int { get }
var qtvrLibraryLoadErr: Int { get }
var qtvrUninitialized: Int { get }
var themeInvalidBrushErr: Int { get }
var themeProcessRegisteredErr: Int { get }
var themeProcessNotRegisteredErr: Int { get }
var themeBadTextColorErr: Int { get }
var themeHasNoAccentsErr: Int { get }
var themeBadCursorIndexErr: Int { get }
var themeScriptFontNotFoundErr: Int { get }
var themeMonitorDepthNotSupportedErr: Int { get }
var themeNoAppropriateBrushErr: Int { get }
var errMessageNotSupported: Int { get }
var errDataNotSupported: Int { get }
var errControlDoesntSupportFocus: Int { get }
var errUnknownControl: Int { get }
var errCouldntSetFocus: Int { get }
var errNoRootControl: Int { get }
var errRootAlreadyExists: Int { get }
var errInvalidPartCode: Int { get }
var errControlsAlreadyExist: Int { get }
var errControlIsNotEmbedder: Int { get }
var errDataSizeMismatch: Int { get }
var errControlHiddenOrDisabled: Int { get }
var errCantEmbedIntoSelf: Int { get }
var errCantEmbedRoot: Int { get }
var errItemNotControl: Int { get }
var controlInvalidDataVersionErr: Int { get }
var controlPropertyInvalid: Int { get }
var controlPropertyNotFoundErr: Int { get }
var controlHandleInvalidErr: Int { get }
var kURLInvalidURLReferenceError: Int { get }
var kURLProgressAlreadyDisplayedError: Int { get }
var kURLDestinationExistsError: Int { get }
var kURLInvalidURLError: Int { get }
var kURLUnsupportedSchemeError: Int { get }
var kURLServerBusyError: Int { get }
var kURLAuthenticationError: Int { get }
var kURLPropertyNotYetKnownError: Int { get }
var kURLUnknownPropertyError: Int { get }
var kURLPropertyBufferTooSmallError: Int { get }
var kURLUnsettablePropertyError: Int { get }
var kURLInvalidCallError: Int { get }
var kURLFileEmptyError: Int { get }
var kURLExtensionFailureError: Int { get }
var kURLInvalidConfigurationError: Int { get }
var kURLAccessNotAvailableError: Int { get }
var kURL68kNotSupportedError: Int { get }
var errCppGeneral: Int { get }
var errCppbad_alloc: Int { get }
var errCppbad_cast: Int { get }
var errCppbad_exception: Int { get }
var errCppbad_typeid: Int { get }
var errCpplogic_error: Int { get }
var errCppdomain_error: Int { get }
var errCppinvalid_argument: Int { get }
var errCpplength_error: Int { get }
var errCppout_of_range: Int { get }
var errCppruntime_error: Int { get }
var errCppoverflow_error: Int { get }
var errCpprange_error: Int { get }
var errCppunderflow_error: Int { get }
var errCppios_base_failure: Int { get }
var errCppLastSystemDefinedError: Int { get }
var errCppLastUserDefinedError: Int { get }
var badComponentInstance: Int { get }
var badComponentSelector: Int { get }
var dsBusError: Int { get }
var dsAddressErr: Int { get }
var dsIllInstErr: Int { get }
var dsZeroDivErr: Int { get }
var dsChkErr: Int { get }
var dsOvflowErr: Int { get }
var dsPrivErr: Int { get }
var dsTraceErr: Int { get }
var dsLineAErr: Int { get }
var dsLineFErr: Int { get }
var dsMiscErr: Int { get }
var dsCoreErr: Int { get }
var dsIrqErr: Int { get }
var dsIOCoreErr: Int { get }
var dsLoadErr: Int { get }
var dsFPErr: Int { get }
var dsNoPackErr: Int { get }
var dsNoPk1: Int { get }
var dsNoPk2: Int { get }
var dsNoPk3: Int { get }
var dsNoPk4: Int { get }
var dsNoPk5: Int { get }
var dsNoPk6: Int { get }
var dsNoPk7: Int { get }
var dsMemFullErr: Int { get }
var dsBadLaunch: Int { get }
var dsFSErr: Int { get }
var dsStknHeap: Int { get }
var negZcbFreeErr: Int { get }
var dsFinderErr: Int { get }
var dsBadSlotInt: Int { get }
var dsBadSANEOpcode: Int { get }
var dsBadPatchHeader: Int { get }
var menuPrgErr: Int { get }
var dsMBarNFnd: Int { get }
var dsHMenuFindErr: Int { get }
var dsWDEFNotFound: Int { get }
var dsCDEFNotFound: Int { get }
var dsMDEFNotFound: Int { get }
var dsNoFPU: Int { get }
var dsNoPatch: Int { get }
var dsBadPatch: Int { get }
var dsParityErr: Int { get }
var dsOldSystem: Int { get }
var ds32BitMode: Int { get }
var dsNeedToWriteBootBlocks: Int { get }
var dsNotEnoughRAMToBoot: Int { get }
var dsBufPtrTooLow: Int { get }
var dsVMDeferredFuncTableFull: Int { get }
var dsVMBadBackingStore: Int { get }
var dsCantHoldSystemHeap: Int { get }
var dsSystemRequiresPowerPC: Int { get }
var dsGibblyMovedToDisabledFolder: Int { get }
var dsUnBootableSystem: Int { get }
var dsMustUseFCBAccessors: Int { get }
var dsMacOSROMVersionTooOld: Int { get }
var dsLostConnectionToNetworkDisk: Int { get }
var dsRAMDiskTooBig: Int { get }
var dsWriteToSupervisorStackGuardPage: Int { get }
var dsReinsert: Int { get }
var shutDownAlert: Int { get }
var dsShutDownOrRestart: Int { get }
var dsSwitchOffOrRestart: Int { get }
var dsForcedQuit: Int { get }
var dsRemoveDisk: Int { get }
var dsDirtyDisk: Int { get }
var dsShutDownOrResume: Int { get }
var dsSCSIWarn: Int { get }
var dsMBSysError: Int { get }
var dsMBFlpySysError: Int { get }
var dsMBATASysError: Int { get }
var dsMBATAPISysError: Int { get }
var dsMBExternFlpySysError: Int { get }
var dsPCCardATASysError: Int { get }
var dsNoExtsMacsBug: Int { get }
var dsNoExtsDisassembler: Int { get }
var dsMacsBugInstalled: Int { get }
var dsDisassemblerInstalled: Int { get }
var dsExtensionsDisabled: Int { get }
var dsGreeting: Int { get }
var dsSysErr: Int { get }
var WDEFNFnd: Int { get }
var CDEFNFnd: Int { get }
var dsNotThe1: Int { get }
var dsBadStartupDisk: Int { get }
var dsSystemFileErr: Int { get }
var dsHD20Installed: Int { get }
var mBarNFnd: Int { get }
var fsDSIntErr: Int { get }
var hMenuFindErr: Int { get }
var userBreak: Int { get }
var strUserBreak: Int { get }
var exUserBreak: Int { get }
var dsBadLibrary: Int { get }
var dsMixedModeFailure: Int { get }
var kPOSIXErrorBase: Int { get }
var kPOSIXErrorEPERM: Int { get }
var kPOSIXErrorENOENT: Int { get }
var kPOSIXErrorESRCH: Int { get }
var kPOSIXErrorEINTR: Int { get }
var kPOSIXErrorEIO: Int { get }
var kPOSIXErrorENXIO: Int { get }
var kPOSIXErrorE2BIG: Int { get }
var kPOSIXErrorENOEXEC: Int { get }
var kPOSIXErrorEBADF: Int { get }
var kPOSIXErrorECHILD: Int { get }
var kPOSIXErrorEDEADLK: Int { get }
var kPOSIXErrorENOMEM: Int { get }
var kPOSIXErrorEACCES: Int { get }
var kPOSIXErrorEFAULT: Int { get }
var kPOSIXErrorENOTBLK: Int { get }
var kPOSIXErrorEBUSY: Int { get }
var kPOSIXErrorEEXIST: Int { get }
var kPOSIXErrorEXDEV: Int { get }
var kPOSIXErrorENODEV: Int { get }
var kPOSIXErrorENOTDIR: Int { get }
var kPOSIXErrorEISDIR: Int { get }
var kPOSIXErrorEINVAL: Int { get }
var kPOSIXErrorENFILE: Int { get }
var kPOSIXErrorEMFILE: Int { get }
var kPOSIXErrorENOTTY: Int { get }
var kPOSIXErrorETXTBSY: Int { get }
var kPOSIXErrorEFBIG: Int { get }
var kPOSIXErrorENOSPC: Int { get }
var kPOSIXErrorESPIPE: Int { get }
var kPOSIXErrorEROFS: Int { get }
var kPOSIXErrorEMLINK: Int { get }
var kPOSIXErrorEPIPE: Int { get }
var kPOSIXErrorEDOM: Int { get }
var kPOSIXErrorERANGE: Int { get }
var kPOSIXErrorEAGAIN: Int { get }
var kPOSIXErrorEINPROGRESS: Int { get }
var kPOSIXErrorEALREADY: Int { get }
var kPOSIXErrorENOTSOCK: Int { get }
var kPOSIXErrorEDESTADDRREQ: Int { get }
var kPOSIXErrorEMSGSIZE: Int { get }
var kPOSIXErrorEPROTOTYPE: Int { get }
var kPOSIXErrorENOPROTOOPT: Int { get }
var kPOSIXErrorEPROTONOSUPPORT: Int { get }
var kPOSIXErrorESOCKTNOSUPPORT: Int { get }
var kPOSIXErrorENOTSUP: Int { get }
var kPOSIXErrorEPFNOSUPPORT: Int { get }
var kPOSIXErrorEAFNOSUPPORT: Int { get }
var kPOSIXErrorEADDRINUSE: Int { get }
var kPOSIXErrorEADDRNOTAVAIL: Int { get }
var kPOSIXErrorENETDOWN: Int { get }
var kPOSIXErrorENETUNREACH: Int { get }
var kPOSIXErrorENETRESET: Int { get }
var kPOSIXErrorECONNABORTED: Int { get }
var kPOSIXErrorECONNRESET: Int { get }
var kPOSIXErrorENOBUFS: Int { get }
var kPOSIXErrorEISCONN: Int { get }
var kPOSIXErrorENOTCONN: Int { get }
var kPOSIXErrorESHUTDOWN: Int { get }
var kPOSIXErrorETOOMANYREFS: Int { get }
var kPOSIXErrorETIMEDOUT: Int { get }
var kPOSIXErrorECONNREFUSED: Int { get }
var kPOSIXErrorELOOP: Int { get }
var kPOSIXErrorENAMETOOLONG: Int { get }
var kPOSIXErrorEHOSTDOWN: Int { get }
var kPOSIXErrorEHOSTUNREACH: Int { get }
var kPOSIXErrorENOTEMPTY: Int { get }
var kPOSIXErrorEPROCLIM: Int { get }
var kPOSIXErrorEUSERS: Int { get }
var kPOSIXErrorEDQUOT: Int { get }
var kPOSIXErrorESTALE: Int { get }
var kPOSIXErrorEREMOTE: Int { get }
var kPOSIXErrorEBADRPC: Int { get }
var kPOSIXErrorERPCMISMATCH: Int { get }
var kPOSIXErrorEPROGUNAVAIL: Int { get }
var kPOSIXErrorEPROGMISMATCH: Int { get }
var kPOSIXErrorEPROCUNAVAIL: Int { get }
var kPOSIXErrorENOLCK: Int { get }
var kPOSIXErrorENOSYS: Int { get }
var kPOSIXErrorEFTYPE: Int { get }
var kPOSIXErrorEAUTH: Int { get }
var kPOSIXErrorENEEDAUTH: Int { get }
var kPOSIXErrorEPWROFF: Int { get }
var kPOSIXErrorEDEVERR: Int { get }
var kPOSIXErrorEOVERFLOW: Int { get }
var kPOSIXErrorEBADEXEC: Int { get }
var kPOSIXErrorEBADARCH: Int { get }
var kPOSIXErrorESHLIBVERS: Int { get }
var kPOSIXErrorEBADMACHO: Int { get }
var kPOSIXErrorECANCELED: Int { get }
var kPOSIXErrorEIDRM: Int { get }
var kPOSIXErrorENOMSG: Int { get }
var kPOSIXErrorEILSEQ: Int { get }
var kPOSIXErrorENOATTR: Int { get }
var kPOSIXErrorEBADMSG: Int { get }
var kPOSIXErrorEMULTIHOP: Int { get }
var kPOSIXErrorENODATA: Int { get }
var kPOSIXErrorENOLINK: Int { get }
var kPOSIXErrorENOSR: Int { get }
var kPOSIXErrorENOSTR: Int { get }
var kPOSIXErrorEPROTO: Int { get }
var kPOSIXErrorETIME: Int { get }
var kPOSIXErrorEOPNOTSUPP: Int { get }
typealias UCKeyOutput = UInt16
typealias UCKeyCharSeq = UInt16
var kUCKeyOutputStateIndexMask: Int { get }
var kUCKeyOutputSequenceIndexMask: Int { get }
var kUCKeyOutputTestForIndexMask: Int { get }
var kUCKeyOutputGetIndexMask: Int { get }
struct UCKeyStateRecord {
  var stateZeroCharData: UCKeyCharSeq
  var stateZeroNextState: UInt16
  var stateEntryCount: UInt16
  var stateEntryFormat: UInt16
  var stateEntryData: (UInt32)
  init()
  init(stateZeroCharData: UCKeyCharSeq, stateZeroNextState: UInt16, stateEntryCount: UInt16, stateEntryFormat: UInt16, stateEntryData: (UInt32))
}
var kUCKeyStateEntryTerminalFormat: Int { get }
var kUCKeyStateEntryRangeFormat: Int { get }
struct UCKeyStateEntryTerminal {
  var curState: UInt16
  var charData: UCKeyCharSeq
  init()
  init(curState: UInt16, charData: UCKeyCharSeq)
}
struct UCKeyStateEntryRange {
  var curStateStart: UInt16
  var curStateRange: UInt8
  var deltaMultiplier: UInt8
  var charData: UCKeyCharSeq
  var nextState: UInt16
  init()
  init(curStateStart: UInt16, curStateRange: UInt8, deltaMultiplier: UInt8, charData: UCKeyCharSeq, nextState: UInt16)
}
struct UCKeyboardTypeHeader {
  var keyboardTypeFirst: UInt32
  var keyboardTypeLast: UInt32
  var keyModifiersToTableNumOffset: UInt32
  var keyToCharTableIndexOffset: UInt32
  var keyStateRecordsIndexOffset: UInt32
  var keyStateTerminatorsOffset: UInt32
  var keySequenceDataIndexOffset: UInt32
  init()
  init(keyboardTypeFirst: UInt32, keyboardTypeLast: UInt32, keyModifiersToTableNumOffset: UInt32, keyToCharTableIndexOffset: UInt32, keyStateRecordsIndexOffset: UInt32, keyStateTerminatorsOffset: UInt32, keySequenceDataIndexOffset: UInt32)
}
struct UCKeyboardLayout {
  var keyLayoutHeaderFormat: UInt16
  var keyLayoutDataVersion: UInt16
  var keyLayoutFeatureInfoOffset: UInt32
  var keyboardTypeCount: UInt32
  var keyboardTypeList: (UCKeyboardTypeHeader)
  init()
  init(keyLayoutHeaderFormat: UInt16, keyLayoutDataVersion: UInt16, keyLayoutFeatureInfoOffset: UInt32, keyboardTypeCount: UInt32, keyboardTypeList: (UCKeyboardTypeHeader))
}
struct UCKeyLayoutFeatureInfo {
  var keyLayoutFeatureInfoFormat: UInt16
  var reserved: UInt16
  var maxOutputStringLength: UInt32
  init()
  init(keyLayoutFeatureInfoFormat: UInt16, reserved: UInt16, maxOutputStringLength: UInt32)
}
struct UCKeyModifiersToTableNum {
  var keyModifiersToTableNumFormat: UInt16
  var defaultTableNum: UInt16
  var modifiersCount: UInt32
  var tableNum: (UInt8)
  init()
  init(keyModifiersToTableNumFormat: UInt16, defaultTableNum: UInt16, modifiersCount: UInt32, tableNum: (UInt8))
}
struct UCKeyToCharTableIndex {
  var keyToCharTableIndexFormat: UInt16
  var keyToCharTableSize: UInt16
  var keyToCharTableCount: UInt32
  var keyToCharTableOffsets: (UInt32)
  init()
  init(keyToCharTableIndexFormat: UInt16, keyToCharTableSize: UInt16, keyToCharTableCount: UInt32, keyToCharTableOffsets: (UInt32))
}
struct UCKeyStateRecordsIndex {
  var keyStateRecordsIndexFormat: UInt16
  var keyStateRecordCount: UInt16
  var keyStateRecordOffsets: (UInt32)
  init()
  init(keyStateRecordsIndexFormat: UInt16, keyStateRecordCount: UInt16, keyStateRecordOffsets: (UInt32))
}
struct UCKeyStateTerminators {
  var keyStateTerminatorsFormat: UInt16
  var keyStateTerminatorCount: UInt16
  var keyStateTerminators: (UCKeyCharSeq)
  init()
  init(keyStateTerminatorsFormat: UInt16, keyStateTerminatorCount: UInt16, keyStateTerminators: (UCKeyCharSeq))
}
struct UCKeySequenceDataIndex {
  var keySequenceDataIndexFormat: UInt16
  var charSequenceCount: UInt16
  var charSequenceOffsets: (UInt16)
  init()
  init(keySequenceDataIndexFormat: UInt16, charSequenceCount: UInt16, charSequenceOffsets: (UInt16))
}
var kUCKeyLayoutHeaderFormat: Int { get }
var kUCKeyLayoutFeatureInfoFormat: Int { get }
var kUCKeyModifiersToTableNumFormat: Int { get }
var kUCKeyToCharTableIndexFormat: Int { get }
var kUCKeyStateRecordsIndexFormat: Int { get }
var kUCKeyStateTerminatorsFormat: Int { get }
var kUCKeySequenceDataIndexFormat: Int { get }
var kUCKeyActionDown: Int { get }
var kUCKeyActionUp: Int { get }
var kUCKeyActionAutoKey: Int { get }
var kUCKeyActionDisplay: Int { get }
var kUCKeyTranslateNoDeadKeysBit: Int { get }
var kUCKeyTranslateNoDeadKeysMask: Int { get }
var kUnicodeCollationClass: Int { get }
typealias CollatorRef = COpaquePointer
typealias UCCollateOptions = UInt32
var kUCCollateComposeInsensitiveMask: Int { get }
var kUCCollateWidthInsensitiveMask: Int { get }
var kUCCollateCaseInsensitiveMask: Int { get }
var kUCCollateDiacritInsensitiveMask: Int { get }
var kUCCollatePunctuationSignificantMask: Int { get }
var kUCCollateDigitsOverrideMask: Int { get }
var kUCCollateDigitsAsNumberMask: Int { get }
var kUCCollateStandardOptions: Int { get }
var kUCCollateTypeHFSExtended: Int { get }
var kUCCollateTypeSourceMask: Int { get }
var kUCCollateTypeShiftBits: Int { get }
var kUCCollateTypeMask: UInt32 { get }
typealias UCCollationValue = UInt32
typealias UCTypeSelectRef = COpaquePointer
typealias UCTypeSelectCompareResult = Int32
typealias UCTSWalkDirection = UInt16
var kUCTSDirectionNext: Int { get }
var kUCTSDirectionPrevious: Int { get }
typealias UCTypeSelectOptions = UInt16
var kUCTSOptionsNoneMask: Int { get }
var kUCTSOptionsReleaseStringMask: Int { get }
var kUCTSOptionsDataIsOrderedMask: Int { get }
typealias IndexToUCStringProcPtr = @convention(c) (UInt32, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Unmanaged<CFString>?>, UnsafeMutablePointer<UCTypeSelectOptions>) -> DarwinBoolean
typealias IndexToUCStringUPP = IndexToUCStringProcPtr
func NewIndexToUCStringUPP(userRoutine: IndexToUCStringProcPtr!) -> IndexToUCStringUPP!
func DisposeIndexToUCStringUPP(userUPP: IndexToUCStringUPP!)
func InvokeIndexToUCStringUPP(index: UInt32, _ listDataPtr: UnsafeMutablePointer<Void>, _ refcon: UnsafeMutablePointer<Void>, _ outString: UnsafeMutablePointer<Unmanaged<CFString>?>, _ tsOptions: UnsafeMutablePointer<UCTypeSelectOptions>, _ userUPP: IndexToUCStringUPP!) -> Bool
var kUCTypeSelectMaxListSize: UInt32 { get }
var kUnicodeTextBreakClass: Int { get }
typealias TextBreakLocatorRef = COpaquePointer
typealias UCTextBreakType = UInt32
var kUCTextBreakCharMask: Int { get }
var kUCTextBreakClusterMask: Int { get }
var kUCTextBreakWordMask: Int { get }
var kUCTextBreakLineMask: Int { get }
var kUCTextBreakParagraphMask: Int { get }
typealias UCTextBreakOptions = UInt32
var kUCTextBreakLeadingEdgeMask: Int { get }
var kUCTextBreakGoBackwardsMask: Int { get }
var kUCTextBreakIterateMask: Int { get }
func UCKeyTranslate(keyLayoutPtr: UnsafePointer<UCKeyboardLayout>, _ virtualKeyCode: UInt16, _ keyAction: UInt16, _ modifierKeyState: UInt32, _ keyboardType: UInt32, _ keyTranslateOptions: OptionBits, _ deadKeyState: UnsafeMutablePointer<UInt32>, _ maxStringLength: Int, _ actualStringLength: UnsafeMutablePointer<Int>, _ unicodeString: UnsafeMutablePointer<UniChar>) -> OSStatus
func UCCreateCollator(locale: LocaleRef, _ opVariant: LocaleOperationVariant, _ options: UCCollateOptions, _ collatorRef: UnsafeMutablePointer<CollatorRef>) -> OSStatus
func UCGetCollationKey(collatorRef: CollatorRef, _ textPtr: UnsafePointer<UniChar>, _ textLength: Int, _ maxKeySize: Int, _ actualKeySize: UnsafeMutablePointer<Int>, _ collationKey: UnsafeMutablePointer<UCCollationValue>) -> OSStatus
func UCCompareCollationKeys(key1Ptr: UnsafePointer<UCCollationValue>, _ key1Length: Int, _ key2Ptr: UnsafePointer<UCCollationValue>, _ key2Length: Int, _ equivalent: UnsafeMutablePointer<DarwinBoolean>, _ order: UnsafeMutablePointer<Int32>) -> OSStatus
func UCCompareText(collatorRef: CollatorRef, _ text1Ptr: UnsafePointer<UniChar>, _ text1Length: Int, _ text2Ptr: UnsafePointer<UniChar>, _ text2Length: Int, _ equivalent: UnsafeMutablePointer<DarwinBoolean>, _ order: UnsafeMutablePointer<Int32>) -> OSStatus
func UCDisposeCollator(collatorRef: UnsafeMutablePointer<CollatorRef>) -> OSStatus
func UCCompareTextDefault(options: UCCollateOptions, _ text1Ptr: UnsafePointer<UniChar>, _ text1Length: Int, _ text2Ptr: UnsafePointer<UniChar>, _ text2Length: Int, _ equivalent: UnsafeMutablePointer<DarwinBoolean>, _ order: UnsafeMutablePointer<Int32>) -> OSStatus
func UCCompareTextNoLocale(options: UCCollateOptions, _ text1Ptr: UnsafePointer<UniChar>, _ text1Length: Int, _ text2Ptr: UnsafePointer<UniChar>, _ text2Length: Int, _ equivalent: UnsafeMutablePointer<DarwinBoolean>, _ order: UnsafeMutablePointer<Int32>) -> OSStatus
func UCTypeSelectCreateSelector(locale: LocaleRef, _ opVariant: LocaleOperationVariant, _ options: UCCollateOptions, _ newSelector: UnsafeMutablePointer<UCTypeSelectRef>) -> OSStatus
func UCTypeSelectFlushSelectorData(ref: UCTypeSelectRef) -> OSStatus
func UCTypeSelectReleaseSelector(ref: UnsafeMutablePointer<UCTypeSelectRef>) -> OSStatus
func UCTypeSelectWouldResetBuffer(inRef: UCTypeSelectRef, _ inText: CFString!, _ inEventTime: Double) -> Bool
func UCTypeSelectAddKeyToSelector(inRef: UCTypeSelectRef, _ inText: CFString!, _ inEventTime: Double, _ updateFlag: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func UCTypeSelectCompare(ref: UCTypeSelectRef, _ inText: CFString!, _ result: UnsafeMutablePointer<UCTypeSelectCompareResult>) -> OSStatus
func UCTypeSelectFindItem(ref: UCTypeSelectRef, _ listSize: UInt32, _ listDataPtr: UnsafeMutablePointer<Void>, _ refcon: UnsafeMutablePointer<Void>, _ userUPP: IndexToUCStringUPP!, _ closestItem: UnsafeMutablePointer<UInt32>) -> OSStatus
func UCTypeSelectWalkList(ref: UCTypeSelectRef, _ currSelect: CFString!, _ direction: UCTSWalkDirection, _ listSize: UInt32, _ listDataPtr: UnsafeMutablePointer<Void>, _ refcon: UnsafeMutablePointer<Void>, _ userUPP: IndexToUCStringUPP!, _ closestItem: UnsafeMutablePointer<UInt32>) -> OSStatus
class DCSDictionary {
}
typealias DCSDictionaryRef = DCSDictionary
func DCSGetTermRangeInString(dictionary: DCSDictionary?, _ textString: CFString, _ offset: CFIndex) -> CFRange
func DCSCopyTextDefinition(dictionary: DCSDictionary?, _ textString: CFString, _ range: CFRange) -> Unmanaged<CFString>?
typealias FSEventStreamCreateFlags = UInt32
var kFSEventStreamCreateFlagNone: Int { get }
var kFSEventStreamCreateFlagUseCFTypes: Int { get }
var kFSEventStreamCreateFlagNoDefer: Int { get }
var kFSEventStreamCreateFlagWatchRoot: Int { get }
var kFSEventStreamCreateFlagIgnoreSelf: Int { get }
var kFSEventStreamCreateFlagFileEvents: Int { get }
var kFSEventStreamCreateFlagMarkSelf: Int { get }
typealias FSEventStreamEventFlags = UInt32
var kFSEventStreamEventFlagNone: Int { get }
var kFSEventStreamEventFlagMustScanSubDirs: Int { get }
var kFSEventStreamEventFlagUserDropped: Int { get }
var kFSEventStreamEventFlagKernelDropped: Int { get }
var kFSEventStreamEventFlagEventIdsWrapped: Int { get }
var kFSEventStreamEventFlagHistoryDone: Int { get }
var kFSEventStreamEventFlagRootChanged: Int { get }
var kFSEventStreamEventFlagMount: Int { get }
var kFSEventStreamEventFlagUnmount: Int { get }
var kFSEventStreamEventFlagItemCreated: Int { get }
var kFSEventStreamEventFlagItemRemoved: Int { get }
var kFSEventStreamEventFlagItemInodeMetaMod: Int { get }
var kFSEventStreamEventFlagItemRenamed: Int { get }
var kFSEventStreamEventFlagItemModified: Int { get }
var kFSEventStreamEventFlagItemFinderInfoMod: Int { get }
var kFSEventStreamEventFlagItemChangeOwner: Int { get }
var kFSEventStreamEventFlagItemXattrMod: Int { get }
var kFSEventStreamEventFlagItemIsFile: Int { get }
var kFSEventStreamEventFlagItemIsDir: Int { get }
var kFSEventStreamEventFlagItemIsSymlink: Int { get }
var kFSEventStreamEventFlagOwnEvent: Int { get }
var kFSEventStreamEventFlagItemIsHardlink: Int { get }
var kFSEventStreamEventFlagItemIsLastHardlink: Int { get }
typealias FSEventStreamEventId = UInt64
var kFSEventStreamEventIdSinceNow: UInt { get }
typealias FSEventStreamRef = COpaquePointer
typealias ConstFSEventStreamRef = COpaquePointer
struct FSEventStreamContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias FSEventStreamCallback = @convention(c) (ConstFSEventStreamRef, UnsafeMutablePointer<Void>, Int, UnsafeMutablePointer<Void>, UnsafePointer<FSEventStreamEventFlags>, UnsafePointer<FSEventStreamEventId>) -> Void
func FSEventStreamCreate(allocator: CFAllocator?, _ callback: FSEventStreamCallback, _ context: UnsafeMutablePointer<FSEventStreamContext>, _ pathsToWatch: CFArray, _ sinceWhen: FSEventStreamEventId, _ latency: CFTimeInterval, _ flags: FSEventStreamCreateFlags) -> FSEventStreamRef
func FSEventStreamCreateRelativeToDevice(allocator: CFAllocator?, _ callback: FSEventStreamCallback, _ context: UnsafeMutablePointer<FSEventStreamContext>, _ deviceToWatch: dev_t, _ pathsToWatchRelativeToDevice: CFArray, _ sinceWhen: FSEventStreamEventId, _ latency: CFTimeInterval, _ flags: FSEventStreamCreateFlags) -> FSEventStreamRef
func FSEventStreamGetLatestEventId(streamRef: ConstFSEventStreamRef) -> FSEventStreamEventId
func FSEventStreamGetDeviceBeingWatched(streamRef: ConstFSEventStreamRef) -> dev_t
func FSEventStreamCopyPathsBeingWatched(streamRef: ConstFSEventStreamRef) -> CFArray
func FSEventsGetCurrentEventId() -> FSEventStreamEventId
func FSEventsCopyUUIDForDevice(dev: dev_t) -> CFUUID?
func FSEventsGetLastEventIdForDeviceBeforeTime(dev: dev_t, _ time: CFAbsoluteTime) -> FSEventStreamEventId
func FSEventsPurgeEventsForDeviceUpToEventId(dev: dev_t, _ eventId: FSEventStreamEventId) -> Bool
func FSEventStreamRetain(streamRef: FSEventStreamRef)
func FSEventStreamRelease(streamRef: FSEventStreamRef)
func FSEventStreamScheduleWithRunLoop(streamRef: FSEventStreamRef, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func FSEventStreamUnscheduleFromRunLoop(streamRef: FSEventStreamRef, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func FSEventStreamSetDispatchQueue(streamRef: FSEventStreamRef, _ q: dispatch_queue_t?)
func FSEventStreamInvalidate(streamRef: FSEventStreamRef)
func FSEventStreamStart(streamRef: FSEventStreamRef) -> Bool
func FSEventStreamFlushAsync(streamRef: FSEventStreamRef) -> FSEventStreamEventId
func FSEventStreamFlushSync(streamRef: FSEventStreamRef)
func FSEventStreamStop(streamRef: FSEventStreamRef)
func FSEventStreamShow(streamRef: ConstFSEventStreamRef)
func FSEventStreamCopyDescription(streamRef: ConstFSEventStreamRef) -> CFString
func FSEventStreamSetExclusionPaths(streamRef: FSEventStreamRef, _ pathsToExclude: CFArray) -> Bool
var kGenericDocumentIconResource: Int { get }
var kGenericStationeryIconResource: Int { get }
var kGenericEditionFileIconResource: Int { get }
var kGenericApplicationIconResource: Int { get }
var kGenericDeskAccessoryIconResource: Int { get }
var kGenericFolderIconResource: Int { get }
var kPrivateFolderIconResource: Int { get }
var kFloppyIconResource: Int { get }
var kTrashIconResource: Int { get }
var kGenericRAMDiskIconResource: Int { get }
var kGenericCDROMIconResource: Int { get }
var kDesktopIconResource: Int { get }
var kOpenFolderIconResource: Int { get }
var kGenericHardDiskIconResource: Int { get }
var kGenericFileServerIconResource: Int { get }
var kGenericSuitcaseIconResource: Int { get }
var kGenericMoverObjectIconResource: Int { get }
var kGenericPreferencesIconResource: Int { get }
var kGenericQueryDocumentIconResource: Int { get }
var kGenericExtensionIconResource: Int { get }
var kSystemFolderIconResource: Int { get }
var kHelpIconResource: Int { get }
var kAppleMenuFolderIconResource: Int { get }
var genericDocumentIconResource: Int { get }
var genericStationeryIconResource: Int { get }
var genericEditionFileIconResource: Int { get }
var genericApplicationIconResource: Int { get }
var genericDeskAccessoryIconResource: Int { get }
var genericFolderIconResource: Int { get }
var privateFolderIconResource: Int { get }
var floppyIconResource: Int { get }
var trashIconResource: Int { get }
var genericRAMDiskIconResource: Int { get }
var genericCDROMIconResource: Int { get }
var desktopIconResource: Int { get }
var openFolderIconResource: Int { get }
var genericHardDiskIconResource: Int { get }
var genericFileServerIconResource: Int { get }
var genericSuitcaseIconResource: Int { get }
var genericMoverObjectIconResource: Int { get }
var genericPreferencesIconResource: Int { get }
var genericQueryDocumentIconResource: Int { get }
var genericExtensionIconResource: Int { get }
var systemFolderIconResource: Int { get }
var appleMenuFolderIconResource: Int { get }
var kStartupFolderIconResource: Int { get }
var kOwnedFolderIconResource: Int { get }
var kDropFolderIconResource: Int { get }
var kSharedFolderIconResource: Int { get }
var kMountedFolderIconResource: Int { get }
var kControlPanelFolderIconResource: Int { get }
var kPrintMonitorFolderIconResource: Int { get }
var kPreferencesFolderIconResource: Int { get }
var kExtensionsFolderIconResource: Int { get }
var kFontsFolderIconResource: Int { get }
var kFullTrashIconResource: Int { get }
var startupFolderIconResource: Int { get }
var ownedFolderIconResource: Int { get }
var dropFolderIconResource: Int { get }
var sharedFolderIconResource: Int { get }
var mountedFolderIconResource: Int { get }
var controlPanelFolderIconResource: Int { get }
var printMonitorFolderIconResource: Int { get }
var preferencesFolderIconResource: Int { get }
var extensionsFolderIconResource: Int { get }
var fontsFolderIconResource: Int { get }
var fullTrashIconResource: Int { get }
typealias IconRef = COpaquePointer
var kSystemIconsCreator: Int { get }
var kClipboardIcon: Int { get }
var kClippingUnknownTypeIcon: Int { get }
var kClippingPictureTypeIcon: Int { get }
var kClippingTextTypeIcon: Int { get }
var kClippingSoundTypeIcon: Int { get }
var kDesktopIcon: Int { get }
var kFinderIcon: Int { get }
var kComputerIcon: Int { get }
var kFontSuitcaseIcon: Int { get }
var kFullTrashIcon: Int { get }
var kGenericApplicationIcon: Int { get }
var kGenericCDROMIcon: Int { get }
var kGenericControlPanelIcon: Int { get }
var kGenericControlStripModuleIcon: Int { get }
var kGenericComponentIcon: Int { get }
var kGenericDeskAccessoryIcon: Int { get }
var kGenericDocumentIcon: Int { get }
var kGenericEditionFileIcon: Int { get }
var kGenericExtensionIcon: Int { get }
var kGenericFileServerIcon: Int { get }
var kGenericFontIcon: Int { get }
var kGenericFontScalerIcon: Int { get }
var kGenericFloppyIcon: Int { get }
var kGenericHardDiskIcon: Int { get }
var kGenericIDiskIcon: Int { get }
var kGenericRemovableMediaIcon: Int { get }
var kGenericMoverObjectIcon: Int { get }
var kGenericPCCardIcon: Int { get }
var kGenericPreferencesIcon: Int { get }
var kGenericQueryDocumentIcon: Int { get }
var kGenericRAMDiskIcon: Int { get }
var kGenericSharedLibaryIcon: Int { get }
var kGenericStationeryIcon: Int { get }
var kGenericSuitcaseIcon: Int { get }
var kGenericURLIcon: Int { get }
var kGenericWORMIcon: Int { get }
var kInternationalResourcesIcon: Int { get }
var kKeyboardLayoutIcon: Int { get }
var kSoundFileIcon: Int { get }
var kSystemSuitcaseIcon: Int { get }
var kTrashIcon: Int { get }
var kTrueTypeFontIcon: Int { get }
var kTrueTypeFlatFontIcon: Int { get }
var kTrueTypeMultiFlatFontIcon: Int { get }
var kUserIDiskIcon: Int { get }
var kUnknownFSObjectIcon: Int { get }
var kInternationResourcesIcon: Int { get }
var kInternetLocationHTTPIcon: Int { get }
var kInternetLocationFTPIcon: Int { get }
var kInternetLocationAppleShareIcon: Int { get }
var kInternetLocationAppleTalkZoneIcon: Int { get }
var kInternetLocationFileIcon: Int { get }
var kInternetLocationMailIcon: Int { get }
var kInternetLocationNewsIcon: Int { get }
var kInternetLocationNSLNeighborhoodIcon: Int { get }
var kInternetLocationGenericIcon: Int { get }
var kGenericFolderIcon: Int { get }
var kDropFolderIcon: Int { get }
var kMountedFolderIcon: Int { get }
var kOpenFolderIcon: Int { get }
var kOwnedFolderIcon: Int { get }
var kPrivateFolderIcon: Int { get }
var kSharedFolderIcon: Int { get }
var kSharingPrivsNotApplicableIcon: Int { get }
var kSharingPrivsReadOnlyIcon: Int { get }
var kSharingPrivsReadWriteIcon: Int { get }
var kSharingPrivsUnknownIcon: Int { get }
var kSharingPrivsWritableIcon: Int { get }
var kUserFolderIcon: Int { get }
var kWorkgroupFolderIcon: Int { get }
var kGuestUserIcon: Int { get }
var kUserIcon: Int { get }
var kOwnerIcon: Int { get }
var kGroupIcon: Int { get }
var kAppearanceFolderIcon: Int { get }
var kAppleExtrasFolderIcon: Int { get }
var kAppleMenuFolderIcon: Int { get }
var kApplicationsFolderIcon: Int { get }
var kApplicationSupportFolderIcon: Int { get }
var kAssistantsFolderIcon: Int { get }
var kColorSyncFolderIcon: Int { get }
var kContextualMenuItemsFolderIcon: Int { get }
var kControlPanelDisabledFolderIcon: Int { get }
var kControlPanelFolderIcon: Int { get }
var kControlStripModulesFolderIcon: Int { get }
var kDocumentsFolderIcon: Int { get }
var kExtensionsDisabledFolderIcon: Int { get }
var kExtensionsFolderIcon: Int { get }
var kFavoritesFolderIcon: Int { get }
var kFontsFolderIcon: Int { get }
var kHelpFolderIcon: Int { get }
var kInternetFolderIcon: Int { get }
var kInternetPlugInFolderIcon: Int { get }
var kInternetSearchSitesFolderIcon: Int { get }
var kLocalesFolderIcon: Int { get }
var kMacOSReadMeFolderIcon: Int { get }
var kPublicFolderIcon: Int { get }
var kPreferencesFolderIcon: Int { get }
var kPrinterDescriptionFolderIcon: Int { get }
var kPrinterDriverFolderIcon: Int { get }
var kPrintMonitorFolderIcon: Int { get }
var kRecentApplicationsFolderIcon: Int { get }
var kRecentDocumentsFolderIcon: Int { get }
var kRecentServersFolderIcon: Int { get }
var kScriptingAdditionsFolderIcon: Int { get }
var kSharedLibrariesFolderIcon: Int { get }
var kScriptsFolderIcon: Int { get }
var kShutdownItemsDisabledFolderIcon: Int { get }
var kShutdownItemsFolderIcon: Int { get }
var kSpeakableItemsFolder: Int { get }
var kStartupItemsDisabledFolderIcon: Int { get }
var kStartupItemsFolderIcon: Int { get }
var kSystemExtensionDisabledFolderIcon: Int { get }
var kSystemFolderIcon: Int { get }
var kTextEncodingsFolderIcon: Int { get }
var kUsersFolderIcon: Int { get }
var kUtilitiesFolderIcon: Int { get }
var kVoicesFolderIcon: Int { get }
var kAppleScriptBadgeIcon: Int { get }
var kLockedBadgeIcon: Int { get }
var kMountedBadgeIcon: Int { get }
var kSharedBadgeIcon: Int { get }
var kAliasBadgeIcon: Int { get }
var kAlertCautionBadgeIcon: Int { get }
var kAlertNoteIcon: Int { get }
var kAlertCautionIcon: Int { get }
var kAlertStopIcon: Int { get }
var kAppleTalkIcon: Int { get }
var kAppleTalkZoneIcon: Int { get }
var kAFPServerIcon: Int { get }
var kFTPServerIcon: Int { get }
var kHTTPServerIcon: Int { get }
var kGenericNetworkIcon: Int { get }
var kIPFileServerIcon: Int { get }
var kToolbarCustomizeIcon: Int { get }
var kToolbarDeleteIcon: Int { get }
var kToolbarFavoritesIcon: Int { get }
var kToolbarHomeIcon: Int { get }
var kToolbarAdvancedIcon: Int { get }
var kToolbarInfoIcon: Int { get }
var kToolbarLabelsIcon: Int { get }
var kToolbarApplicationsFolderIcon: Int { get }
var kToolbarDocumentsFolderIcon: Int { get }
var kToolbarMovieFolderIcon: Int { get }
var kToolbarMusicFolderIcon: Int { get }
var kToolbarPicturesFolderIcon: Int { get }
var kToolbarPublicFolderIcon: Int { get }
var kToolbarDesktopFolderIcon: Int { get }
var kToolbarDownloadsFolderIcon: Int { get }
var kToolbarLibraryFolderIcon: Int { get }
var kToolbarUtilitiesFolderIcon: Int { get }
var kToolbarSitesFolderIcon: Int { get }
var kAppleLogoIcon: Int { get }
var kAppleMenuIcon: Int { get }
var kBackwardArrowIcon: Int { get }
var kFavoriteItemsIcon: Int { get }
var kForwardArrowIcon: Int { get }
var kGridIcon: Int { get }
var kHelpIcon: Int { get }
var kKeepArrangedIcon: Int { get }
var kLockedIcon: Int { get }
var kNoFilesIcon: Int { get }
var kNoFolderIcon: Int { get }
var kNoWriteIcon: Int { get }
var kProtectedApplicationFolderIcon: Int { get }
var kProtectedSystemFolderIcon: Int { get }
var kRecentItemsIcon: Int { get }
var kShortcutIcon: Int { get }
var kSortAscendingIcon: Int { get }
var kSortDescendingIcon: Int { get }
var kUnlockedIcon: Int { get }
var kConnectToIcon: Int { get }
var kGenericWindowIcon: Int { get }
var kQuestionMarkIcon: Int { get }
var kDeleteAliasIcon: Int { get }
var kEjectMediaIcon: Int { get }
var kBurningIcon: Int { get }
var kRightContainerArrowIcon: Int { get }
typealias IconServicesUsageFlags = UInt32
var kIconServicesNormalUsageFlag: Int { get }
var kIconServicesNoBadgeFlag: Int { get }
var kIconServicesUpdateIfNeededFlag: Int { get }
var kIconServicesCatalogInfoMask: Int { get }
func GetIconRefOwners(theIconRef: IconRef, _ owners: UnsafeMutablePointer<UInt16>) -> OSErr
func AcquireIconRef(theIconRef: IconRef) -> OSErr
func ReleaseIconRef(theIconRef: IconRef) -> OSErr
func GetIconRef(vRefNum: Int16, _ creator: OSType, _ iconType: OSType, _ theIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
func GetIconRefFromFolder(vRefNum: Int16, _ parentFolderID: Int32, _ folderID: Int32, _ attributes: Int8, _ accessPrivileges: Int8, _ theIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
func GetIconRefFromFileInfo(inRef: UnsafePointer<FSRef>, _ inFileNameLength: Int, _ inFileName: UnsafePointer<UniChar>, _ inWhichInfo: FSCatalogInfoBitmap, _ inCatalogInfo: UnsafePointer<FSCatalogInfo>, _ inUsageFlags: IconServicesUsageFlags, _ outIconRef: UnsafeMutablePointer<IconRef>, _ outLabel: UnsafeMutablePointer<Int16>) -> OSStatus
func GetIconRefFromTypeInfo(inCreator: OSType, _ inType: OSType, _ inExtension: CFString!, _ inMIMEType: CFString!, _ inUsageFlags: IconServicesUsageFlags, _ outIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
func GetIconRefFromIconFamilyPtr(inIconFamilyPtr: UnsafePointer<IconFamilyResource>, _ inSize: Size, _ outIconRef: UnsafeMutablePointer<IconRef>) -> OSStatus
func GetIconRefFromComponent(inComponent: Component, _ outIconRef: UnsafeMutablePointer<IconRef>) -> OSStatus
func RegisterIconRefFromIconFamily(creator: OSType, _ iconType: OSType, _ iconFamily: IconFamilyHandle, _ theIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
func RegisterIconRefFromFSRef(creator: OSType, _ iconType: OSType, _ iconFile: UnsafePointer<FSRef>, _ theIconRef: UnsafeMutablePointer<IconRef>) -> OSStatus
func UnregisterIconRef(creator: OSType, _ iconType: OSType) -> OSErr
func UpdateIconRef(theIconRef: IconRef) -> OSErr
func OverrideIconRef(oldIconRef: IconRef, _ newIconRef: IconRef) -> OSErr
func RemoveIconRefOverride(theIconRef: IconRef) -> OSErr
func CompositeIconRef(backgroundIconRef: IconRef, _ foregroundIconRef: IconRef, _ compositeIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
func IsIconRefComposite(compositeIconRef: IconRef, _ backgroundIconRef: UnsafeMutablePointer<IconRef>, _ foregroundIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
func IsValidIconRef(theIconRef: IconRef) -> Bool
func IsDataAvailableInIconRef(inIconKind: OSType, _ inIconRef: IconRef) -> Bool
func SetCustomIconsEnabled(vRefNum: Int16, _ enableCustomIcons: Bool) -> OSErr
func GetCustomIconsEnabled(vRefNum: Int16, _ customIconsEnabled: UnsafeMutablePointer<DarwinBoolean>) -> OSErr
func ReadIconFromFSRef(ref: UnsafePointer<FSRef>, _ iconFamily: UnsafeMutablePointer<IconFamilyHandle>) -> OSStatus
var kLSAppInTrashErr: OSStatus { get }
var kLSExecutableIncorrectFormat: OSStatus { get }
var kLSAttributeNotFoundErr: OSStatus { get }
var kLSAttributeNotSettableErr: OSStatus { get }
var kLSIncompatibleApplicationVersionErr: OSStatus { get }
var kLSNoRosettaEnvironmentErr: OSStatus { get }
var kLSUnknownErr: OSStatus { get }
var kLSNotAnApplicationErr: OSStatus { get }
var kLSNotInitializedErr: OSStatus { get }
var kLSDataUnavailableErr: OSStatus { get }
var kLSApplicationNotFoundErr: OSStatus { get }
var kLSUnknownTypeErr: OSStatus { get }
var kLSDataTooOldErr: OSStatus { get }
var kLSDataErr: OSStatus { get }
var kLSLaunchInProgressErr: OSStatus { get }
var kLSNotRegisteredErr: OSStatus { get }
var kLSAppDoesNotClaimTypeErr: OSStatus { get }
var kLSAppDoesNotSupportSchemeWarning: OSStatus { get }
var kLSServerCommunicationErr: OSStatus { get }
var kLSCannotSetInfoErr: OSStatus { get }
var kLSNoRegistrationInfoErr: OSStatus { get }
var kLSIncompatibleSystemVersionErr: OSStatus { get }
var kLSNoLaunchPermissionErr: OSStatus { get }
var kLSNoExecutableErr: OSStatus { get }
var kLSNoClassicEnvironmentErr: OSStatus { get }
var kLSMultipleSessionsNotSupportedErr: OSStatus { get }
struct LSRolesMask : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var None: LSRolesMask { get }
  static var Viewer: LSRolesMask { get }
  static var Editor: LSRolesMask { get }
  static var Shell: LSRolesMask { get }
  static var All: LSRolesMask { get }
}
var kLSUnknownType: OSType { get }
var kLSUnknownCreator: OSType { get }
struct LSAcceptanceFlags : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var AcceptDefault: LSAcceptanceFlags { get }
  static var AcceptAllowLoginUI: LSAcceptanceFlags { get }
}
func LSCopyDefaultApplicationURLForURL(inURL: CFURL, _ inRoleMask: LSRolesMask, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>?
func LSCopyDefaultApplicationURLForContentType(inContentType: CFString, _ inRoleMask: LSRolesMask, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>?
func LSCopyApplicationURLsForBundleIdentifier(inBundleIdentifier: CFString, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>?
func LSCopyApplicationURLsForURL(inURL: CFURL, _ inRoleMask: LSRolesMask) -> Unmanaged<CFArray>?
func LSCanURLAcceptURL(inItemURL: CFURL, _ inTargetURL: CFURL, _ inRoleMask: LSRolesMask, _ inFlags: LSAcceptanceFlags, _ outAcceptsItem: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func LSRegisterURL(inURL: CFURL, _ inUpdate: Bool) -> OSStatus
func LSCopyDefaultRoleHandlerForContentType(inContentType: CFString, _ inRole: LSRolesMask) -> Unmanaged<CFString>?
func LSCopyAllRoleHandlersForContentType(inContentType: CFString, _ inRole: LSRolesMask) -> Unmanaged<CFArray>?
func LSSetDefaultRoleHandlerForContentType(inContentType: CFString, _ inRole: LSRolesMask, _ inHandlerBundleID: CFString) -> OSStatus
func LSCopyDefaultHandlerForURLScheme(inURLScheme: CFString) -> Unmanaged<CFString>?
func LSCopyAllHandlersForURLScheme(inURLScheme: CFString) -> Unmanaged<CFArray>?
func LSSetDefaultHandlerForURLScheme(inURLScheme: CFString, _ inHandlerBundleID: CFString) -> OSStatus
struct LSRequestedInfo : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var RequestExtension: LSRequestedInfo { get }
  static var RequestTypeCreator: LSRequestedInfo { get }
  static var RequestBasicFlagsOnly: LSRequestedInfo { get }
  static var RequestAppTypeFlags: LSRequestedInfo { get }
  static var RequestAllFlags: LSRequestedInfo { get }
  static var RequestIconAndKind: LSRequestedInfo { get }
  static var RequestExtensionFlagsOnly: LSRequestedInfo { get }
  static var RequestAllInfo: LSRequestedInfo { get }
}
struct LSItemInfoFlags : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var IsPlainFile: LSItemInfoFlags { get }
  static var IsPackage: LSItemInfoFlags { get }
  static var IsApplication: LSItemInfoFlags { get }
  static var IsContainer: LSItemInfoFlags { get }
  static var IsAliasFile: LSItemInfoFlags { get }
  static var IsSymlink: LSItemInfoFlags { get }
  static var IsInvisible: LSItemInfoFlags { get }
  static var IsNativeApp: LSItemInfoFlags { get }
  static var IsClassicApp: LSItemInfoFlags { get }
  static var AppPrefersNative: LSItemInfoFlags { get }
  static var AppPrefersClassic: LSItemInfoFlags { get }
  static var AppIsScriptable: LSItemInfoFlags { get }
  static var IsVolume: LSItemInfoFlags { get }
  static var ExtensionIsHidden: LSItemInfoFlags { get }
}
struct LSItemInfoRecord {
  var flags: LSItemInfoFlags
  var filetype: OSType
  var creator: OSType
  var `extension`: Unmanaged<CFString>!
  init()
  init(flags: LSItemInfoFlags, filetype: OSType, creator: OSType, extension: Unmanaged<CFString>!)
}
func LSCopyItemInfoForURL(inURL: CFURL!, _ inWhichInfo: LSRequestedInfo, _ outItemInfo: UnsafeMutablePointer<LSItemInfoRecord>) -> OSStatus
func LSCopyItemInfoForRef(inItemRef: UnsafePointer<FSRef>, _ inWhichInfo: LSRequestedInfo, _ outItemInfo: UnsafeMutablePointer<LSItemInfoRecord>) -> OSStatus
func LSGetExtensionInfo(inNameLen: Int, _ inNameBuffer: UnsafePointer<UniChar>, _ outExtStartIndex: UnsafeMutablePointer<Int>) -> OSStatus
func LSCopyDisplayNameForRef(inRef: UnsafePointer<FSRef>, _ outDisplayName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func LSCopyDisplayNameForURL(inURL: CFURL!, _ outDisplayName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func LSSetExtensionHiddenForRef(inRef: UnsafePointer<FSRef>, _ inHide: Bool) -> OSStatus
func LSSetExtensionHiddenForURL(inURL: CFURL!, _ inHide: Bool) -> OSStatus
func LSCopyKindStringForRef(inFSRef: UnsafePointer<FSRef>, _ outKindString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func LSCopyKindStringForURL(inURL: CFURL!, _ outKindString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func LSCopyKindStringForTypeInfo(inType: OSType, _ inCreator: OSType, _ inExtension: CFString!, _ outKindString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func LSCopyKindStringForMIMEType(inMIMEType: CFString!, _ outKindString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func LSGetApplicationForItem(inItemRef: UnsafePointer<FSRef>, _ inRoleMask: LSRolesMask, _ outAppRef: UnsafeMutablePointer<FSRef>, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
func LSGetApplicationForInfo(inType: OSType, _ inCreator: OSType, _ inExtension: CFString!, _ inRoleMask: LSRolesMask, _ outAppRef: UnsafeMutablePointer<FSRef>, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
func LSCopyApplicationForMIMEType(inMIMEType: CFString!, _ inRoleMask: LSRolesMask, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
func LSGetApplicationForURL(inURL: CFURL!, _ inRoleMask: LSRolesMask, _ outAppRef: UnsafeMutablePointer<FSRef>, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
func LSFindApplicationForInfo(inCreator: OSType, _ inBundleID: CFString!, _ inName: CFString!, _ outAppRef: UnsafeMutablePointer<FSRef>, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
func LSCanRefAcceptItem(inItemFSRef: UnsafePointer<FSRef>, _ inTargetRef: UnsafePointer<FSRef>, _ inRoleMask: LSRolesMask, _ inFlags: LSAcceptanceFlags, _ outAcceptsItem: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func LSRegisterFSRef(inRef: UnsafePointer<FSRef>, _ inUpdate: Bool) -> OSStatus
let kLSItemContentType: CFString!
let kLSItemFileType: CFString!
let kLSItemFileCreator: CFString!
let kLSItemExtension: CFString!
let kLSItemDisplayName: CFString!
let kLSItemDisplayKind: CFString!
let kLSItemRoleHandlerDisplayName: CFString!
let kLSItemIsInvisible: CFString!
let kLSItemExtensionIsHidden: CFString!
let kLSItemQuarantineProperties: CFString!
func LSCopyItemAttribute(inItem: UnsafePointer<FSRef>, _ inRoles: LSRolesMask, _ inAttributeName: CFString!, _ outValue: UnsafeMutablePointer<Unmanaged<AnyObject>?>) -> OSStatus
func LSCopyItemAttributes(inItem: UnsafePointer<FSRef>, _ inRoles: LSRolesMask, _ inAttributeNames: CFArray!, _ outValues: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
func LSSetItemAttribute(inItem: UnsafePointer<FSRef>, _ inRoles: LSRolesMask, _ inAttributeName: CFString!, _ inValue: AnyObject!) -> OSStatus
struct LSHandlerOptions : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var Default: LSHandlerOptions { get }
  static var IgnoreCreator: LSHandlerOptions { get }
}
func LSGetHandlerOptionsForContentType(inContentType: CFString!) -> LSHandlerOptions
func LSSetHandlerOptionsForContentType(inContentType: CFString!, _ inOptions: LSHandlerOptions) -> OSStatus
struct LSLaunchFlags : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var Defaults: LSLaunchFlags { get }
  static var AndPrint: LSLaunchFlags { get }
  static var Reserved2: LSLaunchFlags { get }
  static var Reserved3: LSLaunchFlags { get }
  static var Reserved4: LSLaunchFlags { get }
  static var Reserved5: LSLaunchFlags { get }
  static var AndDisplayErrors: LSLaunchFlags { get }
  static var InhibitBGOnly: LSLaunchFlags { get }
  static var DontAddToRecents: LSLaunchFlags { get }
  static var DontSwitch: LSLaunchFlags { get }
  static var NoParams: LSLaunchFlags { get }
  static var Async: LSLaunchFlags { get }
  static var NewInstance: LSLaunchFlags { get }
  static var AndHide: LSLaunchFlags { get }
  static var AndHideOthers: LSLaunchFlags { get }
  static var HasUntrustedContents: LSLaunchFlags { get }
}
struct LSLaunchURLSpec {
  var appURL: Unmanaged<CFURL>?
  var itemURLs: Unmanaged<CFArray>?
  var passThruParams: UnsafePointer<AEDesc>
  var launchFlags: LSLaunchFlags
  var asyncRefCon: UnsafeMutablePointer<Void>
  init()
  init(appURL: Unmanaged<CFURL>?, itemURLs: Unmanaged<CFArray>?, passThruParams: UnsafePointer<AEDesc>, launchFlags: LSLaunchFlags, asyncRefCon: UnsafeMutablePointer<Void>)
}
func LSOpenCFURLRef(inURL: CFURL, _ outLaunchedURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
func LSOpenFromURLSpec(inLaunchSpec: UnsafePointer<LSLaunchURLSpec>, _ outLaunchedURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
var kLSLaunchStartClassic: Int { get }
var kLSLaunchInClassic: Int { get }
struct LSLaunchFSRefSpec {
  var appRef: UnsafePointer<FSRef>
  var numDocs: Int
  var itemRefs: UnsafePointer<FSRef>
  var passThruParams: UnsafePointer<AEDesc>
  var launchFlags: LSLaunchFlags
  var asyncRefCon: UnsafeMutablePointer<Void>
  init()
  init(appRef: UnsafePointer<FSRef>, numDocs: Int, itemRefs: UnsafePointer<FSRef>, passThruParams: UnsafePointer<AEDesc>, launchFlags: LSLaunchFlags, asyncRefCon: UnsafeMutablePointer<Void>)
}
func LSOpenFSRef(inRef: UnsafePointer<FSRef>, _ outLaunchedRef: UnsafeMutablePointer<FSRef>) -> OSStatus
func LSOpenFromRefSpec(inLaunchSpec: UnsafePointer<LSLaunchFSRefSpec>, _ outLaunchedRef: UnsafeMutablePointer<FSRef>) -> OSStatus
struct LSApplicationParameters {
  var version: CFIndex
  var flags: LSLaunchFlags
  var application: UnsafePointer<FSRef>
  var asyncLaunchRefCon: UnsafeMutablePointer<Void>
  var environment: Unmanaged<CFDictionary>!
  var argv: Unmanaged<CFArray>!
  var initialEvent: UnsafeMutablePointer<AppleEvent>
  init()
  init(version: CFIndex, flags: LSLaunchFlags, application: UnsafePointer<FSRef>, asyncLaunchRefCon: UnsafeMutablePointer<Void>, environment: Unmanaged<CFDictionary>!, argv: Unmanaged<CFArray>!, initialEvent: UnsafeMutablePointer<AppleEvent>)
}
func LSOpenApplication(appParams: UnsafePointer<LSApplicationParameters>, _ outPSN: UnsafeMutablePointer<ProcessSerialNumber>) -> OSStatus
func LSOpenItemsWithRole(inItems: UnsafePointer<FSRef>, _ inItemCount: CFIndex, _ inRole: LSRolesMask, _ inAEParam: UnsafePointer<AEKeyDesc>, _ inAppParams: UnsafePointer<LSApplicationParameters>, _ outPSNs: UnsafeMutablePointer<ProcessSerialNumber>, _ inMaxPSNCount: CFIndex) -> OSStatus
func LSOpenURLsWithRole(inURLs: CFArray!, _ inRole: LSRolesMask, _ inAEParam: UnsafePointer<AEKeyDesc>, _ inAppParams: UnsafePointer<LSApplicationParameters>, _ outPSNs: UnsafeMutablePointer<ProcessSerialNumber>, _ inMaxPSNCount: CFIndex) -> OSStatus
let kLSQuarantineAgentNameKey: CFString
let kLSQuarantineAgentBundleIdentifierKey: CFString
let kLSQuarantineTimeStampKey: CFString
let kLSQuarantineTypeKey: CFString
let kLSQuarantineTypeWebDownload: CFString
let kLSQuarantineTypeOtherDownload: CFString
let kLSQuarantineTypeEmailAttachment: CFString
let kLSQuarantineTypeInstantMessageAttachment: CFString
let kLSQuarantineTypeCalendarEventAttachment: CFString
let kLSQuarantineTypeOtherAttachment: CFString
let kLSQuarantineOriginURLKey: CFString
let kLSQuarantineDataURLKey: CFString
let kUTTypeItem: CFString
let kUTTypeContent: CFString
let kUTTypeCompositeContent: CFString
let kUTTypeMessage: CFString
let kUTTypeContact: CFString
let kUTTypeArchive: CFString
let kUTTypeDiskImage: CFString
let kUTTypeData: CFString
let kUTTypeDirectory: CFString
let kUTTypeResolvable: CFString
let kUTTypeSymLink: CFString
let kUTTypeExecutable: CFString
let kUTTypeMountPoint: CFString
let kUTTypeAliasFile: CFString
let kUTTypeAliasRecord: CFString
let kUTTypeURLBookmarkData: CFString
let kUTTypeURL: CFString
let kUTTypeFileURL: CFString
let kUTTypeText: CFString
let kUTTypePlainText: CFString
let kUTTypeUTF8PlainText: CFString
let kUTTypeUTF16ExternalPlainText: CFString
let kUTTypeUTF16PlainText: CFString
let kUTTypeDelimitedText: CFString
let kUTTypeCommaSeparatedText: CFString
let kUTTypeTabSeparatedText: CFString
let kUTTypeUTF8TabSeparatedText: CFString
let kUTTypeRTF: CFString
let kUTTypeHTML: CFString
let kUTTypeXML: CFString
let kUTTypeSourceCode: CFString
let kUTTypeAssemblyLanguageSource: CFString
let kUTTypeCSource: CFString
let kUTTypeObjectiveCSource: CFString
let kUTTypeSwiftSource: CFString
let kUTTypeCPlusPlusSource: CFString
let kUTTypeObjectiveCPlusPlusSource: CFString
let kUTTypeCHeader: CFString
let kUTTypeCPlusPlusHeader: CFString
let kUTTypeJavaSource: CFString
let kUTTypeScript: CFString
let kUTTypeAppleScript: CFString
let kUTTypeOSAScript: CFString
let kUTTypeOSAScriptBundle: CFString
let kUTTypeJavaScript: CFString
let kUTTypeShellScript: CFString
let kUTTypePerlScript: CFString
let kUTTypePythonScript: CFString
let kUTTypeRubyScript: CFString
let kUTTypePHPScript: CFString
let kUTTypeJSON: CFString
let kUTTypePropertyList: CFString
let kUTTypeXMLPropertyList: CFString
let kUTTypeBinaryPropertyList: CFString
let kUTTypePDF: CFString
let kUTTypeRTFD: CFString
let kUTTypeFlatRTFD: CFString
let kUTTypeTXNTextAndMultimediaData: CFString
let kUTTypeWebArchive: CFString
let kUTTypeImage: CFString
let kUTTypeJPEG: CFString
let kUTTypeJPEG2000: CFString
let kUTTypeTIFF: CFString
let kUTTypePICT: CFString
let kUTTypeGIF: CFString
let kUTTypePNG: CFString
let kUTTypeQuickTimeImage: CFString
let kUTTypeAppleICNS: CFString
let kUTTypeBMP: CFString
let kUTTypeICO: CFString
let kUTTypeRawImage: CFString
let kUTTypeScalableVectorGraphics: CFString
let kUTTypeAudiovisualContent: CFString
let kUTTypeMovie: CFString
let kUTTypeVideo: CFString
let kUTTypeAudio: CFString
let kUTTypeQuickTimeMovie: CFString
let kUTTypeMPEG: CFString
let kUTTypeMPEG2Video: CFString
let kUTTypeMPEG2TransportStream: CFString
let kUTTypeMP3: CFString
let kUTTypeMPEG4: CFString
let kUTTypeMPEG4Audio: CFString
let kUTTypeAppleProtectedMPEG4Audio: CFString
let kUTTypeAppleProtectedMPEG4Video: CFString
let kUTTypeAVIMovie: CFString
let kUTTypeAudioInterchangeFileFormat: CFString
let kUTTypeWaveformAudio: CFString
let kUTTypeMIDIAudio: CFString
let kUTTypePlaylist: CFString
let kUTTypeM3UPlaylist: CFString
let kUTTypeFolder: CFString
let kUTTypeVolume: CFString
let kUTTypePackage: CFString
let kUTTypeBundle: CFString
let kUTTypePluginBundle: CFString
let kUTTypeSpotlightImporter: CFString
let kUTTypeQuickLookGenerator: CFString
let kUTTypeXPCService: CFString
let kUTTypeFramework: CFString
let kUTTypeApplication: CFString
let kUTTypeApplicationBundle: CFString
let kUTTypeApplicationFile: CFString
let kUTTypeUnixExecutable: CFString
let kUTTypeWindowsExecutable: CFString
let kUTTypeJavaClass: CFString
let kUTTypeJavaArchive: CFString
let kUTTypeSystemPreferencesPane: CFString
let kUTTypeGNUZipArchive: CFString
let kUTTypeBzip2Archive: CFString
let kUTTypeZipArchive: CFString
let kUTTypeSpreadsheet: CFString
let kUTTypePresentation: CFString
let kUTTypeDatabase: CFString
let kUTTypeVCard: CFString
let kUTTypeToDoItem: CFString
let kUTTypeCalendarEvent: CFString
let kUTTypeEmailMessage: CFString
let kUTTypeInternetLocation: CFString
let kUTTypeInkText: CFString
let kUTTypeFont: CFString
let kUTTypeBookmark: CFString
let kUTType3DContent: CFString
let kUTTypePKCS12: CFString
let kUTTypeX509Certificate: CFString
let kUTTypeElectronicPublication: CFString
let kUTTypeLog: CFString
let kUTExportedTypeDeclarationsKey: CFString
let kUTImportedTypeDeclarationsKey: CFString
let kUTTypeIdentifierKey: CFString
let kUTTypeTagSpecificationKey: CFString
let kUTTypeConformsToKey: CFString
let kUTTypeDescriptionKey: CFString
let kUTTypeIconFileKey: CFString
let kUTTypeReferenceURLKey: CFString
let kUTTypeVersionKey: CFString
let kUTTagClassFilenameExtension: CFString
let kUTTagClassMIMEType: CFString
let kUTTagClassNSPboardType: CFString
let kUTTagClassOSType: CFString
func UTTypeCreatePreferredIdentifierForTag(inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFString>?
func UTTypeCreateAllIdentifiersForTag(inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFArray>?
func UTTypeCopyPreferredTagWithClass(inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFString>?
func UTTypeCopyAllTagsWithClass(inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFArray>?
func UTTypeEqual(inUTI1: CFString, _ inUTI2: CFString) -> Bool
func UTTypeConformsTo(inUTI: CFString, _ inConformsToUTI: CFString) -> Bool
func UTTypeCopyDescription(inUTI: CFString) -> Unmanaged<CFString>?
func UTTypeIsDeclared(inUTI: CFString) -> Bool
func UTTypeIsDynamic(inUTI: CFString) -> Bool
func UTTypeCopyDeclaration(inUTI: CFString) -> Unmanaged<CFDictionary>?
func UTTypeCopyDeclaringBundleURL(inUTI: CFString) -> Unmanaged<CFURL>?
func UTCreateStringForOSType(inOSType: OSType) -> Unmanaged<CFString>
func UTGetOSTypeFromString(inString: CFString) -> OSType
struct MDImporterInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var ImporterImportData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFString!) -> DarwinBoolean)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, ImporterImportData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFString!) -> DarwinBoolean)!)
}
struct MDExporterInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var ImporterExportData: (@convention(c) (UnsafeMutablePointer<Void>, CFDictionary!, CFString!, CFString!) -> DarwinBoolean)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, ImporterExportData: (@convention(c) (UnsafeMutablePointer<Void>, CFDictionary!, CFString!, CFString!) -> DarwinBoolean)!)
}
struct MDImporterURLInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var ImporterImportURLData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFURL!) -> DarwinBoolean)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, ImporterImportURLData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFURL!) -> DarwinBoolean)!)
}
struct MDImporterBundleWrapperURLInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var ImporterImportBundleWrapperURLData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFURL!) -> DarwinBoolean)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, ImporterImportBundleWrapperURLData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFURL!) -> DarwinBoolean)!)
}
class MDItem {
}
typealias MDItemRef = MDItem
func MDItemGetTypeID() -> CFTypeID
func MDItemCreate(allocator: CFAllocator!, _ path: CFString!) -> MDItem!
func MDItemCreateWithURL(allocator: CFAllocator!, _ url: CFURL!) -> MDItem!
func MDItemsCreateWithURLs(allocator: CFAllocator!, _ urls: CFArray!) -> CFArray!
func MDItemCopyAttribute(item: MDItem!, _ name: CFString!) -> AnyObject!
func MDItemCopyAttributes(item: MDItem!, _ names: CFArray!) -> CFDictionary!
func MDItemCopyAttributeNames(item: MDItem!) -> CFArray!
func MDItemsCopyAttributes(items: CFArray!, _ names: CFArray!) -> CFArray!
let kMDItemAttributeChangeDate: CFString!
let kMDItemContentType: CFString!
let kMDItemContentTypeTree: CFString!
let kMDItemKeywords: CFString!
let kMDItemTitle: CFString!
let kMDItemAuthors: CFString!
let kMDItemEditors: CFString!
let kMDItemParticipants: CFString!
let kMDItemProjects: CFString!
let kMDItemDownloadedDate: CFString!
let kMDItemWhereFroms: CFString!
let kMDItemComment: CFString!
let kMDItemCopyright: CFString!
let kMDItemLastUsedDate: CFString!
let kMDItemContentCreationDate: CFString!
let kMDItemContentModificationDate: CFString!
let kMDItemDateAdded: CFString!
let kMDItemDurationSeconds: CFString!
let kMDItemContactKeywords: CFString!
let kMDItemVersion: CFString!
let kMDItemPixelHeight: CFString!
let kMDItemPixelWidth: CFString!
let kMDItemPixelCount: CFString!
let kMDItemColorSpace: CFString!
let kMDItemBitsPerSample: CFString!
let kMDItemFlashOnOff: CFString!
let kMDItemFocalLength: CFString!
let kMDItemAcquisitionMake: CFString!
let kMDItemAcquisitionModel: CFString!
let kMDItemISOSpeed: CFString!
let kMDItemOrientation: CFString!
let kMDItemLayerNames: CFString!
let kMDItemWhiteBalance: CFString!
let kMDItemAperture: CFString!
let kMDItemProfileName: CFString!
let kMDItemResolutionWidthDPI: CFString!
let kMDItemResolutionHeightDPI: CFString!
let kMDItemExposureMode: CFString!
let kMDItemExposureTimeSeconds: CFString!
let kMDItemEXIFVersion: CFString!
let kMDItemCameraOwner: CFString!
let kMDItemFocalLength35mm: CFString!
let kMDItemLensModel: CFString!
let kMDItemEXIFGPSVersion: CFString!
let kMDItemAltitude: CFString!
let kMDItemLatitude: CFString!
let kMDItemLongitude: CFString!
let kMDItemSpeed: CFString!
let kMDItemTimestamp: CFString!
let kMDItemGPSTrack: CFString!
let kMDItemImageDirection: CFString!
let kMDItemNamedLocation: CFString!
let kMDItemGPSStatus: CFString!
let kMDItemGPSMeasureMode: CFString!
let kMDItemGPSDOP: CFString!
let kMDItemGPSMapDatum: CFString!
let kMDItemGPSDestLatitude: CFString!
let kMDItemGPSDestLongitude: CFString!
let kMDItemGPSDestBearing: CFString!
let kMDItemGPSDestDistance: CFString!
let kMDItemGPSProcessingMethod: CFString!
let kMDItemGPSAreaInformation: CFString!
let kMDItemGPSDateStamp: CFString!
let kMDItemGPSDifferental: CFString!
let kMDItemCodecs: CFString!
let kMDItemMediaTypes: CFString!
let kMDItemStreamable: CFString!
let kMDItemTotalBitRate: CFString!
let kMDItemVideoBitRate: CFString!
let kMDItemAudioBitRate: CFString!
let kMDItemDeliveryType: CFString!
let kMDItemAlbum: CFString!
let kMDItemHasAlphaChannel: CFString!
let kMDItemRedEyeOnOff: CFString!
let kMDItemMeteringMode: CFString!
let kMDItemMaxAperture: CFString!
let kMDItemFNumber: CFString!
let kMDItemExposureProgram: CFString!
let kMDItemExposureTimeString: CFString!
let kMDItemHeadline: CFString!
let kMDItemInstructions: CFString!
let kMDItemCity: CFString!
let kMDItemStateOrProvince: CFString!
let kMDItemCountry: CFString!
let kMDItemFSName: CFString!
let kMDItemDisplayName: CFString!
let kMDItemPath: CFString!
let kMDItemFSSize: CFString!
let kMDItemFSCreationDate: CFString!
let kMDItemFSContentChangeDate: CFString!
let kMDItemFSOwnerUserID: CFString!
let kMDItemFSOwnerGroupID: CFString!
let kMDItemFSHasCustomIcon: CFString!
let kMDItemFSIsExtensionHidden: CFString!
let kMDItemFSIsStationery: CFString!
let kMDItemFSInvisible: CFString!
let kMDItemFSLabel: CFString!
let kMDItemFSNodeCount: CFString!
let kMDItemHTMLContent: CFString!
let kMDItemTextContent: CFString!
let kMDItemAudioSampleRate: CFString!
let kMDItemAudioChannelCount: CFString!
let kMDItemTempo: CFString!
let kMDItemKeySignature: CFString!
let kMDItemTimeSignature: CFString!
let kMDItemAudioEncodingApplication: CFString!
let kMDItemComposer: CFString!
let kMDItemLyricist: CFString!
let kMDItemAudioTrackNumber: CFString!
let kMDItemRecordingDate: CFString!
let kMDItemMusicalGenre: CFString!
let kMDItemIsGeneralMIDISequence: CFString!
let kMDItemRecordingYear: CFString!
let kMDItemOrganizations: CFString!
let kMDItemLanguages: CFString!
let kMDItemRights: CFString!
let kMDItemPublishers: CFString!
let kMDItemContributors: CFString!
let kMDItemCoverage: CFString!
let kMDItemSubject: CFString!
let kMDItemTheme: CFString!
let kMDItemDescription: CFString!
let kMDItemIdentifier: CFString!
let kMDItemAudiences: CFString!
let kMDItemNumberOfPages: CFString!
let kMDItemPageWidth: CFString!
let kMDItemPageHeight: CFString!
let kMDItemSecurityMethod: CFString!
let kMDItemCreator: CFString!
let kMDItemEncodingApplications: CFString!
let kMDItemDueDate: CFString!
let kMDItemStarRating: CFString!
let kMDItemPhoneNumbers: CFString!
let kMDItemEmailAddresses: CFString!
let kMDItemInstantMessageAddresses: CFString!
let kMDItemKind: CFString!
let kMDItemRecipients: CFString!
let kMDItemFinderComment: CFString!
let kMDItemFonts: CFString!
let kMDItemAppleLoopsRootKey: CFString!
let kMDItemAppleLoopsKeyFilterType: CFString!
let kMDItemAppleLoopsLoopMode: CFString!
let kMDItemAppleLoopDescriptors: CFString!
let kMDItemMusicalInstrumentCategory: CFString!
let kMDItemMusicalInstrumentName: CFString!
let kMDItemCFBundleIdentifier: CFString!
let kMDItemInformation: CFString!
let kMDItemDirector: CFString!
let kMDItemProducer: CFString!
let kMDItemGenre: CFString!
let kMDItemPerformers: CFString!
let kMDItemOriginalFormat: CFString!
let kMDItemOriginalSource: CFString!
let kMDItemAuthorEmailAddresses: CFString!
let kMDItemRecipientEmailAddresses: CFString!
let kMDItemAuthorAddresses: CFString!
let kMDItemRecipientAddresses: CFString!
let kMDItemURL: CFString!
let kMDItemIsLikelyJunk: CFString!
let kMDItemExecutableArchitectures: CFString!
let kMDItemExecutablePlatform: CFString!
let kMDItemApplicationCategories: CFString!
let kMDItemIsApplicationManaged: CFString!
class MDLabel {
}
typealias MDLabelRef = MDLabel
func MDLabelGetTypeID() -> CFTypeID
func MDItemCopyLabels(item: MDItem!) -> CFArray!
func MDItemSetLabel(item: MDItem!, _ label: MDLabel!) -> Bool
func MDItemRemoveLabel(item: MDItem!, _ label: MDLabel!) -> Bool
struct MDLabelDomain : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMDLabelUserDomain: MDLabelDomain { get }
var kMDLabelLocalDomain: MDLabelDomain { get }
func MDLabelCreate(allocator: CFAllocator!, _ displayName: CFString!, _ kind: CFString!, _ domain: MDLabelDomain) -> MDLabel!
func MDLabelCopyAttribute(label: MDLabel!, _ name: CFString!) -> AnyObject!
func MDLabelCopyAttributeName(label: MDLabel!) -> CFString!
func MDLabelDelete(label: MDLabel!) -> Bool
func MDLabelSetAttributes(label: MDLabel!, _ attrs: CFDictionary!) -> Bool
func MDCopyLabelKinds() -> CFArray!
func MDCopyLabelsMatchingExpression(simpleQueryString: CFString!) -> CFArray!
func MDCopyLabelsWithKind(kind: CFString!) -> CFArray!
func MDCopyLabelWithUUID(labelUUID: CFUUID!) -> MDLabel!
var kMDLabelBundleURL: Unmanaged<CFString>!
var kMDLabelContentChangeDate: Unmanaged<CFString>!
var kMDLabelDisplayName: Unmanaged<CFString>!
var kMDLabelIconData: Unmanaged<CFString>!
var kMDLabelIconUUID: Unmanaged<CFString>!
var kMDLabelIsMutuallyExclusiveSetMember: Unmanaged<CFString>!
var kMDLabelKind: Unmanaged<CFString>!
var kMDLabelSetsFinderColor: Unmanaged<CFString>!
var kMDLabelUUID: Unmanaged<CFString>!
var kMDLabelVisibility: Unmanaged<CFString>!
var kMDLabelKindIsMutuallyExclusiveSetKey: Unmanaged<CFString>!
var kMDLabelKindVisibilityKey: Unmanaged<CFString>!
var kMDPrivateVisibility: Unmanaged<CFString>!
var kMDPublicVisibility: Unmanaged<CFString>!
let kMDLabelAddedNotification: CFString!
let kMDLabelChangedNotification: CFString!
let kMDLabelRemovedNotification: CFString!
class MDQuery {
}
typealias MDQueryRef = MDQuery
struct MDQueryOptionFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMDQuerySynchronous: MDQueryOptionFlags { get }
var kMDQueryWantsUpdates: MDQueryOptionFlags { get }
var kMDQueryAllowFSTranslation: MDQueryOptionFlags { get }
func MDQueryGetTypeID() -> CFTypeID
func MDQueryCreate(allocator: CFAllocator!, _ queryString: CFString!, _ valueListAttrs: CFArray!, _ sortingAttrs: CFArray!) -> MDQuery!
func MDQueryCreateSubset(allocator: CFAllocator!, _ query: MDQuery!, _ queryString: CFString!, _ valueListAttrs: CFArray!, _ sortingAttrs: CFArray!) -> MDQuery!
func MDQueryCreateForItems(allocator: CFAllocator!, _ queryString: CFString!, _ valueListAttrs: CFArray!, _ sortingAttrs: CFArray!, _ items: CFArray!) -> MDQuery!
func MDQueryCopyQueryString(query: MDQuery!) -> CFString!
func MDQueryCopyValueListAttributes(query: MDQuery!) -> CFArray!
func MDQueryCopySortingAttributes(query: MDQuery!) -> CFArray!
struct MDQueryBatchingParams {
  var first_max_num: Int
  var first_max_ms: Int
  var progress_max_num: Int
  var progress_max_ms: Int
  var update_max_num: Int
  var update_max_ms: Int
  init()
  init(first_max_num: Int, first_max_ms: Int, progress_max_num: Int, progress_max_ms: Int, update_max_num: Int, update_max_ms: Int)
}
func MDQueryGetBatchingParameters(query: MDQuery!) -> MDQueryBatchingParams
func MDQuerySetBatchingParameters(query: MDQuery!, _ params: MDQueryBatchingParams)
typealias MDQueryCreateResultFunction = @convention(c) (MDQuery!, MDItem!, UnsafeMutablePointer<Void>) -> UnsafePointer<Void>
func MDQuerySetCreateResultFunction(query: MDQuery!, _ func: MDQueryCreateResultFunction!, _ context: UnsafeMutablePointer<Void>, _ cb: UnsafePointer<CFArrayCallBacks>)
typealias MDQueryCreateValueFunction = @convention(c) (MDQuery!, CFString!, AnyObject!, UnsafeMutablePointer<Void>) -> UnsafePointer<Void>
func MDQuerySetCreateValueFunction(query: MDQuery!, _ func: MDQueryCreateValueFunction!, _ context: UnsafeMutablePointer<Void>, _ cb: UnsafePointer<CFArrayCallBacks>)
func MDQuerySetDispatchQueue(query: MDQuery!, _ queue: dispatch_queue_t!)
func MDQueryExecute(query: MDQuery!, _ optionFlags: CFOptionFlags) -> Bool
func MDQueryStop(query: MDQuery!)
func MDQueryDisableUpdates(query: MDQuery!)
func MDQueryEnableUpdates(query: MDQuery!)
func MDQueryIsGatheringComplete(query: MDQuery!) -> Bool
func MDQueryGetResultCount(query: MDQuery!) -> CFIndex
func MDQueryGetResultAtIndex(query: MDQuery!, _ idx: CFIndex) -> UnsafePointer<Void>
func MDQueryGetIndexOfResult(query: MDQuery!, _ result: UnsafePointer<Void>) -> CFIndex
func MDQueryGetAttributeValueOfResultAtIndex(query: MDQuery!, _ name: CFString!, _ idx: CFIndex) -> UnsafeMutablePointer<Void>
func MDQueryCopyValuesOfAttribute(query: MDQuery!, _ name: CFString!) -> CFArray!
func MDQueryGetCountOfResultsWithAttributeValue(query: MDQuery!, _ name: CFString!, _ value: AnyObject!) -> CFIndex
func MDQuerySetSortOrder(query: MDQuery!, _ sortingAttrs: CFArray!) -> Bool
struct MDQuerySortOptionFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMDQueryReverseSortOrderFlag: MDQuerySortOptionFlags { get }
func MDQuerySetSortOptionFlagsForAttribute(query: MDQuery!, _ fieldName: CFString!, _ flags: UInt32) -> Bool
func MDQueryGetSortOptionFlagsForAttribute(query: MDQuery!, _ fieldName: CFString!) -> UInt32
typealias MDQuerySortComparatorFunction = @convention(c) (UnsafePointer<Unmanaged<AnyObject>?>, UnsafePointer<Unmanaged<AnyObject>?>, UnsafeMutablePointer<Void>) -> CFComparisonResult
func MDQuerySetSortComparator(query: MDQuery!, _ comparator: MDQuerySortComparatorFunction!, _ context: UnsafeMutablePointer<Void>)
func MDQuerySetSortComparatorBlock(query: MDQuery!, _ comparator: ((UnsafePointer<Unmanaged<AnyObject>?>, UnsafePointer<Unmanaged<AnyObject>?>) -> CFComparisonResult)!)
let kMDQueryProgressNotification: CFString!
let kMDQueryDidFinishNotification: CFString!
let kMDQueryDidUpdateNotification: CFString!
let kMDQueryUpdateAddedItems: CFString!
let kMDQueryUpdateChangedItems: CFString!
let kMDQueryUpdateRemovedItems: CFString!
let kMDQueryResultContentRelevance: CFString!
func MDQuerySetSearchScope(query: MDQuery!, _ scopeDirectories: CFArray!, _ scopeOptions: OptionBits)
let kMDQueryScopeHome: CFString!
let kMDQueryScopeComputer: CFString!
let kMDQueryScopeNetwork: CFString!
let kMDQueryScopeAllIndexed: CFString!
let kMDQueryScopeComputerIndexed: CFString!
let kMDQueryScopeNetworkIndexed: CFString!
func MDQuerySetMaxCount(query: MDQuery!, _ size: CFIndex)
func MDSchemaCopyAttributesForContentType(contentTypeUTI: CFString!) -> CFDictionary!
func MDSchemaCopyMetaAttributesForAttribute(name: CFString!) -> CFDictionary!
func MDSchemaCopyAllAttributes() -> CFArray!
func MDSchemaCopyDisplayNameForAttribute(name: CFString!) -> CFString!
func MDSchemaCopyDisplayDescriptionForAttribute(name: CFString!) -> CFString!
let kMDAttributeDisplayValues: CFString!
let kMDAttributeAllValues: CFString!
let kMDAttributeReadOnlyValues: CFString!
let kMDExporterAvaliable: CFString!
let kMDAttributeName: CFString!
let kMDAttributeType: CFString!
let kMDAttributeMultiValued: CFString!
class CSIdentity {
}
typealias CSIdentityRef = CSIdentity
typealias CSIdentityQueryRef = CSIdentityQuery
class CSIdentityQuery {
}
let kCSIdentityGeneratePosixName: CFString!
var kCSIdentityClassUser: Int { get }
var kCSIdentityClassGroup: Int { get }
typealias CSIdentityClass = CFIndex
var kCSIdentityFlagNone: Int { get }
var kCSIdentityFlagHidden: Int { get }
typealias CSIdentityFlags = CFOptionFlags
func CSIdentityGetTypeID() -> CFTypeID
func CSIdentityCreate(allocator: CFAllocator!, _ identityClass: CSIdentityClass, _ fullName: CFString!, _ posixName: CFString!, _ flags: CSIdentityFlags, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentity>!
func CSIdentityCreateCopy(allocator: CFAllocator!, _ identity: CSIdentity!) -> Unmanaged<CSIdentity>!
func CSIdentityGetClass(identity: CSIdentity!) -> CSIdentityClass
func CSIdentityGetAuthority(identity: CSIdentity!) -> Unmanaged<CSIdentityAuthority>!
func CSIdentityGetUUID(identity: CSIdentity!) -> Unmanaged<CFUUID>!
func CSIdentityGetFullName(identity: CSIdentity!) -> Unmanaged<CFString>!
func CSIdentityGetPosixID(identity: CSIdentity!) -> id_t
func CSIdentityGetPosixName(identity: CSIdentity!) -> Unmanaged<CFString>!
func CSIdentityGetEmailAddress(identity: CSIdentity!) -> Unmanaged<CFString>!
func CSIdentityGetImageURL(identity: CSIdentity!) -> Unmanaged<CFURL>!
func CSIdentityGetImageData(identity: CSIdentity!) -> Unmanaged<CFData>!
func CSIdentityGetImageDataType(identity: CSIdentity!) -> Unmanaged<CFString>!
func CSIdentityGetAliases(identity: CSIdentity!) -> Unmanaged<CFArray>!
func CSIdentityIsMemberOfGroup(identity: CSIdentity!, _ group: CSIdentity!) -> Bool
func CSIdentityIsHidden(identity: CSIdentity!) -> Bool
func CSIdentityCreatePersistentReference(allocator: CFAllocator!, _ identity: CSIdentity!) -> Unmanaged<CFData>!
func CSIdentityIsEnabled(user: CSIdentity!) -> Bool
func CSIdentityAuthenticateUsingPassword(user: CSIdentity!, _ password: CFString!) -> Bool
func CSIdentityGetCertificate(user: CSIdentity!) -> Unmanaged<SecCertificate>!
func CSIdentityCreateGroupMembershipQuery(allocator: CFAllocator!, _ group: CSIdentity!) -> Unmanaged<CSIdentityQuery>!
func CSIdentitySetFullName(identity: CSIdentity!, _ fullName: CFString!)
func CSIdentitySetEmailAddress(identity: CSIdentity!, _ emailAddress: CFString!)
func CSIdentitySetImageURL(identity: CSIdentity!, _ url: CFURL!)
func CSIdentitySetImageData(identity: CSIdentity!, _ imageData: CFData!, _ imageDataType: CFString!)
func CSIdentityAddAlias(identity: CSIdentity!, _ alias: CFString!)
func CSIdentityRemoveAlias(identity: CSIdentity!, _ alias: CFString!)
func CSIdentityAddMember(group: CSIdentity!, _ member: CSIdentity!)
func CSIdentityRemoveMember(group: CSIdentity!, _ member: CSIdentity!)
func CSIdentitySetIsEnabled(user: CSIdentity!, _ isEnabled: Bool)
func CSIdentitySetPassword(user: CSIdentity!, _ password: CFString!)
func CSIdentitySetCertificate(user: CSIdentity!, _ certificate: SecCertificate!)
func CSIdentityDelete(identity: CSIdentity!)
func CSIdentityCommit(identity: CSIdentity!, _ authorization: AuthorizationRef, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
var kCSIdentityCommitCompleted: Int { get }
typealias CSIdentityStatusUpdatedCallback = @convention(c) (CSIdentity!, CFIndex, CFError!, UnsafeMutablePointer<Void>) -> Void
struct CSIdentityClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack!
  var release: CFAllocatorReleaseCallBack!
  var copyDescription: CFAllocatorCopyDescriptionCallBack!
  var statusUpdated: CSIdentityStatusUpdatedCallback!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack!, release: CFAllocatorReleaseCallBack!, copyDescription: CFAllocatorCopyDescriptionCallBack!, statusUpdated: CSIdentityStatusUpdatedCallback!)
}
func CSIdentityCommitAsynchronously(identity: CSIdentity!, _ clientContext: UnsafePointer<CSIdentityClientContext>, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!, _ authorization: AuthorizationRef) -> Bool
func CSIdentityIsCommitting(identity: CSIdentity!) -> Bool
func CSIdentityRemoveClient(identity: CSIdentity!)
class CSIdentityAuthority {
}
typealias CSIdentityAuthorityRef = CSIdentityAuthority
func CSIdentityAuthorityGetTypeID() -> CFTypeID
func CSGetDefaultIdentityAuthority() -> Unmanaged<CSIdentityAuthority>!
func CSGetLocalIdentityAuthority() -> Unmanaged<CSIdentityAuthority>!
func CSGetManagedIdentityAuthority() -> Unmanaged<CSIdentityAuthority>!
func CSIdentityAuthorityCopyLocalizedName(authority: CSIdentityAuthority!) -> Unmanaged<CFString>!
let kCSIdentityErrorDomain: CFString!
var kCSIdentityUnknownAuthorityErr: Int { get }
var kCSIdentityAuthorityNotAccessibleErr: Int { get }
var kCSIdentityPermissionErr: Int { get }
var kCSIdentityDeletedErr: Int { get }
var kCSIdentityInvalidFullNameErr: Int { get }
var kCSIdentityDuplicateFullNameErr: Int { get }
var kCSIdentityInvalidPosixNameErr: Int { get }
var kCSIdentityDuplicatePosixNameErr: Int { get }
func CSIdentityQueryGetTypeID() -> CFTypeID
var kCSIdentityQueryGenerateUpdateEvents: Int { get }
var kCSIdentityQueryIncludeHiddenIdentities: Int { get }
typealias CSIdentityQueryFlags = CFOptionFlags
var kCSIdentityQueryStringEquals: Int { get }
var kCSIdentityQueryStringBeginsWith: Int { get }
typealias CSIdentityQueryStringComparisonMethod = CFIndex
func CSIdentityQueryCreate(allocator: CFAllocator!, _ identityClass: CSIdentityClass, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentityQuery>!
func CSIdentityQueryCreateForName(allocator: CFAllocator!, _ name: CFString!, _ comparisonMethod: CSIdentityQueryStringComparisonMethod, _ identityClass: CSIdentityClass, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentityQuery>!
func CSIdentityQueryCreateForUUID(allocator: CFAllocator!, _ uuid: CFUUID!, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentityQuery>!
func CSIdentityQueryCreateForPosixID(allocator: CFAllocator!, _ posixID: id_t, _ identityClass: CSIdentityClass, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentityQuery>!
func CSIdentityQueryCreateForPersistentReference(allocator: CFAllocator!, _ referenceData: CFData!) -> Unmanaged<CSIdentityQuery>!
func CSIdentityQueryCreateForCurrentUser(allocator: CFAllocator!) -> Unmanaged<CSIdentityQuery>!
func CSIdentityQueryCopyResults(query: CSIdentityQuery!) -> Unmanaged<CFArray>!
func CSIdentityQueryExecute(query: CSIdentityQuery!, _ flags: CSIdentityQueryFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
var kCSIdentityQueryEventSearchPhaseFinished: Int { get }
var kCSIdentityQueryEventResultsAdded: Int { get }
var kCSIdentityQueryEventResultsChanged: Int { get }
var kCSIdentityQueryEventResultsRemoved: Int { get }
var kCSIdentityQueryEventErrorOccurred: Int { get }
typealias CSIdentityQueryEvent = CFIndex
typealias CSIdentityQueryReceiveEventCallback = @convention(c) (CSIdentityQuery!, CSIdentityQueryEvent, CFArray!, CFError!, UnsafeMutablePointer<Void>) -> Void
struct CSIdentityQueryClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retainInfo: CFAllocatorRetainCallBack!
  var releaseInfo: CFAllocatorReleaseCallBack!
  var copyInfoDescription: CFAllocatorCopyDescriptionCallBack!
  var receiveEvent: CSIdentityQueryReceiveEventCallback!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retainInfo: CFAllocatorRetainCallBack!, releaseInfo: CFAllocatorReleaseCallBack!, copyInfoDescription: CFAllocatorCopyDescriptionCallBack!, receiveEvent: CSIdentityQueryReceiveEventCallback!)
}
func CSIdentityQueryExecuteAsynchronously(query: CSIdentityQuery!, _ flags: CSIdentityQueryFlags, _ clientContext: UnsafePointer<CSIdentityQueryClientContext>, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!) -> Bool
func CSIdentityQueryStop(query: CSIdentityQuery!)
let kSKMinTermLength: CFString!
let kSKSubstitutions: CFString!
let kSKStopWords: CFString!
let kSKProximityIndexing: CFString!
let kSKMaximumTerms: CFString!
let kSKTermChars: CFString!
let kSKStartTermChars: CFString!
let kSKEndTermChars: CFString!
typealias SKDocument = CFTypeRef
typealias SKDocumentRef = SKDocument
func SKDocumentGetTypeID() -> CFTypeID
func SKDocumentCreateWithURL(inURL: CFURL!) -> Unmanaged<SKDocument>!
func SKDocumentCopyURL(inDocument: SKDocument!) -> Unmanaged<CFURL>!
func SKDocumentCreate(inScheme: CFString!, _ inParent: SKDocument!, _ inName: CFString!) -> Unmanaged<SKDocument>!
func SKDocumentGetSchemeName(inDocument: SKDocument!) -> Unmanaged<CFString>!
func SKDocumentGetName(inDocument: SKDocument!) -> Unmanaged<CFString>!
func SKDocumentGetParent(inDocument: SKDocument!) -> Unmanaged<SKDocument>!
typealias SKIndexRef = SKIndex
class SKIndex {
}
func SKIndexGetTypeID() -> CFTypeID
typealias SKIndexDocumentIteratorRef = SKIndexDocumentIterator
class SKIndexDocumentIterator {
}
func SKIndexDocumentIteratorGetTypeID() -> CFTypeID
struct SKIndexType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSKIndexUnknown: SKIndexType { get }
var kSKIndexInverted: SKIndexType { get }
var kSKIndexVector: SKIndexType { get }
var kSKIndexInvertedVector: SKIndexType { get }
struct SKDocumentIndexState : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSKDocumentStateNotIndexed: SKDocumentIndexState { get }
var kSKDocumentStateIndexed: SKDocumentIndexState { get }
var kSKDocumentStateAddPending: SKDocumentIndexState { get }
var kSKDocumentStateDeletePending: SKDocumentIndexState { get }
func SKIndexCreateWithURL(inURL: CFURL!, _ inIndexName: CFString!, _ inIndexType: SKIndexType, _ inAnalysisProperties: CFDictionary!) -> Unmanaged<SKIndex>!
func SKIndexOpenWithURL(inURL: CFURL!, _ inIndexName: CFString!, _ inWriteAccess: Bool) -> Unmanaged<SKIndex>!
func SKIndexCreateWithMutableData(inData: CFMutableData!, _ inIndexName: CFString!, _ inIndexType: SKIndexType, _ inAnalysisProperties: CFDictionary!) -> Unmanaged<SKIndex>!
func SKIndexOpenWithData(inData: CFData!, _ inIndexName: CFString!) -> Unmanaged<SKIndex>!
func SKIndexOpenWithMutableData(inData: CFMutableData!, _ inIndexName: CFString!) -> Unmanaged<SKIndex>!
func SKIndexFlush(inIndex: SKIndex!) -> Bool
func SKIndexSetMaximumBytesBeforeFlush(inIndex: SKIndex!, _ inBytesForUpdate: CFIndex)
func SKIndexGetMaximumBytesBeforeFlush(inIndex: SKIndex!) -> CFIndex
func SKIndexCompact(inIndex: SKIndex!) -> Bool
func SKIndexGetIndexType(inIndex: SKIndex!) -> SKIndexType
func SKIndexGetAnalysisProperties(inIndex: SKIndex!) -> Unmanaged<CFDictionary>!
func SKIndexGetDocumentCount(inIndex: SKIndex!) -> CFIndex
func SKIndexClose(inIndex: SKIndex!)
typealias SKDocumentID = CFIndex
func SKIndexAddDocumentWithText(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inDocumentText: CFString!, _ inCanReplace: Bool) -> Bool
func SKIndexAddDocument(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inMIMETypeHint: CFString!, _ inCanReplace: Bool) -> Bool
func SKIndexRemoveDocument(inIndex: SKIndex!, _ inDocument: SKDocument!) -> Bool
func SKIndexCopyDocumentProperties(inIndex: SKIndex!, _ inDocument: SKDocument!) -> Unmanaged<CFDictionary>!
func SKIndexSetDocumentProperties(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inProperties: CFDictionary!)
func SKIndexGetDocumentState(inIndex: SKIndex!, _ inDocument: SKDocument!) -> SKDocumentIndexState
func SKIndexGetDocumentID(inIndex: SKIndex!, _ inDocument: SKDocument!) -> SKDocumentID
func SKIndexCopyDocumentForDocumentID(inIndex: SKIndex!, _ inDocumentID: SKDocumentID) -> Unmanaged<SKDocument>!
func SKIndexRenameDocument(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inNewName: CFString!) -> Bool
func SKIndexMoveDocument(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inNewParent: SKDocument!) -> Bool
func SKIndexDocumentIteratorCreate(inIndex: SKIndex!, _ inParentDocument: SKDocument!) -> Unmanaged<SKIndexDocumentIterator>!
func SKIndexDocumentIteratorCopyNext(inIterator: SKIndexDocumentIterator!) -> Unmanaged<SKDocument>!
func SKIndexGetMaximumDocumentID(inIndex: SKIndex!) -> SKDocumentID
func SKIndexGetDocumentTermCount(inIndex: SKIndex!, _ inDocumentID: SKDocumentID) -> CFIndex
func SKIndexCopyTermIDArrayForDocumentID(inIndex: SKIndex!, _ inDocumentID: SKDocumentID) -> Unmanaged<CFArray>!
func SKIndexGetDocumentTermFrequency(inIndex: SKIndex!, _ inDocumentID: SKDocumentID, _ inTermID: CFIndex) -> CFIndex
func SKIndexGetMaximumTermID(inIndex: SKIndex!) -> CFIndex
func SKIndexGetTermDocumentCount(inIndex: SKIndex!, _ inTermID: CFIndex) -> CFIndex
func SKIndexCopyDocumentIDArrayForTermID(inIndex: SKIndex!, _ inTermID: CFIndex) -> Unmanaged<CFArray>!
func SKIndexCopyTermStringForTermID(inIndex: SKIndex!, _ inTermID: CFIndex) -> Unmanaged<CFString>!
func SKIndexGetTermIDForTermString(inIndex: SKIndex!, _ inTermString: CFString!) -> CFIndex
func SKLoadDefaultExtractorPlugIns()
class SKSearch {
}
typealias SKSearchRef = SKSearch
func SKSearchGetTypeID() -> CFTypeID
typealias SKSearchOptions = UInt32
var kSKSearchOptionDefault: Int { get }
var kSKSearchOptionNoRelevanceScores: Int { get }
var kSKSearchOptionSpaceMeansOR: Int { get }
var kSKSearchOptionFindSimilar: Int { get }
func SKSearchCreate(inIndex: SKIndex!, _ inQuery: CFString!, _ inSearchOptions: SKSearchOptions) -> Unmanaged<SKSearch>!
func SKSearchCancel(inSearch: SKSearch!)
func SKSearchFindMatches(inSearch: SKSearch!, _ inMaximumCount: CFIndex, _ outDocumentIDsArray: UnsafeMutablePointer<SKDocumentID>, _ outScoresArray: UnsafeMutablePointer<Float>, _ maximumTime: CFTimeInterval, _ outFoundCount: UnsafeMutablePointer<CFIndex>) -> Bool
func SKIndexCopyInfoForDocumentIDs(inIndex: SKIndex!, _ inCount: CFIndex, _ inDocumentIDsArray: UnsafeMutablePointer<SKDocumentID>, _ outNamesArray: UnsafeMutablePointer<Unmanaged<CFString>?>, _ outParentIDsArray: UnsafeMutablePointer<SKDocumentID>)
func SKIndexCopyDocumentRefsForDocumentIDs(inIndex: SKIndex!, _ inCount: CFIndex, _ inDocumentIDsArray: UnsafeMutablePointer<SKDocumentID>, _ outDocumentRefsArray: UnsafeMutablePointer<Unmanaged<SKDocument>?>)
func SKIndexCopyDocumentURLsForDocumentIDs(inIndex: SKIndex!, _ inCount: CFIndex, _ inDocumentIDsArray: UnsafeMutablePointer<SKDocumentID>, _ outDocumentURLsArray: UnsafeMutablePointer<Unmanaged<CFURL>?>)
typealias SKSearchGroupRef = SKSearchGroup
class SKSearchGroup {
}
class SKSearchResults {
}
typealias SKSearchResultsRef = SKSearchResults
struct SKSearchType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSKSearchRanked: SKSearchType { get }
var kSKSearchBooleanRanked: SKSearchType { get }
var kSKSearchRequiredRanked: SKSearchType { get }
var kSKSearchPrefixRanked: SKSearchType { get }
typealias SKSearchResultsFilterCallBack = @convention(c) (SKIndex!, SKDocument!, UnsafeMutablePointer<Void>) -> DarwinBoolean
class SKSummary {
}
typealias SKSummaryRef = SKSummary
func SKSummaryGetTypeID() -> CFTypeID
func SKSummaryCreateWithString(inString: CFString!) -> Unmanaged<SKSummary>!
func SKSummaryGetSentenceCount(summary: SKSummary!) -> CFIndex
func SKSummaryGetParagraphCount(summary: SKSummary!) -> CFIndex
func SKSummaryCopySentenceAtIndex(summary: SKSummary!, _ i: CFIndex) -> Unmanaged<CFString>!
func SKSummaryCopyParagraphAtIndex(summary: SKSummary!, _ i: CFIndex) -> Unmanaged<CFString>!
func SKSummaryCopySentenceSummaryString(summary: SKSummary!, _ numSentences: CFIndex) -> Unmanaged<CFString>!
func SKSummaryCopyParagraphSummaryString(summary: SKSummary!, _ numParagraphs: CFIndex) -> Unmanaged<CFString>!
func SKSummaryGetSentenceSummaryInfo(summary: SKSummary!, _ numSentencesInSummary: CFIndex, _ outRankOrderOfSentences: UnsafeMutablePointer<CFIndex>, _ outSentenceIndexOfSentences: UnsafeMutablePointer<CFIndex>, _ outParagraphIndexOfSentences: UnsafeMutablePointer<CFIndex>) -> CFIndex
func SKSummaryGetParagraphSummaryInfo(summary: SKSummary!, _ numParagraphsInSummary: CFIndex, _ outRankOrderOfParagraphs: UnsafeMutablePointer<CFIndex>, _ outParagraphIndexOfParagraphs: UnsafeMutablePointer<CFIndex>) -> CFIndex
class LSSharedFileList {
}
typealias LSSharedFileListRef = LSSharedFileList
class LSSharedFileListItem {
}
typealias LSSharedFileListItemRef = LSSharedFileListItem
var kLSSharedFileListFavoriteVolumes: Unmanaged<CFString>!
var kLSSharedFileListFavoriteItems: Unmanaged<CFString>!
var kLSSharedFileListRecentApplicationItems: Unmanaged<CFString>!
var kLSSharedFileListRecentDocumentItems: Unmanaged<CFString>!
var kLSSharedFileListRecentServerItems: Unmanaged<CFString>!
var kLSSharedFileListSessionLoginItems: Unmanaged<CFString>!
var kLSSharedFileListRecentItemsMaxAmount: Unmanaged<CFString>!
var kLSSharedFileListVolumesComputerVisible: Unmanaged<CFString>!
var kLSSharedFileListVolumesNetworkVisible: Unmanaged<CFString>!
var kLSSharedFileListItemBeforeFirst: Unmanaged<LSSharedFileListItem>!
var kLSSharedFileListItemLast: Unmanaged<LSSharedFileListItem>!
var kLSSharedFileListItemHidden: Unmanaged<CFString>!
var kLSSharedFileListLoginItemHidden: Unmanaged<CFString>!
typealias LSSharedFileListResolutionFlags = UInt32
var kLSSharedFileListNoUserInteraction: Int { get }
var kLSSharedFileListDoNotMountVolumes: Int { get }
typealias LSSharedFileListChangedProcPtr = @convention(c) (LSSharedFileList!, UnsafeMutablePointer<Void>) -> Void
func LSSharedFileListGetTypeID() -> CFTypeID
func LSSharedFileListItemGetTypeID() -> CFTypeID
func LSSharedFileListCreate(inAllocator: CFAllocator!, _ inListType: CFString!, _ listOptions: AnyObject!) -> Unmanaged<LSSharedFileList>!
func LSSharedFileListSetAuthorization(inList: LSSharedFileList!, _ inAuthorization: AuthorizationRef) -> OSStatus
func LSSharedFileListAddObserver(inList: LSSharedFileList!, _ inRunloop: CFRunLoop!, _ inRunloopMode: CFString!, _ callback: LSSharedFileListChangedProcPtr!, _ context: UnsafeMutablePointer<Void>)
func LSSharedFileListRemoveObserver(inList: LSSharedFileList!, _ inRunloop: CFRunLoop!, _ inRunloopMode: CFString!, _ callback: LSSharedFileListChangedProcPtr!, _ context: UnsafeMutablePointer<Void>)
func LSSharedFileListGetSeedValue(inList: LSSharedFileList!) -> UInt32
func LSSharedFileListCopyProperty(inList: LSSharedFileList!, _ inPropertyName: CFString!) -> Unmanaged<AnyObject>!
func LSSharedFileListSetProperty(inList: LSSharedFileList!, _ inPropertyName: CFString!, _ inPropertyData: AnyObject!) -> OSStatus
func LSSharedFileListCopySnapshot(inList: LSSharedFileList!, _ outSnapshotSeed: UnsafeMutablePointer<UInt32>) -> Unmanaged<CFArray>!
func LSSharedFileListInsertItemURL(inList: LSSharedFileList!, _ insertAfterThisItem: LSSharedFileListItem!, _ inDisplayName: CFString!, _ inIconRef: IconRef, _ inURL: CFURL!, _ inPropertiesToSet: CFDictionary!, _ inPropertiesToClear: CFArray!) -> Unmanaged<LSSharedFileListItem>!
func LSSharedFileListInsertItemFSRef(inList: LSSharedFileList!, _ insertAfterThisItem: LSSharedFileListItem!, _ inDisplayName: CFString!, _ inIconRef: IconRef, _ inFSRef: UnsafePointer<FSRef>, _ inPropertiesToSet: CFDictionary!, _ inPropertiesToClear: CFArray!) -> Unmanaged<LSSharedFileListItem>!
func LSSharedFileListItemMove(inList: LSSharedFileList!, _ inItem: LSSharedFileListItem!, _ inMoveAfterItem: LSSharedFileListItem!) -> OSStatus
func LSSharedFileListItemRemove(inList: LSSharedFileList!, _ inItem: LSSharedFileListItem!) -> OSStatus
func LSSharedFileListRemoveAllItems(inList: LSSharedFileList!) -> OSStatus
func LSSharedFileListItemGetID(inItem: LSSharedFileListItem!) -> UInt32
func LSSharedFileListItemCopyIconRef(inItem: LSSharedFileListItem!) -> IconRef
func LSSharedFileListItemCopyDisplayName(inItem: LSSharedFileListItem!) -> Unmanaged<CFString>!
func LSSharedFileListItemResolve(inItem: LSSharedFileListItem!, _ inFlags: LSSharedFileListResolutionFlags, _ outURL: UnsafeMutablePointer<Unmanaged<CFURL>?>, _ outRef: UnsafeMutablePointer<FSRef>) -> OSStatus
func LSSharedFileListItemCopyResolvedURL(inItem: LSSharedFileListItem!, _ inFlags: LSSharedFileListResolutionFlags, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
func LSSharedFileListItemCopyProperty(inItem: LSSharedFileListItem!, _ inPropertyName: CFString!) -> Unmanaged<AnyObject>!
func LSSharedFileListItemSetProperty(inItem: LSSharedFileListItem!, _ inPropertyName: CFString!, _ inPropertyData: AnyObject!) -> OSStatus
