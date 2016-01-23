
class CGImageDestination {
}
typealias CGImageDestinationRef = CGImageDestination
let kCGImageDestinationLossyCompressionQuality: CFString
let kCGImageDestinationBackgroundColor: CFString
let kCGImageDestinationImageMaxPixelSize: CFString
let kCGImageDestinationEmbedThumbnail: CFString
func CGImageDestinationGetTypeID() -> CFTypeID
func CGImageDestinationCopyTypeIdentifiers() -> CFArray
func CGImageDestinationCreateWithDataConsumer(consumer: CGDataConsumer, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
func CGImageDestinationCreateWithData(data: CFMutableData, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
func CGImageDestinationCreateWithURL(url: CFURL, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
func CGImageDestinationSetProperties(idst: CGImageDestination, _ properties: CFDictionary?)
func CGImageDestinationAddImage(idst: CGImageDestination, _ image: CGImage, _ properties: CFDictionary?)
func CGImageDestinationAddImageFromSource(idst: CGImageDestination, _ isrc: CGImageSource, _ index: Int, _ properties: CFDictionary?)
func CGImageDestinationFinalize(idst: CGImageDestination) -> Bool
func CGImageDestinationAddImageAndMetadata(idst: CGImageDestination, _ image: CGImage, _ metadata: CGImageMetadata?, _ options: CFDictionary?)
let kCGImageDestinationMetadata: CFString
let kCGImageDestinationMergeMetadata: CFString
let kCGImageMetadataShouldExcludeXMP: CFString
let kCGImageMetadataShouldExcludeGPS: CFString
let kCGImageDestinationDateTime: CFString
let kCGImageDestinationOrientation: CFString
func CGImageDestinationCopyImageSource(idst: CGImageDestination, _ isrc: CGImageSource, _ options: CFDictionary?, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
class CGImageMetadata {
}
typealias CGImageMetadataRef = CGImageMetadata
//
func CGImageMetadataGetTypeID() -> CFTypeID
typealias CGMutableImageMetadataRef = CGMutableImageMetadata
class CGMutableImageMetadata {
}
func CGImageMetadataCreateMutable() -> CGMutableImageMetadata
func CGImageMetadataCreateMutableCopy(metadata: CGImageMetadata) -> CGMutableImageMetadata?
typealias CGImageMetadataTagRef = CGImageMetadataTag
class CGImageMetadataTag {
}
//
func CGImageMetadataTagGetTypeID() -> CFTypeID
let kCGImageMetadataNamespaceExif: CFString
let kCGImageMetadataNamespaceExifAux: CFString
let kCGImageMetadataNamespaceExifEX: CFString
let kCGImageMetadataNamespaceDublinCore: CFString
let kCGImageMetadataNamespaceIPTCCore: CFString
let kCGImageMetadataNamespacePhotoshop: CFString
let kCGImageMetadataNamespaceTIFF: CFString
let kCGImageMetadataNamespaceXMPBasic: CFString
let kCGImageMetadataNamespaceXMPRights: CFString
let kCGImageMetadataPrefixExif: CFString
let kCGImageMetadataPrefixExifAux: CFString
let kCGImageMetadataPrefixExifEX: CFString
let kCGImageMetadataPrefixDublinCore: CFString
let kCGImageMetadataPrefixIPTCCore: CFString
let kCGImageMetadataPrefixPhotoshop: CFString
let kCGImageMetadataPrefixTIFF: CFString
let kCGImageMetadataPrefixXMPBasic: CFString
let kCGImageMetadataPrefixXMPRights: CFString
enum CGImageMetadataType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Invalid
  case Default
  case String
  case ArrayUnordered
  case ArrayOrdered
  case AlternateArray
  case AlternateText
  case Structure
}
func CGImageMetadataTagCreate(xmlns: CFString, _ prefix: CFString?, _ name: CFString, _ type: CGImageMetadataType, _ value: AnyObject) -> CGImageMetadataTag?
//
func CGImageMetadataTagCopyNamespace(tag: CGImageMetadataTag) -> CFString?
func CGImageMetadataTagCopyPrefix(tag: CGImageMetadataTag) -> CFString?
func CGImageMetadataTagCopyName(tag: CGImageMetadataTag) -> CFString?
func CGImageMetadataTagCopyValue(tag: CGImageMetadataTag) -> AnyObject?
func CGImageMetadataTagGetType(tag: CGImageMetadataTag) -> CGImageMetadataType
func CGImageMetadataTagCopyQualifiers(tag: CGImageMetadataTag) -> CFArray?
//
func CGImageMetadataCopyTags(metadata: CGImageMetadata) -> CFArray?
func CGImageMetadataCopyTagWithPath(metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CGImageMetadataTag?
func CGImageMetadataCopyStringValueWithPath(metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CFString?
//
func CGImageMetadataRegisterNamespaceForPrefix(metadata: CGMutableImageMetadata, _ xmlns: CFString, _ prefix: CFString, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CGImageMetadataSetTagWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ tag: CGImageMetadataTag) -> Bool
func CGImageMetadataSetValueWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ value: AnyObject) -> Bool
func CGImageMetadataRemoveTagWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> Bool
//
typealias CGImageMetadataTagBlock = (CFString, CGImageMetadataTag) -> Bool
func CGImageMetadataEnumerateTagsUsingBlock(metadata: CGImageMetadata, _ rootPath: CFString?, _ options: CFDictionary?, _ block: CGImageMetadataTagBlock)
let kCGImageMetadataEnumerateRecursively: CFString
//
func CGImageMetadataCopyTagMatchingImageProperty(metadata: CGImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString) -> CGImageMetadataTag?
func CGImageMetadataSetValueMatchingImageProperty(metadata: CGMutableImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString, _ value: AnyObject) -> Bool
func CGImageMetadataCreateXMPData(metadata: CGImageMetadata, _ options: CFDictionary?) -> CFData?
func CGImageMetadataCreateFromXMPData(data: CFData) -> CGImageMetadata?
let kCFErrorDomainCGImageMetadata: CFString
enum CGImageMetadataErrors : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case UnsupportedFormat
  case BadArgument
  case ConflictingArguments
  case PrefixConflict
}
let kCGImagePropertyTIFFDictionary: CFString
let kCGImagePropertyGIFDictionary: CFString
let kCGImagePropertyJFIFDictionary: CFString
let kCGImagePropertyExifDictionary: CFString
let kCGImagePropertyPNGDictionary: CFString
let kCGImagePropertyIPTCDictionary: CFString
let kCGImagePropertyGPSDictionary: CFString
let kCGImagePropertyRawDictionary: CFString
let kCGImagePropertyCIFFDictionary: CFString
let kCGImagePropertyMakerCanonDictionary: CFString
let kCGImagePropertyMakerNikonDictionary: CFString
let kCGImagePropertyMakerMinoltaDictionary: CFString
let kCGImagePropertyMakerFujiDictionary: CFString
let kCGImagePropertyMakerOlympusDictionary: CFString
let kCGImagePropertyMakerPentaxDictionary: CFString
let kCGImageProperty8BIMDictionary: CFString
let kCGImagePropertyDNGDictionary: CFString
let kCGImagePropertyExifAuxDictionary: CFString
let kCGImagePropertyMakerAppleDictionary: CFString
let kCGImagePropertyFileSize: CFString
let kCGImagePropertyPixelHeight: CFString
let kCGImagePropertyPixelWidth: CFString
let kCGImagePropertyDPIHeight: CFString
let kCGImagePropertyDPIWidth: CFString
let kCGImagePropertyDepth: CFString
let kCGImagePropertyOrientation: CFString
let kCGImagePropertyIsFloat: CFString
let kCGImagePropertyIsIndexed: CFString
let kCGImagePropertyHasAlpha: CFString
let kCGImagePropertyColorModel: CFString
let kCGImagePropertyProfileName: CFString
let kCGImagePropertyColorModelRGB: CFString
let kCGImagePropertyColorModelGray: CFString
let kCGImagePropertyColorModelCMYK: CFString
let kCGImagePropertyColorModelLab: CFString
let kCGImagePropertyTIFFCompression: CFString
let kCGImagePropertyTIFFPhotometricInterpretation: CFString
let kCGImagePropertyTIFFDocumentName: CFString
let kCGImagePropertyTIFFImageDescription: CFString
let kCGImagePropertyTIFFMake: CFString
let kCGImagePropertyTIFFModel: CFString
let kCGImagePropertyTIFFOrientation: CFString
let kCGImagePropertyTIFFXResolution: CFString
let kCGImagePropertyTIFFYResolution: CFString
let kCGImagePropertyTIFFResolutionUnit: CFString
let kCGImagePropertyTIFFSoftware: CFString
let kCGImagePropertyTIFFTransferFunction: CFString
let kCGImagePropertyTIFFDateTime: CFString
let kCGImagePropertyTIFFArtist: CFString
let kCGImagePropertyTIFFHostComputer: CFString
let kCGImagePropertyTIFFCopyright: CFString
let kCGImagePropertyTIFFWhitePoint: CFString
let kCGImagePropertyTIFFPrimaryChromaticities: CFString
let kCGImagePropertyTIFFTileWidth: CFString
let kCGImagePropertyTIFFTileLength: CFString
let kCGImagePropertyJFIFVersion: CFString
let kCGImagePropertyJFIFXDensity: CFString
let kCGImagePropertyJFIFYDensity: CFString
let kCGImagePropertyJFIFDensityUnit: CFString
let kCGImagePropertyJFIFIsProgressive: CFString
let kCGImagePropertyExifExposureTime: CFString
let kCGImagePropertyExifFNumber: CFString
let kCGImagePropertyExifExposureProgram: CFString
let kCGImagePropertyExifSpectralSensitivity: CFString
let kCGImagePropertyExifISOSpeedRatings: CFString
let kCGImagePropertyExifOECF: CFString
let kCGImagePropertyExifSensitivityType: CFString
let kCGImagePropertyExifStandardOutputSensitivity: CFString
let kCGImagePropertyExifRecommendedExposureIndex: CFString
let kCGImagePropertyExifISOSpeed: CFString
let kCGImagePropertyExifISOSpeedLatitudeyyy: CFString
let kCGImagePropertyExifISOSpeedLatitudezzz: CFString
let kCGImagePropertyExifVersion: CFString
let kCGImagePropertyExifDateTimeOriginal: CFString
let kCGImagePropertyExifDateTimeDigitized: CFString
let kCGImagePropertyExifComponentsConfiguration: CFString
let kCGImagePropertyExifCompressedBitsPerPixel: CFString
let kCGImagePropertyExifShutterSpeedValue: CFString
let kCGImagePropertyExifApertureValue: CFString
let kCGImagePropertyExifBrightnessValue: CFString
let kCGImagePropertyExifExposureBiasValue: CFString
let kCGImagePropertyExifMaxApertureValue: CFString
let kCGImagePropertyExifSubjectDistance: CFString
let kCGImagePropertyExifMeteringMode: CFString
let kCGImagePropertyExifLightSource: CFString
let kCGImagePropertyExifFlash: CFString
let kCGImagePropertyExifFocalLength: CFString
let kCGImagePropertyExifSubjectArea: CFString
let kCGImagePropertyExifMakerNote: CFString
let kCGImagePropertyExifUserComment: CFString
let kCGImagePropertyExifSubsecTime: CFString
let kCGImagePropertyExifSubsecTimeOriginal: CFString
let kCGImagePropertyExifSubsecTimeDigitized: CFString
let kCGImagePropertyExifFlashPixVersion: CFString
let kCGImagePropertyExifColorSpace: CFString
let kCGImagePropertyExifPixelXDimension: CFString
let kCGImagePropertyExifPixelYDimension: CFString
let kCGImagePropertyExifRelatedSoundFile: CFString
let kCGImagePropertyExifFlashEnergy: CFString
let kCGImagePropertyExifSpatialFrequencyResponse: CFString
let kCGImagePropertyExifFocalPlaneXResolution: CFString
let kCGImagePropertyExifFocalPlaneYResolution: CFString
let kCGImagePropertyExifFocalPlaneResolutionUnit: CFString
let kCGImagePropertyExifSubjectLocation: CFString
let kCGImagePropertyExifExposureIndex: CFString
let kCGImagePropertyExifSensingMethod: CFString
let kCGImagePropertyExifFileSource: CFString
let kCGImagePropertyExifSceneType: CFString
let kCGImagePropertyExifCFAPattern: CFString
let kCGImagePropertyExifCustomRendered: CFString
let kCGImagePropertyExifExposureMode: CFString
let kCGImagePropertyExifWhiteBalance: CFString
let kCGImagePropertyExifDigitalZoomRatio: CFString
let kCGImagePropertyExifFocalLenIn35mmFilm: CFString
let kCGImagePropertyExifSceneCaptureType: CFString
let kCGImagePropertyExifGainControl: CFString
let kCGImagePropertyExifContrast: CFString
let kCGImagePropertyExifSaturation: CFString
let kCGImagePropertyExifSharpness: CFString
let kCGImagePropertyExifDeviceSettingDescription: CFString
let kCGImagePropertyExifSubjectDistRange: CFString
let kCGImagePropertyExifImageUniqueID: CFString
let kCGImagePropertyExifCameraOwnerName: CFString
let kCGImagePropertyExifBodySerialNumber: CFString
let kCGImagePropertyExifLensSpecification: CFString
let kCGImagePropertyExifLensMake: CFString
let kCGImagePropertyExifLensModel: CFString
let kCGImagePropertyExifLensSerialNumber: CFString
let kCGImagePropertyExifGamma: CFString
let kCGImagePropertyExifSubsecTimeOrginal: CFString
let kCGImagePropertyExifAuxLensInfo: CFString
let kCGImagePropertyExifAuxLensModel: CFString
let kCGImagePropertyExifAuxSerialNumber: CFString
let kCGImagePropertyExifAuxLensID: CFString
let kCGImagePropertyExifAuxLensSerialNumber: CFString
let kCGImagePropertyExifAuxImageNumber: CFString
let kCGImagePropertyExifAuxFlashCompensation: CFString
let kCGImagePropertyExifAuxOwnerName: CFString
let kCGImagePropertyExifAuxFirmware: CFString
let kCGImagePropertyGIFLoopCount: CFString
let kCGImagePropertyGIFDelayTime: CFString
let kCGImagePropertyGIFImageColorMap: CFString
let kCGImagePropertyGIFHasGlobalColorMap: CFString
let kCGImagePropertyGIFUnclampedDelayTime: CFString
let kCGImagePropertyPNGGamma: CFString
let kCGImagePropertyPNGInterlaceType: CFString
let kCGImagePropertyPNGXPixelsPerMeter: CFString
let kCGImagePropertyPNGYPixelsPerMeter: CFString
let kCGImagePropertyPNGsRGBIntent: CFString
let kCGImagePropertyPNGChromaticities: CFString
let kCGImagePropertyPNGAuthor: CFString
let kCGImagePropertyPNGCopyright: CFString
let kCGImagePropertyPNGCreationTime: CFString
let kCGImagePropertyPNGDescription: CFString
let kCGImagePropertyPNGModificationTime: CFString
let kCGImagePropertyPNGSoftware: CFString
let kCGImagePropertyPNGTitle: CFString
let kCGImagePropertyAPNGLoopCount: CFString
let kCGImagePropertyAPNGDelayTime: CFString
let kCGImagePropertyAPNGUnclampedDelayTime: CFString
let kCGImagePropertyGPSVersion: CFString
let kCGImagePropertyGPSLatitudeRef: CFString
let kCGImagePropertyGPSLatitude: CFString
let kCGImagePropertyGPSLongitudeRef: CFString
let kCGImagePropertyGPSLongitude: CFString
let kCGImagePropertyGPSAltitudeRef: CFString
let kCGImagePropertyGPSAltitude: CFString
let kCGImagePropertyGPSTimeStamp: CFString
let kCGImagePropertyGPSSatellites: CFString
let kCGImagePropertyGPSStatus: CFString
let kCGImagePropertyGPSMeasureMode: CFString
let kCGImagePropertyGPSDOP: CFString
let kCGImagePropertyGPSSpeedRef: CFString
let kCGImagePropertyGPSSpeed: CFString
let kCGImagePropertyGPSTrackRef: CFString
let kCGImagePropertyGPSTrack: CFString
let kCGImagePropertyGPSImgDirectionRef: CFString
let kCGImagePropertyGPSImgDirection: CFString
let kCGImagePropertyGPSMapDatum: CFString
let kCGImagePropertyGPSDestLatitudeRef: CFString
let kCGImagePropertyGPSDestLatitude: CFString
let kCGImagePropertyGPSDestLongitudeRef: CFString
let kCGImagePropertyGPSDestLongitude: CFString
let kCGImagePropertyGPSDestBearingRef: CFString
let kCGImagePropertyGPSDestBearing: CFString
let kCGImagePropertyGPSDestDistanceRef: CFString
let kCGImagePropertyGPSDestDistance: CFString
let kCGImagePropertyGPSProcessingMethod: CFString
let kCGImagePropertyGPSAreaInformation: CFString
let kCGImagePropertyGPSDateStamp: CFString
let kCGImagePropertyGPSDifferental: CFString
let kCGImagePropertyGPSHPositioningError: CFString
let kCGImagePropertyIPTCObjectTypeReference: CFString
let kCGImagePropertyIPTCObjectAttributeReference: CFString
let kCGImagePropertyIPTCObjectName: CFString
let kCGImagePropertyIPTCEditStatus: CFString
let kCGImagePropertyIPTCEditorialUpdate: CFString
let kCGImagePropertyIPTCUrgency: CFString
let kCGImagePropertyIPTCSubjectReference: CFString
let kCGImagePropertyIPTCCategory: CFString
let kCGImagePropertyIPTCSupplementalCategory: CFString
let kCGImagePropertyIPTCFixtureIdentifier: CFString
let kCGImagePropertyIPTCKeywords: CFString
let kCGImagePropertyIPTCContentLocationCode: CFString
let kCGImagePropertyIPTCContentLocationName: CFString
let kCGImagePropertyIPTCReleaseDate: CFString
let kCGImagePropertyIPTCReleaseTime: CFString
let kCGImagePropertyIPTCExpirationDate: CFString
let kCGImagePropertyIPTCExpirationTime: CFString
let kCGImagePropertyIPTCSpecialInstructions: CFString
let kCGImagePropertyIPTCActionAdvised: CFString
let kCGImagePropertyIPTCReferenceService: CFString
let kCGImagePropertyIPTCReferenceDate: CFString
let kCGImagePropertyIPTCReferenceNumber: CFString
let kCGImagePropertyIPTCDateCreated: CFString
let kCGImagePropertyIPTCTimeCreated: CFString
let kCGImagePropertyIPTCDigitalCreationDate: CFString
let kCGImagePropertyIPTCDigitalCreationTime: CFString
let kCGImagePropertyIPTCOriginatingProgram: CFString
let kCGImagePropertyIPTCProgramVersion: CFString
let kCGImagePropertyIPTCObjectCycle: CFString
let kCGImagePropertyIPTCByline: CFString
let kCGImagePropertyIPTCBylineTitle: CFString
let kCGImagePropertyIPTCCity: CFString
let kCGImagePropertyIPTCSubLocation: CFString
let kCGImagePropertyIPTCProvinceState: CFString
let kCGImagePropertyIPTCCountryPrimaryLocationCode: CFString
let kCGImagePropertyIPTCCountryPrimaryLocationName: CFString
let kCGImagePropertyIPTCOriginalTransmissionReference: CFString
let kCGImagePropertyIPTCHeadline: CFString
let kCGImagePropertyIPTCCredit: CFString
let kCGImagePropertyIPTCSource: CFString
let kCGImagePropertyIPTCCopyrightNotice: CFString
let kCGImagePropertyIPTCContact: CFString
let kCGImagePropertyIPTCCaptionAbstract: CFString
let kCGImagePropertyIPTCWriterEditor: CFString
let kCGImagePropertyIPTCImageType: CFString
let kCGImagePropertyIPTCImageOrientation: CFString
let kCGImagePropertyIPTCLanguageIdentifier: CFString
let kCGImagePropertyIPTCStarRating: CFString
let kCGImagePropertyIPTCCreatorContactInfo: CFString
let kCGImagePropertyIPTCRightsUsageTerms: CFString
let kCGImagePropertyIPTCScene: CFString
let kCGImagePropertyIPTCContactInfoCity: CFString
let kCGImagePropertyIPTCContactInfoCountry: CFString
let kCGImagePropertyIPTCContactInfoAddress: CFString
let kCGImagePropertyIPTCContactInfoPostalCode: CFString
let kCGImagePropertyIPTCContactInfoStateProvince: CFString
let kCGImagePropertyIPTCContactInfoEmails: CFString
let kCGImagePropertyIPTCContactInfoPhones: CFString
let kCGImagePropertyIPTCContactInfoWebURLs: CFString
let kCGImageProperty8BIMLayerNames: CFString
let kCGImageProperty8BIMVersion: CFString
let kCGImagePropertyDNGVersion: CFString
let kCGImagePropertyDNGBackwardVersion: CFString
let kCGImagePropertyDNGUniqueCameraModel: CFString
let kCGImagePropertyDNGLocalizedCameraModel: CFString
let kCGImagePropertyDNGCameraSerialNumber: CFString
let kCGImagePropertyDNGLensInfo: CFString
let kCGImagePropertyCIFFDescription: CFString
let kCGImagePropertyCIFFFirmware: CFString
let kCGImagePropertyCIFFOwnerName: CFString
let kCGImagePropertyCIFFImageName: CFString
let kCGImagePropertyCIFFImageFileName: CFString
let kCGImagePropertyCIFFReleaseMethod: CFString
let kCGImagePropertyCIFFReleaseTiming: CFString
let kCGImagePropertyCIFFRecordID: CFString
let kCGImagePropertyCIFFSelfTimingTime: CFString
let kCGImagePropertyCIFFCameraSerialNumber: CFString
let kCGImagePropertyCIFFImageSerialNumber: CFString
let kCGImagePropertyCIFFContinuousDrive: CFString
let kCGImagePropertyCIFFFocusMode: CFString
let kCGImagePropertyCIFFMeteringMode: CFString
let kCGImagePropertyCIFFShootingMode: CFString
let kCGImagePropertyCIFFLensModel: CFString
let kCGImagePropertyCIFFLensMaxMM: CFString
let kCGImagePropertyCIFFLensMinMM: CFString
let kCGImagePropertyCIFFWhiteBalanceIndex: CFString
let kCGImagePropertyCIFFFlashExposureComp: CFString
let kCGImagePropertyCIFFMeasuredEV: CFString
let kCGImagePropertyMakerNikonISOSetting: CFString
let kCGImagePropertyMakerNikonColorMode: CFString
let kCGImagePropertyMakerNikonQuality: CFString
let kCGImagePropertyMakerNikonWhiteBalanceMode: CFString
let kCGImagePropertyMakerNikonSharpenMode: CFString
let kCGImagePropertyMakerNikonFocusMode: CFString
let kCGImagePropertyMakerNikonFlashSetting: CFString
let kCGImagePropertyMakerNikonISOSelection: CFString
let kCGImagePropertyMakerNikonFlashExposureComp: CFString
let kCGImagePropertyMakerNikonImageAdjustment: CFString
let kCGImagePropertyMakerNikonLensAdapter: CFString
let kCGImagePropertyMakerNikonLensType: CFString
let kCGImagePropertyMakerNikonLensInfo: CFString
let kCGImagePropertyMakerNikonFocusDistance: CFString
let kCGImagePropertyMakerNikonDigitalZoom: CFString
let kCGImagePropertyMakerNikonShootingMode: CFString
let kCGImagePropertyMakerNikonCameraSerialNumber: CFString
let kCGImagePropertyMakerNikonShutterCount: CFString
let kCGImagePropertyMakerCanonOwnerName: CFString
let kCGImagePropertyMakerCanonCameraSerialNumber: CFString
let kCGImagePropertyMakerCanonImageSerialNumber: CFString
let kCGImagePropertyMakerCanonFlashExposureComp: CFString
let kCGImagePropertyMakerCanonContinuousDrive: CFString
let kCGImagePropertyMakerCanonLensModel: CFString
let kCGImagePropertyMakerCanonFirmware: CFString
let kCGImagePropertyMakerCanonAspectRatioInfo: CFString
enum CGImagePropertyOrientation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Up
  case UpMirrored
  case Down
  case DownMirrored
  case LeftMirrored
  case Right
  case RightMirrored
  case Left
}
let kCGImagePropertyPNGCompressionFilter: CFString
var IMAGEIO_PNG_NO_FILTERS: Int32 { get }
var IMAGEIO_PNG_FILTER_NONE: Int32 { get }
var IMAGEIO_PNG_FILTER_SUB: Int32 { get }
var IMAGEIO_PNG_FILTER_UP: Int32 { get }
var IMAGEIO_PNG_FILTER_AVG: Int32 { get }
var IMAGEIO_PNG_FILTER_PAETH: Int32 { get }
class CGImageSource {
}
typealias CGImageSourceRef = CGImageSource
enum CGImageSourceStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case StatusUnexpectedEOF
  case StatusInvalidData
  case StatusUnknownType
  case StatusReadingHeader
  case StatusIncomplete
  case StatusComplete
}
let kCGImageSourceTypeIdentifierHint: CFString
let kCGImageSourceShouldCache: CFString
let kCGImageSourceShouldCacheImmediately: CFString
let kCGImageSourceShouldAllowFloat: CFString
let kCGImageSourceCreateThumbnailFromImageIfAbsent: CFString
let kCGImageSourceCreateThumbnailFromImageAlways: CFString
let kCGImageSourceThumbnailMaxPixelSize: CFString
let kCGImageSourceCreateThumbnailWithTransform: CFString
let kCGImageSourceSubsampleFactor: CFString
func CGImageSourceGetTypeID() -> CFTypeID
func CGImageSourceCopyTypeIdentifiers() -> CFArray
func CGImageSourceCreateWithDataProvider(provider: CGDataProvider, _ options: CFDictionary?) -> CGImageSource?
func CGImageSourceCreateWithData(data: CFData, _ options: CFDictionary?) -> CGImageSource?
func CGImageSourceCreateWithURL(url: CFURL, _ options: CFDictionary?) -> CGImageSource?
func CGImageSourceGetType(isrc: CGImageSource) -> CFString?
func CGImageSourceGetCount(isrc: CGImageSource) -> Int
func CGImageSourceCopyProperties(isrc: CGImageSource, _ options: CFDictionary?) -> CFDictionary?
func CGImageSourceCopyPropertiesAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CFDictionary?
func CGImageSourceCopyMetadataAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImageMetadata?
func CGImageSourceCreateImageAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
func CGImageSourceRemoveCacheAtIndex(isrc: CGImageSource, _ index: Int)
func CGImageSourceCreateThumbnailAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
func CGImageSourceCreateIncremental(options: CFDictionary?) -> CGImageSource
func CGImageSourceUpdateData(isrc: CGImageSource, _ data: CFData, _ final: Bool)
func CGImageSourceUpdateDataProvider(isrc: CGImageSource, _ provider: CGDataProvider, _ final: Bool)
func CGImageSourceGetStatus(isrc: CGImageSource) -> CGImageSourceStatus
func CGImageSourceGetStatusAtIndex(isrc: CGImageSource, _ index: Int) -> CGImageSourceStatus
var IIO_HAS_IOSURFACE: Int32 { get }
