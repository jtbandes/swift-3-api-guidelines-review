
var CGL_VERSION_1_0: Int32 { get }
var CGL_VERSION_1_1: Int32 { get }
var CGL_VERSION_1_2: Int32 { get }
var CGL_VERSION_1_3: Int32 { get }
func CGLChoosePixelFormat(attribs: UnsafePointer<CGLPixelFormatAttribute>, _ pix: UnsafeMutablePointer<CGLPixelFormatObj>, _ npix: UnsafeMutablePointer<GLint>) -> CGLError
func CGLDestroyPixelFormat(pix: CGLPixelFormatObj) -> CGLError
func CGLDescribePixelFormat(pix: CGLPixelFormatObj, _ pix_num: GLint, _ attrib: CGLPixelFormatAttribute, _ value: UnsafeMutablePointer<GLint>) -> CGLError
func CGLReleasePixelFormat(pix: CGLPixelFormatObj)
func CGLRetainPixelFormat(pix: CGLPixelFormatObj) -> CGLPixelFormatObj
func CGLGetPixelFormatRetainCount(pix: CGLPixelFormatObj) -> GLuint
func CGLQueryRendererInfo(display_mask: GLuint, _ rend: UnsafeMutablePointer<CGLRendererInfoObj>, _ nrend: UnsafeMutablePointer<GLint>) -> CGLError
func CGLDestroyRendererInfo(rend: CGLRendererInfoObj) -> CGLError
func CGLDescribeRenderer(rend: CGLRendererInfoObj, _ rend_num: GLint, _ prop: CGLRendererProperty, _ value: UnsafeMutablePointer<GLint>) -> CGLError
func CGLCreateContext(pix: CGLPixelFormatObj, _ share: CGLContextObj, _ ctx: UnsafeMutablePointer<CGLContextObj>) -> CGLError
func CGLDestroyContext(ctx: CGLContextObj) -> CGLError
func CGLRetainContext(ctx: CGLContextObj) -> CGLContextObj
func CGLReleaseContext(ctx: CGLContextObj)
func CGLGetContextRetainCount(ctx: CGLContextObj) -> GLuint
func CGLGetPixelFormat(ctx: CGLContextObj) -> CGLPixelFormatObj
func CGLClearDrawable(ctx: CGLContextObj) -> CGLError
func CGLFlushDrawable(ctx: CGLContextObj) -> CGLError
func CGLEnable(ctx: CGLContextObj, _ pname: CGLContextEnable) -> CGLError
func CGLDisable(ctx: CGLContextObj, _ pname: CGLContextEnable) -> CGLError
func CGLIsEnabled(ctx: CGLContextObj, _ pname: CGLContextEnable, _ enable: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetParameter(ctx: CGLContextObj, _ pname: CGLContextParameter, _ params: UnsafePointer<GLint>) -> CGLError
func CGLGetParameter(ctx: CGLContextObj, _ pname: CGLContextParameter, _ params: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetVirtualScreen(ctx: CGLContextObj, _ screen: GLint) -> CGLError
func CGLGetVirtualScreen(ctx: CGLContextObj, _ screen: UnsafeMutablePointer<GLint>) -> CGLError
func CGLUpdateContext(ctx: CGLContextObj) -> CGLError
func CGLSetGlobalOption(pname: CGLGlobalOption, _ params: UnsafePointer<GLint>) -> CGLError
func CGLGetGlobalOption(pname: CGLGlobalOption, _ params: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetOption(pname: CGLGlobalOption, _ param: GLint) -> CGLError
func CGLGetOption(pname: CGLGlobalOption, _ param: UnsafeMutablePointer<GLint>) -> CGLError
func CGLLockContext(ctx: CGLContextObj) -> CGLError
func CGLUnlockContext(ctx: CGLContextObj) -> CGLError
func CGLGetVersion(majorvers: UnsafeMutablePointer<GLint>, _ minorvers: UnsafeMutablePointer<GLint>)
func CGLErrorString(error: CGLError) -> UnsafePointer<Int8>
func CGLSetCurrentContext(ctx: CGLContextObj) -> CGLError
func CGLGetCurrentContext() -> CGLContextObj
typealias CGLShareGroupObj = COpaquePointer
func CGLGetShareGroup(ctx: CGLContextObj) -> CGLShareGroupObj
typealias cl_device_id = COpaquePointer
func CGLGetDeviceFromGLRenderer(rendererID: GLint) -> cl_device_id
var kCGLRendererGenericFloatID: Int { get }
var kCGLRendererAppleSWID: Int { get }
var kCGLRendererATIRadeonX2000ID: Int { get }
var kCGLRendererATIRadeonX3000ID: Int { get }
var kCGLRendererATIRadeonX4000ID: Int { get }
var kCGLRendererGeForce8xxxID: Int { get }
var kCGLRendererGeForceID: Int { get }
var kCGLRendererIntelHDID: Int { get }
var kCGLRendererIntelHD4000ID: Int { get }
var kCGLRendererIntelHD5000ID: Int { get }
var kCGLRendererIDMatchingMask: Int32 { get }
typealias CGLContextObj = UnsafeMutablePointer<_CGLContextObject>
typealias CGLPixelFormatObj = COpaquePointer
typealias CGLRendererInfoObj = COpaquePointer
struct _CGLPixelFormatAttribute : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLPFAAllRenderers: _CGLPixelFormatAttribute { get }
var kCGLPFATripleBuffer: _CGLPixelFormatAttribute { get }
var kCGLPFADoubleBuffer: _CGLPixelFormatAttribute { get }
var kCGLPFAColorSize: _CGLPixelFormatAttribute { get }
var kCGLPFAAlphaSize: _CGLPixelFormatAttribute { get }
var kCGLPFADepthSize: _CGLPixelFormatAttribute { get }
var kCGLPFAStencilSize: _CGLPixelFormatAttribute { get }
var kCGLPFAMinimumPolicy: _CGLPixelFormatAttribute { get }
var kCGLPFAMaximumPolicy: _CGLPixelFormatAttribute { get }
var kCGLPFASampleBuffers: _CGLPixelFormatAttribute { get }
var kCGLPFASamples: _CGLPixelFormatAttribute { get }
var kCGLPFAColorFloat: _CGLPixelFormatAttribute { get }
var kCGLPFAMultisample: _CGLPixelFormatAttribute { get }
var kCGLPFASupersample: _CGLPixelFormatAttribute { get }
var kCGLPFASampleAlpha: _CGLPixelFormatAttribute { get }
var kCGLPFARendererID: _CGLPixelFormatAttribute { get }
var kCGLPFANoRecovery: _CGLPixelFormatAttribute { get }
var kCGLPFAAccelerated: _CGLPixelFormatAttribute { get }
var kCGLPFAClosestPolicy: _CGLPixelFormatAttribute { get }
var kCGLPFABackingStore: _CGLPixelFormatAttribute { get }
var kCGLPFABackingVolatile: _CGLPixelFormatAttribute { get }
var kCGLPFADisplayMask: _CGLPixelFormatAttribute { get }
var kCGLPFAAllowOfflineRenderers: _CGLPixelFormatAttribute { get }
var kCGLPFAAcceleratedCompute: _CGLPixelFormatAttribute { get }
var kCGLPFAOpenGLProfile: _CGLPixelFormatAttribute { get }
var kCGLPFASupportsAutomaticGraphicsSwitching: _CGLPixelFormatAttribute { get }
var kCGLPFAVirtualScreenCount: _CGLPixelFormatAttribute { get }
var kCGLPFAAuxBuffers: _CGLPixelFormatAttribute { get }
var kCGLPFAAccumSize: _CGLPixelFormatAttribute { get }
var kCGLPFAAuxDepthStencil: _CGLPixelFormatAttribute { get }
var kCGLPFAStereo: _CGLPixelFormatAttribute { get }
typealias CGLPixelFormatAttribute = _CGLPixelFormatAttribute
struct _CGLRendererProperty : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLRPOffScreen: _CGLRendererProperty { get }
var kCGLRPRendererID: _CGLRendererProperty { get }
var kCGLRPAccelerated: _CGLRendererProperty { get }
var kCGLRPBackingStore: _CGLRendererProperty { get }
var kCGLRPWindow: _CGLRendererProperty { get }
var kCGLRPCompliant: _CGLRendererProperty { get }
var kCGLRPDisplayMask: _CGLRendererProperty { get }
var kCGLRPBufferModes: _CGLRendererProperty { get }
var kCGLRPColorModes: _CGLRendererProperty { get }
var kCGLRPAccumModes: _CGLRendererProperty { get }
var kCGLRPDepthModes: _CGLRendererProperty { get }
var kCGLRPStencilModes: _CGLRendererProperty { get }
var kCGLRPMaxAuxBuffers: _CGLRendererProperty { get }
var kCGLRPMaxSampleBuffers: _CGLRendererProperty { get }
var kCGLRPMaxSamples: _CGLRendererProperty { get }
var kCGLRPSampleModes: _CGLRendererProperty { get }
var kCGLRPSampleAlpha: _CGLRendererProperty { get }
var kCGLRPGPUVertProcCapable: _CGLRendererProperty { get }
var kCGLRPGPUFragProcCapable: _CGLRendererProperty { get }
var kCGLRPRendererCount: _CGLRendererProperty { get }
var kCGLRPOnline: _CGLRendererProperty { get }
var kCGLRPAcceleratedCompute: _CGLRendererProperty { get }
var kCGLRPVideoMemoryMegabytes: _CGLRendererProperty { get }
var kCGLRPTextureMemoryMegabytes: _CGLRendererProperty { get }
var kCGLRPMajorGLVersion: _CGLRendererProperty { get }
typealias CGLRendererProperty = _CGLRendererProperty
struct _CGLContextEnable : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLCESwapRectangle: _CGLContextEnable { get }
var kCGLCESwapLimit: _CGLContextEnable { get }
var kCGLCERasterization: _CGLContextEnable { get }
var kCGLCEStateValidation: _CGLContextEnable { get }
var kCGLCESurfaceBackingSize: _CGLContextEnable { get }
var kCGLCEDisplayListOptimization: _CGLContextEnable { get }
var kCGLCEMPEngine: _CGLContextEnable { get }
var kCGLCECrashOnRemovedFunctions: _CGLContextEnable { get }
typealias CGLContextEnable = _CGLContextEnable
struct _CGLGPURestartStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLCPGPURestartStatusNone: _CGLGPURestartStatus { get }
var kCGLCPGPURestartStatusCaused: _CGLGPURestartStatus { get }
var kCGLCPGPURestartStatusBlacklisted: _CGLGPURestartStatus { get }
typealias CGLGPURestartStatus = _CGLGPURestartStatus
struct _CGLContextParameter : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLCPSwapRectangle: _CGLContextParameter { get }
var kCGLCPSwapInterval: _CGLContextParameter { get }
var kCGLCPDispatchTableSize: _CGLContextParameter { get }
var kCGLCPClientStorage: _CGLContextParameter { get }
var kCGLCPSurfaceOrder: _CGLContextParameter { get }
var kCGLCPSurfaceOpacity: _CGLContextParameter { get }
var kCGLCPSurfaceBackingSize: _CGLContextParameter { get }
var kCGLCPSurfaceSurfaceVolatile: _CGLContextParameter { get }
var kCGLCPReclaimResources: _CGLContextParameter { get }
var kCGLCPCurrentRendererID: _CGLContextParameter { get }
var kCGLCPGPUVertexProcessing: _CGLContextParameter { get }
var kCGLCPGPUFragmentProcessing: _CGLContextParameter { get }
var kCGLCPHasDrawable: _CGLContextParameter { get }
var kCGLCPMPSwapsInFlight: _CGLContextParameter { get }
var kCGLCPGPURestartStatus: _CGLContextParameter { get }
var kCGLCPAbortOnGPURestartStatusBlacklisted: _CGLContextParameter { get }
var kCGLCPSupportGPURestart: _CGLContextParameter { get }
var kCGLCPSupportSeparateAddressSpace: _CGLContextParameter { get }
var kCGLCPContextPriorityRequest: _CGLContextParameter { get }
typealias CGLContextParameter = _CGLContextParameter
struct CGLCPContextPriorityRequest : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLCPContextPriorityRequestHigh: CGLCPContextPriorityRequest { get }
var kCGLCPContextPriorityRequestNormal: CGLCPContextPriorityRequest { get }
var kCGLCPContextPriorityRequestLow: CGLCPContextPriorityRequest { get }
struct _CGLGlobalOption : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLGOFormatCacheSize: _CGLGlobalOption { get }
var kCGLGOClearFormatCache: _CGLGlobalOption { get }
var kCGLGORetainRenderers: _CGLGlobalOption { get }
var kCGLGOUseBuildCache: _CGLGlobalOption { get }
typealias CGLGlobalOption = _CGLGlobalOption
struct _CGLOpenGLProfile : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLOGLPVersion_Legacy: _CGLOpenGLProfile { get }
var kCGLOGLPVersion_3_2_Core: _CGLOpenGLProfile { get }
var kCGLOGLPVersion_GL3_Core: _CGLOpenGLProfile { get }
var kCGLOGLPVersion_GL4_Core: _CGLOpenGLProfile { get }
typealias CGLOpenGLProfile = _CGLOpenGLProfile
struct _CGLError : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCGLNoError: _CGLError { get }
var kCGLBadAttribute: _CGLError { get }
var kCGLBadProperty: _CGLError { get }
var kCGLBadPixelFormat: _CGLError { get }
var kCGLBadRendererInfo: _CGLError { get }
var kCGLBadContext: _CGLError { get }
var kCGLBadDrawable: _CGLError { get }
var kCGLBadDisplay: _CGLError { get }
var kCGLBadState: _CGLError { get }
var kCGLBadValue: _CGLError { get }
var kCGLBadMatch: _CGLError { get }
var kCGLBadEnumeration: _CGLError { get }
var kCGLBadOffScreen: _CGLError { get }
var kCGLBadFullScreen: _CGLError { get }
var kCGLBadWindow: _CGLError { get }
var kCGLBadAddress: _CGLError { get }
var kCGLBadCodeModule: _CGLError { get }
var kCGLBadAlloc: _CGLError { get }
var kCGLBadConnection: _CGLError { get }
typealias CGLError = _CGLError
var kCGLMonoscopicBit: Int32 { get }
var kCGLStereoscopicBit: Int32 { get }
var kCGLSingleBufferBit: Int32 { get }
var kCGLDoubleBufferBit: Int32 { get }
var kCGLTripleBufferBit: Int32 { get }
var kCGL0Bit: Int32 { get }
var kCGL1Bit: Int32 { get }
var kCGL2Bit: Int32 { get }
var kCGL3Bit: Int32 { get }
var kCGL4Bit: Int32 { get }
var kCGL5Bit: Int32 { get }
var kCGL6Bit: Int32 { get }
var kCGL8Bit: Int32 { get }
var kCGL10Bit: Int32 { get }
var kCGL12Bit: Int32 { get }
var kCGL16Bit: Int32 { get }
var kCGL24Bit: Int32 { get }
var kCGL32Bit: Int32 { get }
var kCGL48Bit: Int32 { get }
var kCGL64Bit: Int32 { get }
var kCGL96Bit: Int32 { get }
var kCGL128Bit: Int32 { get }
var kCGLRGB444Bit: Int32 { get }
var kCGLARGB4444Bit: Int32 { get }
var kCGLRGB444A8Bit: Int32 { get }
var kCGLRGB555Bit: Int32 { get }
var kCGLARGB1555Bit: Int32 { get }
var kCGLRGB555A8Bit: Int32 { get }
var kCGLRGB565Bit: Int32 { get }
var kCGLRGB565A8Bit: Int32 { get }
var kCGLRGB888Bit: Int32 { get }
var kCGLARGB8888Bit: Int32 { get }
var kCGLRGB888A8Bit: Int32 { get }
var kCGLRGB101010Bit: Int32 { get }
var kCGLARGB2101010Bit: Int32 { get }
var kCGLRGB101010_A8Bit: Int32 { get }
var kCGLRGB121212Bit: Int32 { get }
var kCGLARGB12121212Bit: Int32 { get }
var kCGLRGB161616Bit: Int32 { get }
var kCGLRGBA16161616Bit: Int32 { get }
var kCGLRGBFloat64Bit: Int32 { get }
var kCGLRGBAFloat64Bit: Int32 { get }
var kCGLRGBFloat128Bit: Int32 { get }
var kCGLRGBAFloat128Bit: Int32 { get }
var kCGLRGBFloat256Bit: Int32 { get }
var kCGLRGBAFloat256Bit: Int32 { get }
var kCGLSupersampleBit: Int32 { get }
var kCGLMultisampleBit: Int32 { get }
var kCGLARGB16161616Bit: Int32 { get }
typealias GLbitfield = UInt32
typealias GLboolean = UInt8
typealias GLbyte = Int8
typealias GLclampf = Float
typealias GLenum = UInt32
typealias GLfloat = Float
typealias GLint = Int32
typealias GLshort = Int16
typealias GLsizei = Int32
typealias GLubyte = UInt8
typealias GLuint = UInt32
typealias GLushort = UInt16
typealias GLchar = Int8
typealias GLcharARB = Int8
typealias GLhandleARB = UnsafeMutablePointer<Void>
typealias GLdouble = Double
typealias GLclampd = Double
typealias GLfixed = Int32
typealias GLhalf = UInt16
typealias GLhalfARB = UInt16
typealias GLint64 = Int64
typealias GLsync = COpaquePointer
typealias GLuint64 = UInt64
typealias GLint64EXT = Int64
typealias GLuint64EXT = UInt64
typealias GLintptr = Int
typealias GLsizeiptr = Int
typealias GLintptrARB = Int
typealias GLsizeiptrARB = Int
