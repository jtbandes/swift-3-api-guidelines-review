
let ICCameraDeviceCanTakePicture: String
let ICCameraDeviceCanTakePictureUsingShutterReleaseOnCamera: String
let ICCameraDeviceCanDeleteOneFile: String
let ICCameraDeviceCanDeleteAllFiles: String
let ICCameraDeviceCanSyncClock: String
let ICCameraDeviceCanReceiveFile: String
let ICCameraDeviceCanAcceptPTPCommands: String
let ICCameraDeviceSupportsFastPTP: String
let ICDownloadsDirectoryURL: String
let ICSaveAsFilename: String
let ICSavedFilename: String
let ICSavedAncillaryFiles: String
let ICOverwrite: String
let ICDeleteAfterSuccessfulDownload: String
let ICDownloadSidecarFiles: String
protocol ICCameraDeviceDelegate : ICDeviceDelegate {
  optional func cameraDevice(camera: ICCameraDevice, didAdd item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didAdd items: [ICCameraItem])
  optional func cameraDevice(camera: ICCameraDevice, didRemove item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didRemove items: [ICCameraItem])
  optional func cameraDevice(camera: ICCameraDevice, didRenameItems items: [ICCameraItem])
  optional func cameraDevice(scanner: ICCameraDevice, didCompleteDeleteFilesWithError error: Error?)
  optional func cameraDeviceDidChangeCapability(camera: ICCameraDevice)
  optional func cameraDevice(camera: ICCameraDevice, didReceiveThumbnailFor item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didReceiveMetadataFor item: ICCameraItem)
  optional func cameraDevice(camera: ICCameraDevice, didReceivePTPEvent eventData: Data)
  optional func deviceDidBecomeReadyWithCompleteContentCatalog(device: ICDevice)
  optional func cameraDevice(cameraDevice: ICCameraDevice, shouldGetThumbnailOf item: ICCameraItem) -> Bool
  optional func cameraDevice(cameraDevice: ICCameraDevice, shouldGetMetadataOf item: ICCameraItem) -> Bool
}
protocol ICCameraDeviceDownloadDelegate : ObjectProtocol {
  optional func didDownloadFile(file: ICCameraFile, error: Error?, options: [String : AnyObject]? = [:], contextInfo: UnsafeMutablePointer<Void>)
  optional func didReceiveDownloadProgressFor(file: ICCameraFile, downloadedBytes: off_t, maxBytes: off_t)
}
class ICCameraDevice : ICDevice {
  var batteryLevelAvailable: Bool { get }
  var batteryLevel: Int { get }
  var contentCatalogPercentCompleted: Int { get }
  var contents: [ICCameraItem]? { get }
  var mediaFiles: [ICCameraItem]? { get }
  var timeOffset: TimeInterval { get }
  var isAccessRestrictedAppleDevice: Bool { get }
  var mountPoint: String? { get }
  var tetheredCaptureEnabled: Bool
  func filesOfType(fileUTType: String) -> [String]
  func requestSyncClock()
  func requestEnableTethering()
  func requestDisableTethering()
  func requestTakePicture()
  func requestDeleteFiles(files: [ICCameraItem])
  func cancelDelete()
  func requestDownloadFile(file: ICCameraFile, options: [String : AnyObject]? = [:], downloadDelegate: ICCameraDeviceDownloadDelegate, didDownloadSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func cancelDownload()
  func requestUploadFile(fileURL: URL, options: [String : AnyObject]? = [:], uploadDelegate: AnyObject, didUploadSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func requestReadDataFrom(file: ICCameraFile, atOffset offset: off_t, length: off_t, readDelegate: AnyObject, didReadDataSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func requestSendPTPCommand(command: Data, outData data: Data, sendCommandDelegate: AnyObject, didSendCommand selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  init()
}
class ICCameraItem : Object {
  var device: ICCameraDevice { get }
  var parentFolder: ICCameraFolder { get }
  var name: String { get }
  var uti: String { get }
  var fileSystemPath: String { get }
  var isLocked: Bool { get }
  var isRaw: Bool { get }
  var isInTemporaryStore: Bool { get }
  var creationDate: Date { get }
  var modificationDate: Date { get }
  var thumbnailIfAvailable: CGImage? { get }
  var largeThumbnailIfAvailable: CGImage? { get }
  var metadataIfAvailable: [String : AnyObject]? { get }
  var userData: MutableDictionary? { get }
  var ptpObjectHandle: UInt32 { get }
  var wasAddedAfterContentCatalogCompleted: Bool { get }
  init()
}
class ICCameraFolder : ICCameraItem {
  var contents: [ICCameraItem] { get }
  init()
}
class ICCameraFile : ICCameraItem {
  var fileSize: off_t { get }
  var orientation: ICEXIFOrientationType
  var duration: Double { get }
  var sidecarFiles: [ICCameraItem] { get }
  init()
}
enum ICEXIFOrientationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Orientation1
  case Orientation2
  case Orientation3
  case Orientation4
  case Orientation5
  case Orientation6
  case Orientation7
  case Orientation8
}
enum ICReturnCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case InvalidParam
  case CommunicationTimedOut
  case ScanOperationCanceled
  case ScannerInUseByLocalUser
  case ScannerInUseByRemoteUser
  case DeviceFailedToOpenSession
  case DeviceFailedToCloseSession
  case ScannerFailedToSelectFunctionalUnit
  case ScannerFailedToCompleteOverviewScan
  case ScannerFailedToCompleteScan
  case ReceivedUnsolicitedScannerStatusInfo
  case ReceivedUnsolicitedScannerErrorInfo
  case DownloadFailed
  case UploadFailed
  case FailedToCompletePassThroughCommand
  case DownloadCanceled
  case FailedToEnabeTethering
  case FailedToDisabeTethering
  case FailedToCompleteSendMessageRequest
  case DeleteFilesFailed
  case DeleteFilesCanceled
  case DeviceIsPasscodeLocked
  case DeviceFailedToTakePicture
  case DeviceSoftwareNotInstalled
  case DeviceSoftwareIsBeingInstalled
  case DeviceSoftwareInstallationCompleted
  case DeviceSoftwareInstallationCanceled
  case DeviceSoftwareInstallationFailed
  case DeviceSoftwareNotAvailable
  case DeviceCouldNotPair
  case DeviceCouldNotUnpair
  case DeviceNeedsCredentials
}
enum ICDeviceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Camera
  case Scanner
}
enum ICDeviceLocationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Local
  case Shared
  case Bonjour
  case Bluetooth
}
enum ICDeviceTypeMask : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Camera
  case Scanner
}
enum ICDeviceLocationTypeMask : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Local
  case Shared
  case Bonjour
  case Bluetooth
  case Remote
}
let ICTransportTypeUSB: String
let ICTransportTypeFireWire: String
let ICTransportTypeBluetooth: String
let ICTransportTypeTCPIP: String
let ICTransportTypeMassStorage: String
let ICDeviceLocationDescriptionUSB: String
let ICDeviceLocationDescriptionFireWire: String
let ICDeviceLocationDescriptionBluetooth: String
let ICDeviceLocationDescriptionMassStorage: String
let ICButtonTypeScan: String
let ICButtonTypeMail: String
let ICButtonTypeCopy: String
let ICButtonTypeWeb: String
let ICButtonTypePrint: String
let ICButtonTypeTransfer: String
let ICStatusNotificationKey: String
let ICStatusCodeKey: String
let ICLocalizedStatusNotificationKey: String
let ICDeviceCanEjectOrDisconnect: String
protocol ICDeviceDelegate : ObjectProtocol {
  func didRemove(device: ICDevice)
  optional func device(device: ICDevice, didOpenSessionWithError error: Error?)
  optional func deviceDidBecomeReady(device: ICDevice)
  optional func device(device: ICDevice, didCloseSessionWithError error: Error?)
  optional func deviceDidChangeName(device: ICDevice)
  optional func deviceDidChangeSharingState(device: ICDevice)
  optional func device(device: ICDevice, didReceiveStatusInformation status: [String : AnyObject])
  optional func device(device: ICDevice, didEncounterError error: Error?)
  optional func device(device: ICDevice, didReceiveButtonPress buttonType: String)
  optional func device(device: ICDevice, didReceiveCustomNotification notification: [String : AnyObject], data: Data)
}
class ICDevice : Object {
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceDelegate?
  var type: ICDeviceType { get }
  var name: String? { get }
  var icon: CGImage? { get }
  var capabilities: [String] { get }
  var modulePath: String { get }
  var moduleVersion: String { get }
  var moduleExecutableArchitecture: Int32 { get }
  var isRemote: Bool { get }
  var isShared: Bool { get }
  var hasConfigurableWiFiInterface: Bool { get }
  var transportType: String { get }
  var usbLocationID: Int32 { get }
  var usbProductID: Int32 { get }
  var usbVendorID: Int32 { get }
  var fwGUID: Int64 { get }
  var serialNumberString: String? { get }
  var locationDescription: String? { get }
  var hasOpenSession: Bool { get }
  var uuidString: String? { get }
  var persistentIDString: String? { get }
  var buttonPressed: String { get }
  var autolaunchApplicationPath: String?
  var userData: MutableDictionary? { get }
  func requestOpenSession()
  func requestCloseSession()
  func requestYield()
  func requestSendMessage(messageCode: UInt32, outData data: Data, maxReturnedDataSize: UInt32, sendMessageDelegate: AnyObject, didSendMessageSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func requestEjectOrDisconnect()
  init()
}
protocol ICDeviceBrowserDelegate : ObjectProtocol {
  func deviceBrowser(browser: ICDeviceBrowser, didAdd device: ICDevice, moreComing: Bool)
  func deviceBrowser(browser: ICDeviceBrowser, didRemove device: ICDevice, moreGoing: Bool)
  optional func deviceBrowser(browser: ICDeviceBrowser, deviceDidChangeName device: ICDevice)
  optional func deviceBrowser(browser: ICDeviceBrowser, deviceDidChangeSharingState device: ICDevice)
  optional func deviceBrowser(browser: ICDeviceBrowser, requestsSelect device: ICDevice)
  optional func deviceBrowserDidEnumerateLocalDevices(browser: ICDeviceBrowser)
}
class ICDeviceBrowser : Object {
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceBrowserDelegate?
  var isBrowsing: Bool { get }
  var browsedDeviceTypeMask: ICDeviceTypeMask
  var devices: [ICDevice]? { get }
  func preferredDevice() -> ICDevice
  init()
  func start()
  func stop()
}
class ICScannerBandData : Object {
  var fullImageWidth: Int { get }
  var fullImageHeight: Int { get }
  var bitsPerPixel: Int { get }
  var bitsPerComponent: Int { get }
  var numComponents: Int { get }
  var isBigEndian: Bool { get }
  var pixelDataType: ICScannerPixelDataType { get }
  var colorSyncProfilePath: String? { get }
  var bytesPerRow: Int { get }
  var dataStartRow: Int { get }
  var dataNumRows: Int { get }
  var dataSize: Int { get }
  var dataBuffer: Data? { get }
  init()
}
let ICScannerStatusWarmingUp: String
let ICScannerStatusWarmUpDone: String
let ICScannerStatusRequestsOverviewScan: String
enum ICScannerTransferMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case FileBased
  case MemoryBased
}
protocol ICScannerDeviceDelegate : ICDeviceDelegate {
  optional func scannerDeviceDidBecomeAvailable(scanner: ICScannerDevice)
  optional func scannerDevice(scanner: ICScannerDevice, didSelect functionalUnit: ICScannerFunctionalUnit, error: Error?)
  optional func scannerDevice(scanner: ICScannerDevice, didScanTo url: URL)
  optional func scannerDevice(scanner: ICScannerDevice, didScanTo data: ICScannerBandData)
  optional func scannerDevice(scanner: ICScannerDevice, didCompleteOverviewScanWithError error: Error?)
  optional func scannerDevice(scanner: ICScannerDevice, didCompleteScanWithError error: Error?)
}
class ICScannerDevice : ICDevice {
  var availableFunctionalUnitTypes: [Number] { get }
  var selectedFunctionalUnit: ICScannerFunctionalUnit { get }
  var transferMode: ICScannerTransferMode
  var maxMemoryBandSize: UInt32
  var downloadsDirectory: URL
  var documentName: String
  var documentUTI: String
  func requestSelect(type: ICScannerFunctionalUnitType)
  func requestOverviewScan()
  func requestScan()
  func cancelScan()
  init()
}
enum ICScannerFunctionalUnitType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Flatbed
  case PositiveTransparency
  case NegativeTransparency
  case DocumentFeeder
}
enum ICScannerMeasurementUnit : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Inches
  case Centimeters
  case Picas
  case Points
  case Twips
  case Pixels
}
enum ICScannerBitDepth : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Depth1Bit
  case Depth8Bits
  case Depth16Bits
}
enum ICScannerColorDataFormatType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Chunky
  case Planar
}
enum ICScannerPixelDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BW
  case Gray
  case RGB
  case Palette
  case CMY
  case CMYK
  case YUV
  case YUVK
  case CIEXYZ
}
enum ICScannerDocumentType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TypeDefault
  case TypeA4
  case TypeB5
  case TypeUSLetter
  case TypeUSLegal
  case TypeA5
  case TypeISOB4
  case TypeISOB6
  case TypeUSLedger
  case TypeUSExecutive
  case TypeA3
  case TypeISOB3
  case TypeA6
  case TypeC4
  case TypeC5
  case TypeC6
  case Type4A0
  case Type2A0
  case TypeA0
  case TypeA1
  case TypeA2
  case TypeA7
  case TypeA8
  case TypeA9
  case Type10
  case TypeISOB0
  case TypeISOB1
  case TypeISOB2
  case TypeISOB5
  case TypeISOB7
  case TypeISOB8
  case TypeISOB9
  case TypeISOB10
  case TypeJISB0
  case TypeJISB1
  case TypeJISB2
  case TypeJISB3
  case TypeJISB4
  case TypeJISB6
  case TypeJISB7
  case TypeJISB8
  case TypeJISB9
  case TypeJISB10
  case TypeC0
  case TypeC1
  case TypeC2
  case TypeC3
  case TypeC7
  case TypeC8
  case TypeC9
  case TypeC10
  case TypeUSStatement
  case TypeBusinessCard
  case TypeE
  case Type3R
  case Type4R
  case Type5R
  case Type6R
  case Type8R
  case TypeS8R
  case Type10R
  case TypeS10R
  case Type11R
  case Type12R
  case TypeS12R
  case Type110
  case TypeAPSH
  case TypeAPSC
  case TypeAPSP
  case Type135
  case TypeMF
  case TypeLF
}
enum ICScannerFunctionalUnitState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Ready
  case ScanInProgress
  case OverviewScanInProgress
}
enum ICScannerFeatureType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Enumeration
  case Range
  case Boolean
  case Template
}
class ICScannerFeature : Object {
  var type: ICScannerFeatureType { get }
  var internalName: String? { get }
  var humanReadableName: String? { get }
  var tooltip: String? { get }
  init()
}
class ICScannerFeatureEnumeration : ICScannerFeature {
  unowned(unsafe) var currentValue: @sil_unmanaged AnyObject
  var defaultValue: AnyObject { get }
  var values: [Number] { get }
  var menuItemLabels: [String] { get }
  var menuItemLabelsTooltips: [String] { get }
  init()
}
class ICScannerFeatureRange : ICScannerFeature {
  var currentValue: CGFloat
  var defaultValue: CGFloat { get }
  var minValue: CGFloat { get }
  var maxValue: CGFloat { get }
  var stepSize: CGFloat { get }
  init()
}
class ICScannerFeatureBoolean : ICScannerFeature {
  var value: Bool
  init()
}
class ICScannerFeatureTemplate : ICScannerFeature {
  var targets: [MutableArray] { get }
  init()
}
class ICScannerFunctionalUnit : Object {
  var type: ICScannerFunctionalUnitType { get }
  var pixelDataType: ICScannerPixelDataType
  var supportedBitDepths: IndexSet { get }
  var bitDepth: ICScannerBitDepth
  var supportedMeasurementUnits: IndexSet { get }
  var measurementUnit: ICScannerMeasurementUnit
  var supportedResolutions: IndexSet { get }
  var preferredResolutions: IndexSet { get }
  var resolution: Int
  var nativeXResolution: Int { get }
  var nativeYResolution: Int { get }
  var supportedScaleFactors: IndexSet { get }
  var preferredScaleFactors: IndexSet { get }
  var scaleFactor: Int
  var templates: [ICScannerFeatureTemplate] { get }
  var vendorFeatures: [ICScannerFeature]? { get }
  var physicalSize: Size { get }
  var scanArea: Rect
  var scanAreaOrientation: ICEXIFOrientationType
  var acceptsThresholdForBlackAndWhiteScanning: Bool { get }
  var usesThresholdForBlackAndWhiteScanning: Bool
  var defaultThresholdForBlackAndWhiteScanning: UInt8 { get }
  var thresholdForBlackAndWhiteScanning: UInt8
  var state: ICScannerFunctionalUnitState { get }
  var scanInProgress: Bool { get }
  var scanProgressPercentDone: CGFloat { get }
  var canPerformOverviewScan: Bool { get }
  var overviewScanInProgress: Bool { get }
  var overviewImage: CGImage? { get }
  var overviewResolution: Int
  init()
}
class ICScannerFunctionalUnitFlatbed : ICScannerFunctionalUnit {
  var supportedDocumentTypes: IndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: Size { get }
  init()
}
class ICScannerFunctionalUnitPositiveTransparency : ICScannerFunctionalUnit {
  var supportedDocumentTypes: IndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: Size { get }
  init()
}
class ICScannerFunctionalUnitNegativeTransparency : ICScannerFunctionalUnit {
  var supportedDocumentTypes: IndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: Size { get }
  init()
}
class ICScannerFunctionalUnitDocumentFeeder : ICScannerFunctionalUnit {
  var supportedDocumentTypes: IndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: Size { get }
  var supportsDuplexScanning: Bool { get }
  var duplexScanningEnabled: Bool
  var documentLoaded: Bool { get }
  var oddPageOrientation: ICEXIFOrientationType
  var evenPageOrientation: ICEXIFOrientationType
  var reverseFeederPageOrder: Bool { get }
  init()
}
