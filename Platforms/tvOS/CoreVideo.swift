
var COREVIDEO_SUPPORTS_DIRECT3D: Int32 { get }
var COREVIDEO_DECLARE_NULLABILITY: Int32 { get }
typealias CVOptionFlags = UInt64
struct CVSMPTETime {
  var subframes: Int16
  var subframeDivisor: Int16
  var counter: UInt32
  var type: UInt32
  var flags: UInt32
  var hours: Int16
  var minutes: Int16
  var seconds: Int16
  var frames: Int16
  init()
  init(subframes: Int16, subframeDivisor: Int16, counter: UInt32, type: UInt32, flags: UInt32, hours: Int16, minutes: Int16, seconds: Int16, frames: Int16)
}
var kCVSMPTETimeType24: Int { get }
var kCVSMPTETimeType25: Int { get }
var kCVSMPTETimeType30Drop: Int { get }
var kCVSMPTETimeType30: Int { get }
var kCVSMPTETimeType2997: Int { get }
var kCVSMPTETimeType2997Drop: Int { get }
var kCVSMPTETimeType60: Int { get }
var kCVSMPTETimeType5994: Int { get }
var kCVSMPTETimeValid: Int { get }
var kCVSMPTETimeRunning: Int { get }
var kCVTimeIsIndefinite: Int { get }
struct CVTime {
  var timeValue: Int64
  var timeScale: Int32
  var flags: Int32
  init()
  init(timeValue: Int64, timeScale: Int32, flags: Int32)
}
struct CVTimeStamp {
  var version: UInt32
  var videoTimeScale: Int32
  var videoTime: Int64
  var hostTime: UInt64
  var rateScalar: Double
  var videoRefreshPeriod: Int64
  var smpteTime: CVSMPTETime
  var flags: UInt64
  var reserved: UInt64
  init()
  init(version: UInt32, videoTimeScale: Int32, videoTime: Int64, hostTime: UInt64, rateScalar: Double, videoRefreshPeriod: Int64, smpteTime: CVSMPTETime, flags: UInt64, reserved: UInt64)
}
var kCVTimeStampVideoTimeValid: Int { get }
var kCVTimeStampHostTimeValid: Int { get }
var kCVTimeStampSMPTETimeValid: Int { get }
var kCVTimeStampVideoRefreshPeriodValid: Int { get }
var kCVTimeStampRateScalarValid: Int { get }
var kCVTimeStampTopField: Int { get }
var kCVTimeStampBottomField: Int { get }
var kCVTimeStampVideoHostTimeValid: Int { get }
var kCVTimeStampIsInterlaced: Int { get }
let kCVZeroTime: CVTime
let kCVIndefiniteTime: CVTime
let kCVBufferPropagatedAttachmentsKey: CFString
let kCVBufferNonPropagatedAttachmentsKey: CFString
let kCVBufferMovieTimeKey: CFString
let kCVBufferTimeValueKey: CFString
let kCVBufferTimeScaleKey: CFString
typealias CVAttachmentMode = UInt32
var kCVAttachmentMode_ShouldNotPropagate: CVAttachmentMode { get }
var kCVAttachmentMode_ShouldPropagate: CVAttachmentMode { get }
class CVBuffer {
}
typealias CVBufferRef = CVBuffer
func CVBufferSetAttachment(buffer: CVBuffer, _ key: CFString, _ value: AnyObject, _ attachmentMode: CVAttachmentMode)
func CVBufferGetAttachment(buffer: CVBuffer, _ key: CFString, _ attachmentMode: UnsafeMutablePointer<CVAttachmentMode>) -> Unmanaged<AnyObject>?
func CVBufferRemoveAttachment(buffer: CVBuffer, _ key: CFString)
func CVBufferRemoveAllAttachments(buffer: CVBuffer)
func CVBufferGetAttachments(buffer: CVBuffer, _ attachmentMode: CVAttachmentMode) -> Unmanaged<CFDictionary>?
func CVBufferSetAttachments(buffer: CVBuffer, _ theAttachments: CFDictionary, _ attachmentMode: CVAttachmentMode)
func CVBufferPropagateAttachments(sourceBuffer: CVBuffer, _ destinationBuffer: CVBuffer)
let kCVImageBufferCGColorSpaceKey: CFString
let kCVImageBufferCleanApertureKey: CFString
let kCVImageBufferCleanApertureWidthKey: CFString
let kCVImageBufferCleanApertureHeightKey: CFString
let kCVImageBufferCleanApertureHorizontalOffsetKey: CFString
let kCVImageBufferCleanApertureVerticalOffsetKey: CFString
let kCVImageBufferPreferredCleanApertureKey: CFString
let kCVImageBufferFieldCountKey: CFString
let kCVImageBufferFieldDetailKey: CFString
let kCVImageBufferFieldDetailTemporalTopFirst: CFString
let kCVImageBufferFieldDetailTemporalBottomFirst: CFString
let kCVImageBufferFieldDetailSpatialFirstLineEarly: CFString
let kCVImageBufferFieldDetailSpatialFirstLineLate: CFString
let kCVImageBufferPixelAspectRatioKey: CFString
let kCVImageBufferPixelAspectRatioHorizontalSpacingKey: CFString
let kCVImageBufferPixelAspectRatioVerticalSpacingKey: CFString
let kCVImageBufferDisplayDimensionsKey: CFString
let kCVImageBufferDisplayWidthKey: CFString
let kCVImageBufferDisplayHeightKey: CFString
let kCVImageBufferGammaLevelKey: CFString
let kCVImageBufferICCProfileKey: CFString
let kCVImageBufferYCbCrMatrixKey: CFString
let kCVImageBufferYCbCrMatrix_ITU_R_709_2: CFString
let kCVImageBufferYCbCrMatrix_ITU_R_601_4: CFString
let kCVImageBufferYCbCrMatrix_SMPTE_240M_1995: CFString
let kCVImageBufferYCbCrMatrix_DCI_P3: CFString
let kCVImageBufferYCbCrMatrix_P3_D65: CFString
let kCVImageBufferYCbCrMatrix_ITU_R_2020: CFString
let kCVImageBufferColorPrimariesKey: CFString
let kCVImageBufferColorPrimaries_ITU_R_709_2: CFString
let kCVImageBufferColorPrimaries_EBU_3213: CFString
let kCVImageBufferColorPrimaries_SMPTE_C: CFString
let kCVImageBufferColorPrimaries_P22: CFString
let kCVImageBufferColorPrimaries_DCI_P3: CFString
let kCVImageBufferColorPrimaries_P3_D65: CFString
let kCVImageBufferColorPrimaries_ITU_R_2020: CFString
let kCVImageBufferTransferFunctionKey: CFString
let kCVImageBufferTransferFunction_ITU_R_709_2: CFString
let kCVImageBufferTransferFunction_SMPTE_240M_1995: CFString
let kCVImageBufferTransferFunction_UseGamma: CFString
let kCVImageBufferTransferFunction_ITU_R_2020: CFString
let kCVImageBufferChromaLocationTopFieldKey: CFString
let kCVImageBufferChromaLocationBottomFieldKey: CFString
let kCVImageBufferChromaLocation_Left: CFString
let kCVImageBufferChromaLocation_Center: CFString
let kCVImageBufferChromaLocation_TopLeft: CFString
let kCVImageBufferChromaLocation_Top: CFString
let kCVImageBufferChromaLocation_BottomLeft: CFString
let kCVImageBufferChromaLocation_Bottom: CFString
let kCVImageBufferChromaLocation_DV420: CFString
let kCVImageBufferChromaSubsamplingKey: CFString
let kCVImageBufferChromaSubsampling_420: CFString
let kCVImageBufferChromaSubsampling_422: CFString
let kCVImageBufferChromaSubsampling_411: CFString
let kCVImageBufferAlphaChannelIsOpaque: CFString
typealias CVImageBufferRef = CVImageBuffer
typealias CVImageBuffer = CVBufferRef
func CVImageBufferGetEncodedSize(imageBuffer: CVImageBuffer) -> CGSize
func CVImageBufferGetDisplaySize(imageBuffer: CVImageBuffer) -> CGSize
func CVImageBufferGetCleanRect(imageBuffer: CVImageBuffer) -> CGRect
func CVImageBufferIsFlipped(imageBuffer: CVImageBuffer) -> Bool
typealias CVMetalTexture = CVImageBuffer
typealias CVMetalTextureRef = CVMetalTexture
func CVMetalTextureGetTypeID() -> CFTypeID
func CVMetalTextureGetTexture(image: CVMetalTexture) -> MTLTexture?
func CVMetalTextureIsFlipped(image: CVMetalTexture) -> Bool
func CVMetalTextureGetCleanTexCoords(image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
let kCVMetalTextureCacheMaximumTextureAgeKey: CFString
class CVMetalTextureCache {
}
typealias CVMetalTextureCacheRef = CVMetalTextureCache
func CVMetalTextureCacheGetTypeID() -> CFTypeID
func CVMetalTextureCacheCreate(allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ metalDevice: MTLDevice, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<Unmanaged<CVMetalTextureCache>?>) -> CVReturn
func CVMetalTextureCacheCreateTextureFromImage(allocator: CFAllocator?, _ textureCache: CVMetalTextureCache, _ sourceImage: CVImageBuffer, _ textureAttributes: CFDictionary?, _ pixelFormat: MTLPixelFormat, _ width: Int, _ height: Int, _ planeIndex: Int, _ textureOut: UnsafeMutablePointer<Unmanaged<CVMetalTexture>?>) -> CVReturn
func CVMetalTextureCacheFlush(textureCache: CVMetalTextureCache, _ options: CVOptionFlags)
typealias CVOpenGLESTexture = CVImageBuffer
typealias CVOpenGLESTextureRef = CVOpenGLESTexture
func CVOpenGLESTextureGetTypeID() -> CFTypeID
func CVOpenGLESTextureGetTarget(image: CVOpenGLESTexture) -> GLenum
func CVOpenGLESTextureGetName(image: CVOpenGLESTexture) -> GLuint
func CVOpenGLESTextureIsFlipped(image: CVOpenGLESTexture) -> Bool
func CVOpenGLESTextureGetCleanTexCoords(image: CVOpenGLESTexture, _ lowerLeft: UnsafeMutablePointer<GLfloat>, _ lowerRight: UnsafeMutablePointer<GLfloat>, _ upperRight: UnsafeMutablePointer<GLfloat>, _ upperLeft: UnsafeMutablePointer<GLfloat>)
class CVOpenGLESTextureCache {
}
typealias CVOpenGLESTextureCacheRef = CVOpenGLESTextureCache
var COREVIDEO_USE_EAGLCONTEXT_CLASS_IN_API: Int32 { get }
typealias CVEAGLContext = EAGLContext
let kCVOpenGLESTextureCacheMaximumTextureAgeKey: CFString
func CVOpenGLESTextureCacheGetTypeID() -> CFTypeID
func CVOpenGLESTextureCacheCreate(allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ eaglContext: CVEAGLContext, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<CVOpenGLESTextureCache?>) -> CVReturn
func CVOpenGLESTextureCacheCreateTextureFromImage(allocator: CFAllocator?, _ textureCache: CVOpenGLESTextureCache, _ sourceImage: CVImageBuffer, _ textureAttributes: CFDictionary?, _ target: GLenum, _ internalFormat: GLint, _ width: GLsizei, _ height: GLsizei, _ format: GLenum, _ type: GLenum, _ planeIndex: Int, _ textureOut: UnsafeMutablePointer<CVOpenGLESTexture?>) -> CVReturn
func CVOpenGLESTextureCacheFlush(textureCache: CVOpenGLESTextureCache, _ options: CVOptionFlags)
var kCVPixelFormatType_1Monochrome: OSType { get }
var kCVPixelFormatType_2Indexed: OSType { get }
var kCVPixelFormatType_4Indexed: OSType { get }
var kCVPixelFormatType_8Indexed: OSType { get }
var kCVPixelFormatType_1IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_2IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_4IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_8IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_16BE555: OSType { get }
var kCVPixelFormatType_16LE555: OSType { get }
var kCVPixelFormatType_16LE5551: OSType { get }
var kCVPixelFormatType_16BE565: OSType { get }
var kCVPixelFormatType_16LE565: OSType { get }
var kCVPixelFormatType_24RGB: OSType { get }
var kCVPixelFormatType_24BGR: OSType { get }
var kCVPixelFormatType_32ARGB: OSType { get }
var kCVPixelFormatType_32BGRA: OSType { get }
var kCVPixelFormatType_32ABGR: OSType { get }
var kCVPixelFormatType_32RGBA: OSType { get }
var kCVPixelFormatType_64ARGB: OSType { get }
var kCVPixelFormatType_48RGB: OSType { get }
var kCVPixelFormatType_32AlphaGray: OSType { get }
var kCVPixelFormatType_16Gray: OSType { get }
var kCVPixelFormatType_30RGB: OSType { get }
var kCVPixelFormatType_422YpCbCr8: OSType { get }
var kCVPixelFormatType_4444YpCbCrA8: OSType { get }
var kCVPixelFormatType_4444YpCbCrA8R: OSType { get }
var kCVPixelFormatType_4444AYpCbCr8: OSType { get }
var kCVPixelFormatType_4444AYpCbCr16: OSType { get }
var kCVPixelFormatType_444YpCbCr8: OSType { get }
var kCVPixelFormatType_422YpCbCr16: OSType { get }
var kCVPixelFormatType_422YpCbCr10: OSType { get }
var kCVPixelFormatType_444YpCbCr10: OSType { get }
var kCVPixelFormatType_420YpCbCr8Planar: OSType { get }
var kCVPixelFormatType_420YpCbCr8PlanarFullRange: OSType { get }
var kCVPixelFormatType_422YpCbCr_4A_8BiPlanar: OSType { get }
var kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange: OSType { get }
var kCVPixelFormatType_420YpCbCr8BiPlanarFullRange: OSType { get }
var kCVPixelFormatType_422YpCbCr8_yuvs: OSType { get }
var kCVPixelFormatType_422YpCbCr8FullRange: OSType { get }
var kCVPixelFormatType_OneComponent8: OSType { get }
var kCVPixelFormatType_TwoComponent8: OSType { get }
var kCVPixelFormatType_OneComponent16Half: OSType { get }
var kCVPixelFormatType_OneComponent32Float: OSType { get }
var kCVPixelFormatType_TwoComponent16Half: OSType { get }
var kCVPixelFormatType_TwoComponent32Float: OSType { get }
var kCVPixelFormatType_64RGBAHalf: OSType { get }
var kCVPixelFormatType_128RGBAFloat: OSType { get }
typealias CVPixelBufferLockFlags = CVOptionFlags
var kCVPixelBufferLock_ReadOnly: CVPixelBufferLockFlags { get }
struct CVPlanarComponentInfo {
  var offset: Int32
  var rowBytes: UInt32
  init()
  init(offset: Int32, rowBytes: UInt32)
}
struct CVPlanarPixelBufferInfo {
  var componentInfo: (CVPlanarComponentInfo)
  init()
  init(componentInfo: (CVPlanarComponentInfo))
}
struct CVPlanarPixelBufferInfo_YCbCrPlanar {
  var componentInfoY: CVPlanarComponentInfo
  var componentInfoCb: CVPlanarComponentInfo
  var componentInfoCr: CVPlanarComponentInfo
  init()
  init(componentInfoY: CVPlanarComponentInfo, componentInfoCb: CVPlanarComponentInfo, componentInfoCr: CVPlanarComponentInfo)
}
struct CVPlanarPixelBufferInfo_YCbCrBiPlanar {
  var componentInfoY: CVPlanarComponentInfo
  var componentInfoCbCr: CVPlanarComponentInfo
  init()
  init(componentInfoY: CVPlanarComponentInfo, componentInfoCbCr: CVPlanarComponentInfo)
}
let kCVPixelBufferPixelFormatTypeKey: CFString
let kCVPixelBufferMemoryAllocatorKey: CFString
let kCVPixelBufferWidthKey: CFString
let kCVPixelBufferHeightKey: CFString
let kCVPixelBufferExtendedPixelsLeftKey: CFString
let kCVPixelBufferExtendedPixelsTopKey: CFString
let kCVPixelBufferExtendedPixelsRightKey: CFString
let kCVPixelBufferExtendedPixelsBottomKey: CFString
let kCVPixelBufferBytesPerRowAlignmentKey: CFString
let kCVPixelBufferCGBitmapContextCompatibilityKey: CFString
let kCVPixelBufferCGImageCompatibilityKey: CFString
let kCVPixelBufferOpenGLCompatibilityKey: CFString
let kCVPixelBufferPlaneAlignmentKey: CFString
let kCVPixelBufferIOSurfacePropertiesKey: CFString
let kCVPixelBufferOpenGLESCompatibilityKey: CFString
let kCVPixelBufferMetalCompatibilityKey: CFString
let kCVPixelBufferOpenGLESTextureCacheCompatibilityKey: CFString
typealias CVPixelBuffer = CVImageBuffer
typealias CVPixelBufferRef = CVPixelBuffer
func CVPixelBufferGetTypeID() -> CFTypeID
func CVPixelBufferCreateResolvedAttributesDictionary(allocator: CFAllocator?, _ attributes: CFArray?, _ resolvedDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> CVReturn
func CVPixelBufferCreate(allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
typealias CVPixelBufferReleaseBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>) -> Void
func CVPixelBufferCreateWithBytes(allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ baseAddress: UnsafeMutablePointer<Void>, _ bytesPerRow: Int, _ releaseCallback: CVPixelBufferReleaseBytesCallback?, _ releaseRefCon: UnsafeMutablePointer<Void>, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
typealias CVPixelBufferReleasePlanarBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int, Int, UnsafeMutablePointer<UnsafePointer<Void>>) -> Void
func CVPixelBufferCreateWithPlanarBytes(allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ dataPtr: UnsafeMutablePointer<Void>, _ dataSize: Int, _ numberOfPlanes: Int, _ planeBaseAddress: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ planeWidth: UnsafeMutablePointer<Int>, _ planeHeight: UnsafeMutablePointer<Int>, _ planeBytesPerRow: UnsafeMutablePointer<Int>, _ releaseCallback: CVPixelBufferReleasePlanarBytesCallback?, _ releaseRefCon: UnsafeMutablePointer<Void>, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
func CVPixelBufferLockBaseAddress(pixelBuffer: CVPixelBuffer, _ lockFlags: CVPixelBufferLockFlags) -> CVReturn
func CVPixelBufferUnlockBaseAddress(pixelBuffer: CVPixelBuffer, _ unlockFlags: CVPixelBufferLockFlags) -> CVReturn
func CVPixelBufferGetWidth(pixelBuffer: CVPixelBuffer) -> Int
func CVPixelBufferGetHeight(pixelBuffer: CVPixelBuffer) -> Int
func CVPixelBufferGetPixelFormatType(pixelBuffer: CVPixelBuffer) -> OSType
func CVPixelBufferGetBaseAddress(pixelBuffer: CVPixelBuffer) -> UnsafeMutablePointer<Void>
func CVPixelBufferGetBytesPerRow(pixelBuffer: CVPixelBuffer) -> Int
func CVPixelBufferGetDataSize(pixelBuffer: CVPixelBuffer) -> Int
func CVPixelBufferIsPlanar(pixelBuffer: CVPixelBuffer) -> Bool
func CVPixelBufferGetPlaneCount(pixelBuffer: CVPixelBuffer) -> Int
func CVPixelBufferGetWidthOfPlane(pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int
func CVPixelBufferGetHeightOfPlane(pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int
func CVPixelBufferGetBaseAddressOfPlane(pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> UnsafeMutablePointer<Void>
func CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int
func CVPixelBufferGetExtendedPixels(pixelBuffer: CVPixelBuffer, _ extraColumnsOnLeft: UnsafeMutablePointer<Int>, _ extraColumnsOnRight: UnsafeMutablePointer<Int>, _ extraRowsOnTop: UnsafeMutablePointer<Int>, _ extraRowsOnBottom: UnsafeMutablePointer<Int>)
func CVPixelBufferFillExtendedPixels(pixelBuffer: CVPixelBuffer) -> CVReturn
class CVPixelBufferPool {
}
typealias CVPixelBufferPoolRef = CVPixelBufferPool
let kCVPixelBufferPoolMinimumBufferCountKey: CFString
let kCVPixelBufferPoolMaximumBufferAgeKey: CFString
func CVPixelBufferPoolGetTypeID() -> CFTypeID
func CVPixelBufferPoolCreate(allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ pixelBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVPixelBufferPool?>) -> CVReturn
func CVPixelBufferPoolGetAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?
func CVPixelBufferPoolGetPixelBufferAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?
func CVPixelBufferPoolCreatePixelBuffer(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
func CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ auxAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
let kCVPixelBufferPoolAllocationThresholdKey: CFString
let kCVPixelBufferPoolFreeBufferNotification: CFString
typealias CVPixelBufferPoolFlushFlags = CVOptionFlags
var kCVPixelBufferPoolFlushExcessBuffers: CVPixelBufferPoolFlushFlags { get }
func CVPixelBufferPoolFlush(pool: CVPixelBufferPool, _ options: CVPixelBufferPoolFlushFlags)
let kCVPixelFormatName: CFString
let kCVPixelFormatConstant: CFString
let kCVPixelFormatCodecType: CFString
let kCVPixelFormatFourCC: CFString
let kCVPixelFormatContainsAlpha: CFString
let kCVPixelFormatContainsYCbCr: CFString
let kCVPixelFormatContainsRGB: CFString
let kCVPixelFormatComponentRange: CFString
let kCVPixelFormatComponentRange_VideoRange: CFString
let kCVPixelFormatComponentRange_FullRange: CFString
let kCVPixelFormatComponentRange_WideRange: CFString
let kCVPixelFormatPlanes: CFString
let kCVPixelFormatBlockWidth: CFString
let kCVPixelFormatBlockHeight: CFString
let kCVPixelFormatBitsPerBlock: CFString
let kCVPixelFormatBlockHorizontalAlignment: CFString
let kCVPixelFormatBlockVerticalAlignment: CFString
let kCVPixelFormatBlackBlock: CFString
let kCVPixelFormatHorizontalSubsampling: CFString
let kCVPixelFormatVerticalSubsampling: CFString
let kCVPixelFormatOpenGLFormat: CFString
let kCVPixelFormatOpenGLType: CFString
let kCVPixelFormatOpenGLInternalFormat: CFString
let kCVPixelFormatCGBitmapInfo: CFString
let kCVPixelFormatQDCompatibility: CFString
let kCVPixelFormatCGBitmapContextCompatibility: CFString
let kCVPixelFormatCGImageCompatibility: CFString
let kCVPixelFormatOpenGLCompatibility: CFString
let kCVPixelFormatOpenGLESCompatibility: CFString
typealias CVFillExtendedPixelsCallBack = @convention(c) (CVPixelBuffer, UnsafeMutablePointer<Void>) -> DarwinBoolean
struct CVFillExtendedPixelsCallBackData {
  var version: CFIndex
  var fillCallBack: CVFillExtendedPixelsCallBack?
  var refCon: UnsafeMutablePointer<Void>
  init()
  init(version: CFIndex, fillCallBack: CVFillExtendedPixelsCallBack?, refCon: UnsafeMutablePointer<Void>)
}
let kCVPixelFormatFillExtendedPixelsCallback: CFString
func CVPixelFormatDescriptionCreateWithPixelFormatType(allocator: CFAllocator?, _ pixelFormat: OSType) -> Unmanaged<CFDictionary>?
func CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(allocator: CFAllocator?) -> Unmanaged<CFArray>?
func CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(description: CFDictionary, _ pixelFormat: OSType)
typealias CVReturn = Int32
var kCVReturnSuccess: CVReturn { get }
var kCVReturnFirst: CVReturn { get }
var kCVReturnError: CVReturn { get }
var kCVReturnInvalidArgument: CVReturn { get }
var kCVReturnAllocationFailed: CVReturn { get }
var kCVReturnUnsupported: CVReturn { get }
var kCVReturnInvalidDisplay: CVReturn { get }
var kCVReturnDisplayLinkAlreadyRunning: CVReturn { get }
var kCVReturnDisplayLinkNotRunning: CVReturn { get }
var kCVReturnDisplayLinkCallbacksNotSet: CVReturn { get }
var kCVReturnInvalidPixelFormat: CVReturn { get }
var kCVReturnInvalidSize: CVReturn { get }
var kCVReturnInvalidPixelBufferAttributes: CVReturn { get }
var kCVReturnPixelBufferNotOpenGLCompatible: CVReturn { get }
var kCVReturnPixelBufferNotMetalCompatible: CVReturn { get }
var kCVReturnWouldExceedAllocationThreshold: CVReturn { get }
var kCVReturnPoolAllocationFailed: CVReturn { get }
var kCVReturnInvalidPoolAttributes: CVReturn { get }
var kCVReturnLast: CVReturn { get }
