
let kVTCompressionPropertyKey_NumberOfPendingFrames: CFString
let kVTCompressionPropertyKey_PixelBufferPoolIsShared: CFString
let kVTCompressionPropertyKey_VideoEncoderPixelBufferAttributes: CFString
let kVTCompressionPropertyKey_MaxKeyFrameInterval: CFString
let kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration: CFString
let kVTCompressionPropertyKey_AllowTemporalCompression: CFString
let kVTCompressionPropertyKey_AllowFrameReordering: CFString
let kVTCompressionPropertyKey_AverageBitRate: CFString
let kVTCompressionPropertyKey_DataRateLimits: CFString
let kVTCompressionPropertyKey_Quality: CFString
let kVTCompressionPropertyKey_MoreFramesBeforeStart: CFString
let kVTCompressionPropertyKey_MoreFramesAfterEnd: CFString
let kVTCompressionPropertyKey_ProfileLevel: CFString
let kVTProfileLevel_H264_Baseline_1_3: CFString
let kVTProfileLevel_H264_Baseline_3_0: CFString
let kVTProfileLevel_H264_Baseline_3_1: CFString
let kVTProfileLevel_H264_Baseline_3_2: CFString
let kVTProfileLevel_H264_Baseline_4_0: CFString
let kVTProfileLevel_H264_Baseline_4_1: CFString
let kVTProfileLevel_H264_Baseline_4_2: CFString
let kVTProfileLevel_H264_Baseline_5_0: CFString
let kVTProfileLevel_H264_Baseline_5_1: CFString
let kVTProfileLevel_H264_Baseline_5_2: CFString
let kVTProfileLevel_H264_Baseline_AutoLevel: CFString
let kVTProfileLevel_H264_Main_3_0: CFString
let kVTProfileLevel_H264_Main_3_1: CFString
let kVTProfileLevel_H264_Main_3_2: CFString
let kVTProfileLevel_H264_Main_4_0: CFString
let kVTProfileLevel_H264_Main_4_1: CFString
let kVTProfileLevel_H264_Main_4_2: CFString
let kVTProfileLevel_H264_Main_5_0: CFString
let kVTProfileLevel_H264_Main_5_1: CFString
let kVTProfileLevel_H264_Main_5_2: CFString
let kVTProfileLevel_H264_Main_AutoLevel: CFString
let kVTProfileLevel_H264_Extended_5_0: CFString
let kVTProfileLevel_H264_Extended_AutoLevel: CFString
let kVTProfileLevel_H264_High_3_0: CFString
let kVTProfileLevel_H264_High_3_1: CFString
let kVTProfileLevel_H264_High_3_2: CFString
let kVTProfileLevel_H264_High_4_0: CFString
let kVTProfileLevel_H264_High_4_1: CFString
let kVTProfileLevel_H264_High_4_2: CFString
let kVTProfileLevel_H264_High_5_0: CFString
let kVTProfileLevel_H264_High_5_1: CFString
let kVTProfileLevel_H264_High_5_2: CFString
let kVTProfileLevel_H264_High_AutoLevel: CFString
let kVTProfileLevel_MP4V_Simple_L0: CFString
let kVTProfileLevel_MP4V_Simple_L1: CFString
let kVTProfileLevel_MP4V_Simple_L2: CFString
let kVTProfileLevel_MP4V_Simple_L3: CFString
let kVTProfileLevel_MP4V_Main_L2: CFString
let kVTProfileLevel_MP4V_Main_L3: CFString
let kVTProfileLevel_MP4V_Main_L4: CFString
let kVTProfileLevel_MP4V_AdvancedSimple_L0: CFString
let kVTProfileLevel_MP4V_AdvancedSimple_L1: CFString
let kVTProfileLevel_MP4V_AdvancedSimple_L2: CFString
let kVTProfileLevel_MP4V_AdvancedSimple_L3: CFString
let kVTProfileLevel_MP4V_AdvancedSimple_L4: CFString
let kVTProfileLevel_H263_Profile0_Level10: CFString
let kVTProfileLevel_H263_Profile0_Level45: CFString
let kVTProfileLevel_H263_Profile3_Level45: CFString
let kVTCompressionPropertyKey_H264EntropyMode: CFString
let kVTH264EntropyMode_CAVLC: CFString
let kVTH264EntropyMode_CABAC: CFString
let kVTCompressionPropertyKey_Depth: CFString
let kVTCompressionPropertyKey_MaxFrameDelayCount: CFString
var kVTUnlimitedFrameDelayCount: Int { get }
let kVTCompressionPropertyKey_MaxH264SliceBytes: CFString
let kVTCompressionPropertyKey_RealTime: CFString
let kVTCompressionPropertyKey_SourceFrameCount: CFString
let kVTCompressionPropertyKey_ExpectedFrameRate: CFString
let kVTCompressionPropertyKey_ExpectedDuration: CFString
let kVTEncodeFrameOptionKey_ForceKeyFrame: CFString
let kVTCompressionPropertyKey_CleanAperture: CFString
let kVTCompressionPropertyKey_PixelAspectRatio: CFString
let kVTCompressionPropertyKey_FieldCount: CFString
let kVTCompressionPropertyKey_FieldDetail: CFString
let kVTCompressionPropertyKey_AspectRatio16x9: CFString
let kVTCompressionPropertyKey_ProgressiveScan: CFString
let kVTCompressionPropertyKey_ColorPrimaries: CFString
let kVTCompressionPropertyKey_TransferFunction: CFString
let kVTCompressionPropertyKey_YCbCrMatrix: CFString
let kVTCompressionPropertyKey_ICCProfile: CFString
let kVTCompressionPropertyKey_PixelTransferProperties: CFString
let kVTCompressionPropertyKey_MultiPassStorage: CFString
typealias VTCompressionSessionRef = VTCompressionSession
class VTCompressionSession {
}
typealias VTCompressionOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
let kVTVideoEncoderSpecification_EncoderID: CFString
func VTCompressionSessionCreate(allocator: CFAllocator?, _ width: Int32, _ height: Int32, _ codecType: CMVideoCodecType, _ encoderSpecification: CFDictionary?, _ sourceImageBufferAttributes: CFDictionary?, _ compressedDataAllocator: CFAllocator?, _ outputCallback: VTCompressionOutputCallback?, _ outputCallbackRefCon: UnsafeMutablePointer<Void>, _ compressionSessionOut: UnsafeMutablePointer<VTCompressionSession?>) -> OSStatus
func VTCompressionSessionInvalidate(session: VTCompressionSession)
func VTCompressionSessionGetTypeID() -> CFTypeID
func VTCompressionSessionGetPixelBufferPool(session: VTCompressionSession) -> CVPixelBufferPool?
func VTCompressionSessionPrepareToEncodeFrames(session: VTCompressionSession) -> OSStatus
func VTCompressionSessionEncodeFrame(session: VTCompressionSession, _ imageBuffer: CVImageBuffer, _ presentationTimeStamp: CMTime, _ duration: CMTime, _ frameProperties: CFDictionary?, _ sourceFrameRefCon: UnsafeMutablePointer<Void>, _ infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>) -> OSStatus
typealias VTCompressionOutputHandler = (OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
func VTCompressionSessionEncodeFrameWithOutputHandler(session: VTCompressionSession, _ imageBuffer: CVImageBuffer, _ presentationTimeStamp: CMTime, _ duration: CMTime, _ frameProperties: CFDictionary?, _ infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>, _ outputHandler: VTCompressionOutputHandler) -> OSStatus
func VTCompressionSessionCompleteFrames(session: VTCompressionSession, _ completeUntilPresentationTimeStamp: CMTime) -> OSStatus
struct VTCompressionSessionOptionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BeginFinalPass: VTCompressionSessionOptionFlags { get }
}
func VTCompressionSessionBeginPass(session: VTCompressionSession, _ beginPassFlags: VTCompressionSessionOptionFlags, _ reserved: UnsafeMutablePointer<UInt32>) -> OSStatus
func VTCompressionSessionEndPass(session: VTCompressionSession, _ furtherPassesRequestedOut: UnsafeMutablePointer<DarwinBoolean>, _ reserved: UnsafeMutablePointer<UInt32>) -> OSStatus
func VTCompressionSessionGetTimeRangesForNextPass(session: VTCompressionSession, _ timeRangeCountOut: UnsafeMutablePointer<CMItemCount>, _ timeRangeArrayOut: UnsafeMutablePointer<UnsafePointer<CMTimeRange>>) -> OSStatus
let kVTDecompressionPropertyKey_PixelBufferPool: CFString
let kVTDecompressionPropertyKey_PixelBufferPoolIsShared: CFString
let kVTDecompressionPropertyKey_OutputPoolRequestedMinimumBufferCount: CFString
let kVTDecompressionPropertyKey_NumberOfFramesBeingDecoded: CFString
let kVTDecompressionPropertyKey_MinOutputPresentationTimeStampOfFramesBeingDecoded: CFString
let kVTDecompressionPropertyKey_MaxOutputPresentationTimeStampOfFramesBeingDecoded: CFString
let kVTDecompressionPropertyKey_ContentHasInterframeDependencies: CFString
let kVTDecompressionPropertyKey_RealTime: CFString
let kVTDecompressionPropertyKey_ThreadCount: CFString
let kVTDecompressionPropertyKey_FieldMode: CFString
let kVTDecompressionProperty_FieldMode_BothFields: CFString
let kVTDecompressionProperty_FieldMode_TopFieldOnly: CFString
let kVTDecompressionProperty_FieldMode_BottomFieldOnly: CFString
let kVTDecompressionProperty_FieldMode_SingleField: CFString
let kVTDecompressionProperty_FieldMode_DeinterlaceFields: CFString
let kVTDecompressionPropertyKey_DeinterlaceMode: CFString
let kVTDecompressionProperty_DeinterlaceMode_VerticalFilter: CFString
let kVTDecompressionProperty_DeinterlaceMode_Temporal: CFString
let kVTDecompressionPropertyKey_ReducedResolutionDecode: CFString
let kVTDecompressionResolutionKey_Width: CFString
let kVTDecompressionResolutionKey_Height: CFString
let kVTDecompressionPropertyKey_ReducedCoefficientDecode: CFString
let kVTDecompressionPropertyKey_ReducedFrameDelivery: CFString
let kVTDecompressionPropertyKey_OnlyTheseFrames: CFString
let kVTDecompressionProperty_OnlyTheseFrames_AllFrames: CFString
let kVTDecompressionProperty_OnlyTheseFrames_NonDroppableFrames: CFString
let kVTDecompressionProperty_OnlyTheseFrames_IFrames: CFString
let kVTDecompressionProperty_OnlyTheseFrames_KeyFrames: CFString
let kVTDecompressionPropertyKey_SuggestedQualityOfServiceTiers: CFString
let kVTDecompressionPropertyKey_SupportedPixelFormatsOrderedByQuality: CFString
let kVTDecompressionPropertyKey_SupportedPixelFormatsOrderedByPerformance: CFString
let kVTDecompressionPropertyKey_PixelFormatsWithReducedResolutionSupport: CFString
let kVTDecompressionPropertyKey_PixelTransferProperties: CFString
class VTDecompressionSession {
}
typealias VTDecompressionSessionRef = VTDecompressionSession
typealias VTDecompressionOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
struct VTDecompressionOutputCallbackRecord {
  var decompressionOutputCallback: VTDecompressionOutputCallback?
  var decompressionOutputRefCon: UnsafeMutablePointer<Void>
  init()
  init(decompressionOutputCallback: VTDecompressionOutputCallback?, decompressionOutputRefCon: UnsafeMutablePointer<Void>)
}
func VTDecompressionSessionCreate(allocator: CFAllocator?, _ videoFormatDescription: CMVideoFormatDescription, _ videoDecoderSpecification: CFDictionary?, _ destinationImageBufferAttributes: CFDictionary?, _ outputCallback: UnsafePointer<VTDecompressionOutputCallbackRecord>, _ decompressionSessionOut: UnsafeMutablePointer<VTDecompressionSession?>) -> OSStatus
func VTDecompressionSessionInvalidate(session: VTDecompressionSession)
func VTDecompressionSessionGetTypeID() -> CFTypeID
func VTDecompressionSessionDecodeFrame(session: VTDecompressionSession, _ sampleBuffer: CMSampleBuffer, _ decodeFlags: VTDecodeFrameFlags, _ sourceFrameRefCon: UnsafeMutablePointer<Void>, _ infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>) -> OSStatus
typealias VTDecompressionOutputHandler = (OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
func VTDecompressionSessionDecodeFrameWithOutputHandler(session: VTDecompressionSession, _ sampleBuffer: CMSampleBuffer, _ decodeFlags: VTDecodeFrameFlags, _ infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>, _ outputHandler: VTDecompressionOutputHandler) -> OSStatus
func VTDecompressionSessionFinishDelayedFrames(session: VTDecompressionSession) -> OSStatus
func VTDecompressionSessionCanAcceptFormatDescription(session: VTDecompressionSession, _ newFormatDesc: CMFormatDescription) -> Bool
func VTDecompressionSessionWaitForAsynchronousFrames(session: VTDecompressionSession) -> OSStatus
func VTDecompressionSessionCopyBlackPixelBuffer(session: VTDecompressionSession, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> OSStatus
var kVTPropertyNotSupportedErr: OSStatus { get }
var kVTPropertyReadOnlyErr: OSStatus { get }
var kVTParameterErr: OSStatus { get }
var kVTInvalidSessionErr: OSStatus { get }
var kVTAllocationFailedErr: OSStatus { get }
var kVTPixelTransferNotSupportedErr: OSStatus { get }
var kVTCouldNotFindVideoDecoderErr: OSStatus { get }
var kVTCouldNotCreateInstanceErr: OSStatus { get }
var kVTCouldNotFindVideoEncoderErr: OSStatus { get }
var kVTVideoDecoderBadDataErr: OSStatus { get }
var kVTVideoDecoderUnsupportedDataFormatErr: OSStatus { get }
var kVTVideoDecoderMalfunctionErr: OSStatus { get }
var kVTVideoEncoderMalfunctionErr: OSStatus { get }
var kVTVideoDecoderNotAvailableNowErr: OSStatus { get }
var kVTImageRotationNotSupportedErr: OSStatus { get }
var kVTVideoEncoderNotAvailableNowErr: OSStatus { get }
var kVTFormatDescriptionChangeNotSupportedErr: OSStatus { get }
var kVTInsufficientSourceColorDataErr: OSStatus { get }
var kVTCouldNotCreateColorCorrectionDataErr: OSStatus { get }
var kVTColorSyncTransformConvertFailedErr: OSStatus { get }
var kVTVideoDecoderAuthorizationErr: OSStatus { get }
var kVTVideoEncoderAuthorizationErr: OSStatus { get }
var kVTColorCorrectionPixelTransferFailedErr: OSStatus { get }
var kVTMultiPassStorageIdentifierMismatchErr: OSStatus { get }
var kVTMultiPassStorageInvalidErr: OSStatus { get }
var kVTFrameSiloInvalidTimeStampErr: OSStatus { get }
var kVTFrameSiloInvalidTimeRangeErr: OSStatus { get }
var kVTCouldNotFindTemporalFilterErr: OSStatus { get }
var kVTPixelTransferNotPermittedErr: OSStatus { get }
struct VTDecodeFrameFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var _EnableAsynchronousDecompression: VTDecodeFrameFlags { get }
  static var _DoNotOutputFrame: VTDecodeFrameFlags { get }
  static var _1xRealTimePlayback: VTDecodeFrameFlags { get }
  static var _EnableTemporalProcessing: VTDecodeFrameFlags { get }
}
struct VTDecodeInfoFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Asynchronous: VTDecodeInfoFlags { get }
  static var FrameDropped: VTDecodeInfoFlags { get }
  static var ImageBufferModifiable: VTDecodeInfoFlags { get }
}
struct VTEncodeInfoFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Asynchronous: VTEncodeInfoFlags { get }
  static var FrameDropped: VTEncodeInfoFlags { get }
}
class VTFrameSilo {
}
typealias VTFrameSiloRef = VTFrameSilo
func VTFrameSiloGetTypeID() -> CFTypeID
func VTFrameSiloCreate(allocator: CFAllocator?, _ fileURL: CFURL?, _ timeRange: CMTimeRange, _ options: CFDictionary?, _ siloOut: UnsafeMutablePointer<VTFrameSilo?>) -> OSStatus
func VTFrameSiloAddSampleBuffer(silo: VTFrameSilo, _ sampleBuffer: CMSampleBuffer) -> OSStatus
func VTFrameSiloSetTimeRangesForNextPass(silo: VTFrameSilo, _ timeRangeCount: CMItemCount, _ timeRangeArray: UnsafePointer<CMTimeRange>) -> OSStatus
func VTFrameSiloGetProgressOfCurrentPass(silo: VTFrameSilo, _ progressOut: UnsafeMutablePointer<Float32>) -> OSStatus
func VTFrameSiloCallFunctionForEachSampleBuffer(silo: VTFrameSilo, _ timeRange: CMTimeRange, _ callbackInfo: UnsafeMutablePointer<Void>, _ callback: @convention(c) (UnsafeMutablePointer<Void>, CMSampleBuffer) -> OSStatus) -> OSStatus
func VTFrameSiloCallBlockForEachSampleBuffer(silo: VTFrameSilo, _ timeRange: CMTimeRange, _ handler: (CMSampleBuffer) -> OSStatus) -> OSStatus
class VTMultiPassStorage {
}
typealias VTMultiPassStorageRef = VTMultiPassStorage
func VTMultiPassStorageGetTypeID() -> CFTypeID
func VTMultiPassStorageCreate(allocator: CFAllocator?, _ fileURL: CFURL?, _ timeRange: CMTimeRange, _ options: CFDictionary?, _ multiPassStorageOut: UnsafeMutablePointer<VTMultiPassStorage?>) -> OSStatus
let kVTMultiPassStorageCreationOption_DoNotDelete: CFString
func VTMultiPassStorageClose(multiPassStorage: VTMultiPassStorage) -> OSStatus
typealias VTSession = CFTypeRef
typealias VTSessionRef = VTSession
func VTSessionCopySupportedPropertyDictionary(session: VTSession, _ supportedPropertyDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
let kVTPropertyTypeKey: CFString
let kVTPropertyType_Enumeration: CFString
let kVTPropertyType_Boolean: CFString
let kVTPropertyType_Number: CFString
let kVTPropertyReadWriteStatusKey: CFString
let kVTPropertyReadWriteStatus_ReadOnly: CFString
let kVTPropertyReadWriteStatus_ReadWrite: CFString
let kVTPropertyShouldBeSerializedKey: CFString
let kVTPropertySupportedValueMinimumKey: CFString
let kVTPropertySupportedValueMaximumKey: CFString
let kVTPropertySupportedValueListKey: CFString
let kVTPropertyDocumentationKey: CFString
func VTSessionSetProperty(session: VTSession, _ propertyKey: CFString, _ propertyValue: AnyObject) -> OSStatus
func VTSessionCopyProperty(session: VTSession, _ propertyKey: CFString, _ allocator: CFAllocator?, _ propertyValueOut: UnsafeMutablePointer<Void>) -> OSStatus
func VTSessionSetProperties(session: VTSession, _ propertyDictionary: CFDictionary) -> OSStatus
func VTSessionCopySerializableProperties(session: VTSession, _ allocator: CFAllocator?, _ dictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
func VTCreateCGImageFromCVPixelBuffer(pixelBuffer: CVPixelBuffer, _ options: CFDictionary?, _ imageOut: UnsafeMutablePointer<CGImage?>) -> OSStatus
func VTCopyVideoEncoderList(options: CFDictionary?, _ listOfVideoEncodersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
let kVTVideoEncoderList_CodecType: CFString
let kVTVideoEncoderList_EncoderID: CFString
let kVTVideoEncoderList_CodecName: CFString
let kVTVideoEncoderList_EncoderName: CFString
let kVTVideoEncoderList_DisplayName: CFString
