
func DRGetVersion() -> NumVersion
class DRBurn : NSObject {
   init!(forDevice device: DRDevice!)
  init!(device: DRDevice!)
  func writeLayout(layout: AnyObject!)
  func status() -> [NSObject : AnyObject]!
  func abort()
  func properties() -> [NSObject : AnyObject]!
  func setProperties(properties: [NSObject : AnyObject]!)
  func device() -> DRDevice!
  init()
}
extension DRBurn {
  func requestedBurnSpeed() -> Float
  func setRequestedBurnSpeed(speed: Float)
  func appendable() -> Bool
  func setAppendable(appendable: Bool)
  func verifyDisc() -> Bool
  func setVerifyDisc(verify: Bool)
  func completionAction() -> String!
  func setCompletionAction(action: String!)
}
let DRBurnRequestedSpeedKey: String
let DRBurnAppendableKey: String
let DRBurnOverwriteDiscKey: String
let DRBurnVerifyDiscKey: String
let DRBurnCompletionActionKey: String
let DRBurnUnderrunProtectionKey: String
let DRBurnTestingKey: String
let DRSynchronousBehaviorKey: String
let DRBurnFailureActionKey: String
let DRMediaCatalogNumberKey: String
let DRBurnDoubleLayerL0DataZoneBlocksKey: String
let DRBurnStrategyKey: String
let DRBurnStrategyIsRequiredKey: String
let DRCDTextKey: String
let DRBurnCompletionActionEject: String
let DRBurnCompletionActionMount: String
let DRBurnFailureActionEject: String
let DRBurnFailureActionNone: String
let DRBurnStrategyCDTAO: String
let DRBurnStrategyCDSAO: String
let DRBurnStrategyDVDDAO: String
let DRBurnStrategyBDDAO: String
let DRBurnStatusChangedNotification: String
extension DRBurn {
  class func layoutForImageFile(path: String!) -> AnyObject!
}
var DRCDTextEncodingISOLatin1Modified: Int { get }
var DRCDTextEncodingASCII: Int { get }
var DRCDTextGenreCodeUnknown: Int { get }
var DRCDTextGenreCodeAdultContemporary: Int { get }
var DRCDTextGenreCodeAlternativeRock: Int { get }
var DRCDTextGenreCodeChildrens: Int { get }
var DRCDTextGenreCodeClassical: Int { get }
var DRCDTextGenreCodeContemporaryChristian: Int { get }
var DRCDTextGenreCodeCountry: Int { get }
var DRCDTextGenreCodeDance: Int { get }
var DRCDTextGenreCodeEasyListening: Int { get }
var DRCDTextGenreCodeErotic: Int { get }
var DRCDTextGenreCodeFolk: Int { get }
var DRCDTextGenreCodeGospel: Int { get }
var DRCDTextGenreCodeHipHop: Int { get }
var DRCDTextGenreCodeJazz: Int { get }
var DRCDTextGenreCodeLatin: Int { get }
var DRCDTextGenreCodeMusical: Int { get }
var DRCDTextGenreCodeNewAge: Int { get }
var DRCDTextGenreCodeOpera: Int { get }
var DRCDTextGenreCodeOperetta: Int { get }
var DRCDTextGenreCodePop: Int { get }
var DRCDTextGenreCodeRap: Int { get }
var DRCDTextGenreCodeReggae: Int { get }
var DRCDTextGenreCodeRock: Int { get }
var DRCDTextGenreCodeRhythmAndBlues: Int { get }
var DRCDTextGenreCodeSoundEffects: Int { get }
var DRCDTextGenreCodeSoundtrack: Int { get }
var DRCDTextGenreCodeSpokenWord: Int { get }
var DRCDTextGenreCodeWorldMusic: Int { get }
class DRCDTextBlock : NSObject {
  class func arrayOfCDTextBlocksFromPacks(packs: NSData!) -> [AnyObject]!
  class func cdTextBlockWithLanguage(lang: String!, encoding enc: UInt) -> DRCDTextBlock!
  init!(language lang: String!, encoding enc: UInt)
  func properties() -> [NSObject : AnyObject]!
  func setProperties(properties: [NSObject : AnyObject]!)
  func trackDictionaries() -> [AnyObject]!
  func setTrackDictionaries(tracks: [AnyObject]!)
  func objectForKey(key: String!, ofTrack trackIndex: Int) -> AnyObject!
  func setObject(value: AnyObject!, forKey key: String!, ofTrack trackIndex: Int)
  func flatten() -> Int
  init()
}
extension DRCDTextBlock {
  func language() -> String!
  func encoding() -> UInt
}
let DRCDTextLanguageKey: String
let DRCDTextCharacterCodeKey: String
let DRCDTextNSStringEncodingKey: String
let DRCDTextCopyrightAssertedForSpecialMessagesKey: String
let DRCDTextCopyrightAssertedForNamesKey: String
let DRCDTextCopyrightAssertedForTitlesKey: String
let DRCDTextTitleKey: String
let DRCDTextPerformerKey: String
let DRCDTextSongwriterKey: String
let DRCDTextComposerKey: String
let DRCDTextArrangerKey: String
let DRCDTextSpecialMessageKey: String
let DRCDTextDiscIdentKey: String
let DRCDTextGenreKey: String
let DRCDTextGenreCodeKey: String
let DRCDTextClosedKey: String
let DRCDTextMCNISRCKey: String
let DRCDTextTOCKey: String
let DRCDTextTOC2Key: String
let DRCDTextSizeKey: String
func DRFileGetTypeID() -> CFTypeID
typealias DRLinkType = UInt32
var kDRLinkTypeHardLink: Int { get }
var kDRLinkTypeSymbolicLink: Int { get }
var kDRLinkTypeFinderAlias: Int { get }
typealias DRFileMessage = UInt32
var kDRFileMessageForkSize: Int { get }
var kDRFileMessagePreBurn: Int { get }
var kDRFileMessageProduceData: Int { get }
var kDRFileMessageVerificationStarting: Int { get }
var kDRFileMessagePostBurn: Int { get }
var kDRFileMessageRelease: Int { get }
typealias DRFileForkIndex = UInt32
var kDRFileForkData: Int { get }
var kDRFileForkResource: Int { get }
typealias DRFileForkSizeQuery = UInt32
var kDRFileForkSizeActual: Int { get }
var kDRFileForkSizeEstimate: Int { get }
struct DRFileForkSizeInfo {
  var fork: DRFileForkIndex
  var query: DRFileForkSizeQuery
  var size: UInt64
  init()
  init(fork: DRFileForkIndex, query: DRFileForkSizeQuery, size: UInt64)
}
struct DRFileProductionInfo {
  var requestedAddress: UInt64
  var buffer: UnsafeMutablePointer<Void>
  var reqCount: UInt32
  var actCount: UInt32
  var blockSize: UInt32
  var fork: DRFileForkIndex
  init()
  init(requestedAddress: UInt64, buffer: UnsafeMutablePointer<Void>, reqCount: UInt32, actCount: UInt32, blockSize: UInt32, fork: DRFileForkIndex)
}
typealias DRFileProc = @convention(c) (UnsafeMutablePointer<Void>, DRFile!, DRFileMessage, UnsafeMutablePointer<Void>) -> OSStatus
func DRFileCreateReal(fsRef: UnsafePointer<FSRef>) -> Unmanaged<DRFile>!
func DRFileCreateRealWithURL(urlRef: CFURL!) -> Unmanaged<DRFile>!
func DRFileCreateVirtualWithData(baseName: CFString!, _ fileData: UnsafeMutablePointer<Void>, _ fileDataLength: UInt32) -> Unmanaged<DRFile>!
func DRFileCreateVirtualWithCallback(baseName: CFString!, _ fileProc: DRFileProc!, _ fileProcRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<DRFile>!
func DRFileCreateVirtualLink(original: DRFSObject!, _ linkType: DRLinkType, _ fsKey: CFString!) -> Unmanaged<DRFile>!
func DRFolderGetTypeID() -> CFTypeID
func DRFolderCreateReal(fsRef: UnsafePointer<FSRef>) -> Unmanaged<DRFolder>!
func DRFolderCreateRealWithURL(urlRef: CFURL!) -> Unmanaged<DRFolder>!
func DRFolderCreateVirtual(baseName: CFString!) -> Unmanaged<DRFolder>!
func DRFolderConvertRealToVirtual(realFolder: DRFolder!)
func DRFolderAddChild(parent: DRFolder!, _ newChild: DRFSObject!)
func DRFolderRemoveChild(parent: DRFolder!, _ child: DRFSObject!)
func DRFolderCountChildren(folder: DRFolder!) -> UInt32
func DRFolderCopyChildren(folder: DRFolder!) -> Unmanaged<CFArray>!
class DRFile {
}
typealias DRFileRef = DRFile
class DRFolder {
}
typealias DRFolderRef = DRFolder
typealias DRFSObject = DRType
typealias DRFSObjectRef = DRFSObject
typealias DRFilesystemMask = UInt32
var kDRFilesystemMaskISO9660: UInt32 { get }
var kDRFilesystemMaskJoliet: UInt32 { get }
var kDRFilesystemMaskUDF: UInt32 { get }
var kDRFilesystemMaskHFSPlus: UInt32 { get }
var kDRFilesystemMaskDefault: UInt32 { get }
func DRFSObjectIsVirtual(object: DRFSObject!) -> Bool
func DRFSObjectGetRealFSRef(object: DRFSObject!, _ fsRef: UnsafeMutablePointer<FSRef>)
func DRFSObjectCopyRealURL(object: DRFSObject!) -> Unmanaged<CFURL>!
func DRFSObjectGetParent(object: DRFSObject!) -> Unmanaged<DRFolder>!
func DRFSObjectCopyBaseName(object: DRFSObject!) -> Unmanaged<CFString>!
func DRFSObjectCopySpecificName(object: DRFSObject!, _ fsKey: CFString!) -> Unmanaged<CFString>!
func DRFSObjectCopySpecificNames(object: DRFSObject!) -> Unmanaged<CFDictionary>!
func DRFSObjectCopyMangledName(object: DRFSObject!, _ fsKey: CFString!) -> Unmanaged<CFString>!
func DRFSObjectCopyMangledNames(object: DRFSObject!) -> Unmanaged<CFDictionary>!
func DRFSObjectCopyFilesystemProperty(object: DRFSObject!, _ fsKey: CFString!, _ propertyKey: CFString!, _ coalesce: Bool) -> Unmanaged<AnyObject>!
func DRFSObjectCopyFilesystemProperties(object: DRFSObject!, _ fsKey: CFString!, _ coalesce: Bool) -> Unmanaged<CFDictionary>!
func DRFSObjectGetFilesystemMask(object: DRFSObject!, _ explicitMask: UnsafeMutablePointer<DRFilesystemMask>, _ effectiveMask: UnsafeMutablePointer<DRFilesystemMask>) -> DRFilesystemMask
func DRFSObjectSetBaseName(object: DRFSObject!, _ baseName: CFString!)
func DRFSObjectSetSpecificName(object: DRFSObject!, _ fsKey: CFString!, _ specificName: CFString!)
func DRFSObjectSetSpecificNames(object: DRFSObject!, _ specificNames: CFDictionary!)
func DRFSObjectSetFilesystemProperty(object: DRFSObject!, _ fsKey: CFString!, _ propertyKey: CFString!, _ value: AnyObject!)
func DRFSObjectSetFilesystemProperties(object: DRFSObject!, _ fsKey: CFString!, _ properties: CFDictionary!)
func DRFSObjectSetFilesystemMask(object: DRFSObject!, _ newMask: DRFilesystemMask)
let kDRISOLevel: CFString!
let kDRVolumeSet: CFString!
let kDRPublisher: CFString!
let kDRDataPreparer: CFString!
let kDRSystemIdentifier: CFString!
let kDRApplicationIdentifier: CFString!
let kDRCopyrightFile: CFString!
let kDRAbstractFile: CFString!
let kDRBibliographicFile: CFString!
let kDRBlockSize: CFString!
let kDRDefaultDate: CFString!
let kDRVolumeCreationDate: CFString!
let kDRVolumeModificationDate: CFString!
let kDRVolumeCheckedDate: CFString!
let kDRVolumeExpirationDate: CFString!
let kDRVolumeEffectiveDate: CFString!
let kDRISOMacExtensions: CFString!
let kDRISORockRidgeExtensions: CFString!
let kDRSuppressMacSpecificFiles: CFString!
let kDRAllFilesystems: CFString!
let kDRISO9660: CFString!
let kDRISO9660LevelOne: CFString!
let kDRISO9660LevelTwo: CFString!
let kDRJoliet: CFString!
let kDRHFSPlus: CFString!
let kDRUDF: CFString!
let kDRISO9660VersionNumber: CFString!
let kDRInvisible: CFString!
let kDRCreationDate: CFString!
let kDRContentModificationDate: CFString!
let kDRAttributeModificationDate: CFString!
let kDRAccessDate: CFString!
let kDRBackupDate: CFString!
let kDRRecordingDate: CFString!
let kDREffectiveDate: CFString!
let kDRExpirationDate: CFString!
let kDRPosixFileMode: CFString!
let kDRPosixUID: CFString!
let kDRPosixGID: CFString!
let kDRHFSPlusTextEncodingHint: CFString!
let kDRHFSPlusCatalogNodeID: CFString!
let kDRMacFileType: CFString!
let kDRMacFileCreator: CFString!
let kDRMacWindowBounds: CFString!
let kDRMacIconLocation: CFString!
let kDRMacScrollPosition: CFString!
let kDRMacWindowView: CFString!
let kDRMacFinderFlags: CFString!
let kDRMacExtendedFinderFlags: CFString!
let kDRMacFinderHideExtension: CFString!
let kDRUDFWriteVersion: CFString!
let kDRUDFVersion102: CFString!
let kDRUDFVersion150: CFString!
let kDRUDFPrimaryVolumeDescriptorNumber: CFString!
let kDRUDFVolumeSequenceNumber: CFString!
let kDRUDFMaxVolumeSequenceNumber: CFString!
let kDRUDFInterchangeLevel: CFString!
let kDRUDFMaxInterchangeLevel: CFString!
let kDRUDFApplicationIdentifierSuffix: CFString!
let kDRUDFVolumeSetIdentifier: CFString!
let kDRUDFVolumeSetTimestamp: CFString!
let kDRUDFVolumeSetImplementationUse: CFString!
let kDRUDFRealTimeFile: CFString!
let kDRUDFExtendedFilePermissions: CFString!
typealias DRFilesystemTrack = DRTrackRef
typealias DRFilesystemTrackRef = DRFilesystemTrack
func DRFilesystemTrackCreate(rootFolder: DRFolder!) -> Unmanaged<DRFilesystemTrack>!
func DRFilesystemTrackEstimateOverhead(numBlocks: UInt64, _ blockSize: UInt32, _ fsMask: DRFilesystemMask) -> UInt64
typealias DRAudioTrackRef = DRAudioTrack
typealias DRAudioTrack = DRTrackRef
func DRAudioTrackCreate(audioFile: UnsafePointer<FSRef>) -> Unmanaged<DRAudioTrack>!
func DRAudioTrackCreateWithURL(audioFileURL: CFURL!) -> Unmanaged<DRAudioTrack>!
class DRBurn {
}
typealias DRBurnRef = DRBurn
func DRBurnGetTypeID() -> CFTypeID
func DRBurnCreate(device: DRDevice!) -> Unmanaged<DRBurn>!
func DRBurnWriteLayout(burn: DRBurn!, _ layout: AnyObject!) -> OSStatus
func DRBurnAbort(burn: DRBurn!)
func DRBurnCopyStatus(burn: DRBurn!) -> Unmanaged<CFDictionary>!
func DRBurnGetDevice(burn: DRBurn!) -> Unmanaged<DRDevice>!
func DRBurnSetProperties(burn: DRBurn!, _ properties: CFDictionary!)
func DRBurnGetProperties(burn: DRBurn!) -> Unmanaged<CFDictionary>!
let kDRBurnStatusChangedNotification: CFString!
let kDRBurnRequestedSpeedKey: CFString!
let kDRBurnAppendableKey: CFString!
let kDRBurnOverwriteDiscKey: CFString!
let kDRBurnVerifyDiscKey: CFString!
let kDRBurnCompletionActionKey: CFString!
let kDRBurnUnderrunProtectionKey: CFString!
let kDRBurnTestingKey: CFString!
let kDRSynchronousBehaviorKey: CFString!
let kDRBurnFailureActionKey: CFString!
let kDRMediaCatalogNumberKey: CFString!
let kDRBurnDoubleLayerL0DataZoneBlocksKey: CFString!
let kDRBurnStrategyKey: CFString!
let kDRBurnStrategyIsRequiredKey: CFString!
let kDRCDTextKey: CFString!
let kDRBurnCompletionActionEject: CFString!
let kDRBurnCompletionActionMount: CFString!
let kDRBurnFailureActionEject: CFString!
let kDRBurnFailureActionNone: CFString!
let kDRBurnStrategyCDTAO: CFString!
let kDRBurnStrategyCDSAO: CFString!
let kDRBurnStrategyDVDDAO: CFString!
let kDRBurnStrategyBDDAO: CFString!
var kDRCDTextEncodingISOLatin1Modified: Int { get }
var kDRCDTextEncodingASCII: Int { get }
var kDRCDTextGenreCodeUnknown: Int { get }
var kDRCDTextGenreCodeAdultContemporary: Int { get }
var kDRCDTextGenreCodeAlternativeRock: Int { get }
var kDRCDTextGenreCodeChildrens: Int { get }
var kDRCDTextGenreCodeClassical: Int { get }
var kDRCDTextGenreCodeContemporaryChristian: Int { get }
var kDRCDTextGenreCodeCountry: Int { get }
var kDRCDTextGenreCodeDance: Int { get }
var kDRCDTextGenreCodeEasyListening: Int { get }
var kDRCDTextGenreCodeErotic: Int { get }
var kDRCDTextGenreCodeFolk: Int { get }
var kDRCDTextGenreCodeGospel: Int { get }
var kDRCDTextGenreCodeHipHop: Int { get }
var kDRCDTextGenreCodeJazz: Int { get }
var kDRCDTextGenreCodeLatin: Int { get }
var kDRCDTextGenreCodeMusical: Int { get }
var kDRCDTextGenreCodeNewAge: Int { get }
var kDRCDTextGenreCodeOpera: Int { get }
var kDRCDTextGenreCodeOperetta: Int { get }
var kDRCDTextGenreCodePop: Int { get }
var kDRCDTextGenreCodeRap: Int { get }
var kDRCDTextGenreCodeReggae: Int { get }
var kDRCDTextGenreCodeRock: Int { get }
var kDRCDTextGenreCodeRhythmAndBlues: Int { get }
var kDRCDTextGenreCodeSoundEffects: Int { get }
var kDRCDTextGenreCodeSoundtrack: Int { get }
var kDRCDTextGenreCodeSpokenWord: Int { get }
var kDRCDTextGenreCodeWorldMusic: Int { get }
func DRCDTextBlockCreateArrayFromPackList(packs: CFData!) -> Unmanaged<CFArray>!
class DRCDTextBlock {
}
typealias DRCDTextBlockRef = DRCDTextBlock
func DRCDTextBlockGetTypeID() -> CFTypeID
func DRCDTextBlockCreate(language: CFString!, _ encoding: CFStringEncoding) -> Unmanaged<DRCDTextBlock>!
func DRCDTextBlockGetProperties(block: DRCDTextBlock!) -> Unmanaged<CFDictionary>!
func DRCDTextBlockSetProperties(block: DRCDTextBlock!, _ properties: CFDictionary!)
func DRCDTextBlockGetTrackDictionaries(block: DRCDTextBlock!) -> Unmanaged<CFArray>!
func DRCDTextBlockSetTrackDictionaries(block: DRCDTextBlock!, _ array: CFArray!)
func DRCDTextBlockGetValue(block: DRCDTextBlock!, _ trackIndex: CFIndex, _ key: CFString!) -> Unmanaged<AnyObject>!
func DRCDTextBlockSetValue(block: DRCDTextBlock!, _ trackIndex: CFIndex, _ key: CFString!, _ value: AnyObject!)
func DRCDTextBlockFlatten(block: DRCDTextBlock!) -> UInt32
let kDRCDTextLanguageKey: CFString!
let kDRCDTextCharacterCodeKey: CFString!
let kDRCDTextCFStringEncodingKey: CFString!
let kDRCDTextCopyrightAssertedForSpecialMessagesKey: CFString!
let kDRCDTextCopyrightAssertedForNamesKey: CFString!
let kDRCDTextCopyrightAssertedForTitlesKey: CFString!
let kDRCDTextTitleKey: CFString!
let kDRCDTextPerformerKey: CFString!
let kDRCDTextSongwriterKey: CFString!
let kDRCDTextComposerKey: CFString!
let kDRCDTextArrangerKey: CFString!
let kDRCDTextSpecialMessageKey: CFString!
let kDRCDTextDiscIdentKey: CFString!
let kDRCDTextGenreKey: CFString!
let kDRCDTextGenreCodeKey: CFString!
let kDRCDTextClosedKey: CFString!
let kDRCDTextMCNISRCKey: CFString!
let kDRCDTextTOCKey: CFString!
let kDRCDTextTOC2Key: CFString!
let kDRCDTextSizeKey: CFString!
class DRDevice {
}
typealias DRDeviceRef = DRDevice
func DRDeviceGetTypeID() -> CFTypeID
func DRCopyDeviceArray() -> Unmanaged<CFArray>!
func DRDeviceCopyDeviceForBSDName(name: CFString!) -> Unmanaged<DRDevice>!
func DRDeviceCopyDeviceForIORegistryEntryPath(path: CFString!) -> Unmanaged<DRDevice>!
func DRDeviceIsValid(device: DRDevice!) -> Bool
func DRDeviceOpenTray(device: DRDevice!) -> OSStatus
func DRDeviceCloseTray(device: DRDevice!) -> OSStatus
func DRDeviceEjectMedia(device: DRDevice!) -> OSStatus
func DRDeviceAcquireMediaReservation(device: DRDevice!)
func DRDeviceReleaseMediaReservation(device: DRDevice!)
func DRDeviceAcquireExclusiveAccess(device: DRDevice!) -> OSStatus
func DRDeviceReleaseExclusiveAccess(device: DRDevice!)
func DRDeviceCopyInfo(device: DRDevice!) -> Unmanaged<CFDictionary>!
func DRDeviceCopyStatus(device: DRDevice!) -> Unmanaged<CFDictionary>!
let kDRDeviceAppearedNotification: CFString!
let kDRDeviceDisappearedNotification: CFString!
let kDRDeviceStatusChangedNotification: CFString!
let kDRDeviceSupportLevelKey: CFString!
let kDRDeviceIORegistryEntryPathKey: CFString!
let kDRDeviceVendorNameKey: CFString!
let kDRDeviceProductNameKey: CFString!
let kDRDeviceFirmwareRevisionKey: CFString!
let kDRDevicePhysicalInterconnectKey: CFString!
let kDRDevicePhysicalInterconnectLocationKey: CFString!
let kDRDeviceWriteCapabilitiesKey: CFString!
let kDRDeviceLoadingMechanismCanEjectKey: CFString!
let kDRDeviceLoadingMechanismCanInjectKey: CFString!
let kDRDeviceLoadingMechanismCanOpenKey: CFString!
let kDRDeviceWriteBufferSizeKey: CFString!
let kDRDeviceSupportLevelNone: CFString!
let kDRDeviceSupportLevelUnsupported: CFString!
let kDRDeviceSupportLevelVendorSupported: CFString!
let kDRDeviceSupportLevelAppleSupported: CFString!
let kDRDeviceSupportLevelAppleShipping: CFString!
let kDRDevicePhysicalInterconnectATAPI: CFString!
let kDRDevicePhysicalInterconnectFibreChannel: CFString!
let kDRDevicePhysicalInterconnectFireWire: CFString!
let kDRDevicePhysicalInterconnectUSB: CFString!
let kDRDevicePhysicalInterconnectSCSI: CFString!
let kDRDevicePhysicalInterconnectLocationInternal: CFString!
let kDRDevicePhysicalInterconnectLocationExternal: CFString!
let kDRDevicePhysicalInterconnectLocationUnknown: CFString!
let kDRDeviceCanWriteKey: CFString!
let kDRDeviceCanWriteCDKey: CFString!
let kDRDeviceCanWriteCDRKey: CFString!
let kDRDeviceCanWriteCDRWKey: CFString!
let kDRDeviceCanWriteDVDKey: CFString!
let kDRDeviceCanWriteDVDRKey: CFString!
let kDRDeviceCanWriteDVDRDualLayerKey: CFString!
let kDRDeviceCanWriteDVDRWKey: CFString!
let kDRDeviceCanWriteDVDRWDualLayerKey: CFString!
let kDRDeviceCanWriteDVDRAMKey: CFString!
let kDRDeviceCanWriteDVDPlusRKey: CFString!
let kDRDeviceCanWriteDVDPlusRDoubleLayerKey: CFString!
let kDRDeviceCanWriteDVDPlusRWKey: CFString!
let kDRDeviceCanWriteDVDPlusRWDoubleLayerKey: CFString!
let kDRDeviceCanWriteBDKey: CFString!
let kDRDeviceCanWriteBDRKey: CFString!
let kDRDeviceCanWriteBDREKey: CFString!
let kDRDeviceCanWriteHDDVDKey: CFString!
let kDRDeviceCanWriteHDDVDRKey: CFString!
let kDRDeviceCanWriteHDDVDRDualLayerKey: CFString!
let kDRDeviceCanWriteHDDVDRAMKey: CFString!
let kDRDeviceCanWriteHDDVDRWKey: CFString!
let kDRDeviceCanWriteHDDVDRWDualLayerKey: CFString!
let kDRDeviceCanWriteCDTextKey: CFString!
let kDRDeviceCanWriteIndexPointsKey: CFString!
let kDRDeviceCanWriteISRCKey: CFString!
let kDRDeviceCanWriteCDTAOKey: CFString!
let kDRDeviceCanWriteCDSAOKey: CFString!
let kDRDeviceCanWriteCDRawKey: CFString!
let kDRDeviceCanWriteDVDDAOKey: CFString!
let kDRDeviceCanTestWriteCDKey: CFString!
let kDRDeviceCanTestWriteDVDKey: CFString!
let kDRDeviceCanUnderrunProtectCDKey: CFString!
let kDRDeviceCanUnderrunProtectDVDKey: CFString!
let kDRDeviceIsBusyKey: CFString!
let kDRDeviceIsTrayOpenKey: CFString!
let kDRDeviceMaximumWriteSpeedKey: CFString!
let kDRDeviceCurrentWriteSpeedKey: CFString!
let kDRDeviceMediaStateKey: CFString!
let kDRDeviceMediaInfoKey: CFString!
let kDRDeviceBurnSpeedsKey: CFString!
let kDRDeviceTrackRefsKey: CFString!
let kDRDeviceTrackInfoKey: CFString!
let kDRDeviceMediaStateMediaPresent: CFString!
let kDRDeviceMediaStateInTransition: CFString!
let kDRDeviceMediaStateNone: CFString!
let kDRDeviceMediaBSDNameKey: CFString!
let kDRDeviceMediaIsBlankKey: CFString!
let kDRDeviceMediaIsAppendableKey: CFString!
let kDRDeviceMediaIsOverwritableKey: CFString!
let kDRDeviceMediaIsErasableKey: CFString!
let kDRDeviceMediaIsReservedKey: CFString!
let kDRDeviceMediaBlocksOverwritableKey: CFString!
let kDRDeviceMediaBlocksFreeKey: CFString!
let kDRDeviceMediaBlocksUsedKey: CFString!
let kDRDeviceMediaDoubleLayerL0DataZoneBlocksKey: CFString!
let kDRDeviceMediaTrackCountKey: CFString!
let kDRDeviceMediaSessionCountKey: CFString!
let kDRDeviceMediaClassKey: CFString!
let kDRDeviceMediaTypeKey: CFString!
let kDRDeviceMediaClassCD: CFString!
let kDRDeviceMediaClassDVD: CFString!
let kDRDeviceMediaClassBD: CFString!
let kDRDeviceMediaClassHDDVD: CFString!
let kDRDeviceMediaClassUnknown: CFString!
let kDRDeviceMediaTypeCDROM: CFString!
let kDRDeviceMediaTypeCDR: CFString!
let kDRDeviceMediaTypeCDRW: CFString!
let kDRDeviceMediaTypeDVDROM: CFString!
let kDRDeviceMediaTypeDVDRAM: CFString!
let kDRDeviceMediaTypeDVDR: CFString!
let kDRDeviceMediaTypeDVDRDualLayer: CFString!
let kDRDeviceMediaTypeDVDRW: CFString!
let kDRDeviceMediaTypeDVDRWDualLayer: CFString!
let kDRDeviceMediaTypeDVDPlusR: CFString!
let kDRDeviceMediaTypeDVDPlusRDoubleLayer: CFString!
let kDRDeviceMediaTypeDVDPlusRW: CFString!
let kDRDeviceMediaTypeDVDPlusRWDoubleLayer: CFString!
let kDRDeviceMediaTypeBDR: CFString!
let kDRDeviceMediaTypeBDRE: CFString!
let kDRDeviceMediaTypeBDROM: CFString!
let kDRDeviceMediaTypeHDDVDROM: CFString!
let kDRDeviceMediaTypeHDDVDR: CFString!
let kDRDeviceMediaTypeHDDVDRDualLayer: CFString!
let kDRDeviceMediaTypeHDDVDRAM: CFString!
let kDRDeviceMediaTypeHDDVDRW: CFString!
let kDRDeviceMediaTypeHDDVDRWDualLayer: CFString!
let kDRDeviceMediaTypeUnknown: CFString!
let kDRDeviceBurnSpeedCD1x: Float
let kDRDeviceBurnSpeedDVD1x: Float
let kDRDeviceBurnSpeedBD1x: Float
let kDRDeviceBurnSpeedHDDVD1x: Float
let kDRDeviceBurnSpeedMax: Float
func DRDeviceKPSForXFactor(deviceOrMediaType: DRType!, _ xfactor: Float) -> Float
func DRDeviceXFactorForKPS(deviceOrMediaType: DRType!, _ kps: Float) -> Float
class DRErase {
}
typealias DREraseRef = DRErase
func DREraseGetTypeID() -> CFTypeID
func DREraseCreate(device: DRDevice!) -> Unmanaged<DRErase>!
func DREraseStart(erase: DRErase!) -> OSStatus
func DREraseCopyStatus(erase: DRErase!) -> Unmanaged<CFDictionary>!
let kDREraseStatusChangedNotification: CFString!
func DREraseGetDevice(erase: DRErase!) -> Unmanaged<DRDevice>!
func DREraseSetProperties(erase: DRErase!, _ properties: CFDictionary!)
func DREraseGetProperties(erase: DRErase!) -> Unmanaged<CFDictionary>!
let kDREraseTypeKey: CFString!
let kDREraseTypeQuick: CFString!
let kDREraseTypeComplete: CFString!
var kDRFirstErr: UInt32 { get }
var kDRInternalErr: UInt32 { get }
var kDRDeviceAccessErr: UInt32 { get }
var kDRDeviceBusyErr: UInt32 { get }
var kDRDeviceCommunicationErr: UInt32 { get }
var kDRDeviceInvalidErr: UInt32 { get }
var kDRDeviceNotReadyErr: UInt32 { get }
var kDRDeviceNotSupportedErr: UInt32 { get }
var kDRMediaBusyErr: UInt32 { get }
var kDRMediaNotPresentErr: UInt32 { get }
var kDRMediaNotWritableErr: UInt32 { get }
var kDRMediaNotSupportedErr: UInt32 { get }
var kDRMediaNotBlankErr: UInt32 { get }
var kDRMediaNotErasableErr: UInt32 { get }
var kDRMediaInvalidErr: UInt32 { get }
var kDRBurnUnderrunErr: UInt32 { get }
var kDRBurnNotAllowedErr: UInt32 { get }
var kDRDataProductionErr: UInt32 { get }
var kDRVerificationFailedErr: UInt32 { get }
var kDRTooManyTracksForDVDErr: UInt32 { get }
var kDRBadLayoutErr: UInt32 { get }
var kDRUserCanceledErr: UInt32 { get }
var kDRFunctionNotSupportedErr: UInt32 { get }
var kDRSpeedTestAlreadyRunningErr: UInt32 { get }
var kDRInvalidIndexPointsErr: UInt32 { get }
var kDRDoubleLayerL0DataZoneBlocksParamErr: UInt32 { get }
var kDRDoubleLayerL0AlreadySpecifiedErr: UInt32 { get }
var kDRAudioFileNotSupportedErr: UInt32 { get }
var kDRBurnPowerCalibrationErr: UInt32 { get }
var kDRBurnMediaWriteFailureErr: UInt32 { get }
var kDRTrackReusedErr: UInt32 { get }
var kDRFileModifiedDuringBurnErr: UInt32 { get }
var kDRFileLocationConflictErr: UInt32 { get }
var kDRTooManyNameConflictsErr: UInt32 { get }
var kDRFilesystemsNotSupportedErr: UInt32 { get }
var kDRDeviceBurnStrategyNotAvailableErr: UInt32 { get }
var kDRDeviceCantWriteCDTextErr: UInt32 { get }
var kDRDeviceCantWriteIndexPointsErr: UInt32 { get }
var kDRDeviceCantWriteISRCErr: UInt32 { get }
var kDRDeviceCantWriteSCMSErr: UInt32 { get }
var kDRDevicePreGapLengthNotValidErr: UInt32 { get }
func DRCopyLocalizedStringForDiscRecordingError(osError: OSStatus) -> Unmanaged<CFString>!
func DRCopyLocalizedStringForSenseCode(senseCode: UInt8) -> Unmanaged<CFString>!
func DRCopyLocalizedStringForAdditionalSense(ASC: UInt8, _ ASCQ: UInt8) -> Unmanaged<CFString>!
let kDRErrorStatusKey: CFString!
let kDRErrorStatusErrorKey: CFString!
let kDRErrorStatusErrorStringKey: CFString!
let kDRErrorStatusErrorInfoStringKey: CFString!
let kDRErrorStatusSenseKey: CFString!
let kDRErrorStatusSenseCodeStringKey: CFString!
let kDRErrorStatusAdditionalSenseStringKey: CFString!
class DRNotificationCenter {
}
typealias DRNotificationCenterRef = DRNotificationCenter
typealias DRNotificationCallback = @convention(c) (DRNotificationCenter!, UnsafeMutablePointer<Void>, CFString!, DRType!, CFDictionary!) -> Void
func DRNotificationCenterGetTypeID() -> CFTypeID
func DRNotificationCenterCreate() -> Unmanaged<DRNotificationCenter>!
func DRNotificationCenterCreateRunLoopSource(center: DRNotificationCenter!) -> Unmanaged<CFRunLoopSource>!
func DRNotificationCenterAddObserver(center: DRNotificationCenter!, _ observer: UnsafePointer<Void>, _ callback: DRNotificationCallback!, _ name: CFString!, _ object: DRType!)
func DRNotificationCenterRemoveObserver(center: DRNotificationCenter!, _ observer: UnsafePointer<Void>, _ name: CFString!, _ object: DRType!)
typealias DRTypeRef = DRType
typealias DRType = CFTypeRef
typealias DRRefConRetainCallback = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias DRRefConReleaseCallback = @convention(c) (UnsafePointer<Void>) -> Void
struct DRRefConCallbacks {
  var version: UInt
  var retain: DRRefConRetainCallback!
  var release: DRRefConReleaseCallback!
  init()
  init(version: UInt, retain: DRRefConRetainCallback!, release: DRRefConReleaseCallback!)
}
let kDRRefConCFTypeCallbacks: DRRefConCallbacks
func DRSetRefCon(ref: DRType!, _ refCon: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<DRRefConCallbacks>)
func DRGetRefCon(ref: DRType!) -> UnsafeMutablePointer<Void>
func DRCopyLocalizedStringForValue(value: CFString!) -> Unmanaged<CFString>!
let kDRStatusStateKey: CFString!
let kDRStatusPercentCompleteKey: CFString!
let kDRStatusCurrentSpeedKey: CFString!
let kDRStatusCurrentSessionKey: CFString!
let kDRStatusCurrentTrackKey: CFString!
let kDRStatusTotalSessionsKey: CFString!
let kDRStatusTotalTracksKey: CFString!
let kDRStatusEraseTypeKey: CFString!
let kDRStatusStateNone: CFString!
let kDRStatusStatePreparing: CFString!
let kDRStatusStateVerifying: CFString!
let kDRStatusStateDone: CFString!
let kDRStatusStateFailed: CFString!
let kDRStatusStateSessionOpen: CFString!
let kDRStatusStateTrackOpen: CFString!
let kDRStatusStateTrackWrite: CFString!
let kDRStatusStateTrackClose: CFString!
let kDRStatusStateSessionClose: CFString!
let kDRStatusStateFinishing: CFString!
let kDRStatusStateErasing: CFString!
let kDRStatusProgressInfoKey: CFString!
let kDRStatusProgressCurrentKPS: CFString!
let kDRStatusProgressCurrentXFactor: CFString!
class DRTrack {
}
typealias DRTrackRef = DRTrack
func DRTrackGetTypeID() -> CFTypeID
typealias DRTrackMessage = UInt32
typealias DRTrackCallbackProc = @convention(c) (DRTrack!, DRTrackMessage, UnsafeMutablePointer<Void>) -> OSStatus
func DRTrackCreate(properties: CFDictionary!, _ callback: DRTrackCallbackProc!) -> Unmanaged<DRTrack>!
func DRTrackSetProperties(track: DRTrack!, _ properties: CFDictionary!)
func DRTrackGetProperties(track: DRTrack!) -> Unmanaged<CFDictionary>!
func DRTrackSpeedTest(track: DRTrack!, _ howManyMilliseconds: UInt32, _ howManyBytes: UInt32) -> Float
func DRTrackEstimateLength(track: DRTrack!) -> UInt64
let kDRTrackLengthKey: CFString!
let kDRBlockSizeKey: CFString!
let kDRBlockTypeKey: CFString!
let kDRDataFormKey: CFString!
let kDRSessionFormatKey: CFString!
let kDRTrackModeKey: CFString!
let kDRVerificationTypeKey: CFString!
let kDRDVDCopyrightInfoKey: CFString!
let kDRDVDTimestampKey: CFString!
let kDRBufferZone1DataKey: CFString!
let kDRMaxBurnSpeedKey: CFString!
let kDRPreGapLengthKey: CFString!
let kDRPreGapIsRequiredKey: CFString!
let kDRTrackISRCKey: CFString!
let kDRIndexPointsKey: CFString!
let kDRAudioPreEmphasisKey: CFString!
let kDRAudioFourChannelKey: CFString!
let kDRSerialCopyManagementStateKey: CFString!
let kDRVerificationTypeNone: CFString!
let kDRVerificationTypeProduceAgain: CFString!
let kDRVerificationTypeReceiveData: CFString!
let kDRVerificationTypeChecksum: CFString!
let kDRSCMSCopyrightFree: CFString!
let kDRSCMSCopyrightProtectedOriginal: CFString!
let kDRSCMSCopyrightProtectedCopy: CFString!
let kDRNextWritableAddressKey: CFString!
let kDRTrackStartAddressKey: CFString!
let kDRFreeBlocksKey: CFString!
let kDRTrackNumberKey: CFString!
let kDRSessionNumberKey: CFString!
let kDRTrackTypeKey: CFString!
let kDRTrackIsEmptyKey: CFString!
let kDRTrackPacketTypeKey: CFString!
let kDRTrackPacketSizeKey: CFString!
let kDRTrackTypeInvisible: CFString!
let kDRTrackTypeIncomplete: CFString!
let kDRTrackTypeReserved: CFString!
let kDRTrackTypeClosed: CFString!
let kDRTrackPacketTypeFixed: CFString!
let kDRTrackPacketTypeVariable: CFString!
let kDRBurnKey: CFString!
let kDRSubchannelDataFormKey: CFString!
let kDRSubchannelDataFormNone: CFString!
let kDRSubchannelDataFormPack: CFString!
let kDRSubchannelDataFormRaw: CFString!
var kDRBlockSizeAudio: Int { get }
var kDRBlockSizeMode1Data: Int { get }
var kDRBlockSizeMode2Data: Int { get }
var kDRBlockSizeMode2Form1Data: Int { get }
var kDRBlockSizeMode2Form2Data: Int { get }
var kDRBlockSizeDVDData: Int { get }
var kDRBlockTypeAudio: Int { get }
var kDRBlockTypeMode1Data: Int { get }
var kDRBlockTypeMode2Data: Int { get }
var kDRBlockTypeMode2Form1Data: Int { get }
var kDRBlockTypeMode2Form2Data: Int { get }
var kDRBlockTypeDVDData: Int { get }
var kDRDataFormAudio: Int { get }
var kDRDataFormMode1Data: Int { get }
var kDRDataFormMode2Data: Int { get }
var kDRDataFormMode2Form1Data: Int { get }
var kDRDataFormMode2Form2Data: Int { get }
var kDRDataFormDVDData: Int { get }
var kDRTrackModeAudio: Int { get }
var kDRTrackMode1Data: Int { get }
var kDRTrackMode2Data: Int { get }
var kDRTrackMode2Form1Data: Int { get }
var kDRTrackMode2Form2Data: Int { get }
var kDRTrackModeDVDData: Int { get }
var kDRSessionFormatAudio: Int { get }
var kDRSessionFormatMode1Data: Int { get }
var kDRSessionFormatCDI: Int { get }
var kDRSessionFormatCDXA: Int { get }
var kDRSessionFormatDVDData: Int { get }
var kDRFlagSubchannelDataRequested: Int { get }
var kDRFlagNoMoreData: Int { get }
var kDRTrackMessagePreBurn: Int { get }
var kDRTrackMessageProduceData: Int { get }
var kDRTrackMessageVerificationStarting: Int { get }
var kDRTrackMessageVerifyData: Int { get }
var kDRTrackMessageVerificationDone: Int { get }
var kDRTrackMessagePostBurn: Int { get }
var kDRTrackMessageEstimateLength: Int { get }
var kDRTrackMessageProducePreGap: Int { get }
var kDRTrackMessageVerifyPreGap: Int { get }
struct DRTrackProductionInfo {
  var buffer: UnsafeMutablePointer<Void>
  var reqCount: UInt32
  var actCount: UInt32
  var flags: UInt32
  var blockSize: UInt32
  var requestedAddress: UInt64
  init()
  init(buffer: UnsafeMutablePointer<Void>, reqCount: UInt32, actCount: UInt32, flags: UInt32, blockSize: UInt32, requestedAddress: UInt64)
}
class DRDevice : NSObject {
  class func devices() -> [AnyObject]!
   init!(forBSDName bsdName: String!)
   init!(forIORegistryEntryPath path: String!)
  func isValid() -> Bool
  func info() -> [NSObject : AnyObject]!
  func status() -> [NSObject : AnyObject]!
  func openTray() -> Bool
  func closeTray() -> Bool
  func ejectMedia() -> Bool
  func acquireExclusiveAccess() -> Bool
  func releaseExclusiveAccess()
  func acquireMediaReservation()
  func releaseMediaReservation()
  func isEqualToDevice(otherDevice: DRDevice!) -> Bool
  init()
}
extension DRDevice {
  func writesCD() -> Bool
  func writesDVD() -> Bool
  func displayName() -> String!
  func ioRegistryEntryPath() -> String!
}
extension DRDevice {
  func mediaIsPresent() -> Bool
  func mediaIsTransitioning() -> Bool
  func mediaIsBusy() -> Bool
  func mediaType() -> String!
  func mediaIsBlank() -> Bool
  func mediaIsAppendable() -> Bool
  func mediaIsOverwritable() -> Bool
  func mediaIsErasable() -> Bool
  func mediaIsReserved() -> Bool
  func mediaSpaceOverwritable() -> DRMSF!
  func mediaSpaceUsed() -> DRMSF!
  func mediaSpaceFree() -> DRMSF!
  func trayIsOpen() -> Bool
  func bsdName() -> String!
}
let DRDeviceBurnSpeedCD1x: Float
let DRDeviceBurnSpeedDVD1x: Float
let DRDeviceBurnSpeedBD1x: Float
let DRDeviceBurnSpeedHDDVD1x: Float
let DRDeviceBurnSpeedMax: Float
let DRDeviceAppearedNotification: String
let DRDeviceDisappearedNotification: String
let DRDeviceStatusChangedNotification: String
let DRDeviceSupportLevelKey: String
let DRDeviceIORegistryEntryPathKey: String
let DRDeviceWriteCapabilitiesKey: String
let DRDeviceVendorNameKey: String
let DRDeviceProductNameKey: String
let DRDeviceFirmwareRevisionKey: String
let DRDevicePhysicalInterconnectKey: String
let DRDevicePhysicalInterconnectLocationKey: String
let DRDeviceLoadingMechanismCanEjectKey: String
let DRDeviceLoadingMechanismCanInjectKey: String
let DRDeviceLoadingMechanismCanOpenKey: String
let DRDeviceWriteBufferSizeKey: String
let DRDeviceSupportLevelNone: String
let DRDeviceSupportLevelUnsupported: String
let DRDeviceSupportLevelVendorSupported: String
let DRDeviceSupportLevelAppleSupported: String
let DRDeviceSupportLevelAppleShipping: String
let DRDevicePhysicalInterconnectATAPI: String
let DRDevicePhysicalInterconnectFibreChannel: String
let DRDevicePhysicalInterconnectFireWire: String
let DRDevicePhysicalInterconnectSCSI: String
let DRDevicePhysicalInterconnectUSB: String
let DRDevicePhysicalInterconnectLocationInternal: String
let DRDevicePhysicalInterconnectLocationExternal: String
let DRDevicePhysicalInterconnectLocationUnknown: String
let DRDeviceCanWriteKey: String
let DRDeviceCanWriteCDKey: String
let DRDeviceCanWriteCDRKey: String
let DRDeviceCanWriteCDRWKey: String
let DRDeviceCanWriteDVDKey: String
let DRDeviceCanWriteDVDRKey: String
let DRDeviceCanWriteDVDRDualLayerKey: String
let DRDeviceCanWriteDVDRWKey: String
let DRDeviceCanWriteDVDRWDualLayerKey: String
let DRDeviceCanWriteDVDRAMKey: String
let DRDeviceCanWriteDVDPlusRKey: String
let DRDeviceCanWriteDVDPlusRDoubleLayerKey: String
let DRDeviceCanWriteDVDPlusRWKey: String
let DRDeviceCanWriteDVDPlusRWDoubleLayerKey: String
let DRDeviceCanWriteBDKey: String
let DRDeviceCanWriteBDRKey: String
let DRDeviceCanWriteBDREKey: String
let DRDeviceCanWriteHDDVDKey: String
let DRDeviceCanWriteHDDVDRKey: String
let DRDeviceCanWriteHDDVDRDualLayerKey: String
let DRDeviceCanWriteHDDVDRAMKey: String
let DRDeviceCanWriteHDDVDRWKey: String
let DRDeviceCanWriteHDDVDRWDualLayerKey: String
let DRDeviceCanWriteCDTextKey: String
let DRDeviceCanWriteIndexPointsKey: String
let DRDeviceCanWriteISRCKey: String
let DRDeviceCanWriteCDTAOKey: String
let DRDeviceCanWriteCDSAOKey: String
let DRDeviceCanWriteCDRawKey: String
let DRDeviceCanWriteDVDDAOKey: String
let DRDeviceCanTestWriteCDKey: String
let DRDeviceCanTestWriteDVDKey: String
let DRDeviceCanUnderrunProtectCDKey: String
let DRDeviceCanUnderrunProtectDVDKey: String
let DRDeviceIsBusyKey: String
let DRDeviceIsTrayOpenKey: String
let DRDeviceMaximumWriteSpeedKey: String
let DRDeviceCurrentWriteSpeedKey: String
let DRDeviceMediaStateKey: String
let DRDeviceMediaInfoKey: String
let DRDeviceBurnSpeedsKey: String
let DRDeviceTrackRefsKey: String
let DRDeviceTrackInfoKey: String
let DRDeviceMediaStateMediaPresent: String
let DRDeviceMediaStateInTransition: String
let DRDeviceMediaStateNone: String
let DRDeviceMediaBSDNameKey: String
let DRDeviceMediaIsBlankKey: String
let DRDeviceMediaIsAppendableKey: String
let DRDeviceMediaIsOverwritableKey: String
let DRDeviceMediaIsErasableKey: String
let DRDeviceMediaIsReservedKey: String
let DRDeviceMediaOverwritableSpaceKey: String
let DRDeviceMediaFreeSpaceKey: String
let DRDeviceMediaUsedSpaceKey: String
let DRDeviceMediaBlocksOverwritableKey: String
let DRDeviceMediaBlocksFreeKey: String
let DRDeviceMediaBlocksUsedKey: String
let DRDeviceMediaDoubleLayerL0DataZoneBlocksKey: String
let DRDeviceMediaTrackCountKey: String
let DRDeviceMediaSessionCountKey: String
let DRDeviceMediaClassKey: String
let DRDeviceMediaTypeKey: String
let DRDeviceMediaClassCD: String
let DRDeviceMediaClassDVD: String
let DRDeviceMediaClassBD: String
let DRDeviceMediaClassHDDVD: String
let DRDeviceMediaClassUnknown: String
let DRDeviceMediaTypeCDROM: String
let DRDeviceMediaTypeCDR: String
let DRDeviceMediaTypeCDRW: String
let DRDeviceMediaTypeDVDROM: String
let DRDeviceMediaTypeDVDRAM: String
let DRDeviceMediaTypeDVDR: String
let DRDeviceMediaTypeDVDRDualLayer: String
let DRDeviceMediaTypeDVDRW: String
let DRDeviceMediaTypeDVDRWDualLayer: String
let DRDeviceMediaTypeDVDPlusR: String
let DRDeviceMediaTypeDVDPlusRDoubleLayer: String
let DRDeviceMediaTypeDVDPlusRW: String
let DRDeviceMediaTypeDVDPlusRWDoubleLayer: String
let DRDeviceMediaTypeBDR: String
let DRDeviceMediaTypeBDRE: String
let DRDeviceMediaTypeBDROM: String
let DRDeviceMediaTypeHDDVDROM: String
let DRDeviceMediaTypeHDDVDR: String
let DRDeviceMediaTypeHDDVDRDualLayer: String
let DRDeviceMediaTypeHDDVDRAM: String
let DRDeviceMediaTypeHDDVDRW: String
let DRDeviceMediaTypeHDDVDRWDualLayer: String
let DRDeviceMediaTypeUnknown: String
class DRErase : NSObject {
   init!(forDevice device: DRDevice!)
  init!(device: DRDevice!)
  func start()
  func status() -> [NSObject : AnyObject]!
  func properties() -> [NSObject : AnyObject]!
  func setProperties(properties: [NSObject : AnyObject]!)
  func device() -> DRDevice!
  init()
}
extension DRErase {
  func eraseType() -> String!
  func setEraseType(type: String!)
}
let DREraseTypeKey: String
let DREraseTypeQuick: String
let DREraseTypeComplete: String
let DREraseStatusChangedNotification: String
typealias DRFilesystemInclusionMask = UInt32
var DRFilesystemInclusionMaskISO9660: Int { get }
var DRFilesystemInclusionMaskJoliet: Int { get }
var DRFilesystemInclusionMaskUDF: Int { get }
var DRFilesystemInclusionMaskHFSPlus: Int { get }
class DRFSObject : NSObject {
  func isVirtual() -> Bool
  func sourcePath() -> String!
  func parent() -> DRFolder!
  func baseName() -> String!
  func setBaseName(baseName: String!)
  func specificNameForFilesystem(filesystem: String!) -> String!
  func specificNames() -> [NSObject : AnyObject]!
  func setSpecificName(name: String!, forFilesystem filesystem: String!)
  func setSpecificNames(specificNames: [NSObject : AnyObject]!)
  func mangledNameForFilesystem(filesystem: String!) -> String!
  func mangledNames() -> [NSObject : AnyObject]!
  func propertyForKey(key: String!, inFilesystem filesystem: String!, mergeWithOtherFilesystems merge: Bool) -> AnyObject!
  func propertiesForFilesystem(filesystem: String!, mergeWithOtherFilesystems merge: Bool) -> [NSObject : AnyObject]!
  func setProperty(property: AnyObject!, forKey key: String!, inFilesystem filesystem: String!)
  func setProperties(properties: [NSObject : AnyObject]!, inFilesystem filesystem: String!)
  func explicitFilesystemMask() -> DRFilesystemInclusionMask
  func setExplicitFilesystemMask(mask: DRFilesystemInclusionMask)
  func effectiveFilesystemMask() -> DRFilesystemInclusionMask
  init()
}
let DRAllFilesystems: String
let DRISO9660: String
let DRISO9660LevelOne: String
let DRISO9660LevelTwo: String
let DRJoliet: String
let DRHFSPlus: String
let DRUDF: String
let DRISO9660VersionNumber: String
let DRInvisible: String
let DRCreationDate: String
let DRContentModificationDate: String
let DRAttributeModificationDate: String
let DRAccessDate: String
let DRBackupDate: String
let DREffectiveDate: String
let DRExpirationDate: String
let DRRecordingDate: String
let DRPosixFileMode: String
let DRPosixUID: String
let DRPosixGID: String
let DRHFSPlusTextEncodingHint: String
let DRHFSPlusCatalogNodeID: String
let DRMacFileType: String
let DRMacFileCreator: String
let DRMacWindowBounds: String
let DRMacIconLocation: String
let DRMacScrollPosition: String
let DRMacWindowView: String
let DRMacFinderFlags: String
let DRMacExtendedFinderFlags: String
let DRMacFinderHideExtension: String
let DRUDFWriteVersion: String
let DRUDFVersion102: String
let DRUDFVersion150: String
let DRUDFPrimaryVolumeDescriptorNumber: String
let DRUDFVolumeSequenceNumber: String
let DRUDFMaxVolumeSequenceNumber: String
let DRUDFInterchangeLevel: String
let DRUDFMaxInterchangeLevel: String
let DRUDFApplicationIdentifierSuffix: String
let DRUDFVolumeSetIdentifier: String
let DRUDFVolumeSetTimestamp: String
let DRUDFVolumeSetImplementationUse: String
let DRUDFRealTimeFile: String
let DRUDFExtendedFilePermissions: String
class DRFile : DRFSObject {
  init!(path: String!)
  init()
}
extension DRFile {
  class func virtualFileWithName(name: String!, data: NSData!) -> DRFile!
  class func virtualFileWithName(name: String!, dataProducer producer: AnyObject!) -> DRFile!
  init!(name: String!, data: NSData!)
  init!(name: String!, dataProducer producer: AnyObject!)
}
extension DRFile {
  class func hardLinkPointingTo(original: DRFile!, inFilesystem filesystem: String!) -> DRFile!
  class func symLinkPointingTo(original: DRFSObject!, inFilesystem filesystem: String!) -> DRFile!
  class func finderAliasPointingTo(original: DRFSObject!, inFilesystem filesystem: String!) -> DRFile!
  init!(linkType: String!, pointingTo original: DRFSObject!, inFilesystem filesystem: String!)
}
let DRLinkTypeHardLink: String
let DRLinkTypeSymbolicLink: String
let DRLinkTypeFinderAlias: String
typealias DRFileFork = UInt32
var DRFileForkData: Int { get }
var DRFileForkResource: Int { get }
protocol DRFileDataProduction {
  func calculateSizeOfFile(file: DRFile!, fork: DRFileFork, estimating estimate: Bool) -> UInt64
  func prepareFileForBurn(file: DRFile!) -> Bool
  func produceFile(file: DRFile!, fork: DRFileFork, intoBuffer buffer: UnsafeMutablePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32) -> UInt32
  func prepareFileForVerification(file: DRFile!) -> Bool
  func cleanupFileAfterBurn(file: DRFile!)
}
class DRFolder : DRFSObject {
  init!(path: String!)
  init()
}
extension DRFolder {
  class func virtualFolderWithName(name: String!) -> DRFolder!
  init!(name: String!)
  func makeVirtual()
  func addChild(child: DRFSObject!)
  func removeChild(child: DRFSObject!)
  func count() -> Int
  func children() -> [AnyObject]!
}
class DRMSF : NSNumber {
  class func msf() -> DRMSF!
  class func msfWithFrames(frames: UInt32) -> DRMSF!
  class func msfWithString(string: String!) -> DRMSF!
  init!(frames: UInt32)
  init!(string: String!)
  func minutes() -> UInt32
  func seconds() -> UInt32
  func frames() -> UInt32
  func sectors() -> UInt32
  func msfByAdding(msf: DRMSF!) -> DRMSF!
  func msfBySubtracting(msf: DRMSF!) -> DRMSF!
  func description() -> String!
  func descriptionWithFormat(format: String!) -> String!
  func isEqualToMSF(otherDRMSF: DRMSF!) -> Bool
  init?(coder aDecoder: NSCoder)
  init(char value: Int8)
  init(unsignedChar value: UInt8)
  init(short value: Int16)
  init(unsignedShort value: UInt16)
  init(int value: Int32)
  init(unsignedInt value: UInt32)
  init(long value: Int)
  init(unsignedLong value: UInt)
  init(longLong value: Int64)
  init(unsignedLongLong value: UInt64)
  init(float value: Float)
  init(double value: Double)
  init(bool value: Bool)
  init(integer value: Int)
  init(unsignedInteger value: UInt)
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}
class DRMSFFormatter : NSFormatter {
  init!(format: String!)
  func format() -> String!
  func setFormat(format: String!)
  init()
  init?(coder aDecoder: NSCoder)
}
class DRNotificationCenter : NSObject {
  class func currentRunLoopCenter() -> DRNotificationCenter!
  func addObserver(observer: AnyObject!, selector aSelector: Selector, name notificationName: String!, object anObject: AnyObject!)
  func removeObserver(observer: AnyObject!, name aName: String!, object anObject: AnyObject!)
  init()
}
let DRStatusStateKey: String
let DRStatusPercentCompleteKey: String
let DRStatusCurrentSessionKey: String
let DRStatusCurrentTrackKey: String
let DRStatusTotalSessionsKey: String
let DRStatusTotalTracksKey: String
let DRStatusCurrentSpeedKey: String
let DRStatusEraseTypeKey: String
let DRStatusStateNone: String
let DRStatusStatePreparing: String
let DRStatusStateVerifying: String
let DRStatusStateDone: String
let DRStatusStateFailed: String
let DRStatusStateSessionOpen: String
let DRStatusStateTrackOpen: String
let DRStatusStateTrackWrite: String
let DRStatusStateTrackClose: String
let DRStatusStateSessionClose: String
let DRStatusStateFinishing: String
let DRStatusStateErasing: String
let DRStatusProgressInfoKey: String
let DRStatusProgressCurrentKPS: String
let DRStatusProgressCurrentXFactor: String
let DRErrorStatusKey: String
let DRErrorStatusErrorKey: String
let DRErrorStatusErrorStringKey: String
let DRErrorStatusErrorInfoStringKey: String
let DRErrorStatusSenseKey: String
let DRErrorStatusSenseCodeStringKey: String
let DRErrorStatusAdditionalSenseStringKey: String
class DRTrack : NSObject {
  init!(producer: AnyObject!)
  func properties() -> [NSObject : AnyObject]!
  func setProperties(properties: [NSObject : AnyObject]!)
  func testProductionSpeedForInterval(interval: NSTimeInterval) -> Float
  func testProductionSpeedForLength(length: UInt32) -> Float
  func estimateLength() -> UInt64
  init()
}
extension DRTrack {
  func length() -> DRMSF!
  func preGap() -> DRMSF!
  func setPreGap(preGap: DRMSF!)
}
protocol DRTrackDataProduction {
  func estimateLengthOfTrack(track: DRTrack!) -> UInt64
  func prepareTrack(track: DRTrack!, forBurn burn: DRBurn!, toMedia mediaInfo: [NSObject : AnyObject]!) -> Bool
  func cleanupTrackAfterBurn(track: DRTrack!)
  func producePreGapForTrack(track: DRTrack!, intoBuffer buffer: UnsafeMutablePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>) -> UInt32
  func produceDataForTrack(track: DRTrack!, intoBuffer buffer: UnsafeMutablePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>) -> UInt32
  func prepareTrackForVerification(track: DRTrack!) -> Bool
  func verifyPreGapForTrack(track: DRTrack!, inBuffer buffer: UnsafePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>) -> Bool
  func verifyDataForTrack(track: DRTrack!, inBuffer buffer: UnsafePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>) -> Bool
  func cleanupTrackAfterVerification(track: DRTrack!) -> Bool
}
let DRTrackLengthKey: String
let DRBlockSizeKey: String
let DRBlockTypeKey: String
let DRDataFormKey: String
let DRSessionFormatKey: String
let DRTrackModeKey: String
let DRVerificationTypeKey: String
let DRMaxBurnSpeedKey: String
let DRPreGapLengthKey: String
let DRPreGapIsRequiredKey: String
let DRDVDTimestampKey: String
let DRDVDCopyrightInfoKey: String
let DRTrackISRCKey: String
let DRIndexPointsKey: String
let DRAudioPreEmphasisKey: String
let DRAudioFourChannelKey: String
let DRSerialCopyManagementStateKey: String
let DRVerificationTypeProduceAgain: String
let DRVerificationTypeReceiveData: String
let DRVerificationTypeChecksum: String
let DRVerificationTypeNone: String
let DRSCMSCopyrightFree: String
let DRSCMSCopyrightProtectedOriginal: String
let DRSCMSCopyrightProtectedCopy: String
let DRNextWritableAddressKey: String
let DRTrackStartAddressKey: String
let DRFreeBlocksKey: String
let DRTrackNumberKey: String
let DRSessionNumberKey: String
let DRTrackTypeKey: String
let DRTrackIsEmptyKey: String
let DRTrackPacketTypeKey: String
let DRTrackPacketSizeKey: String
let DRTrackTypeInvisible: String
let DRTrackTypeIncomplete: String
let DRTrackTypeReserved: String
let DRTrackTypeClosed: String
let DRTrackPacketTypeFixed: String
let DRTrackPacketTypeVariable: String
let DRISOLevel: String
let DRVolumeSet: String
let DRPublisher: String
let DRDataPreparer: String
let DRApplicationIdentifier: String
let DRSystemIdentifier: String
let DRCopyrightFile: String
let DRAbstractFile: String
let DRBibliographicFile: String
let DRBlockSize: String
let DRDefaultDate: String
let DRVolumeCreationDate: String
let DRVolumeModificationDate: String
let DRVolumeCheckedDate: String
let DRVolumeExpirationDate: String
let DRVolumeEffectiveDate: String
let DRISOMacExtensions: String
let DRISORockRidgeExtensions: String
let DRSuppressMacSpecificFiles: String
var DRFlagSubchannelDataRequested: Int { get }
let DRSubchannelDataFormKey: String
let DRSubchannelDataFormNone: String
let DRSubchannelDataFormPack: String
let DRSubchannelDataFormRaw: String
extension DRTrack {
   init!(forAudioOfLength length: DRMSF!, producer: AnyObject!)
   init!(forAudioFile path: String!)
}
extension DRTrack {
   init!(forRootFolder rootFolder: DRFolder!)
}
