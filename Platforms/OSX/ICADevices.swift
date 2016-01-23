
let kICUTTypeRaw: CFString!
struct ICARawFileHeader {
  var imageDataOffset: UInt32
  var version: UInt32
  var imageWidth: UInt32
  var imageHeight: UInt32
  var bytesPerRow: UInt32
  var numberOfComponents: UInt32
  var bitsPerComponent: UInt32
  var bitsPerPixel: UInt32
  var cgColorSpaceModel: UInt32
  var bitmapInfo: UInt32
  var orientation: UInt32
  var dpi: UInt32
  var colorSyncModeStr: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(imageDataOffset: UInt32, version: UInt32, imageWidth: UInt32, imageHeight: UInt32, bytesPerRow: UInt32, numberOfComponents: UInt32, bitsPerComponent: UInt32, bitsPerPixel: UInt32, cgColorSpaceModel: UInt32, bitmapInfo: UInt32, orientation: UInt32, dpi: UInt32, colorSyncModeStr: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
func ICDCreateColorSpace(bitsPerPixel: UInt32, _ samplesPerPixel: UInt32, _ icaObject: ICAObject, _ colorSyncMode: CFString!, _ abstractProfile: CFData!, _ tmpProfilePath: UnsafeMutablePointer<Int8>) -> Unmanaged<CGColorSpace>!
func ICDAddImageInfoToNotificationDictionary(dict: CFMutableDictionary!, _ width: UInt32, _ height: UInt32, _ bytesPerRow: UInt32, _ dataStartRow: UInt32, _ dataNumberOfRows: UInt32, _ dataSize: UInt32, _ dataBuffer: UnsafeMutablePointer<Void>) -> ICAError
func ICDAddBandInfoToNotificationDictionary(dict: CFMutableDictionary!, _ width: UInt32, _ height: UInt32, _ bitsPerPixel: UInt32, _ bitsPerComponent: UInt32, _ numComponents: UInt32, _ endianness: UInt32, _ pixelDataType: UInt32, _ bytesPerRow: UInt32, _ dataStartRow: UInt32, _ dataNumberOfRows: UInt32, _ dataSize: UInt32, _ dataBuffer: UnsafeMutablePointer<Void>) -> ICAError
func ICDSendNotification(pb: UnsafeMutablePointer<ICASendNotificationPB>) -> ICAError
func ICDSendNotificationAndWaitForReply(pb: UnsafeMutablePointer<ICASendNotificationPB>) -> ICAError
var ICLoggingEnabled: Int32
var ICLoggingLevelMask: Int32
let ICLoggingLevelError: Int32
let ICLoggingLevelWarning: Int32
let ICLoggingLevelBasicInfo: Int32
let ICLoggingLevelVerboseInfo: Int32
let ICLoggingLevelTimingInfo: Int32
typealias ICAError = OSErr
var kICAPBVersion: Int { get }
var kICACommunicationErr: Int { get }
var kICADeviceNotFoundErr: Int { get }
var kICADeviceNotOpenErr: Int { get }
var kICAFileCorruptedErr: Int { get }
var kICAIOPendingErr: Int { get }
var kICAInvalidObjectErr: Int { get }
var kICAInvalidPropertyErr: Int { get }
var kICAIndexOutOfRangeErr: Int { get }
var kICAPropertyTypeNotFoundErr: Int { get }
var kICACannotYieldDevice: Int { get }
var kICADataTypeNotFoundErr: Int { get }
var kICADeviceMemoryAllocationErr: Int { get }
var kICADeviceInternalErr: Int { get }
var kICADeviceInvalidParamErr: Int { get }
var kICADeviceAlreadyOpenErr: Int { get }
var kICADeviceLocationIDNotFoundErr: Int { get }
var kICADeviceGUIDNotFoundErr: Int { get }
var kICADeviceIOServicePathNotFoundErr: Int { get }
var kICADeviceUnsupportedErr: Int { get }
var kICAFrameworkInternalErr: Int { get }
var kICAExtensionInternalErr: Int { get }
var kICAInvalidSessionErr: Int { get }
var kICASandboxViolation: Int { get }
var kICASecureSessionRequired: Int { get }
var kICADevice: Int { get }
var kICADeviceCamera: Int { get }
var kICADeviceScanner: Int { get }
var kICADeviceMFP: Int { get }
var kICADevicePhone: Int { get }
var kICADevicePDA: Int { get }
var kICADeviceOther: Int { get }
var kICAList: Int { get }
var kICADirectory: Int { get }
var kICAFile: Int { get }
var kICAFileImage: Int { get }
var kICAFileMovie: Int { get }
var kICAFileAudio: Int { get }
var kICAFileFirmware: Int { get }
var kICAFileOther: Int { get }
var kICAProperty: Int { get }
var kICAPropertyImageWidth: Int { get }
var kICAPropertyImageHeight: Int { get }
var kICAPropertyImageBitDepth: Int { get }
var kICAPropertyImageDPI: Int { get }
var kICAPropertyImageExposureTime: Int { get }
var kICAPropertyImageFNumber: Int { get }
var kICAPropertyImageDateOriginal: Int { get }
var kICAPropertyImageDateDigitized: Int { get }
var kICAPropertyImageShutterSpeed: Int { get }
var kICAPropertyImageAperture: Int { get }
var kICAPropertyImageFlash: Int { get }
var kICAPropertyColorSpace: Int { get }
var kICAPropertyImageFilename: Int { get }
var kICAPropertyImageSize: Int { get }
var kICAPropertyImageData: Int { get }
var kICAPropertyImageThumbnail: Int { get }
var kICAPropertyColorSyncProfile: Int { get }
var kICATypeUInt8: Int { get }
var kICATypeUInt16: Int { get }
var kICATypeUInt32: Int { get }
var kICATypeUInt64: Int { get }
var kICATypeSInt16: Int { get }
var kICATypeSInt32: Int { get }
var kICATypeSInt64: Int { get }
var kICATypeFloat: Int { get }
var kICATypeFixed: Int { get }
var kICATypeBoolean: Int { get }
var kICATypeString: Int { get }
var kICATypeData: Int { get }
var kICATypeThumbnail: Int { get }
var kICAFlagReadWriteAccess: Int { get }
var kICAFlagReadAccess: Int { get }
var kICAButtonScan: Int { get }
var kICAButtonCopy: Int { get }
var kICAButtonEMail: Int { get }
var kICAButtonWeb: Int { get }
var kICACameraPassThruSend: Int { get }
var kICACameraPassThruReceive: Int { get }
var kICACameraPassThruNotUsed: Int { get }
struct ICAPTPPassThroughPB {
  var commandCode: UInt32
  var resultCode: UInt32
  var numOfInputParams: UInt32
  var numOfOutputParams: UInt32
  var params: (UInt32, UInt32, UInt32, UInt32)
  var dataUsageMode: UInt32
  var flags: UInt32
  var dataSize: UInt32
  var data: (UInt8)
  init()
  init(commandCode: UInt32, resultCode: UInt32, numOfInputParams: UInt32, numOfOutputParams: UInt32, params: (UInt32, UInt32, UInt32, UInt32), dataUsageMode: UInt32, flags: UInt32, dataSize: UInt32, data: (UInt8))
}
struct ICAPTPEventDataset {
  var dataLength: UInt32
  var containerType: UInt16
  var eventCode: UInt16
  var transactionID: UInt32
  var params: (UInt32, UInt32, UInt32)
  init()
  init(dataLength: UInt32, containerType: UInt16, eventCode: UInt16, transactionID: UInt32, params: (UInt32, UInt32, UInt32))
}
let kICADevicesArrayKey: CFString!
let kICAObjectKey: CFString!
let kICAObjectNameKey: CFString!
let kICAUSBVendorIDKey: CFString!
let kICAUSBProductIDKey: CFString!
let kICADeviceTypeKey: CFString!
let kICAExecutableArchitectureKey: CFString!
let kICARemoteDeviceKey: CFString!
let kICADeviceSharedKey: CFString!
let kICADeviceWebSharedKey: CFString!
let kICADeviceUsedKey: CFString!
let kICABonjourServiceTypeKey: CFString!
let kICABonjourServiceNameKey: CFString!
let kICABonjourTXTRecordKey: CFString!
let kICADeviceCapabilitiesKey: CFString!
let kICALockStatusKey: CFString!
let kICADataPropertyKey: CFString!
let kICADataTypeKey: CFString!
let kICADataSizeKey: CFString!
let kICAThumbnailPropertyKey: CFString!
let kICAThumbnailSizeKey: CFString!
let kICARawKey: CFString!
let kICAMediaHeightKey: CFString!
let kICAMediaWidthKey: CFString!
let kICACreationDateStringKey: CFString!
let kICAModificationDateStringKey: CFString!
let kMetaDataDictionaryKey: CFString!
let kICAMediaDurationInSecondsKey: CFString!
let kICADeviceTypeCamera: CFString!
let kICADeviceTypeScanner: CFString!
let kICAUSBTransportType: CFString!
let kICAFireWireTransportType: CFString!
let kICABluetoothTransportType: CFString!
let kICATCPIPTransportType: CFString!
let kICASCSITransportType: CFString!
let kICATWAINTransportType: CFString!
let kICADeviceBrowserDeviceRefKey: CFString!
let kICADeviceModulePathKey: CFString!
let kICADeviceIconPathKey: CFString!
let kICATransportTypeKey: CFString!
let kICABluetoothAddressKey: CFString!
let kICAUSBLocationIDKey: CFString!
let kICAFireWireGUIDKey: CFString!
let kICAIOServicePathKey: CFString!
let kICAIPAddressKey: CFString!
let kICAIPPortKey: CFString!
let kICAIPNameKey: CFString!
let kICAIPGUIDKey: CFString!
let kICATWAINDSPathKey: CFString!
let kICAUserAssignedDeviceNameKey: CFString!
struct ICAHeader {
  var err: ICAError
  var refcon: UInt
  init()
  init(err: ICAError, refcon: UInt)
}
typealias ICACompletion = @convention(c) (UnsafeMutablePointer<ICAHeader>) -> Void
typealias ICAImportFilterProc = @convention(c) (CFDictionary!, UInt) -> DarwinBoolean
typealias ICANotificationProc = @convention(c) (CFString!, CFDictionary!) -> Void
typealias ICAObject = UInt32
typealias ICAProperty = UInt32
typealias ICAConnectionID = UInt32
typealias ICASessionID = UInt32
typealias ICAScannerSessionID = ICASessionID
typealias ICAEventDataCookie = UInt32
struct ICAObjectInfo {
  var objectType: OSType
  var objectSubtype: OSType
  init()
  init(objectType: OSType, objectSubtype: OSType)
}
var kICAAllowMultipleImages: Int { get }
var kICADownloadAndReturnPathArray: Int { get }
struct ICAImportImagePB {
  var header: ICAHeader
  var deviceObject: ICAObject
  var flags: UInt32
  var supportedFileTypes: Unmanaged<CFArray>!
  var filterProc: ICAImportFilterProc!
  var importedImages: UnsafeMutablePointer<Unmanaged<CFArray>?>
  init()
  init(header: ICAHeader, deviceObject: ICAObject, flags: UInt32, supportedFileTypes: Unmanaged<CFArray>!, filterProc: ICAImportFilterProc!, importedImages: UnsafeMutablePointer<Unmanaged<CFArray>?>)
}
typealias ICANotification = @convention(c) (CFString!, CFDictionary!) -> Void
let kICANotificationTypeObjectAdded: CFString!
let kICANotificationTypeObjectRemoved: CFString!
let kICANotificationTypeObjectInfoChanged: CFString!
let kICANotificationTypeStoreAdded: CFString!
let kICANotificationTypeStoreRemoved: CFString!
let kICANotificationTypeStoreFull: CFString!
let kICANotificationTypeStoreInfoChanged: CFString!
let kICANotificationTypeDeviceAdded: CFString!
let kICANotificationTypeDeviceRemoved: CFString!
let kICANotificationTypeDeviceInfoChanged: CFString!
let kICANotificationTypeDevicePropertyChanged: CFString!
let kICANotificationTypeDeviceWasReset: CFString!
let kICANotificationTypeDeviceStatusInfo: CFString!
let kICANotificationTypeDeviceStatusError: CFString!
let kICANotificationTypeCaptureComplete: CFString!
let kICANotificationTypeRequestObjectTransfer: CFString!
let kICANotificationTypeTransactionCanceled: CFString!
let kICANotificationTypeUnreportedStatus: CFString!
let kICANotificationTypeProprietary: CFString!
let kICANotificationTypeDeviceConnectionProgress: CFString!
let kICANotificationTypeDownloadProgressStatus: CFString!
let kICANotificationTypeScanProgressStatus: CFString!
let kICANotificationTypeScannerSessionClosed: CFString!
let kICANotificationTypeScannerScanDone: CFString!
let kICANotificationTypeScannerPageDone: CFString!
let kICANotificationTypeScannerButtonPressed: CFString!
let kICANotificationTypeScannerOverviewOverlayAvailable: CFString!
let kICAErrorKey: CFString!
let kICARefconKey: CFString!
let kICANotificationICAObjectKey: CFString!
let kICANotificationDeviceICAObjectKey: CFString!
let kICANotificationDeviceListICAObjectKey: CFString!
let kICANotificationClassKey: CFString!
let kICANotificationTypeKey: CFString!
let kICANotificationRawEventKey: CFString!
let kICANotificationDataKey: CFString!
let kICANotificationDataSizeKey: CFString!
let kICANotificationDataCookieKey: CFString!
let kICANotificationImageKey: CFString!
let kICANotificationImageWidthKey: CFString!
let kICANotificationImageHeightKey: CFString!
let kICANotificationImageBytesPerRowKey: CFString!
let kICANotificationImageStartRowKey: CFString!
let kICANotificationImageNumberOfRowsKey: CFString!
let kICANotificationImageDataKey: CFString!
let kICANotificationImageDataSizeKey: CFString!
let kICANotificationDataIsBigEndianKey: CFString!
let kICANotificationScannerDocumentNameKey: CFString!
let kICANotificationScannerButtonTypeKey: CFString!
let kICANotificationNumerOfImagesRemainingKey: CFString!
let kICANotificationPercentDownloadedKey: CFString!
let kICANotificationSubTypeKey: CFString!
let kICANotificationSubTypeWarmUpStarted: CFString!
let kICANotificationSubTypeWarmUpDone: CFString!
let kICANotificationVendorErrorCodeKey: CFString!
let kICANotificationSubTypePerformOverviewScan: CFString!
let kICANotificationSubTypeDocumentLoaded: CFString!
let kICANotificationSubTypeDocumentNotLoaded: CFString!
let kICANotificationClassPTPStandard: CFString!
let kICANotificationClassPTPVendor: CFString!
let kICANotificationClassProprietary: CFString!
let kICADevicePropUndefined: CFString!
let kICADevicePropBatteryLevel: CFString!
let kICADevicePropFunctionalMode: CFString!
let kICADevicePropImageSize: CFString!
let kICADevicePropCompressionSetting: CFString!
let kICADevicePropWhiteBalance: CFString!
let kICADevicePropRGBGain: CFString!
let kICADevicePropFNumber: CFString!
let kICADevicePropFocalLength: CFString!
let kICADevicePropFocusDistance: CFString!
let kICADevicePropFocusMode: CFString!
let kICADevicePropExposureMeteringMode: CFString!
let kICADevicePropFlashMode: CFString!
let kICADevicePropExposureTime: CFString!
let kICADevicePropExposureProgramMode: CFString!
let kICADevicePropExposureIndex: CFString!
let kICADevicePropExposureBiasCompensation: CFString!
let kICADevicePropDateTime: CFString!
let kICADevicePropCaptureDelay: CFString!
let kICADevicePropStillCaptureMode: CFString!
let kICADevicePropContrast: CFString!
let kICADevicePropSharpness: CFString!
let kICADevicePropDigitalZoom: CFString!
let kICADevicePropEffectMode: CFString!
let kICADevicePropBurstNumber: CFString!
let kICADevicePropBurstInterval: CFString!
let kICADevicePropTimelapseNumber: CFString!
let kICADevicePropTimelapseInterval: CFString!
let kICADevicePropFocusMeteringMode: CFString!
let kICADevicePropUploadURL: CFString!
let kICADevicePropArtist: CFString!
let kICADevicePropCopyrightInfo: CFString!
struct ICARegisterForEventNotificationPB {
  var header: ICAHeader
  var objectOfInterest: ICAObject
  var eventsOfInterest: Unmanaged<CFArray>!
  var notificationProc: ICANotification!
  var options: Unmanaged<CFDictionary>!
  init()
  init(header: ICAHeader, objectOfInterest: ICAObject, eventsOfInterest: Unmanaged<CFArray>!, notificationProc: ICANotification!, options: Unmanaged<CFDictionary>!)
}
struct ICASendNotificationPB {
  var header: ICAHeader
  var notificationDictionary: Unmanaged<CFMutableDictionary>!
  var replyCode: UInt32
  init()
  init(header: ICAHeader, notificationDictionary: Unmanaged<CFMutableDictionary>!, replyCode: UInt32)
}
struct ICAGetDeviceListPB {
  var header: ICAHeader
  var object: ICAObject
  init()
  init(header: ICAHeader, object: ICAObject)
}
struct ICACopyObjectPropertyDictionaryPB {
  var header: ICAHeader
  var object: ICAObject
  var theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>
  init()
  init(header: ICAHeader, object: ICAObject, theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>)
}
var kICAThumbnailFormatJPEG: Int { get }
var kICAThumbnailFormatTIFF: Int { get }
var kICAThumbnailFormatPNG: Int { get }
struct ICACopyObjectThumbnailPB {
  var header: ICAHeader
  var object: ICAObject
  var thumbnailFormat: OSType
  var thumbnailData: UnsafeMutablePointer<Unmanaged<CFData>?>
  init()
  init(header: ICAHeader, object: ICAObject, thumbnailFormat: OSType, thumbnailData: UnsafeMutablePointer<Unmanaged<CFData>?>)
}
struct ICACopyObjectDataPB {
  var header: ICAHeader
  var object: ICAObject
  var startByte: Int
  var requestedSize: Int
  var data: UnsafeMutablePointer<Unmanaged<CFData>?>
  init()
  init(header: ICAHeader, object: ICAObject, startByte: Int, requestedSize: Int, data: UnsafeMutablePointer<Unmanaged<CFData>?>)
}
struct ICAMessage {
  var messageType: OSType
  var startByte: UInt32
  var dataPtr: UnsafeMutablePointer<Void>
  var dataSize: UInt32
  var dataType: OSType
  init()
  init(messageType: OSType, startByte: UInt32, dataPtr: UnsafeMutablePointer<Void>, dataSize: UInt32, dataType: OSType)
}
var kICAMessageConnect: Int { get }
var kICAMessageDisconnect: Int { get }
var kICAMessageReset: Int { get }
var kICAMessageCheckDevice: Int { get }
var kICAMessageCameraReadClock: Int { get }
var kICAMessageGetLastButtonPressed: Int { get }
var kICAMessageGetEventData: Int { get }
var kICAMessageDeviceYield: Int { get }
var kICAMessageCameraPassThrough: Int { get }
var kICAMessageScannerOverviewSelectionChanged: Int { get }
struct ICAObjectSendMessagePB {
  var header: ICAHeader
  var object: ICAObject
  var message: ICAMessage
  var result: UInt32
  init()
  init(header: ICAHeader, object: ICAObject, message: ICAMessage, result: UInt32)
}
var kDeleteAfterDownload: Int { get }
var kCreateCustomIcon: Int { get }
var kAddMetaDataToFinderComment: Int { get }
var kAdjustCreationDate: Int { get }
var kSetFileTypeAndCreator: Int { get }
var kRotateImage: Int { get }
var kDontEmbedColorSyncProfile: Int { get }
struct ICADownloadFilePB {
  var header: ICAHeader
  var object: ICAObject
  var dirFSRef: UnsafeMutablePointer<FSRef>
  var flags: UInt32
  var fileType: OSType
  var fileCreator: OSType
  var rotationAngle: Fixed
  var fileFSRef: UnsafeMutablePointer<FSRef>
  init()
  init(header: ICAHeader, object: ICAObject, dirFSRef: UnsafeMutablePointer<FSRef>, flags: UInt32, fileType: OSType, fileCreator: OSType, rotationAngle: Fixed, fileFSRef: UnsafeMutablePointer<FSRef>)
}
var kICAUploadFileAsIs: Int { get }
var kICAUploadFileScaleToFit: Int { get }
struct ICAUploadFilePB {
  var header: ICAHeader
  var parentObject: ICAObject
  var fileFSRef: UnsafeMutablePointer<FSRef>
  var flags: UInt32
  init()
  init(header: ICAHeader, parentObject: ICAObject, fileFSRef: UnsafeMutablePointer<FSRef>, flags: UInt32)
}
struct ICALoadDeviceModulePB {
  var header: ICAHeader
  var paramDictionary: Unmanaged<CFDictionary>!
  init()
  init(header: ICAHeader, paramDictionary: Unmanaged<CFDictionary>!)
}
struct ICAUnloadDeviceModulePB {
  var header: ICAHeader
  var deviceObject: ICAObject
  init()
  init(header: ICAHeader, deviceObject: ICAObject)
}
struct ICAOpenSessionPB {
  var header: ICAHeader
  var deviceObject: ICAObject
  var sessionID: ICASessionID
  init()
  init(header: ICAHeader, deviceObject: ICAObject, sessionID: ICASessionID)
}
struct ICACloseSessionPB {
  var header: ICAHeader
  var sessionID: ICASessionID
  init()
  init(header: ICAHeader, sessionID: ICASessionID)
}
struct ICAScannerOpenSessionPB {
  var header: ICAHeader
  var object: ICAObject
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, object: ICAObject, sessionID: ICAScannerSessionID)
}
struct ICAScannerCloseSessionPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}
struct ICAScannerInitializePB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}
struct ICAScannerGetParametersPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}
struct ICAScannerSetParametersPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}
struct ICAScannerStatusPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var status: UInt32
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, status: UInt32)
}
struct ICAScannerStartPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}
struct ICDHeader {
  var err: ICAError
  var refcon: UInt
  init()
  init(err: ICAError, refcon: UInt)
}
typealias ICDCompletion = @convention(c) (UnsafeMutablePointer<ICDHeader>) -> Void
struct ICD_NewObjectPB {
  var header: ICDHeader
  var parentObject: ICAObject
  var objectInfo: ICAObjectInfo
  var object: ICAObject
  init()
  init(header: ICDHeader, parentObject: ICAObject, objectInfo: ICAObjectInfo, object: ICAObject)
}
struct ICD_DisposeObjectPB {
  var header: ICDHeader
  var object: ICAObject
  init()
  init(header: ICDHeader, object: ICAObject)
}
var kICD_FileData: Int { get }
var kICD_MetaData: Int { get }
var kICD_ThumbnailData: Int { get }
var kICD_ThumbnailDataFormatJPEG: Int { get }
var kICD_ThumbnailDataFormatTIFF: Int { get }
var kICD_ThumbnailDataFormatPNG: Int { get }
var hasChildrenMask: Int { get }
var hasThumbnailMask: Int { get }
var fileLockedMask: Int { get }
var rawImageFormatMask: Int { get }
var fileInTempCacheMask: Int { get }
var largeFileSizeMask: Int { get }
var addedAfterCCCMask: Int { get }
struct ObjectInfo {
  var icaObject: ICAObject
  var reserved: UInt
  var icaObjectInfo: ICAObjectInfo
  var uniqueID: UInt32
  var thumbnailSize: UInt32
  var dataSize: UInt32
  var dataWidth: UInt32
  var dataHeight: UInt32
  var name: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var creationDate: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var flags: UInt32
  var privateData: Ptr
  var uniqueIDFireWire: UInt64
  var tag: UInt32
  var dataSize64: UInt64
  init()
  init(icaObject: ICAObject, reserved: UInt, icaObjectInfo: ICAObjectInfo, uniqueID: UInt32, thumbnailSize: UInt32, dataSize: UInt32, dataWidth: UInt32, dataHeight: UInt32, name: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), creationDate: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), flags: UInt32, privateData: Ptr, uniqueIDFireWire: UInt64, tag: UInt32, dataSize64: UInt64)
}
struct ICD_ObjectSendMessagePB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var message: ICAMessage
  var totalDataSize: UInt32
  var result: UInt32
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, message: ICAMessage, totalDataSize: UInt32, result: UInt32)
}
typealias __ICD_OpenUSBDevice = @convention(c) (UInt32, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenUSBDeviceWithIORegPath = @convention(c) (UInt32, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenFireWireDevice = @convention(c) (UInt64, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenFireWireDeviceWithIORegPath = @convention(c) (UInt64, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenBluetoothDevice = @convention(c) (CFDictionary!, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenTCPIPDevice = @convention(c) (CFDictionary!, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_OpenMassStorageDevice = @convention(c) (CFString!, DASession!, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_CloseDevice = @convention(c) (UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_PeriodicTask = @convention(c) (UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_GetObjectInfo = @convention(c) (UnsafePointer<ObjectInfo>, UInt32, UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_Cleanup = @convention(c) (UnsafeMutablePointer<ObjectInfo>) -> ICAError
typealias __ICD_GetPropertyData = @convention(c) (UnsafePointer<ObjectInfo>, UnsafeMutablePointer<Void>) -> ICAError
typealias __ICD_SetPropertyData = @convention(c) (UnsafePointer<ObjectInfo>, UnsafePointer<Void>) -> ICAError
typealias __ICD_ReadFileData = @convention(c) (UnsafePointer<ObjectInfo>, UInt32, Ptr, UInt32, UnsafeMutablePointer<UInt32>) -> ICAError
typealias __ICD_WriteFileData = @convention(c) (UnsafePointer<ObjectInfo>, UnsafePointer<Int8>, UInt32, Ptr, UInt32, UnsafeMutablePointer<UInt32>) -> ICAError
typealias __ICD_SendMessage = @convention(c) (UnsafePointer<ObjectInfo>, UnsafeMutablePointer<ICD_ObjectSendMessagePB>, ICDCompletion!) -> ICAError
typealias __ICD_AddPropertiesToCFDictionary = @convention(c) (UnsafeMutablePointer<ObjectInfo>, CFMutableDictionary!) -> ICAError
typealias __ICD_WriteDataToFile = @convention(c) (UnsafePointer<ObjectInfo>, UnsafeMutablePointer<FILE>, UInt32, UnsafeMutablePointer<Int>) -> ICAError
typealias __ICD_WriteDataToFileDescriptor = @convention(c) (UnsafePointer<ObjectInfo>, Int32, UInt32, UnsafeMutablePointer<Int>) -> ICAError
typealias __ICD_WriteDataToFileDescriptor64 = @convention(c) (UnsafePointer<ObjectInfo>, Int32) -> ICAError
func ICD_main(argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func ICDGetStandardPropertyData(objectInfo: UnsafePointer<ObjectInfo>, _ pb: UnsafeMutablePointer<Void>) -> ICAError
func ICDNewObjectInfoCreated(parentInfo: UnsafePointer<ObjectInfo>, _ index: UInt32, _ newICAObject: UnsafeMutablePointer<ICAObject>) -> ICAError
typealias ICDNewObjectCreatedCompletion = @convention(c) (UnsafePointer<ObjectInfo>) -> Void
func ICDNewObjectCreated(parentInfo: UnsafePointer<ObjectInfo>, _ objectInfo: UnsafePointer<ObjectInfo>, _ completion: ICDNewObjectCreatedCompletion!) -> ICAError
func ICDCopyDeviceInfoDictionary(deviceName: UnsafePointer<Int8>, _ theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> ICAError
func ICDCreateEventDataCookie(object: ICAObject, _ cookie: UnsafeMutablePointer<ICAEventDataCookie>) -> ICAError
func ICDConnectUSBDevice(locationID: UInt32) -> ICAError
func ICDConnectUSBDeviceWithIORegPath(locationID: UInt32, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDDisconnectUSBDevice(locationID: UInt32) -> ICAError
func ICDDisconnectUSBDeviceWithIORegPath(locationID: UInt32, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDConnectFWDevice(guid: UInt64) -> ICAError
func ICDConnectFWDeviceWithIORegPath(guid: UInt64, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDDisconnectFWDevice(guid: UInt64) -> ICAError
func ICDDisconnectFWDeviceWithIORegPath(guid: UInt64, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDConnectBluetoothDevice(params: CFDictionary!) -> ICAError
func ICDDisconnectBluetoothDevice(params: CFDictionary!) -> ICAError
func ICDConnectTCPIPDevice(params: CFDictionary!) -> ICAError
func ICDDisconnectTCPIPDevice(params: CFDictionary!) -> ICAError
struct ICD_callback_functions {
  var f_ICD_OpenUSBDevice: __ICD_OpenUSBDevice!
  var f_ICD_CloseDevice: __ICD_CloseDevice!
  var f_ICD_PeriodicTask: __ICD_PeriodicTask!
  var f_ICD_GetObjectInfo: __ICD_GetObjectInfo!
  var f_ICD_Cleanup: __ICD_Cleanup!
  var f_ICD_GetPropertyData: __ICD_GetPropertyData!
  var f_ICD_SetPropertyData: __ICD_SetPropertyData!
  var f_ICD_ReadFileData: __ICD_ReadFileData!
  var f_ICD_WriteFileData: __ICD_WriteFileData!
  var f_ICD_SendMessage: __ICD_SendMessage!
  var f_ICD_AddPropertiesToCFDictionary: __ICD_AddPropertiesToCFDictionary!
  var f_ICD_OpenFireWireDevice: __ICD_OpenFireWireDevice!
  var f_ICD_OpenUSBDeviceWithIORegPath: __ICD_OpenUSBDeviceWithIORegPath!
  var f_ICD_OpenFireWireDeviceWithIORegPath: __ICD_OpenFireWireDeviceWithIORegPath!
  var f_ICD_OpenBluetoothDevice: __ICD_OpenBluetoothDevice!
  var f_ICD_OpenTCPIPDevice: __ICD_OpenTCPIPDevice!
  var f_ICD_WriteDataToFile: __ICD_WriteDataToFile!
  var f_ICD_OpenMassStorageDevice: __ICD_OpenMassStorageDevice!
  var f_ICD_WriteDataToFileDescriptor: __ICD_WriteDataToFileDescriptor!
  var f_ICD_WriteDataToFileDescriptor64: __ICD_WriteDataToFileDescriptor64!
  init()
  init(f_ICD_OpenUSBDevice: __ICD_OpenUSBDevice!, f_ICD_CloseDevice: __ICD_CloseDevice!, f_ICD_PeriodicTask: __ICD_PeriodicTask!, f_ICD_GetObjectInfo: __ICD_GetObjectInfo!, f_ICD_Cleanup: __ICD_Cleanup!, f_ICD_GetPropertyData: __ICD_GetPropertyData!, f_ICD_SetPropertyData: __ICD_SetPropertyData!, f_ICD_ReadFileData: __ICD_ReadFileData!, f_ICD_WriteFileData: __ICD_WriteFileData!, f_ICD_SendMessage: __ICD_SendMessage!, f_ICD_AddPropertiesToCFDictionary: __ICD_AddPropertiesToCFDictionary!, f_ICD_OpenFireWireDevice: __ICD_OpenFireWireDevice!, f_ICD_OpenUSBDeviceWithIORegPath: __ICD_OpenUSBDeviceWithIORegPath!, f_ICD_OpenFireWireDeviceWithIORegPath: __ICD_OpenFireWireDeviceWithIORegPath!, f_ICD_OpenBluetoothDevice: __ICD_OpenBluetoothDevice!, f_ICD_OpenTCPIPDevice: __ICD_OpenTCPIPDevice!, f_ICD_WriteDataToFile: __ICD_WriteDataToFile!, f_ICD_OpenMassStorageDevice: __ICD_OpenMassStorageDevice!, f_ICD_WriteDataToFileDescriptor: __ICD_WriteDataToFileDescriptor!, f_ICD_WriteDataToFileDescriptor64: __ICD_WriteDataToFileDescriptor64!)
}
var gICDCallbackFunctions: ICD_callback_functions
var kICS_FileData: Int { get }
var kICS_MetaData: Int { get }
var kICS_ThumbnailData: Int { get }
var kICS_ThumbnailDataFormatJPEG: Int { get }
var kICS_ThumbnailDataFormatTIFF: Int { get }
var kICS_ThumbnailDataFormatPNG: Int { get }
struct ScannerObjectInfo {
  var icaObject: ICAObject
  var reserved: UInt
  var icaObjectInfo: ICAObjectInfo
  var uniqueID: UInt32
  var uniqueIDFireWire: UInt64
  var thumbnailSize: UInt32
  var dataSize: UInt32
  var dataWidth: UInt32
  var dataHeight: UInt32
  var name: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var creationDate: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var flags: UInt32
  var privateData: Ptr
  var tag: UInt32
  init()
  init(icaObject: ICAObject, reserved: UInt, icaObjectInfo: ICAObjectInfo, uniqueID: UInt32, uniqueIDFireWire: UInt64, thumbnailSize: UInt32, dataSize: UInt32, dataWidth: UInt32, dataHeight: UInt32, name: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), creationDate: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), flags: UInt32, privateData: Ptr, tag: UInt32)
}
struct ICD_ScannerObjectSendMessagePB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var message: ICAMessage
  var totalDataSize: UInt32
  var result: UInt32
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, message: ICAMessage, totalDataSize: UInt32, result: UInt32)
}
struct ICD_ScannerOpenSessionPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID)
}
struct ICD_ScannerCloseSessionPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID)
}
struct ICD_ScannerInitializePB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID)
}
struct ICD_ScannerGetParametersPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}
struct ICD_ScannerSetParametersPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}
struct ICD_ScannerStatusPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  var status: UInt32
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID, status: UInt32)
}
struct ICD_ScannerStartPB {
  var header: ICDHeader
  var object: ICAObject
  var objectInfo: ICAObjectInfo
  var connectionID: ICAConnectionID
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICDHeader, object: ICAObject, objectInfo: ICAObjectInfo, connectionID: ICAConnectionID, sessionID: ICAScannerSessionID)
}
typealias __ICD_ScannerOpenUSBDevice = @convention(c) (UInt32, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenUSBDeviceWithIORegPath = @convention(c) (UInt32, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenFireWireDevice = @convention(c) (UInt64, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenFireWireDeviceWithIORegPath = @convention(c) (UInt64, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenBluetoothDevice = @convention(c) (CFDictionary!, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenTCPIPDevice = @convention(c) (CFDictionary!, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerOpenMassStorageDevice = @convention(c) (CFString!, DASession!, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerCloseDevice = @convention(c) (UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerPeriodicTask = @convention(c) (UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerGetObjectInfo = @convention(c) (UnsafePointer<ScannerObjectInfo>, UInt32, UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerCleanup = @convention(c) (UnsafeMutablePointer<ScannerObjectInfo>) -> ICAError
typealias __ICD_ScannerGetPropertyData = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<Void>) -> ICAError
typealias __ICD_ScannerSetPropertyData = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafePointer<Void>) -> ICAError
typealias __ICD_ScannerReadFileData = @convention(c) (UnsafePointer<ScannerObjectInfo>, UInt32, Ptr, UInt32, UnsafeMutablePointer<UInt32>) -> ICAError
typealias __ICD_ScannerWriteFileData = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafePointer<Int8>, UInt32, Ptr, UInt32, UnsafeMutablePointer<UInt32>) -> ICAError
typealias __ICD_ScannerSendMessage = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerObjectSendMessagePB>, ICDCompletion!) -> ICAError
typealias __ICD_ScannerAddPropertiesToCFDictionary = @convention(c) (UnsafeMutablePointer<ScannerObjectInfo>, CFMutableDictionary!) -> ICAError
typealias __ICD_ScannerOpenSession = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerOpenSessionPB>) -> ICAError
typealias __ICD_ScannerCloseSession = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerCloseSessionPB>) -> ICAError
typealias __ICD_ScannerInitialize = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerInitializePB>) -> ICAError
typealias __ICD_ScannerGetParameters = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerGetParametersPB>) -> ICAError
typealias __ICD_ScannerSetParameters = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerSetParametersPB>) -> ICAError
typealias __ICD_ScannerStatus = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerStatusPB>) -> ICAError
typealias __ICD_ScannerStart = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<ICD_ScannerStartPB>) -> ICAError
typealias __ICD_ScannerWriteDataToFile = @convention(c) (UnsafePointer<ScannerObjectInfo>, UnsafeMutablePointer<FILE>, UInt32, UnsafeMutablePointer<Int>) -> ICAError
typealias __ICD_ScannerWriteDataToFileDescriptor = @convention(c) (UnsafePointer<ScannerObjectInfo>, Int32, UInt32, UnsafeMutablePointer<Int>) -> ICAError
typealias __ICD_ScannerWriteDataToFileDescriptor64 = @convention(c) (UnsafePointer<ScannerObjectInfo>, Int32) -> ICAError
struct ICD_Scannerscanner_callback_functions {
  var f_ICD_ScannerOpenUSBDevice: __ICD_ScannerOpenUSBDevice!
  var f_ICD_ScannerOpenUSBDeviceWithIORegPath: __ICD_ScannerOpenUSBDeviceWithIORegPath!
  var f_ICD_ScannerCloseDevice: __ICD_ScannerCloseDevice!
  var f_ICD_ScannerPeriodicTask: __ICD_ScannerPeriodicTask!
  var f_ICD_ScannerGetObjectInfo: __ICD_ScannerGetObjectInfo!
  var f_ICD_ScannerCleanup: __ICD_ScannerCleanup!
  var f_ICD_ScannerGetPropertyData: __ICD_ScannerGetPropertyData!
  var f_ICD_ScannerSetPropertyData: __ICD_ScannerSetPropertyData!
  var f_ICD_ScannerReadFileData: __ICD_ScannerReadFileData!
  var f_ICD_ScannerWriteFileData: __ICD_ScannerWriteFileData!
  var f_ICD_ScannerSendMessage: __ICD_ScannerSendMessage!
  var f_ICD_ScannerAddPropertiesToCFDictionary: __ICD_ScannerAddPropertiesToCFDictionary!
  var f_ICD_ScannerOpenFireWireDevice: __ICD_ScannerOpenFireWireDevice!
  var f_ICD_ScannerOpenFireWireDeviceWithIORegPath: __ICD_ScannerOpenFireWireDeviceWithIORegPath!
  var f_ICD_ScannerOpenSession: __ICD_ScannerOpenSession!
  var f_ICD_ScannerCloseSession: __ICD_ScannerCloseSession!
  var f_ICD_ScannerInitialize: __ICD_ScannerInitialize!
  var f_ICD_ScannerGetParameters: __ICD_ScannerGetParameters!
  var f_ICD_ScannerSetParameters: __ICD_ScannerSetParameters!
  var f_ICD_ScannerStatus: __ICD_ScannerStatus!
  var f_ICD_ScannerStart: __ICD_ScannerStart!
  var f_ICD_ScannerOpenBluetoothDevice: __ICD_ScannerOpenBluetoothDevice!
  var f_ICD_ScannerOpenTCPIPDevice: __ICD_ScannerOpenTCPIPDevice!
  var f_ICD_ScannerWriteDataToFile: __ICD_ScannerWriteDataToFile!
  var f_ICD_ScannerOpenMassStorageDevice: __ICD_ScannerOpenMassStorageDevice!
  var f_ICD_ScannerWriteDataToFileDescriptor: __ICD_ScannerWriteDataToFileDescriptor!
  var f_ICD_ScannerWriteDataToFileDescriptor64: __ICD_ScannerWriteDataToFileDescriptor64!
  init()
  init(f_ICD_ScannerOpenUSBDevice: __ICD_ScannerOpenUSBDevice!, f_ICD_ScannerOpenUSBDeviceWithIORegPath: __ICD_ScannerOpenUSBDeviceWithIORegPath!, f_ICD_ScannerCloseDevice: __ICD_ScannerCloseDevice!, f_ICD_ScannerPeriodicTask: __ICD_ScannerPeriodicTask!, f_ICD_ScannerGetObjectInfo: __ICD_ScannerGetObjectInfo!, f_ICD_ScannerCleanup: __ICD_ScannerCleanup!, f_ICD_ScannerGetPropertyData: __ICD_ScannerGetPropertyData!, f_ICD_ScannerSetPropertyData: __ICD_ScannerSetPropertyData!, f_ICD_ScannerReadFileData: __ICD_ScannerReadFileData!, f_ICD_ScannerWriteFileData: __ICD_ScannerWriteFileData!, f_ICD_ScannerSendMessage: __ICD_ScannerSendMessage!, f_ICD_ScannerAddPropertiesToCFDictionary: __ICD_ScannerAddPropertiesToCFDictionary!, f_ICD_ScannerOpenFireWireDevice: __ICD_ScannerOpenFireWireDevice!, f_ICD_ScannerOpenFireWireDeviceWithIORegPath: __ICD_ScannerOpenFireWireDeviceWithIORegPath!, f_ICD_ScannerOpenSession: __ICD_ScannerOpenSession!, f_ICD_ScannerCloseSession: __ICD_ScannerCloseSession!, f_ICD_ScannerInitialize: __ICD_ScannerInitialize!, f_ICD_ScannerGetParameters: __ICD_ScannerGetParameters!, f_ICD_ScannerSetParameters: __ICD_ScannerSetParameters!, f_ICD_ScannerStatus: __ICD_ScannerStatus!, f_ICD_ScannerStart: __ICD_ScannerStart!, f_ICD_ScannerOpenBluetoothDevice: __ICD_ScannerOpenBluetoothDevice!, f_ICD_ScannerOpenTCPIPDevice: __ICD_ScannerOpenTCPIPDevice!, f_ICD_ScannerWriteDataToFile: __ICD_ScannerWriteDataToFile!, f_ICD_ScannerOpenMassStorageDevice: __ICD_ScannerOpenMassStorageDevice!, f_ICD_ScannerWriteDataToFileDescriptor: __ICD_ScannerWriteDataToFileDescriptor!, f_ICD_ScannerWriteDataToFileDescriptor64: __ICD_ScannerWriteDataToFileDescriptor64!)
}
typealias ICD_scanner_callback_functions = ICD_Scannerscanner_callback_functions
var gICDScannerCallbackFunctions: ICD_scanner_callback_functions
func ICD_ScannerMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func ICDScannerGetStandardPropertyData(objectInfo: UnsafePointer<ScannerObjectInfo>, _ pb: UnsafeMutablePointer<Void>) -> ICAError
func ICDScannerNewObjectInfoCreated(parentInfo: UnsafePointer<ScannerObjectInfo>, _ index: UInt32, _ newICAObject: UnsafeMutablePointer<ICAObject>) -> ICAError
func ICDScannerCopyDeviceInfoDictionary(deviceName: UnsafePointer<Int8>, _ theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> ICAError
func ICDScannerCreateEventDataCookie(object: ICAObject, _ cookie: UnsafeMutablePointer<ICAEventDataCookie>) -> ICAError
func ICDScannerConnectUSBDevice(locationID: UInt32) -> ICAError
func ICDScannerConnectUSBDeviceWithIORegPath(locationID: UInt32, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDScannerDisconnectUSBDevice(locationID: UInt32) -> ICAError
func ICDScannerDisconnectUSBDeviceWithIORegPath(locationID: UInt32, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDScannerConnectFWDevice(guid: UInt64) -> ICAError
func ICDScannerConnectFWDeviceWithIORegPath(guid: UInt64, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDScannerDisconnectFWDevice(guid: UInt64) -> ICAError
func ICDScannerDisconnectFWDeviceWithIORegPath(guid: UInt64, _ ioregPath: UnsafeMutablePointer<Int8>) -> ICAError
func ICDScannerConnectBluetoothDevice(params: CFDictionary!) -> ICAError
func ICDScannerDisconnectBluetoothDevice(params: CFDictionary!) -> ICAError
func ICDScannerConnectTCPIPDevice(params: CFDictionary!) -> ICAError
func ICDScannerDisconnectTCPIPDevice(params: CFDictionary!) -> ICAError
