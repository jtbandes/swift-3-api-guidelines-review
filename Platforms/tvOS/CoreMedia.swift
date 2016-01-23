
typealias CMAttachmentBearer = CFTypeRef
typealias CMAttachmentBearerRef = CMAttachmentBearer
typealias CMAttachmentMode = UInt32
var kCMAttachmentMode_ShouldNotPropagate: CMAttachmentMode { get }
var kCMAttachmentMode_ShouldPropagate: CMAttachmentMode { get }
func CMSetAttachment(target: CMAttachmentBearer, _ key: CFString, _ value: AnyObject?, _ attachmentMode: CMAttachmentMode)
func CMGetAttachment(target: CMAttachmentBearer, _ key: CFString, _ attachmentModeOut: UnsafeMutablePointer<CMAttachmentMode>) -> AnyObject?
func CMRemoveAttachment(target: CMAttachmentBearer, _ key: CFString)
func CMRemoveAllAttachments(target: CMAttachmentBearer)
func CMCopyDictionaryOfAttachments(allocator: CFAllocator?, _ target: CMAttachmentBearer, _ attachmentMode: CMAttachmentMode) -> CFDictionary?
func CMSetAttachments(target: CMAttachmentBearer, _ theAttachments: CFDictionary, _ attachmentMode: CMAttachmentMode)
func CMPropagateAttachments(source: CMAttachmentBearer, _ destination: CMAttachmentBearer)
func CMAudioClockCreate(allocator: CFAllocator?, _ clockOut: UnsafeMutablePointer<CMClock?>) -> OSStatus
typealias CMItemCount = Int
typealias CMItemIndex = Int
var COREMEDIA_DECLARE_NULLABILITY: Int32 { get }
var COREMEDIA_DECLARE_NULLABILITY_BEGIN_END: Int32 { get }
var COREMEDIA_DECLARE_BRIDGED_TYPES: Int32 { get }
var COREMEDIA_DECLARE_RETURNS_RETAINED: Int32 { get }
var COREMEDIA_DECLARE_RETURNS_RETAINED_ON_PARAMETERS: Int32 { get }
var COREMEDIA_DECLARE_RETURNS_NOT_RETAINED_ON_PARAMETERS: Int32 { get }
typealias CMPersistentTrackID = Int32
var kCMPersistentTrackID_Invalid: CMPersistentTrackID { get }
var kCMBlockBufferNoErr: OSStatus { get }
var kCMBlockBufferStructureAllocationFailedErr: OSStatus { get }
var kCMBlockBufferBlockAllocationFailedErr: OSStatus { get }
var kCMBlockBufferBadCustomBlockSourceErr: OSStatus { get }
var kCMBlockBufferBadOffsetParameterErr: OSStatus { get }
var kCMBlockBufferBadLengthParameterErr: OSStatus { get }
var kCMBlockBufferBadPointerParameterErr: OSStatus { get }
var kCMBlockBufferEmptyBBufErr: OSStatus { get }
var kCMBlockBufferUnallocatedBlockErr: OSStatus { get }
var kCMBlockBufferInsufficientSpaceErr: OSStatus { get }
typealias CMBlockBufferFlags = UInt32
var kCMBlockBufferAssureMemoryNowFlag: CMBlockBufferFlags { get }
var kCMBlockBufferAlwaysCopyDataFlag: CMBlockBufferFlags { get }
var kCMBlockBufferDontOptimizeDepthFlag: CMBlockBufferFlags { get }
var kCMBlockBufferPermitEmptyReferenceFlag: CMBlockBufferFlags { get }
class CMBlockBuffer {
}
typealias CMBlockBufferRef = CMBlockBuffer
struct CMBlockBufferCustomBlockSource {
  var version: UInt32
  var AllocateBlock: (@convention(c) (UnsafeMutablePointer<Void>, Int) -> UnsafeMutablePointer<Void>)?
  var FreeBlock: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Void)?
  var refCon: UnsafeMutablePointer<Void>
  init()
  init(version: UInt32, AllocateBlock: (@convention(c) (UnsafeMutablePointer<Void>, Int) -> UnsafeMutablePointer<Void>)?, FreeBlock: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Void)?, refCon: UnsafeMutablePointer<Void>)
}
var kCMBlockBufferCustomBlockSourceVersion: UInt32 { get }
func CMBlockBufferCreateEmpty(structureAllocator: CFAllocator?, _ subBlockCapacity: UInt32, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMBlockBufferCreateWithMemoryBlock(structureAllocator: CFAllocator?, _ memoryBlock: UnsafeMutablePointer<Void>, _ blockLength: Int, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMBlockBufferCreateWithBufferReference(structureAllocator: CFAllocator?, _ targetBuffer: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMBlockBufferCreateContiguous(structureAllocator: CFAllocator?, _ sourceBuffer: CMBlockBuffer, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMBlockBufferGetTypeID() -> CFTypeID
func CMBlockBufferAppendMemoryBlock(theBuffer: CMBlockBuffer, _ memoryBlock: UnsafeMutablePointer<Void>, _ blockLength: Int, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags) -> OSStatus
func CMBlockBufferAppendBufferReference(theBuffer: CMBlockBuffer, _ targetBBuf: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags) -> OSStatus
func CMBlockBufferAssureBlockMemory(theBuffer: CMBlockBuffer) -> OSStatus
func CMBlockBufferAccessDataBytes(theBuffer: CMBlockBuffer, _ offset: Int, _ length: Int, _ temporaryBlock: UnsafeMutablePointer<Void>, _ returnedPointer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
func CMBlockBufferCopyDataBytes(theSourceBuffer: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ destination: UnsafeMutablePointer<Void>) -> OSStatus
func CMBlockBufferReplaceDataBytes(sourceBytes: UnsafePointer<Void>, _ destinationBuffer: CMBlockBuffer, _ offsetIntoDestination: Int, _ dataLength: Int) -> OSStatus
func CMBlockBufferFillDataBytes(fillByte: Int8, _ destinationBuffer: CMBlockBuffer, _ offsetIntoDestination: Int, _ dataLength: Int) -> OSStatus
func CMBlockBufferGetDataPointer(theBuffer: CMBlockBuffer, _ offset: Int, _ lengthAtOffset: UnsafeMutablePointer<Int>, _ totalLength: UnsafeMutablePointer<Int>, _ dataPointer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
func CMBlockBufferGetDataLength(theBuffer: CMBlockBuffer) -> Int
func CMBlockBufferIsRangeContiguous(theBuffer: CMBlockBuffer, _ offset: Int, _ length: Int) -> Bool
func CMBlockBufferIsEmpty(theBuffer: CMBlockBuffer) -> Bool
var kCMBufferQueueError_AllocationFailed: OSStatus { get }
var kCMBufferQueueError_RequiredParameterMissing: OSStatus { get }
var kCMBufferQueueError_InvalidCMBufferCallbacksStruct: OSStatus { get }
var kCMBufferQueueError_EnqueueAfterEndOfData: OSStatus { get }
var kCMBufferQueueError_QueueIsFull: OSStatus { get }
var kCMBufferQueueError_BadTriggerDuration: OSStatus { get }
var kCMBufferQueueError_CannotModifyQueueFromTriggerCallback: OSStatus { get }
var kCMBufferQueueError_InvalidTriggerCondition: OSStatus { get }
var kCMBufferQueueError_InvalidTriggerToken: OSStatus { get }
var kCMBufferQueueError_InvalidBuffer: OSStatus { get }
typealias CMBufferQueueRef = CMBufferQueue
class CMBufferQueue {
}
typealias CMBuffer = CFTypeRef
typealias CMBufferRef = CMBuffer
typealias CMBufferGetTimeCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> CMTime
typealias CMBufferGetBooleanCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> DarwinBoolean
typealias CMBufferCompareCallback = @convention(c) (CMBuffer, CMBuffer, UnsafeMutablePointer<Void>) -> CFComparisonResult
typealias CMBufferGetSizeCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> Int
struct CMBufferCallbacks {
  var version: UInt32
  var refcon: UnsafeMutablePointer<Void>
  var getDecodeTimeStamp: CMBufferGetTimeCallback?
  var getPresentationTimeStamp: CMBufferGetTimeCallback?
  var getDuration: CMBufferGetTimeCallback
  var isDataReady: CMBufferGetBooleanCallback?
  var compare: CMBufferCompareCallback?
  var dataBecameReadyNotification: Unmanaged<CFString>?
  var getSize: CMBufferGetSizeCallback?
}
func CMBufferQueueGetCallbacksForUnsortedSampleBuffers() -> UnsafePointer<CMBufferCallbacks>
func CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS() -> UnsafePointer<CMBufferCallbacks>
func CMBufferQueueCreate(allocator: CFAllocator?, _ capacity: CMItemCount, _ callbacks: UnsafePointer<CMBufferCallbacks>, _ queueOut: UnsafeMutablePointer<CMBufferQueue?>) -> OSStatus
func CMBufferQueueGetTypeID() -> CFTypeID
func CMBufferQueueEnqueue(queue: CMBufferQueue, _ buf: CMBuffer) -> OSStatus
func CMBufferQueueGetHead(queue: CMBufferQueue) -> CMBuffer?
func CMBufferQueueIsEmpty(queue: CMBufferQueue) -> Bool
func CMBufferQueueMarkEndOfData(queue: CMBufferQueue) -> OSStatus
func CMBufferQueueContainsEndOfData(queue: CMBufferQueue) -> Bool
func CMBufferQueueIsAtEndOfData(queue: CMBufferQueue) -> Bool
func CMBufferQueueReset(queue: CMBufferQueue) -> OSStatus
func CMBufferQueueResetWithCallback(queue: CMBufferQueue, _ callback: @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> Void, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus
func CMBufferQueueGetBufferCount(queue: CMBufferQueue) -> CMItemCount
func CMBufferQueueGetDuration(queue: CMBufferQueue) -> CMTime
func CMBufferQueueGetMinDecodeTimeStamp(queue: CMBufferQueue) -> CMTime
func CMBufferQueueGetFirstDecodeTimeStamp(queue: CMBufferQueue) -> CMTime
func CMBufferQueueGetMinPresentationTimeStamp(queue: CMBufferQueue) -> CMTime
func CMBufferQueueGetFirstPresentationTimeStamp(queue: CMBufferQueue) -> CMTime
func CMBufferQueueGetMaxPresentationTimeStamp(queue: CMBufferQueue) -> CMTime
func CMBufferQueueGetEndPresentationTimeStamp(queue: CMBufferQueue) -> CMTime
func CMBufferQueueGetTotalSize(queue: CMBufferQueue) -> Int
typealias CMBufferQueueTriggerToken = COpaquePointer
typealias CMBufferQueueTriggerCallback = @convention(c) (UnsafeMutablePointer<Void>, CMBufferQueueTriggerToken) -> Void
typealias CMBufferQueueTriggerCondition = Int32
var kCMBufferQueueTrigger_WhenDurationBecomesLessThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesLessThanOrEqualTo: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThanOrEqualTo: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenMinPresentationTimeStampChanges: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenMaxPresentationTimeStampChanges: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDataBecomesReady: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenEndOfDataReached: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenReset: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenBufferCountBecomesLessThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenBufferCountBecomesGreaterThan: CMBufferQueueTriggerCondition { get }
func CMBufferQueueInstallTrigger(queue: CMBufferQueue, _ triggerCallback: CMBufferQueueTriggerCallback?, _ triggerRefcon: UnsafeMutablePointer<Void>, _ triggerCondition: CMBufferQueueTriggerCondition, _ triggerTime: CMTime, _ triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken>) -> OSStatus
func CMBufferQueueInstallTriggerWithIntegerThreshold(queue: CMBufferQueue, _ triggerCallback: CMBufferQueueTriggerCallback?, _ triggerRefcon: UnsafeMutablePointer<Void>, _ triggerCondition: CMBufferQueueTriggerCondition, _ triggerThreshold: CMItemCount, _ triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken>) -> OSStatus
func CMBufferQueueRemoveTrigger(queue: CMBufferQueue, _ triggerToken: CMBufferQueueTriggerToken) -> OSStatus
func CMBufferQueueTestTrigger(queue: CMBufferQueue, _ triggerToken: CMBufferQueueTriggerToken) -> Bool
func CMBufferQueueCallForEachBuffer(queue: CMBufferQueue, _ callback: @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> OSStatus, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus
typealias CMBufferValidationCallback = @convention(c) (CMBufferQueue, CMBuffer, UnsafeMutablePointer<Void>) -> OSStatus
func CMBufferQueueSetValidationCallback(queue: CMBufferQueue, _ validationCallback: CMBufferValidationCallback, _ validationRefCon: UnsafeMutablePointer<Void>) -> OSStatus
var kCMFormatDescriptionError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionError_ValueNotAvailable: OSStatus { get }
class CMFormatDescription {
}
typealias CMFormatDescriptionRef = CMFormatDescription
typealias CMMediaType = FourCharCode
var kCMMediaType_Video: CMMediaType { get }
var kCMMediaType_Audio: CMMediaType { get }
var kCMMediaType_Muxed: CMMediaType { get }
var kCMMediaType_Text: CMMediaType { get }
var kCMMediaType_ClosedCaption: CMMediaType { get }
var kCMMediaType_Subtitle: CMMediaType { get }
var kCMMediaType_TimeCode: CMMediaType { get }
var kCMMediaType_Metadata: CMMediaType { get }
func CMFormatDescriptionCreate(allocator: CFAllocator?, _ mediaType: CMMediaType, _ mediaSubtype: FourCharCode, _ extensions: CFDictionary?, _ descOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus
func CMFormatDescriptionGetTypeID() -> CFTypeID
func CMFormatDescriptionEqual(desc1: CMFormatDescription?, _ desc2: CMFormatDescription?) -> Bool
func CMFormatDescriptionEqualIgnoringExtensionKeys(desc1: CMFormatDescription?, _ desc2: CMFormatDescription?, _ formatDescriptionExtensionKeysToIgnore: AnyObject?, _ sampleDescriptionExtensionAtomKeysToIgnore: AnyObject?) -> Bool
func CMFormatDescriptionGetMediaType(desc: CMFormatDescription) -> CMMediaType
func CMFormatDescriptionGetMediaSubType(desc: CMFormatDescription) -> FourCharCode
func CMFormatDescriptionGetExtensions(desc: CMFormatDescription) -> CFDictionary?
let kCMFormatDescriptionExtension_OriginalCompressionSettings: CFString
let kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms: CFString
let kCMFormatDescriptionExtension_VerbatimSampleDescription: CFString
let kCMFormatDescriptionExtension_VerbatimISOSampleEntry: CFString
func CMFormatDescriptionGetExtension(desc: CMFormatDescription, _ extensionKey: CFString) -> CFPropertyList?
typealias CMAudioCodecType = FourCharCode
var kCMAudioCodecType_AAC_LCProtected: CMAudioCodecType { get }
var kCMAudioCodecType_AAC_AudibleProtected: CMAudioCodecType { get }
typealias CMAudioFormatDescriptionRef = CMAudioFormatDescription
typealias CMAudioFormatDescription = CMFormatDescriptionRef
func CMAudioFormatDescriptionCreate(allocator: CFAllocator?, _ asbd: UnsafePointer<AudioStreamBasicDescription>, _ layoutSize: Int, _ layout: UnsafePointer<AudioChannelLayout>, _ magicCookieSize: Int, _ magicCookie: UnsafePointer<Void>, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
func CMAudioFormatDescriptionGetStreamBasicDescription(desc: CMAudioFormatDescription) -> UnsafePointer<AudioStreamBasicDescription>
func CMAudioFormatDescriptionGetMagicCookie(desc: CMAudioFormatDescription, _ cookieSizeOut: UnsafeMutablePointer<Int>) -> UnsafePointer<Void>
func CMAudioFormatDescriptionGetChannelLayout(desc: CMAudioFormatDescription, _ layoutSize: UnsafeMutablePointer<Int>) -> UnsafePointer<AudioChannelLayout>
func CMAudioFormatDescriptionGetFormatList(desc: CMAudioFormatDescription, _ formatListSize: UnsafeMutablePointer<Int>) -> UnsafePointer<AudioFormatListItem>
func CMAudioFormatDescriptionGetRichestDecodableFormat(desc: CMAudioFormatDescription) -> UnsafePointer<AudioFormatListItem>
func CMAudioFormatDescriptionGetMostCompatibleFormat(desc: CMAudioFormatDescription) -> UnsafePointer<AudioFormatListItem>
func CMAudioFormatDescriptionCreateSummary(allocator: CFAllocator?, _ formatDescriptionArray: CFArray, _ flags: UInt32, _ summaryFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
typealias CMAudioFormatDescriptionMask = UInt32
var kCMAudioFormatDescriptionMask_StreamBasicDescription: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_MagicCookie: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_ChannelLayout: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_Extensions: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_All: CMAudioFormatDescriptionMask { get }
func CMAudioFormatDescriptionEqual(desc1: CMAudioFormatDescription, _ desc2: CMAudioFormatDescription, _ equalityMask: CMAudioFormatDescriptionMask, _ equalityMaskOut: UnsafeMutablePointer<CMAudioFormatDescriptionMask>) -> Bool
typealias CMVideoFormatDescriptionRef = CMVideoFormatDescription
typealias CMVideoFormatDescription = CMFormatDescriptionRef
typealias CMPixelFormatType = FourCharCode
var kCMPixelFormat_32ARGB: CMPixelFormatType { get }
var kCMPixelFormat_32BGRA: CMPixelFormatType { get }
var kCMPixelFormat_24RGB: CMPixelFormatType { get }
var kCMPixelFormat_16BE555: CMPixelFormatType { get }
var kCMPixelFormat_16BE565: CMPixelFormatType { get }
var kCMPixelFormat_16LE555: CMPixelFormatType { get }
var kCMPixelFormat_16LE565: CMPixelFormatType { get }
var kCMPixelFormat_16LE5551: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr8: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr8_yuvs: CMPixelFormatType { get }
var kCMPixelFormat_444YpCbCr8: CMPixelFormatType { get }
var kCMPixelFormat_4444YpCbCrA8: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr16: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr10: CMPixelFormatType { get }
var kCMPixelFormat_444YpCbCr10: CMPixelFormatType { get }
var kCMPixelFormat_8IndexedGray_WhiteIsZero: CMPixelFormatType { get }
typealias CMVideoCodecType = FourCharCode
var kCMVideoCodecType_422YpCbCr8: CMVideoCodecType { get }
var kCMVideoCodecType_Animation: CMVideoCodecType { get }
var kCMVideoCodecType_Cinepak: CMVideoCodecType { get }
var kCMVideoCodecType_JPEG: CMVideoCodecType { get }
var kCMVideoCodecType_JPEG_OpenDML: CMVideoCodecType { get }
var kCMVideoCodecType_SorensonVideo: CMVideoCodecType { get }
var kCMVideoCodecType_SorensonVideo3: CMVideoCodecType { get }
var kCMVideoCodecType_H263: CMVideoCodecType { get }
var kCMVideoCodecType_H264: CMVideoCodecType { get }
var kCMVideoCodecType_HEVC: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG4Video: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG2Video: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG1Video: CMVideoCodecType { get }
var kCMVideoCodecType_DVCNTSC: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCProPAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPro50NTSC: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPro50PAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD720p60: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD720p50: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080i60: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080i50: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080p30: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080p25: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes4444: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422HQ: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422LT: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422Proxy: CMVideoCodecType { get }
struct CMVideoDimensions {
  var width: Int32
  var height: Int32
  init()
  init(width: Int32, height: Int32)
}
let kCMFormatDescriptionExtension_FormatName: CFString
let kCMFormatDescriptionExtension_Depth: CFString
let kCMFormatDescriptionExtension_CleanAperture: CFString
let kCMFormatDescriptionKey_CleanApertureWidth: CFString
let kCMFormatDescriptionKey_CleanApertureHeight: CFString
let kCMFormatDescriptionKey_CleanApertureHorizontalOffset: CFString
let kCMFormatDescriptionKey_CleanApertureVerticalOffset: CFString
let kCMFormatDescriptionKey_CleanApertureWidthRational: CFString
let kCMFormatDescriptionKey_CleanApertureHeightRational: CFString
let kCMFormatDescriptionKey_CleanApertureHorizontalOffsetRational: CFString
let kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational: CFString
let kCMFormatDescriptionExtension_FieldCount: CFString
let kCMFormatDescriptionExtension_FieldDetail: CFString
let kCMFormatDescriptionFieldDetail_TemporalTopFirst: CFString
let kCMFormatDescriptionFieldDetail_TemporalBottomFirst: CFString
let kCMFormatDescriptionFieldDetail_SpatialFirstLineEarly: CFString
let kCMFormatDescriptionFieldDetail_SpatialFirstLineLate: CFString
let kCMFormatDescriptionExtension_PixelAspectRatio: CFString
let kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing: CFString
let kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing: CFString
let kCMFormatDescriptionExtension_ColorPrimaries: CFString
let kCMFormatDescriptionColorPrimaries_ITU_R_709_2: CFString
let kCMFormatDescriptionColorPrimaries_EBU_3213: CFString
let kCMFormatDescriptionColorPrimaries_SMPTE_C: CFString
let kCMFormatDescriptionColorPrimaries_DCI_P3: CFString
let kCMFormatDescriptionColorPrimaries_P3_D65: CFString
let kCMFormatDescriptionColorPrimaries_ITU_R_2020: CFString
let kCMFormatDescriptionColorPrimaries_P22: CFString
let kCMFormatDescriptionExtension_TransferFunction: CFString
let kCMFormatDescriptionTransferFunction_ITU_R_709_2: CFString
let kCMFormatDescriptionTransferFunction_SMPTE_240M_1995: CFString
let kCMFormatDescriptionTransferFunction_UseGamma: CFString
let kCMFormatDescriptionTransferFunction_ITU_R_2020: CFString
let kCMFormatDescriptionExtension_GammaLevel: CFString
let kCMFormatDescriptionExtension_YCbCrMatrix: CFString
let kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2: CFString
let kCMFormatDescriptionYCbCrMatrix_ITU_R_601_4: CFString
let kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995: CFString
let kCMFormatDescriptionYCbCrMatrix_DCI_P3: CFString
let kCMFormatDescriptionYCbCrMatrix_P3_D65: CFString
let kCMFormatDescriptionYCbCrMatrix_ITU_R_2020: CFString
let kCMFormatDescriptionExtension_FullRangeVideo: CFString
let kCMFormatDescriptionExtension_ICCProfile: CFString
let kCMFormatDescriptionExtension_BytesPerRow: CFString
let kCMFormatDescriptionExtension_ChromaLocationTopField: CFString
let kCMFormatDescriptionExtension_ChromaLocationBottomField: CFString
let kCMFormatDescriptionChromaLocation_Left: CFString
let kCMFormatDescriptionChromaLocation_Center: CFString
let kCMFormatDescriptionChromaLocation_TopLeft: CFString
let kCMFormatDescriptionChromaLocation_Top: CFString
let kCMFormatDescriptionChromaLocation_BottomLeft: CFString
let kCMFormatDescriptionChromaLocation_Bottom: CFString
let kCMFormatDescriptionChromaLocation_DV420: CFString
let kCMFormatDescriptionConformsToMPEG2VideoProfile: CFString
var kCMMPEG2VideoProfile_HDV_720p30: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080i60: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080i50: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p24: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p25: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p24: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p25: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p30: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p60: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080i60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080i50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080i60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080i50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p50_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p60_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080i60_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080i50_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p24_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p25_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p30_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_540p: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_540p: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p24_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p25_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p30_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XF: Int32 { get }
let kCMFormatDescriptionExtension_TemporalQuality: CFString
let kCMFormatDescriptionExtension_SpatialQuality: CFString
let kCMFormatDescriptionExtension_VerbatimImageDescription: CFString
let kCMFormatDescriptionExtension_Version: CFString
let kCMFormatDescriptionExtension_RevisionLevel: CFString
let kCMFormatDescriptionExtension_Vendor: CFString
let kCMFormatDescriptionVendor_Apple: CFString
func CMVideoFormatDescriptionCreate(allocator: CFAllocator?, _ codecType: CMVideoCodecType, _ width: Int32, _ height: Int32, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
func CMVideoFormatDescriptionCreateForImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ outDesc: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
func CMVideoFormatDescriptionCreateFromH264ParameterSets(allocator: CFAllocator?, _ parameterSetCount: Int, _ parameterSetPointers: UnsafePointer<UnsafePointer<UInt8>>, _ parameterSetSizes: UnsafePointer<Int>, _ NALUnitHeaderLength: Int32, _ formatDescriptionOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus
func CMVideoFormatDescriptionGetH264ParameterSetAtIndex(videoDesc: CMFormatDescription, _ parameterSetIndex: Int, _ parameterSetPointerOut: UnsafeMutablePointer<UnsafePointer<UInt8>>, _ parameterSetSizeOut: UnsafeMutablePointer<Int>, _ parameterSetCountOut: UnsafeMutablePointer<Int>, _ NALUnitHeaderLengthOut: UnsafeMutablePointer<Int32>) -> OSStatus
func CMVideoFormatDescriptionGetDimensions(videoDesc: CMVideoFormatDescription) -> CMVideoDimensions
func CMVideoFormatDescriptionGetPresentationDimensions(videoDesc: CMVideoFormatDescription, _ usePixelAspectRatio: Bool, _ useCleanAperture: Bool) -> CGSize
func CMVideoFormatDescriptionGetCleanAperture(videoDesc: CMVideoFormatDescription, _ originIsAtTopLeft: Bool) -> CGRect
func CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers() -> CFArray
func CMVideoFormatDescriptionMatchesImageBuffer(desc: CMVideoFormatDescription, _ imageBuffer: CVImageBuffer) -> Bool
typealias CMMuxedFormatDescription = CMFormatDescriptionRef
typealias CMMuxedFormatDescriptionRef = CMMuxedFormatDescription
typealias CMMuxedStreamType = FourCharCode
var kCMMuxedStreamType_MPEG1System: CMMuxedStreamType { get }
var kCMMuxedStreamType_MPEG2Transport: CMMuxedStreamType { get }
var kCMMuxedStreamType_MPEG2Program: CMMuxedStreamType { get }
var kCMMuxedStreamType_DV: CMMuxedStreamType { get }
func CMMuxedFormatDescriptionCreate(allocator: CFAllocator?, _ muxType: CMMuxedStreamType, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMMuxedFormatDescription?>) -> OSStatus
typealias CMClosedCaptionFormatDescriptionRef = CMClosedCaptionFormatDescription
typealias CMClosedCaptionFormatDescription = CMFormatDescriptionRef
typealias CMClosedCaptionFormatType = FourCharCode
var kCMClosedCaptionFormatType_CEA608: CMClosedCaptionFormatType { get }
var kCMClosedCaptionFormatType_CEA708: CMClosedCaptionFormatType { get }
var kCMClosedCaptionFormatType_ATSC: CMClosedCaptionFormatType { get }
typealias CMTextFormatDescriptionRef = CMTextFormatDescription
typealias CMTextFormatDescription = CMFormatDescriptionRef
typealias CMTextFormatType = FourCharCode
var kCMTextFormatType_QTText: CMTextFormatType { get }
var kCMTextFormatType_3GText: CMTextFormatType { get }
typealias CMTextDisplayFlags = UInt32
var kCMTextDisplayFlag_scrollIn: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollOut: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirectionMask: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_bottomToTop: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_rightToLeft: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_topToBottom: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_leftToRight: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_continuousKaraoke: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_writeTextVertically: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_fillTextRegion: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_obeySubtitleFormatting: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_forcedSubtitlesPresent: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_allSubtitlesForced: CMTextDisplayFlags { get }
typealias CMTextJustificationValue = Int8
var kCMTextJustification_left_top: CMTextJustificationValue { get }
var kCMTextJustification_centered: CMTextJustificationValue { get }
var kCMTextJustification_bottom_right: CMTextJustificationValue { get }
let kCMTextFormatDescriptionExtension_DisplayFlags: CFString
let kCMTextFormatDescriptionExtension_BackgroundColor: CFString
let kCMTextFormatDescriptionColor_Red: CFString
let kCMTextFormatDescriptionColor_Green: CFString
let kCMTextFormatDescriptionColor_Blue: CFString
let kCMTextFormatDescriptionColor_Alpha: CFString
let kCMTextFormatDescriptionExtension_DefaultTextBox: CFString
let kCMTextFormatDescriptionRect_Top: CFString
let kCMTextFormatDescriptionRect_Left: CFString
let kCMTextFormatDescriptionRect_Bottom: CFString
let kCMTextFormatDescriptionRect_Right: CFString
let kCMTextFormatDescriptionExtension_DefaultStyle: CFString
let kCMTextFormatDescriptionStyle_StartChar: CFString
let kCMTextFormatDescriptionStyle_Font: CFString
let kCMTextFormatDescriptionStyle_FontFace: CFString
let kCMTextFormatDescriptionStyle_ForegroundColor: CFString
let kCMTextFormatDescriptionStyle_FontSize: CFString
let kCMTextFormatDescriptionExtension_HorizontalJustification: CFString
let kCMTextFormatDescriptionExtension_VerticalJustification: CFString
let kCMTextFormatDescriptionStyle_EndChar: CFString
let kCMTextFormatDescriptionExtension_FontTable: CFString
let kCMTextFormatDescriptionExtension_TextJustification: CFString
let kCMTextFormatDescriptionStyle_Height: CFString
let kCMTextFormatDescriptionStyle_Ascent: CFString
let kCMTextFormatDescriptionExtension_DefaultFontName: CFString
func CMTextFormatDescriptionGetDisplayFlags(desc: CMFormatDescription, _ outDisplayFlags: UnsafeMutablePointer<CMTextDisplayFlags>) -> OSStatus
func CMTextFormatDescriptionGetJustification(desc: CMFormatDescription, _ outHorizontalJust: UnsafeMutablePointer<CMTextJustificationValue>, _ outVerticalJust: UnsafeMutablePointer<CMTextJustificationValue>) -> OSStatus
func CMTextFormatDescriptionGetDefaultTextBox(desc: CMFormatDescription, _ originIsAtTopLeft: Bool, _ heightOfTextTrack: CGFloat, _ outDefaultTextBox: UnsafeMutablePointer<CGRect>) -> OSStatus
func CMTextFormatDescriptionGetDefaultStyle(desc: CMFormatDescription, _ outLocalFontID: UnsafeMutablePointer<UInt16>, _ outBold: UnsafeMutablePointer<DarwinBoolean>, _ outItalic: UnsafeMutablePointer<DarwinBoolean>, _ outUnderline: UnsafeMutablePointer<DarwinBoolean>, _ outFontSize: UnsafeMutablePointer<CGFloat>, _ outColorComponents: UnsafeMutablePointer<CGFloat>) -> OSStatus
func CMTextFormatDescriptionGetFontName(desc: CMFormatDescription, _ localFontID: UInt16, _ outFontName: AutoreleasingUnsafeMutablePointer<CFString?>) -> OSStatus
typealias CMSubtitleFormatType = FourCharCode
var kCMSubtitleFormatType_3GText: CMSubtitleFormatType { get }
var kCMSubtitleFormatType_WebVTT: CMSubtitleFormatType { get }
typealias CMTimeCodeFormatDescription = CMFormatDescriptionRef
typealias CMTimeCodeFormatDescriptionRef = CMTimeCodeFormatDescription
typealias CMTimeCodeFormatType = FourCharCode
var kCMTimeCodeFormatType_TimeCode32: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_TimeCode64: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_Counter32: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_Counter64: CMTimeCodeFormatType { get }
var kCMTimeCodeFlag_DropFrame: UInt32 { get }
var kCMTimeCodeFlag_24HourMax: UInt32 { get }
var kCMTimeCodeFlag_NegTimesOK: UInt32 { get }
func CMTimeCodeFormatDescriptionCreate(allocator: CFAllocator?, _ timeCodeFormatType: CMTimeCodeFormatType, _ frameDuration: CMTime, _ frameQuanta: UInt32, _ tcFlags: UInt32, _ extensions: CFDictionary?, _ descOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
func CMTimeCodeFormatDescriptionGetFrameDuration(timeCodeFormatDescription: CMTimeCodeFormatDescription) -> CMTime
func CMTimeCodeFormatDescriptionGetFrameQuanta(timeCodeFormatDescription: CMTimeCodeFormatDescription) -> UInt32
func CMTimeCodeFormatDescriptionGetTimeCodeFlags(desc: CMTimeCodeFormatDescription) -> UInt32
let kCMTimeCodeFormatDescriptionExtension_SourceReferenceName: CFString
let kCMTimeCodeFormatDescriptionKey_Value: CFString
let kCMTimeCodeFormatDescriptionKey_LangCode: CFString
typealias CMMetadataFormatDescription = CMFormatDescriptionRef
typealias CMMetadataFormatDescriptionRef = CMMetadataFormatDescription
typealias CMMetadataFormatType = FourCharCode
var kCMMetadataFormatType_ICY: CMMetadataFormatType { get }
var kCMMetadataFormatType_ID3: CMMetadataFormatType { get }
var kCMMetadataFormatType_Boxed: CMMetadataFormatType { get }
let kCMFormatDescriptionExtensionKey_MetadataKeyTable: CFString
let kCMMetadataFormatDescriptionKey_Namespace: CFString
let kCMMetadataFormatDescriptionKey_Value: CFString
let kCMMetadataFormatDescriptionKey_LocalID: CFString
let kCMMetadataFormatDescriptionKey_DataType: CFString
let kCMMetadataFormatDescriptionKey_DataTypeNamespace: CFString
let kCMMetadataFormatDescriptionKey_ConformingDataTypes: CFString
let kCMMetadataFormatDescriptionKey_LanguageTag: CFString
let kCMMetadataFormatDescriptionKey_StructuralDependency: CFString
let kCMMetadataFormatDescription_StructuralDependencyKey_DependencyIsInvalidFlag: CFString
let kCMMetadataFormatDescriptionMetadataSpecificationKey_Identifier: CFString
let kCMMetadataFormatDescriptionMetadataSpecificationKey_DataType: CFString
let kCMMetadataFormatDescriptionMetadataSpecificationKey_ExtendedLanguageTag: CFString
let kCMMetadataFormatDescriptionMetadataSpecificationKey_StructuralDependency: CFString
func CMMetadataFormatDescriptionCreateWithKeys(allocator: CFAllocator?, _ metadataType: CMMetadataFormatType, _ keys: CFArray?, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
func CMMetadataFormatDescriptionCreateWithMetadataSpecifications(allocator: CFAllocator?, _ metadataType: CMMetadataFormatType, _ metadataSpecifications: CFArray, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
func CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications(allocator: CFAllocator?, _ srcDesc: CMMetadataFormatDescription, _ metadataSpecifications: CFArray, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
func CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions(allocator: CFAllocator?, _ srcDesc1: CMMetadataFormatDescription, _ srcDesc2: CMMetadataFormatDescription, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
func CMMetadataFormatDescriptionGetKeyWithLocalID(desc: CMMetadataFormatDescription, _ localKeyID: OSType) -> CFDictionary?
func CMMetadataFormatDescriptionGetIdentifiers(desc: CMMetadataFormatDescription) -> CFArray?
var kCMFormatDescriptionBridgeError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionBridgeError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSerializedSampleDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_IncompatibleFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_UnsupportedSampleDescriptionFlavor: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSlice: OSStatus { get }
let kCMImageDescriptionFlavor_QuickTimeMovie: CFString
let kCMImageDescriptionFlavor_ISOFamily: CFString
let kCMImageDescriptionFlavor_3GPFamily: CFString
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(allocator: CFAllocator?, _ imageDescriptionData: UnsafePointer<UInt8>, _ imageDescriptionSize: Int, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ videoFormatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, _ imageDescriptionBlockBuffer: CMBlockBuffer, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ videoFormatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
func CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, _ videoFormatDescription: CMVideoFormatDescription, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ imageDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMSwapBigEndianImageDescriptionToHost(imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
func CMSwapHostEndianImageDescriptionToBig(imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
let kCMSoundDescriptionFlavor_QuickTimeMovie: CFString
let kCMSoundDescriptionFlavor_QuickTimeMovieV2: CFString
let kCMSoundDescriptionFlavor_ISOFamily: CFString
let kCMSoundDescriptionFlavor_3GPFamily: CFString
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData(allocator: CFAllocator?, _ soundDescriptionData: UnsafePointer<UInt8>, _ soundDescriptionSize: Int, _ soundDescriptionFlavor: CFString?, _ audioFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, _ soundDescriptionBlockBuffer: CMBlockBuffer, _ soundDescriptionFlavor: CFString?, _ audioFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
func CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, _ audioFormatDescription: CMAudioFormatDescription, _ soundDescriptionFlavor: CFString?, _ soundDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(soundDescriptionBlockBuffer: CMBlockBuffer, _ soundDescriptionFlavor: CFString?) -> Bool
func CMSwapBigEndianSoundDescriptionToHost(soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
func CMSwapHostEndianSoundDescriptionToBig(soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(allocator: CFAllocator?, _ textDescriptionData: UnsafePointer<UInt8>, _ textDescriptionSize: Int, _ textDescriptionFlavor: CFString?, _ mediaType: CMMediaType, _ textFormatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, _ textDescriptionBlockBuffer: CMBlockBuffer, _ textDescriptionFlavor: CFString?, _ mediaType: CMMediaType, _ textFormatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
func CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, _ textFormatDescription: CMTextFormatDescription, _ textDescriptionFlavor: CFString?, _ textDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMSwapBigEndianTextDescriptionToHost(textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
func CMSwapHostEndianTextDescriptionToBig(textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(allocator: CFAllocator?, _ closedCaptionDescriptionData: UnsafePointer<UInt8>, _ closedCaptionDescriptionSize: Int, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionFormatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, _ closedCaptionDescriptionBlockBuffer: CMBlockBuffer, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionFormatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
func CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, _ closedCaptionFormatDescription: CMClosedCaptionFormatDescription, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMSwapBigEndianClosedCaptionDescriptionToHost(closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
func CMSwapHostEndianClosedCaptionDescriptionToBig(closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(allocator: CFAllocator?, _ timeCodeDescriptionData: UnsafePointer<UInt8>, _ timeCodeDescriptionSize: Int, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeFormatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, _ timeCodeDescriptionBlockBuffer: CMBlockBuffer, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeFormatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
func CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, _ timeCodeFormatDescription: CMTimeCodeFormatDescription, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMSwapBigEndianTimeCodeDescriptionToHost(timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
func CMSwapHostEndianTimeCodeDescriptionToBig(timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData(allocator: CFAllocator?, _ metadataDescriptionData: UnsafePointer<UInt8>, _ metadataDescriptionSize: Int, _ metadataDescriptionFlavor: CFString?, _ metadataFormatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, _ metadataDescriptionBlockBuffer: CMBlockBuffer, _ metadataDescriptionFlavor: CFString?, _ metadataFormatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
func CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, _ metadataFormatDescription: CMMetadataFormatDescription, _ metadataDescriptionFlavor: CFString?, _ metadataDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMSwapBigEndianMetadataDescriptionToHost(metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
func CMSwapHostEndianMetadataDescriptionToBig(metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
class CMMemoryPool {
}
typealias CMMemoryPoolRef = CMMemoryPool
func CMMemoryPoolGetTypeID() -> CFTypeID
let kCMMemoryPoolOption_AgeOutPeriod: CFString
func CMMemoryPoolCreate(options: CFDictionary?) -> CMMemoryPool
func CMMemoryPoolGetAllocator(pool: CMMemoryPool) -> CFAllocator
func CMMemoryPoolFlush(pool: CMMemoryPool)
func CMMemoryPoolInvalidate(pool: CMMemoryPool)
var kCMMetadataIdentifierError_AllocationFailed: OSStatus { get }
var kCMMetadataIdentifierError_RequiredParameterMissing: OSStatus { get }
var kCMMetadataIdentifierError_BadKey: OSStatus { get }
var kCMMetadataIdentifierError_BadKeyLength: OSStatus { get }
var kCMMetadataIdentifierError_BadKeyType: OSStatus { get }
var kCMMetadataIdentifierError_BadNumberKey: OSStatus { get }
var kCMMetadataIdentifierError_BadKeySpace: OSStatus { get }
var kCMMetadataIdentifierError_BadIdentifier: OSStatus { get }
var kCMMetadataIdentifierError_NoKeyValueAvailable: OSStatus { get }
var kCMMetadataDataTypeRegistryError_AllocationFailed: OSStatus { get }
var kCMMetadataDataTypeRegistryError_RequiredParameterMissing: OSStatus { get }
var kCMMetadataDataTypeRegistryError_BadDataTypeIdentifier: OSStatus { get }
var kCMMetadataDataTypeRegistryError_DataTypeAlreadyRegistered: OSStatus { get }
var kCMMetadataDataTypeRegistryError_RequiresConformingBaseType: OSStatus { get }
var kCMMetadataDataTypeRegistryError_MultipleConformingBaseTypes: OSStatus { get }
let kCMMetadataKeySpace_QuickTimeUserData: CFString
let kCMMetadataKeySpace_ISOUserData: CFString
let kCMMetadataKeySpace_QuickTimeMetadata: CFString
let kCMMetadataKeySpace_iTunes: CFString
let kCMMetadataKeySpace_ID3: CFString
let kCMMetadataKeySpace_Icy: CFString
let kCMMetadataIdentifier_QuickTimeMetadataLocation_ISO6709: CFString
let kCMMetadataIdentifier_QuickTimeMetadataDirection_Facing: CFString
let kCMMetadataIdentifier_QuickTimeMetadataPreferredAffineTransform: CFString
let kCMMetadataIdentifier_QuickTimeMetadataVideoOrientation: CFString
func CMMetadataCreateIdentifierForKeyAndKeySpace(allocator: CFAllocator?, _ key: AnyObject, _ keySpace: CFString, _ identifierOut: UnsafeMutablePointer<CFString?>) -> OSStatus
func CMMetadataCreateKeyFromIdentifier(allocator: CFAllocator?, _ identifier: CFString, _ keyOut: UnsafeMutablePointer<AnyObject?>) -> OSStatus
func CMMetadataCreateKeyFromIdentifierAsCFData(allocator: CFAllocator?, _ identifier: CFString, _ keyOut: UnsafeMutablePointer<CFData?>) -> OSStatus
func CMMetadataCreateKeySpaceFromIdentifier(allocator: CFAllocator?, _ identifier: CFString, _ keySpaceOut: UnsafeMutablePointer<CFString?>) -> OSStatus
let kCMMetadataBaseDataType_RawData: CFString
let kCMMetadataBaseDataType_UTF8: CFString
let kCMMetadataBaseDataType_UTF16: CFString
let kCMMetadataBaseDataType_GIF: CFString
let kCMMetadataBaseDataType_JPEG: CFString
let kCMMetadataBaseDataType_PNG: CFString
let kCMMetadataBaseDataType_BMP: CFString
let kCMMetadataBaseDataType_Float32: CFString
let kCMMetadataBaseDataType_Float64: CFString
let kCMMetadataBaseDataType_SInt8: CFString
let kCMMetadataBaseDataType_SInt16: CFString
let kCMMetadataBaseDataType_SInt32: CFString
let kCMMetadataBaseDataType_SInt64: CFString
let kCMMetadataBaseDataType_UInt8: CFString
let kCMMetadataBaseDataType_UInt16: CFString
let kCMMetadataBaseDataType_UInt32: CFString
let kCMMetadataBaseDataType_UInt64: CFString
let kCMMetadataBaseDataType_PointF32: CFString
let kCMMetadataBaseDataType_DimensionsF32: CFString
let kCMMetadataBaseDataType_RectF32: CFString
let kCMMetadataBaseDataType_AffineTransformF64: CFString
let kCMMetadataBaseDataType_PolygonF32: CFString
let kCMMetadataBaseDataType_PolylineF32: CFString
let kCMMetadataBaseDataType_JSON: CFString
let kCMMetadataDataType_QuickTimeMetadataLocation_ISO6709: CFString
let kCMMetadataDataType_QuickTimeMetadataDirection: CFString
func CMMetadataDataTypeRegistryRegisterDataType(dataType: CFString, _ description: CFString, _ conformingDataTypes: CFArray) -> OSStatus
func CMMetadataDataTypeRegistryDataTypeIsRegistered(dataType: CFString) -> Bool
func CMMetadataDataTypeRegistryGetDataTypeDescription(dataType: CFString) -> CFString
func CMMetadataDataTypeRegistryGetConformingDataTypes(dataType: CFString) -> CFArray
func CMMetadataDataTypeRegistryDataTypeConformsToDataType(dataType: CFString, _ conformsToDataType: CFString) -> Bool
func CMMetadataDataTypeRegistryGetBaseDataTypes() -> CFArray?
func CMMetadataDataTypeRegistryDataTypeIsBaseDataType(dataType: CFString) -> Bool
func CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(dataType: CFString) -> CFString
var kCMSampleBufferError_AllocationFailed: OSStatus { get }
var kCMSampleBufferError_RequiredParameterMissing: OSStatus { get }
var kCMSampleBufferError_AlreadyHasDataBuffer: OSStatus { get }
var kCMSampleBufferError_BufferNotReady: OSStatus { get }
var kCMSampleBufferError_SampleIndexOutOfRange: OSStatus { get }
var kCMSampleBufferError_BufferHasNoSampleSizes: OSStatus { get }
var kCMSampleBufferError_BufferHasNoSampleTimingInfo: OSStatus { get }
var kCMSampleBufferError_ArrayTooSmall: OSStatus { get }
var kCMSampleBufferError_InvalidEntryCount: OSStatus { get }
var kCMSampleBufferError_CannotSubdivide: OSStatus { get }
var kCMSampleBufferError_SampleTimingInfoInvalid: OSStatus { get }
var kCMSampleBufferError_InvalidMediaTypeForOperation: OSStatus { get }
var kCMSampleBufferError_InvalidSampleData: OSStatus { get }
var kCMSampleBufferError_InvalidMediaFormat: OSStatus { get }
var kCMSampleBufferError_Invalidated: OSStatus { get }
var kCMSampleBufferError_DataFailed: OSStatus { get }
var kCMSampleBufferError_DataCanceled: OSStatus { get }
var kCMSampleBufferFlag_AudioBufferList_Assure16ByteAlignment: UInt32 { get }
class CMSampleBuffer {
}
typealias CMSampleBufferRef = CMSampleBuffer
struct CMSampleTimingInfo {
  var duration: CMTime
  var presentationTimeStamp: CMTime
  var decodeTimeStamp: CMTime
  init()
  init(duration: CMTime, presentationTimeStamp: CMTime, decodeTimeStamp: CMTime)
}
let kCMTimingInfoInvalid: CMSampleTimingInfo
typealias CMSampleBufferMakeDataReadyCallback = @convention(c) (CMSampleBuffer, UnsafeMutablePointer<Void>) -> OSStatus
func CMSampleBufferCreate(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMFormatDescription?, _ numSamples: CMItemCount, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ numSampleSizeEntries: CMItemCount, _ sampleSizeArray: UnsafePointer<Int>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMSampleBufferCreateReady(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ formatDescription: CMFormatDescription?, _ numSamples: CMItemCount, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ numSampleSizeEntries: CMItemCount, _ sampleSizeArray: UnsafePointer<Int>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMAudioSampleBufferCreateWithPacketDescriptions(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMFormatDescription, _ numSamples: CMItemCount, _ sbufPTS: CMTime, _ packetDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMAudioSampleBufferCreateReadyWithPacketDescriptions(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ formatDescription: CMFormatDescription, _ numSamples: CMItemCount, _ sbufPTS: CMTime, _ packetDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMSampleBufferCreateForImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMVideoFormatDescription, _ sampleTiming: UnsafePointer<CMSampleTimingInfo>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMSampleBufferCreateReadyWithImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ formatDescription: CMVideoFormatDescription, _ sampleTiming: UnsafePointer<CMSampleTimingInfo>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMSampleBufferCreateCopy(allocator: CFAllocator?, _ sbuf: CMSampleBuffer, _ sbufCopyOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMSampleBufferCreateCopyWithNewTiming(allocator: CFAllocator?, _ originalSBuf: CMSampleBuffer, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ sBufCopyOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMSampleBufferCopySampleBufferForRange(allocator: CFAllocator?, _ sbuf: CMSampleBuffer, _ sampleRange: CFRange, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
func CMSampleBufferGetTypeID() -> CFTypeID
func CMSampleBufferSetDataBuffer(sbuf: CMSampleBuffer, _ dataBuffer: CMBlockBuffer) -> OSStatus
func CMSampleBufferGetDataBuffer(sbuf: CMSampleBuffer) -> CMBlockBuffer?
func CMSampleBufferGetImageBuffer(sbuf: CMSampleBuffer) -> CVImageBuffer?
func CMSampleBufferSetDataBufferFromAudioBufferList(sbuf: CMSampleBuffer, _ bbufStructAllocator: CFAllocator?, _ bbufMemoryAllocator: CFAllocator?, _ flags: UInt32, _ bufferList: UnsafePointer<AudioBufferList>) -> OSStatus
func CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(sbuf: CMSampleBuffer, _ bufferListSizeNeededOut: UnsafeMutablePointer<Int>, _ bufferListOut: UnsafeMutablePointer<AudioBufferList>, _ bufferListSize: Int, _ bbufStructAllocator: CFAllocator?, _ bbufMemoryAllocator: CFAllocator?, _ flags: UInt32, _ blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
func CMSampleBufferGetAudioStreamPacketDescriptions(sbuf: CMSampleBuffer, _ packetDescriptionsSize: Int, _ packetDescriptionsOut: UnsafeMutablePointer<AudioStreamPacketDescription>, _ packetDescriptionsSizeNeededOut: UnsafeMutablePointer<Int>) -> OSStatus
func CMSampleBufferGetAudioStreamPacketDescriptionsPtr(sbuf: CMSampleBuffer, _ packetDescriptionsPtrOut: UnsafeMutablePointer<UnsafePointer<AudioStreamPacketDescription>>, _ packetDescriptionsSizeOut: UnsafeMutablePointer<Int>) -> OSStatus
func CMSampleBufferCopyPCMDataIntoAudioBufferList(sbuf: CMSampleBuffer, _ frameOffset: Int32, _ numFrames: Int32, _ bufferList: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
func CMSampleBufferSetDataReady(sbuf: CMSampleBuffer) -> OSStatus
func CMSampleBufferDataIsReady(sbuf: CMSampleBuffer) -> Bool
func CMSampleBufferSetDataFailed(sbuf: CMSampleBuffer, _ status: OSStatus) -> OSStatus
func CMSampleBufferHasDataFailed(sbuf: CMSampleBuffer, _ statusOut: UnsafeMutablePointer<OSStatus>) -> Bool
func CMSampleBufferMakeDataReady(sbuf: CMSampleBuffer) -> OSStatus
func CMSampleBufferTrackDataReadiness(sbuf: CMSampleBuffer, _ sbufToTrack: CMSampleBuffer) -> OSStatus
func CMSampleBufferInvalidate(sbuf: CMSampleBuffer) -> OSStatus
typealias CMSampleBufferInvalidateCallback = @convention(c) (CMSampleBuffer, UInt64) -> Void
func CMSampleBufferSetInvalidateCallback(sbuf: CMSampleBuffer, _ invalidateCallback: CMSampleBufferInvalidateCallback, _ invalidateRefCon: UInt64) -> OSStatus
typealias CMSampleBufferInvalidateHandler = (CMSampleBuffer) -> Void
func CMSampleBufferSetInvalidateHandler(sbuf: CMSampleBuffer, _ invalidateHandler: CMSampleBufferInvalidateHandler) -> OSStatus
func CMSampleBufferIsValid(sbuf: CMSampleBuffer) -> Bool
let kCMSampleBufferNotification_DataBecameReady: CFString
let kCMSampleBufferNotification_DataFailed: CFString
let kCMSampleBufferNotificationParameter_OSStatus: CFString
let kCMSampleBufferConduitNotification_InhibitOutputUntil: CFString
let kCMSampleBufferConduitNotificationParameter_ResumeTag: CFString
let kCMSampleBufferConduitNotification_ResetOutput: CFString
let kCMSampleBufferConduitNotification_UpcomingOutputPTSRangeChanged: CFString
let kCMSampleBufferConduitNotificationParameter_UpcomingOutputPTSRangeMayOverlapQueuedOutputPTSRange: CFString
let kCMSampleBufferConduitNotificationParameter_MinUpcomingOutputPTS: CFString
let kCMSampleBufferConduitNotificationParameter_MaxUpcomingOutputPTS: CFString
let kCMSampleBufferConsumerNotification_BufferConsumed: CFString
func CMSampleBufferGetNumSamples(sbuf: CMSampleBuffer) -> CMItemCount
func CMSampleBufferGetDuration(sbuf: CMSampleBuffer) -> CMTime
func CMSampleBufferGetPresentationTimeStamp(sbuf: CMSampleBuffer) -> CMTime
func CMSampleBufferGetDecodeTimeStamp(sbuf: CMSampleBuffer) -> CMTime
func CMSampleBufferGetOutputDuration(sbuf: CMSampleBuffer) -> CMTime
func CMSampleBufferGetOutputPresentationTimeStamp(sbuf: CMSampleBuffer) -> CMTime
func CMSampleBufferSetOutputPresentationTimeStamp(sbuf: CMSampleBuffer, _ outputPresentationTimeStamp: CMTime) -> OSStatus
func CMSampleBufferGetOutputDecodeTimeStamp(sbuf: CMSampleBuffer) -> CMTime
func CMSampleBufferGetSampleTimingInfoArray(sbuf: CMSampleBuffer, _ timingArrayEntries: CMItemCount, _ timingArrayOut: UnsafeMutablePointer<CMSampleTimingInfo>, _ timingArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus
func CMSampleBufferGetOutputSampleTimingInfoArray(sbuf: CMSampleBuffer, _ timingArrayEntries: CMItemCount, _ timingArrayOut: UnsafeMutablePointer<CMSampleTimingInfo>, _ timingArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus
func CMSampleBufferGetSampleTimingInfo(sbuf: CMSampleBuffer, _ sampleIndex: CMItemIndex, _ timingInfoOut: UnsafeMutablePointer<CMSampleTimingInfo>) -> OSStatus
func CMSampleBufferGetSampleSizeArray(sbuf: CMSampleBuffer, _ sizeArrayEntries: CMItemCount, _ sizeArrayOut: UnsafeMutablePointer<Int>, _ sizeArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus
func CMSampleBufferGetSampleSize(sbuf: CMSampleBuffer, _ sampleIndex: CMItemIndex) -> Int
func CMSampleBufferGetTotalSampleSize(sbuf: CMSampleBuffer) -> Int
func CMSampleBufferGetFormatDescription(sbuf: CMSampleBuffer) -> CMFormatDescription?
func CMSampleBufferGetSampleAttachmentsArray(sbuf: CMSampleBuffer, _ createIfNecessary: Bool) -> CFArray?
let kCMSampleAttachmentKey_NotSync: CFString
let kCMSampleAttachmentKey_PartialSync: CFString
let kCMSampleAttachmentKey_HasRedundantCoding: CFString
let kCMSampleAttachmentKey_IsDependedOnByOthers: CFString
let kCMSampleAttachmentKey_DependsOnOthers: CFString
let kCMSampleAttachmentKey_EarlierDisplayTimesAllowed: CFString
let kCMSampleAttachmentKey_DisplayImmediately: CFString
let kCMSampleAttachmentKey_DoNotDisplay: CFString
let kCMSampleBufferAttachmentKey_ResetDecoderBeforeDecoding: CFString
let kCMSampleBufferAttachmentKey_DrainAfterDecoding: CFString
let kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed: CFString
let kCMSampleBufferAttachmentKey_ResumeOutput: CFString
let kCMSampleBufferAttachmentKey_TransitionID: CFString
let kCMSampleBufferAttachmentKey_TrimDurationAtStart: CFString
let kCMSampleBufferAttachmentKey_TrimDurationAtEnd: CFString
let kCMSampleBufferAttachmentKey_SpeedMultiplier: CFString
let kCMSampleBufferAttachmentKey_Reverse: CFString
let kCMSampleBufferAttachmentKey_FillDiscontinuitiesWithSilence: CFString
let kCMSampleBufferAttachmentKey_EmptyMedia: CFString
let kCMSampleBufferAttachmentKey_PermanentEmptyMedia: CFString
let kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately: CFString
let kCMSampleBufferAttachmentKey_EndsPreviousSampleDuration: CFString
let kCMSampleBufferAttachmentKey_SampleReferenceURL: CFString
let kCMSampleBufferAttachmentKey_SampleReferenceByteOffset: CFString
let kCMSampleBufferAttachmentKey_GradualDecoderRefresh: CFString
let kCMSampleBufferAttachmentKey_DroppedFrameReason: CFString
let kCMSampleBufferDroppedFrameReason_FrameWasLate: CFString
let kCMSampleBufferDroppedFrameReason_OutOfBuffers: CFString
let kCMSampleBufferDroppedFrameReason_Discontinuity: CFString
let kCMSampleBufferAttachmentKey_DroppedFrameReasonInfo: CFString
let kCMSampleBufferDroppedFrameReasonInfo_CameraModeSwitch: CFString
let kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo: CFString
let kCMSampleBufferLensStabilizationInfo_Active: CFString
let kCMSampleBufferLensStabilizationInfo_OutOfRange: CFString
let kCMSampleBufferLensStabilizationInfo_Unavailable: CFString
let kCMSampleBufferLensStabilizationInfo_Off: CFString
let kCMSampleBufferAttachmentKey_ForceKeyFrame: CFString
func CMSampleBufferCallForEachSample(sbuf: CMSampleBuffer, _ callback: @convention(c) (CMSampleBuffer, CMItemCount, UnsafeMutablePointer<Void>) -> OSStatus, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus
func CMSampleBufferCallBlockForEachSample(sbuf: CMSampleBuffer, _ handler: (CMSampleBuffer, CMItemCount) -> OSStatus) -> OSStatus
var kCMSimpleQueueError_AllocationFailed: OSStatus { get }
var kCMSimpleQueueError_RequiredParameterMissing: OSStatus { get }
var kCMSimpleQueueError_ParameterOutOfRange: OSStatus { get }
var kCMSimpleQueueError_QueueIsFull: OSStatus { get }
class CMSimpleQueue {
}
typealias CMSimpleQueueRef = CMSimpleQueue
func CMSimpleQueueGetTypeID() -> CFTypeID
func CMSimpleQueueCreate(allocator: CFAllocator?, _ capacity: Int32, _ queueOut: UnsafeMutablePointer<CMSimpleQueue?>) -> OSStatus
func CMSimpleQueueEnqueue(queue: CMSimpleQueue, _ element: UnsafePointer<Void>) -> OSStatus
func CMSimpleQueueDequeue(queue: CMSimpleQueue) -> UnsafePointer<Void>
func CMSimpleQueueGetHead(queue: CMSimpleQueue) -> UnsafePointer<Void>
func CMSimpleQueueReset(queue: CMSimpleQueue) -> OSStatus
func CMSimpleQueueGetCapacity(queue: CMSimpleQueue) -> Int32
func CMSimpleQueueGetCount(queue: CMSimpleQueue) -> Int32
class CMClock {
}
typealias CMClockRef = CMClock
typealias CMTimebaseRef = CMTimebase
class CMTimebase {
}
typealias CMClockOrTimebaseRef = CMClockOrTimebase
typealias CMClockOrTimebase = CFTypeRef
var kCMClockError_MissingRequiredParameter: OSStatus { get }
var kCMClockError_InvalidParameter: OSStatus { get }
var kCMClockError_AllocationFailed: OSStatus { get }
var kCMClockError_UnsupportedOperation: OSStatus { get }
var kCMTimebaseError_MissingRequiredParameter: OSStatus { get }
var kCMTimebaseError_InvalidParameter: OSStatus { get }
var kCMTimebaseError_AllocationFailed: OSStatus { get }
var kCMTimebaseError_TimerIntervalTooShort: OSStatus { get }
var kCMTimebaseError_ReadOnly: OSStatus { get }
var kCMSyncError_MissingRequiredParameter: OSStatus { get }
var kCMSyncError_InvalidParameter: OSStatus { get }
var kCMSyncError_AllocationFailed: OSStatus { get }
var kCMSyncError_RateMustBeNonZero: OSStatus { get }
func CMClockGetTypeID() -> CFTypeID
func CMClockGetHostTimeClock() -> CMClock
func CMClockConvertHostTimeToSystemUnits(hostTime: CMTime) -> UInt64
func CMClockMakeHostTimeFromSystemUnits(hostTime: UInt64) -> CMTime
func CMClockGetTime(clock: CMClock) -> CMTime
func CMClockGetAnchorTime(clock: CMClock, _ outClockTime: UnsafeMutablePointer<CMTime>, _ outReferenceClockTime: UnsafeMutablePointer<CMTime>) -> OSStatus
func CMClockMightDrift(clock: CMClock, _ otherClock: CMClock) -> Bool
func CMClockInvalidate(clock: CMClock)
func CMTimebaseGetTypeID() -> CFTypeID
func CMTimebaseCreateWithMasterClock(allocator: CFAllocator?, _ masterClock: CMClock, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
func CMTimebaseCreateWithMasterTimebase(allocator: CFAllocator?, _ masterTimebase: CMTimebase, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
func CMTimebaseCopyMasterTimebase(timebase: CMTimebase) -> CMTimebase?
func CMTimebaseCopyMasterClock(timebase: CMTimebase) -> CMClock?
func CMTimebaseCopyMaster(timebase: CMTimebase) -> CMClockOrTimebase?
func CMTimebaseCopyUltimateMasterClock(timebase: CMTimebase) -> CMClock?
func CMTimebaseGetMasterTimebase(timebase: CMTimebase) -> CMTimebase?
func CMTimebaseGetMasterClock(timebase: CMTimebase) -> CMClock?
func CMTimebaseGetMaster(timebase: CMTimebase) -> CMClockOrTimebase?
func CMTimebaseGetUltimateMasterClock(timebase: CMTimebase) -> CMClock?
func CMTimebaseGetTime(timebase: CMTimebase) -> CMTime
func CMTimebaseGetTimeWithTimeScale(timebase: CMTimebase, _ timescale: CMTimeScale, _ method: CMTimeRoundingMethod) -> CMTime
func CMTimebaseSetTime(timebase: CMTimebase, _ time: CMTime) -> OSStatus
func CMTimebaseSetAnchorTime(timebase: CMTimebase, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
func CMTimebaseGetRate(timebase: CMTimebase) -> Float64
func CMTimebaseGetTimeAndRate(timebase: CMTimebase, _ outTime: UnsafeMutablePointer<CMTime>, _ outRate: UnsafeMutablePointer<Float64>) -> OSStatus
func CMTimebaseSetRate(timebase: CMTimebase, _ rate: Float64) -> OSStatus
func CMTimebaseSetRateAndAnchorTime(timebase: CMTimebase, _ rate: Float64, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
func CMTimebaseGetEffectiveRate(timebase: CMTimebase) -> Float64
func CMTimebaseAddTimer(timebase: CMTimebase, _ timer: CFRunLoopTimer, _ runloop: CFRunLoop) -> OSStatus
func CMTimebaseRemoveTimer(timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
func CMTimebaseSetTimerNextFireTime(timebase: CMTimebase, _ timer: CFRunLoopTimer, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
func CMTimebaseSetTimerToFireImmediately(timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
func CMTimebaseAddTimerDispatchSource(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
func CMTimebaseRemoveTimerDispatchSource(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
func CMTimebaseSetTimerDispatchSourceNextFireTime(timebase: CMTimebase, _ timerSource: dispatch_source_t, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
func CMTimebaseSetTimerDispatchSourceToFireImmediately(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
func CMSyncGetRelativeRate(ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase) -> Float64
func CMSyncGetRelativeRateAndAnchorTime(ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase, _ outRelativeRate: UnsafeMutablePointer<Float64>, _ outOfClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>, _ outRelativeToClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>) -> OSStatus
func CMSyncConvertTime(time: CMTime, _ fromClockOrTimebase: CMClockOrTimebase, _ toClockOrTimebase: CMClockOrTimebase) -> CMTime
func CMSyncMightDrift(clockOrTimebase1: CMClockOrTimebase, _ clockOrTimebase2: CMClockOrTimebase) -> Bool
func CMSyncGetTime(clockOrTimebase: CMClockOrTimebase) -> CMTime
func CMTimebaseNotificationBarrier(timebase: CMTimebase) -> OSStatus
let kCMTimebaseNotification_EffectiveRateChanged: CFString
let kCMTimebaseNotification_TimeJumped: CFString
let kCMTimebaseNotificationKey_EventTime: CFString
let kCMTextMarkupAttribute_ForegroundColorARGB: CFString
let kCMTextMarkupAttribute_BackgroundColorARGB: CFString
let kCMTextMarkupAttribute_CharacterBackgroundColorARGB: CFString
let kCMTextMarkupAttribute_BoldStyle: CFString
let kCMTextMarkupAttribute_ItalicStyle: CFString
let kCMTextMarkupAttribute_UnderlineStyle: CFString
let kCMTextMarkupAttribute_FontFamilyName: CFString
let kCMTextMarkupAttribute_GenericFontFamilyName: CFString
let kCMTextMarkupGenericFontName_Default: CFString
let kCMTextMarkupGenericFontName_Serif: CFString
let kCMTextMarkupGenericFontName_SansSerif: CFString
let kCMTextMarkupGenericFontName_Monospace: CFString
let kCMTextMarkupGenericFontName_ProportionalSerif: CFString
let kCMTextMarkupGenericFontName_ProportionalSansSerif: CFString
let kCMTextMarkupGenericFontName_MonospaceSerif: CFString
let kCMTextMarkupGenericFontName_MonospaceSansSerif: CFString
let kCMTextMarkupGenericFontName_Casual: CFString
let kCMTextMarkupGenericFontName_Cursive: CFString
let kCMTextMarkupGenericFontName_Fantasy: CFString
let kCMTextMarkupGenericFontName_SmallCapital: CFString
let kCMTextMarkupAttribute_BaseFontSizePercentageRelativeToVideoHeight: CFString
let kCMTextMarkupAttribute_RelativeFontSize: CFString
let kCMTextMarkupAttribute_VerticalLayout: CFString
let kCMTextVerticalLayout_LeftToRight: CFString
let kCMTextVerticalLayout_RightToLeft: CFString
let kCMTextMarkupAttribute_Alignment: CFString
let kCMTextMarkupAlignmentType_Start: CFString
let kCMTextMarkupAlignmentType_Middle: CFString
let kCMTextMarkupAlignmentType_End: CFString
let kCMTextMarkupAlignmentType_Left: CFString
let kCMTextMarkupAlignmentType_Right: CFString
let kCMTextMarkupAttribute_TextPositionPercentageRelativeToWritingDirection: CFString
let kCMTextMarkupAttribute_OrthogonalLinePositionPercentageRelativeToWritingDirection: CFString
let kCMTextMarkupAttribute_WritingDirectionSizePercentage: CFString
let kCMTextMarkupAttribute_CharacterEdgeStyle: CFString
let kCMTextMarkupCharacterEdgeStyle_None: CFString
let kCMTextMarkupCharacterEdgeStyle_Raised: CFString
let kCMTextMarkupCharacterEdgeStyle_Depressed: CFString
let kCMTextMarkupCharacterEdgeStyle_Uniform: CFString
let kCMTextMarkupCharacterEdgeStyle_DropShadow: CFString
typealias CMTimeValue = Int64
typealias CMTimeScale = Int32
var kCMTimeMaxTimescale: Int { get }
typealias CMTimeEpoch = Int64
struct CMTimeFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Valid: CMTimeFlags { get }
  static var HasBeenRounded: CMTimeFlags { get }
  static var PositiveInfinity: CMTimeFlags { get }
  static var NegativeInfinity: CMTimeFlags { get }
  static var Indefinite: CMTimeFlags { get }
  static var ImpliedValueFlagsMask: CMTimeFlags { get }
}
struct CMTime {
  var value: CMTimeValue
  var timescale: CMTimeScale
  var flags: CMTimeFlags
  var epoch: CMTimeEpoch
  init()
  init(value: CMTimeValue, timescale: CMTimeScale, flags: CMTimeFlags, epoch: CMTimeEpoch)
}
extension CMTime {
  init(seconds: Double, preferredTimescale: CMTimeScale)
  init(value: CMTimeValue, timescale: CMTimeScale)
}
extension CMTime {
  var isValid: Bool { get }
  var isPositiveInfinity: Bool { get }
  var isNegativeInfinity: Bool { get }
  var isIndefinite: Bool { get }
  var isNumeric: Bool { get }
  var hasBeenRounded: Bool { get }
  var seconds: Double { get }
  func convertScale(newTimescale: Int32, method: CMTimeRoundingMethod) -> CMTime
}
extension CMTime : Equatable, Comparable {
}
let kCMTimeInvalid: CMTime
let kCMTimeIndefinite: CMTime
let kCMTimePositiveInfinity: CMTime
let kCMTimeNegativeInfinity: CMTime
let kCMTimeZero: CMTime
func CMTimeMake(value: Int64, _ timescale: Int32) -> CMTime
func CMTimeMakeWithEpoch(value: Int64, _ timescale: Int32, _ epoch: Int64) -> CMTime
func CMTimeMakeWithSeconds(seconds: Float64, _ preferredTimeScale: Int32) -> CMTime
func CMTimeGetSeconds(time: CMTime) -> Float64
enum CMTimeRoundingMethod : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case RoundHalfAwayFromZero
  case RoundTowardZero
  case RoundAwayFromZero
  case QuickTime
  case RoundTowardPositiveInfinity
  case RoundTowardNegativeInfinity
  static var Default: CMTimeRoundingMethod { get }
}
func CMTimeConvertScale(time: CMTime, _ newTimescale: Int32, _ method: CMTimeRoundingMethod) -> CMTime
func CMTimeAdd(addend1: CMTime, _ addend2: CMTime) -> CMTime
func CMTimeSubtract(minuend: CMTime, _ subtrahend: CMTime) -> CMTime
func CMTimeMultiply(time: CMTime, _ multiplier: Int32) -> CMTime
func CMTimeMultiplyByFloat64(time: CMTime, _ multiplier: Float64) -> CMTime
func CMTimeMultiplyByRatio(time: CMTime, _ multiplier: Int32, _ divisor: Int32) -> CMTime
func CMTimeCompare(time1: CMTime, _ time2: CMTime) -> Int32
func CMTimeMinimum(time1: CMTime, _ time2: CMTime) -> CMTime
func CMTimeMaximum(time1: CMTime, _ time2: CMTime) -> CMTime
func CMTimeAbsoluteValue(time: CMTime) -> CMTime
func CMTimeCopyAsDictionary(time: CMTime, _ allocator: CFAllocator?) -> CFDictionary?
func CMTimeMakeFromDictionary(dict: CFDictionary?) -> CMTime
let kCMTimeValueKey: CFString
let kCMTimeScaleKey: CFString
let kCMTimeEpochKey: CFString
let kCMTimeFlagsKey: CFString
func CMTimeCopyDescription(allocator: CFAllocator?, _ time: CMTime) -> CFString?
func CMTimeShow(time: CMTime)
struct CMTimeRange {
  var start: CMTime
  var duration: CMTime
  init()
  init(start: CMTime, duration: CMTime)
}
extension CMTimeRange {
  init(start: CMTime, end: CMTime)
  var isValid: Bool { get }
  var isIndefinite: Bool { get }
  var isEmpty: Bool { get }
  var end: CMTime { get }
  @warn_unused_result
  func union(otherRange: CMTimeRange) -> CMTimeRange
  @warn_unused_result
  func intersection(otherRange: CMTimeRange) -> CMTimeRange
  @warn_unused_result
  func containsTime(time: CMTime) -> Bool
  @warn_unused_result
  func containsTimeRange(range: CMTimeRange) -> Bool
}
extension CMTimeRange : Equatable {
}
let kCMTimeRangeZero: CMTimeRange
let kCMTimeRangeInvalid: CMTimeRange
func CMTimeRangeMake(start: CMTime, _ duration: CMTime) -> CMTimeRange
func CMTimeRangeGetUnion(range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
func CMTimeRangeGetIntersection(range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
func CMTimeRangeEqual(range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
func CMTimeRangeContainsTime(range: CMTimeRange, _ time: CMTime) -> Bool
func CMTimeRangeContainsTimeRange(range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
func CMTimeRangeGetEnd(range: CMTimeRange) -> CMTime
func CMTimeMapTimeFromRangeToRange(t: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
func CMTimeClampToRange(time: CMTime, _ range: CMTimeRange) -> CMTime
func CMTimeMapDurationFromRangeToRange(dur: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
func CMTimeRangeFromTimeToTime(start: CMTime, _ end: CMTime) -> CMTimeRange
func CMTimeRangeCopyAsDictionary(range: CMTimeRange, _ allocator: CFAllocator?) -> CFDictionary?
func CMTimeRangeMakeFromDictionary(dict: CFDictionary) -> CMTimeRange
let kCMTimeRangeStartKey: CFString
let kCMTimeRangeDurationKey: CFString
func CMTimeRangeCopyDescription(allocator: CFAllocator?, _ range: CMTimeRange) -> CFString?
func CMTimeRangeShow(range: CMTimeRange)
struct CMTimeMapping {
  var source: CMTimeRange
  var target: CMTimeRange
  init()
  init(source: CMTimeRange, target: CMTimeRange)
}
let kCMTimeMappingInvalid: CMTimeMapping
func CMTimeMappingMake(source: CMTimeRange, _ target: CMTimeRange) -> CMTimeMapping
func CMTimeMappingMakeEmpty(target: CMTimeRange) -> CMTimeMapping
func CMTimeMappingCopyAsDictionary(mapping: CMTimeMapping, _ allocator: CFAllocator?) -> CFDictionary?
func CMTimeMappingMakeFromDictionary(dict: CFDictionary) -> CMTimeMapping
let kCMTimeMappingSourceKey: CFString
let kCMTimeMappingTargetKey: CFString
func CMTimeMappingCopyDescription(allocator: CFAllocator?, _ mapping: CMTimeMapping) -> CFString?
func CMTimeMappingShow(mapping: CMTimeMapping)
