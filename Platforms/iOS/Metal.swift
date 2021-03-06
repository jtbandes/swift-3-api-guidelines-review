
enum MTLDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Struct
  case Array
  case Float
  case Float2
  case Float3
  case Float4
  case Float2x2
  case Float2x3
  case Float2x4
  case Float3x2
  case Float3x3
  case Float3x4
  case Float4x2
  case Float4x3
  case Float4x4
  case Half
  case Half2
  case Half3
  case Half4
  case Half2x2
  case Half2x3
  case Half2x4
  case Half3x2
  case Half3x3
  case Half3x4
  case Half4x2
  case Half4x3
  case Half4x4
  case Int
  case Int2
  case Int3
  case Int4
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Short
  case Short2
  case Short3
  case Short4
  case UShort
  case UShort2
  case UShort3
  case UShort4
  case Char
  case Char2
  case Char3
  case Char4
  case UChar
  case UChar2
  case UChar3
  case UChar4
  case Bool
  case Bool2
  case Bool3
  case Bool4
}
enum MTLArgumentType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Buffer
  case ThreadgroupMemory
  case Texture
  case Sampler
}
enum MTLArgumentAccess : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ReadOnly
  case ReadWrite
  case WriteOnly
}
class MTLStructMember : Object {
  var name: String { get }
  var offset: Int { get }
  var dataType: MTLDataType { get }
  func structType() -> MTLStructType?
  func arrayType() -> MTLArrayType?
  init()
}
class MTLStructType : Object {
  var members: [MTLStructMember] { get }
  func memberByName(name: String) -> MTLStructMember?
  init()
}
class MTLArrayType : Object {
  var arrayLength: Int { get }
  var elementType: MTLDataType { get }
  var stride: Int { get }
  func elementStructType() -> MTLStructType?
  func element() -> MTLArrayType?
  init()
}
class MTLArgument : Object {
  var name: String { get }
  var type: MTLArgumentType { get }
  var access: MTLArgumentAccess { get }
  var index: Int { get }
  var isActive: Bool { get }
  var bufferAlignment: Int { get }
  var bufferDataSize: Int { get }
  var bufferDataType: MTLDataType { get }
  var bufferStructType: MTLStructType { get }
  var threadgroupMemoryAlignment: Int { get }
  var threadgroupMemoryDataSize: Int { get }
  var textureType: MTLTextureType { get }
  var textureDataType: MTLDataType { get }
  init()
}
struct MTLBlitOption : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MTLBlitOption { get }
  static var DepthFromDepthStencil: MTLBlitOption { get }
  static var StencilFromDepthStencil: MTLBlitOption { get }
  static var RowLinearPVRTC: MTLBlitOption { get }
}
protocol MTLBlitCommandEncoder : MTLCommandEncoder {
  func copyFrom(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)
  func copyFrom(sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)
  func copyFrom(sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin, options: MTLBlitOption)
  func copyFrom(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int)
  func copyFrom(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int, options: MTLBlitOption)
  func generateMipmapsFor(texture: MTLTexture)
  func fill(buffer: MTLBuffer, range: NSRange, value: UInt8)
  func copyFrom(sourceBuffer: MTLBuffer, sourceOffset: Int, to destinationBuffer: MTLBuffer, destinationOffset: Int, size: Int)
}
protocol MTLBuffer : MTLResource {
  var length: Int { get }
  func contents() -> UnsafeMutablePointer<Void>
  func newTextureWith(descriptor: MTLTextureDescriptor, offset: Int, bytesPerRow: Int) -> MTLTexture
}
enum MTLCommandBufferStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotEnqueued
  case Enqueued
  case Committed
  case Scheduled
  case Completed
  case Error
}
let MTLCommandBufferErrorDomain: String
enum MTLCommandBufferError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Internal
  case Timeout
  case PageFault
  case Blacklisted
  case NotPermitted
  case OutOfMemory
  case InvalidResource
}
typealias MTLCommandBufferHandler = (MTLCommandBuffer) -> Void
protocol MTLCommandBuffer : ObjectProtocol {
  var device: MTLDevice { get }
  var commandQueue: MTLCommandQueue { get }
  var retainedReferences: Bool { get }
  var label: String? { get set }
  func enqueue()
  func commit()
  func addScheduledHandler(block: MTLCommandBufferHandler)
  func present(drawable: MTLDrawable)
  func present(drawable: MTLDrawable, atTime presentationTime: CFTimeInterval)
  func waitUntilScheduled()
  func addCompletedHandler(block: MTLCommandBufferHandler)
  func waitUntilCompleted()
  var status: MTLCommandBufferStatus { get }
  var error: Error? { get }
  func blitCommandEncoder() -> MTLBlitCommandEncoder
  func renderCommandEncoderWith(renderPassDescriptor: MTLRenderPassDescriptor) -> MTLRenderCommandEncoder
  func computeCommandEncoder() -> MTLComputeCommandEncoder
  func parallelRenderCommandEncoderWith(renderPassDescriptor: MTLRenderPassDescriptor) -> MTLParallelRenderCommandEncoder
}
protocol MTLCommandEncoder : ObjectProtocol {
  var device: MTLDevice { get }
  var label: String? { get set }
  func endEncoding()
  func insertDebugSignpost(string: String)
  func pushDebugGroup(string: String)
  func popDebugGroup()
}
protocol MTLCommandQueue : ObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func commandBuffer() -> MTLCommandBuffer
  func commandBufferWithUnretainedReferences() -> MTLCommandBuffer
  func insertDebugCaptureBoundary()
}
struct MTLDispatchThreadgroupsIndirectArguments {
  var threadgroupsPerGrid: (UInt32, UInt32, UInt32)
  init()
  init(threadgroupsPerGrid: (UInt32, UInt32, UInt32))
}
protocol MTLComputeCommandEncoder : MTLCommandEncoder {
  func setComputePipelineState(state: MTLComputePipelineState)
  func setBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)
  func setBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)
  func setBufferOffset(offset: Int, at index: Int)
  func setBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, withRange range: NSRange)
  func setTexture(texture: MTLTexture?, at index: Int)
  func setTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setSamplerState(sampler: MTLSamplerState?, at index: Int)
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setThreadgroupMemoryLength(length: Int, at index: Int)
  func dispatchThreadgroups(threadgroupsPerGrid: MTLSize, threadsPerThreadgroup: MTLSize)
  func dispatchThreadgroupsWithIndirectBuffer(indirectBuffer: MTLBuffer, indirectBufferOffset: Int, threadsPerThreadgroup: MTLSize)
}
class MTLComputePipelineReflection : Object {
  var arguments: [MTLArgument] { get }
  init()
}
class MTLComputePipelineDescriptor : Object, Copying {
  var label: String?
  var computeFunction: MTLFunction?
  var threadGroupSizeIsMultipleOfThreadExecutionWidth: Bool
  func reset()
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MTLComputePipelineState : ObjectProtocol {
  var device: MTLDevice { get }
  var maxTotalThreadsPerThreadgroup: Int { get }
  var threadExecutionWidth: Int { get }
}
enum MTLCompareFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Never
  case Less
  case Equal
  case LessEqual
  case Greater
  case NotEqual
  case GreaterEqual
  case Always
}
enum MTLStencilOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Keep
  case Zero
  case Replace
  case IncrementClamp
  case DecrementClamp
  case Invert
  case IncrementWrap
  case DecrementWrap
}
class MTLStencilDescriptor : Object, Copying {
  var stencilCompareFunction: MTLCompareFunction
  var stencilFailureOperation: MTLStencilOperation
  var depthFailureOperation: MTLStencilOperation
  var depthStencilPassOperation: MTLStencilOperation
  var readMask: UInt32
  var writeMask: UInt32
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MTLDepthStencilDescriptor : Object, Copying {
  var depthCompareFunction: MTLCompareFunction
  var isDepthWriteEnabled: Bool
  @NSCopying var frontFaceStencil: MTLStencilDescriptor!
  @NSCopying var backFaceStencil: MTLStencilDescriptor!
  var label: String?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MTLDepthStencilState : ObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
func MTLCreateSystemDefaultDevice() -> MTLDevice?
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case iOS_GPUFamily1_v1
  case iOS_GPUFamily2_v1
  case iOS_GPUFamily1_v2
  case iOS_GPUFamily2_v2
  case iOS_GPUFamily3_v1
}
struct MTLPipelineOption : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MTLPipelineOption { get }
  static var ArgumentInfo: MTLPipelineOption { get }
  static var BufferTypeInfo: MTLPipelineOption { get }
}
typealias MTLAutoreleasedRenderPipelineReflection = MTLRenderPipelineReflection
typealias MTLAutoreleasedComputePipelineReflection = MTLComputePipelineReflection
typealias MTLNewLibraryCompletionHandler = (MTLLibrary?, Error?) -> Void
typealias MTLNewRenderPipelineStateCompletionHandler = (MTLRenderPipelineState?, Error?) -> Void
typealias MTLNewRenderPipelineStateWithReflectionCompletionHandler = (MTLRenderPipelineState?, MTLRenderPipelineReflection?, Error?) -> Void
typealias MTLNewComputePipelineStateCompletionHandler = (MTLComputePipelineState?, Error?) -> Void
typealias MTLNewComputePipelineStateWithReflectionCompletionHandler = (MTLComputePipelineState?, MTLComputePipelineReflection?, Error?) -> Void
protocol MTLDevice : ObjectProtocol {
  var name: String? { get }
  var maxThreadsPerThreadgroup: MTLSize { get }
  func newCommandQueue() -> MTLCommandQueue
  func newCommandQueueWithMaxCommandBufferCount(maxCommandBufferCount: Int) -> MTLCommandQueue
  func newBufferWithLength(length: Int, options: MTLResourceOptions = []) -> MTLBuffer
  func newBufferWithBytes(pointer: UnsafePointer<Void>, length: Int, options: MTLResourceOptions = []) -> MTLBuffer
  func newBufferWithBytesNoCopy(pointer: UnsafeMutablePointer<Void>, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil) -> MTLBuffer
  func newDepthStencilStateWith(descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState
  func newTextureWith(descriptor: MTLTextureDescriptor) -> MTLTexture
  func newSamplerStateWith(descriptor: MTLSamplerDescriptor) -> MTLSamplerState
  func newDefaultLibrary() -> MTLLibrary?
  func newLibraryWithFile(filepath: String) throws -> MTLLibrary
  func newLibraryWith(data: dispatch_data_t) throws -> MTLLibrary
  func newLibraryWithSource(source: String, options: MTLCompileOptions?) throws -> MTLLibrary
  func newLibraryWithSource(source: String, options: MTLCompileOptions?, completionHandler: MTLNewLibraryCompletionHandler)
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>) throws -> MTLRenderPipelineState
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, completionHandler: MTLNewRenderPipelineStateCompletionHandler)
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func newComputePipelineStateWith(computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func newComputePipelineStateWith(computeFunction: MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  func newComputePipelineStateWith(computeFunction: MTLFunction, completionHandler: MTLNewComputePipelineStateCompletionHandler)
  func newComputePipelineStateWith(computeFunction: MTLFunction, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func newComputePipelineStateWith(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  func newComputePipelineStateWith(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func supportsFeatureSet(featureSet: MTLFeatureSet) -> Bool
  func supportsTextureSampleCount(sampleCount: Int) -> Bool
}
protocol MTLDrawable : ObjectProtocol {
  func present()
  func presentAtTime(presentationTime: CFTimeInterval)
}
class MTLVertexAttribute : Object {
  var name: String? { get }
  var attributeIndex: Int { get }
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  init()
}
enum MTLFunctionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Fragment
  case Kernel
}
protocol MTLFunction : ObjectProtocol {
  var device: MTLDevice { get }
  var functionType: MTLFunctionType { get }
  var vertexAttributes: [MTLVertexAttribute]? { get }
  var name: String { get }
}
enum MTLLanguageVersion : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Version1_0
  case Version1_1
}
class MTLCompileOptions : Object, Copying {
  var preprocessorMacros: [String : Object]?
  var fastMathEnabled: Bool
  var languageVersion: MTLLanguageVersion
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
let MTLLibraryErrorDomain: String
enum MTLLibraryError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unsupported
  case Internal
  case CompileFailure
  case CompileWarning
}
let MTLRenderPipelineErrorDomain: String
enum MTLRenderPipelineError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Internal
  case Unsupported
  case InvalidInput
}
protocol MTLLibrary : ObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func newFunctionWithName(functionName: String) -> MTLFunction?
  var functionNames: [String] { get }
}
protocol MTLParallelRenderCommandEncoder : MTLCommandEncoder {
  func renderCommandEncoder() -> MTLRenderCommandEncoder
}
enum MTLPixelFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case A8Unorm
  case R8Unorm
  case R8Unorm_sRGB
  case R8Snorm
  case R8Uint
  case R8Sint
  case R16Unorm
  case R16Snorm
  case R16Uint
  case R16Sint
  case R16Float
  case RG8Unorm
  case RG8Unorm_sRGB
  case RG8Snorm
  case RG8Uint
  case RG8Sint
  case B5G6R5Unorm
  case A1BGR5Unorm
  case ABGR4Unorm
  case BGR5A1Unorm
  case R32Uint
  case R32Sint
  case R32Float
  case RG16Unorm
  case RG16Snorm
  case RG16Uint
  case RG16Sint
  case RG16Float
  case RGBA8Unorm
  case RGBA8Unorm_sRGB
  case RGBA8Snorm
  case RGBA8Uint
  case RGBA8Sint
  case BGRA8Unorm
  case BGRA8Unorm_sRGB
  case RGB10A2Unorm
  case RGB10A2Uint
  case RG11B10Float
  case RGB9E5Float
  case RG32Uint
  case RG32Sint
  case RG32Float
  case RGBA16Unorm
  case RGBA16Snorm
  case RGBA16Uint
  case RGBA16Sint
  case RGBA16Float
  case RGBA32Uint
  case RGBA32Sint
  case RGBA32Float
  case PVRTC_RGB_2BPP
  case PVRTC_RGB_2BPP_sRGB
  case PVRTC_RGB_4BPP
  case PVRTC_RGB_4BPP_sRGB
  case PVRTC_RGBA_2BPP
  case PVRTC_RGBA_2BPP_sRGB
  case PVRTC_RGBA_4BPP
  case PVRTC_RGBA_4BPP_sRGB
  case EAC_R11Unorm
  case EAC_R11Snorm
  case EAC_RG11Unorm
  case EAC_RG11Snorm
  case EAC_RGBA8
  case EAC_RGBA8_sRGB
  case ETC2_RGB8
  case ETC2_RGB8_sRGB
  case ETC2_RGB8A1
  case ETC2_RGB8A1_sRGB
  case ASTC_4x4_sRGB
  case ASTC_5x4_sRGB
  case ASTC_5x5_sRGB
  case ASTC_6x5_sRGB
  case ASTC_6x6_sRGB
  case ASTC_8x5_sRGB
  case ASTC_8x6_sRGB
  case ASTC_8x8_sRGB
  case ASTC_10x5_sRGB
  case ASTC_10x6_sRGB
  case ASTC_10x8_sRGB
  case ASTC_10x10_sRGB
  case ASTC_12x10_sRGB
  case ASTC_12x12_sRGB
  case ASTC_4x4_LDR
  case ASTC_5x4_LDR
  case ASTC_5x5_LDR
  case ASTC_6x5_LDR
  case ASTC_6x6_LDR
  case ASTC_8x5_LDR
  case ASTC_8x6_LDR
  case ASTC_8x8_LDR
  case ASTC_10x5_LDR
  case ASTC_10x6_LDR
  case ASTC_10x8_LDR
  case ASTC_10x10_LDR
  case ASTC_12x10_LDR
  case ASTC_12x12_LDR
  case GBGR422
  case BGRG422
  case Depth32Float
  case Stencil8
  case Depth32Float_Stencil8
}
enum MTLPrimitiveType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Point
  case Line
  case LineStrip
  case Triangle
  case TriangleStrip
}
enum MTLIndexType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UInt16
  case UInt32
}
enum MTLVisibilityResultMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Disabled
  case Boolean
  case Counting
}
struct MTLScissorRect {
  var x: Int
  var y: Int
  var width: Int
  var height: Int
  init()
  init(x: Int, y: Int, width: Int, height: Int)
}
struct MTLViewport {
  var originX: Double
  var originY: Double
  var width: Double
  var height: Double
  var znear: Double
  var zfar: Double
  init()
  init(originX: Double, originY: Double, width: Double, height: Double, znear: Double, zfar: Double)
}
enum MTLCullMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Front
  case Back
}
enum MTLWinding : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clockwise
  case CounterClockwise
}
enum MTLDepthClipMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clip
  case Clamp
}
enum MTLTriangleFillMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Fill
  case Lines
}
struct MTLDrawPrimitivesIndirectArguments {
  var vertexCount: UInt32
  var instanceCount: UInt32
  var vertexStart: UInt32
  var baseInstance: UInt32
  init()
  init(vertexCount: UInt32, instanceCount: UInt32, vertexStart: UInt32, baseInstance: UInt32)
}
struct MTLDrawIndexedPrimitivesIndirectArguments {
  var indexCount: UInt32
  var instanceCount: UInt32
  var indexStart: UInt32
  var baseVertex: Int32
  var baseInstance: UInt32
  init()
  init(indexCount: UInt32, instanceCount: UInt32, indexStart: UInt32, baseVertex: Int32, baseInstance: UInt32)
}
protocol MTLRenderCommandEncoder : MTLCommandEncoder {
  func setRenderPipelineState(pipelineState: MTLRenderPipelineState)
  func setVertexBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)
  func setVertexBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)
  func setVertexBufferOffset(offset: Int, at index: Int)
  func setVertexBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, withRange range: NSRange)
  func setVertexTexture(texture: MTLTexture?, at index: Int)
  func setVertexTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setVertexSamplerState(sampler: MTLSamplerState?, at index: Int)
  func setVertexSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setVertexSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)
  func setVertexSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setViewport(viewport: MTLViewport)
  func setFrontFacing(frontFacingWinding: MTLWinding)
  func setCullMode(cullMode: MTLCullMode)
  func setDepthClipMode(depthClipMode: MTLDepthClipMode)
  func setDepthBias(depthBias: Float, slopeScale: Float, clamp: Float)
  func setScissorRect(rect: MTLScissorRect)
  func setTriangleFillMode(fillMode: MTLTriangleFillMode)
  func setFragmentBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)
  func setFragmentBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)
  func setFragmentBufferOffset(offset: Int, at index: Int)
  func setFragmentBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets offset: UnsafePointer<Int>, withRange range: NSRange)
  func setFragmentTexture(texture: MTLTexture?, at index: Int)
  func setFragmentTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setFragmentSamplerState(sampler: MTLSamplerState?, at index: Int)
  func setFragmentSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setFragmentSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)
  func setFragmentSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setBlendColorRed(red: Float, green: Float, blue: Float, alpha: Float)
  func setDepthStencilState(depthStencilState: MTLDepthStencilState?)
  func setStencilReferenceValue(referenceValue: UInt32)
  func setStencilFrontReferenceValue(frontReferenceValue: UInt32, backReferenceValue: UInt32)
  func setVisibilityResultMode(mode: MTLVisibilityResultMode, offset: Int)
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int)
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int)
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int, baseInstance: Int)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int, baseVertex: Int, baseInstance: Int)
  func drawPrimitives(primitiveType: MTLPrimitiveType, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
}
enum MTLLoadAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DontCare
  case Load
  case Clear
}
enum MTLStoreAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DontCare
  case Store
  case MultisampleResolve
}
struct MTLClearColor {
  var red: Double
  var green: Double
  var blue: Double
  var alpha: Double
  init()
  init(red: Double, green: Double, blue: Double, alpha: Double)
}
class MTLRenderPassAttachmentDescriptor : Object, Copying {
  var texture: MTLTexture?
  var level: Int
  var slice: Int
  var depthPlane: Int
  var resolveTexture: MTLTexture?
  var resolveLevel: Int
  var resolveSlice: Int
  var resolveDepthPlane: Int
  var loadAction: MTLLoadAction
  var storeAction: MTLStoreAction
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MTLRenderPassColorAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearColor: MTLClearColor
  init()
}
enum MTLMultisampleDepthResolveFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Sample0
  case Min
  case Max
}
class MTLRenderPassDepthAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearDepth: Double
  var depthResolveFilter: MTLMultisampleDepthResolveFilter
  init()
}
class MTLRenderPassStencilAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearStencil: UInt32
  init()
}
class MTLRenderPassColorAttachmentDescriptorArray : Object {
  subscript (attachmentIndex: Int) -> MTLRenderPassColorAttachmentDescriptor!
  init()
}
class MTLRenderPassDescriptor : Object, Copying {
  var colorAttachments: MTLRenderPassColorAttachmentDescriptorArray { get }
  @NSCopying var depthAttachment: MTLRenderPassDepthAttachmentDescriptor!
  @NSCopying var stencilAttachment: MTLRenderPassStencilAttachmentDescriptor!
  var visibilityResultBuffer: MTLBuffer?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
func MTLClearColorMake(red: Double, _ green: Double, _ blue: Double, _ alpha: Double) -> MTLClearColor
enum MTLBlendFactor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Zero
  case One
  case SourceColor
  case OneMinusSourceColor
  case SourceAlpha
  case OneMinusSourceAlpha
  case DestinationColor
  case OneMinusDestinationColor
  case DestinationAlpha
  case OneMinusDestinationAlpha
  case SourceAlphaSaturated
  case BlendColor
  case OneMinusBlendColor
  case BlendAlpha
  case OneMinusBlendAlpha
}
enum MTLBlendOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Add
  case Subtract
  case ReverseSubtract
  case Min
  case Max
}
struct MTLColorWriteMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MTLColorWriteMask { get }
  static var Red: MTLColorWriteMask { get }
  static var Green: MTLColorWriteMask { get }
  static var Blue: MTLColorWriteMask { get }
  static var Alpha: MTLColorWriteMask { get }
  static var All: MTLColorWriteMask { get }
}
class MTLRenderPipelineColorAttachmentDescriptor : Object, Copying {
  var pixelFormat: MTLPixelFormat
  var isBlendingEnabled: Bool
  var sourceRGBBlendFactor: MTLBlendFactor
  var destinationRGBBlendFactor: MTLBlendFactor
  var rgbBlendOperation: MTLBlendOperation
  var sourceAlphaBlendFactor: MTLBlendFactor
  var destinationAlphaBlendFactor: MTLBlendFactor
  var alphaBlendOperation: MTLBlendOperation
  var writeMask: MTLColorWriteMask
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MTLRenderPipelineReflection : Object {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
  init()
}
class MTLRenderPipelineDescriptor : Object, Copying {
  var label: String?
  var vertexFunction: MTLFunction?
  var fragmentFunction: MTLFunction?
  @NSCopying var vertexDescriptor: MTLVertexDescriptor?
  var sampleCount: Int
  var isAlphaToCoverageEnabled: Bool
  var isAlphaToOneEnabled: Bool
  var isRasterizationEnabled: Bool
  var colorAttachments: MTLRenderPipelineColorAttachmentDescriptorArray { get }
  var depthAttachmentPixelFormat: MTLPixelFormat
  var stencilAttachmentPixelFormat: MTLPixelFormat
  func reset()
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MTLRenderPipelineState : ObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
class MTLRenderPipelineColorAttachmentDescriptorArray : Object {
  subscript (attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
  init()
}
enum MTLPurgeableState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case KeepCurrent
  case NonVolatile
  case Volatile
  case Empty
}
enum MTLCPUCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultCache
  case WriteCombined
}
enum MTLStorageMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Shared
  case Private
}
var MTLResourceCPUCacheModeShift: Int32 { get }
var MTLResourceStorageModeShift: Int32 { get }
struct MTLResourceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CPUCacheModeDefaultCache: MTLResourceOptions { get }
  static var CPUCacheModeWriteCombined: MTLResourceOptions { get }
  static var StorageModeShared: MTLResourceOptions { get }
  static var StorageModePrivate: MTLResourceOptions { get }
  static var OptionCPUCacheModeDefault: MTLResourceOptions { get }
  static var OptionCPUCacheModeWriteCombined: MTLResourceOptions { get }
}
protocol MTLResource : ObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var cpuCacheMode: MTLCPUCacheMode { get }
  var storageMode: MTLStorageMode { get }
  func setPurgeableState(state: MTLPurgeableState) -> MTLPurgeableState
}
enum MTLSamplerMinMagFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
enum MTLSamplerMipFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotMipmapped
  case Nearest
  case Linear
}
enum MTLSamplerAddressMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ClampToEdge
  case Repeat
  case MirrorRepeat
  case ClampToZero
}
class MTLSamplerDescriptor : Object, Copying {
  var minFilter: MTLSamplerMinMagFilter
  var magFilter: MTLSamplerMinMagFilter
  var mipFilter: MTLSamplerMipFilter
  var maxAnisotropy: Int
  var sAddressMode: MTLSamplerAddressMode
  var tAddressMode: MTLSamplerAddressMode
  var rAddressMode: MTLSamplerAddressMode
  var normalizedCoordinates: Bool
  var lodMinClamp: Float
  var lodMaxClamp: Float
  var lodAverage: Bool
  var compareFunction: MTLCompareFunction
  var label: String?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MTLSamplerState : ObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
enum MTLTextureType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Type1D
  case Type1DArray
  case Type2D
  case Type2DArray
  case Type2DMultisample
  case TypeCube
  case Type3D
}
struct MTLTextureUsage : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Unknown: MTLTextureUsage { get }
  static var ShaderRead: MTLTextureUsage { get }
  static var ShaderWrite: MTLTextureUsage { get }
  static var RenderTarget: MTLTextureUsage { get }
  static var PixelFormatView: MTLTextureUsage { get }
}
class MTLTextureDescriptor : Object, Copying {
  class func texture2DDescriptorWith(pixelFormat: MTLPixelFormat, width: Int, height: Int, mipmapped: Bool) -> MTLTextureDescriptor
  class func textureCubeDescriptorWith(pixelFormat: MTLPixelFormat, size: Int, mipmapped: Bool) -> MTLTextureDescriptor
  var textureType: MTLTextureType
  var pixelFormat: MTLPixelFormat
  var width: Int
  var height: Int
  var depth: Int
  var mipmapLevelCount: Int
  var sampleCount: Int
  var arrayLength: Int
  var resourceOptions: MTLResourceOptions
  var cpuCacheMode: MTLCPUCacheMode
  var storageMode: MTLStorageMode
  var usage: MTLTextureUsage
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MTLTexture : MTLResource {
  var rootResource: MTLResource? { get }
  var parentTexture: MTLTexture? { get }
  var parentRelativeLevel: Int { get }
  var parentRelativeSlice: Int { get }
  var buffer: MTLBuffer? { get }
  var bufferOffset: Int { get }
  var bufferBytesPerRow: Int { get }
  var textureType: MTLTextureType { get }
  var pixelFormat: MTLPixelFormat { get }
  var width: Int { get }
  var height: Int { get }
  var depth: Int { get }
  var mipmapLevelCount: Int { get }
  var sampleCount: Int { get }
  var arrayLength: Int { get }
  var usage: MTLTextureUsage { get }
  var isFramebufferOnly: Bool { get }
  func getBytes(pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow: Int, bytesPerImage: Int, from region: MTLRegion, mipmapLevel level: Int, slice: Int)
  func replace(region: MTLRegion, mipmapLevel level: Int, slice: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow: Int, bytesPerImage: Int)
  func getBytes(pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow: Int, from region: MTLRegion, mipmapLevel level: Int)
  func replace(region: MTLRegion, mipmapLevel level: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow: Int)
  func newTextureViewWith(pixelFormat: MTLPixelFormat) -> MTLTexture
  func newTextureViewWith(pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: NSRange, slices sliceRange: NSRange) -> MTLTexture
}
struct MTLOrigin {
  var x: Int
  var y: Int
  var z: Int
  init()
  init(x: Int, y: Int, z: Int)
}
func MTLOriginMake(x: Int, _ y: Int, _ z: Int) -> MTLOrigin
struct MTLSize {
  var width: Int
  var height: Int
  var depth: Int
  init()
  init(width: Int, height: Int, depth: Int)
}
func MTLSizeMake(width: Int, _ height: Int, _ depth: Int) -> MTLSize
struct MTLRegion {
  var origin: MTLOrigin
  var size: MTLSize
  init()
  init(origin: MTLOrigin, size: MTLSize)
}
func MTLRegionMake1D(x: Int, _ width: Int) -> MTLRegion
func MTLRegionMake2D(x: Int, _ y: Int, _ width: Int, _ height: Int) -> MTLRegion
func MTLRegionMake3D(x: Int, _ y: Int, _ z: Int, _ width: Int, _ height: Int, _ depth: Int) -> MTLRegion
enum MTLVertexFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case UChar2
  case UChar3
  case UChar4
  case Char2
  case Char3
  case Char4
  case UChar2Normalized
  case UChar3Normalized
  case UChar4Normalized
  case Char2Normalized
  case Char3Normalized
  case Char4Normalized
  case UShort2
  case UShort3
  case UShort4
  case Short2
  case Short3
  case Short4
  case UShort2Normalized
  case UShort3Normalized
  case UShort4Normalized
  case Short2Normalized
  case Short3Normalized
  case Short4Normalized
  case Half2
  case Half3
  case Half4
  case Float
  case Float2
  case Float3
  case Float4
  case Int
  case Int2
  case Int3
  case Int4
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Int1010102Normalized
  case UInt1010102Normalized
}
enum MTLVertexStepFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Constant
  case PerVertex
  case PerInstance
}
class MTLVertexBufferLayoutDescriptor : Object, Copying {
  var stride: Int
  var stepFunction: MTLVertexStepFunction
  var stepRate: Int
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MTLVertexBufferLayoutDescriptorArray : Object {
  subscript (index: Int) -> MTLVertexBufferLayoutDescriptor!
  init()
}
class MTLVertexAttributeDescriptor : Object, Copying {
  var format: MTLVertexFormat
  var offset: Int
  var bufferIndex: Int
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MTLVertexAttributeDescriptorArray : Object {
  subscript (index: Int) -> MTLVertexAttributeDescriptor!
  init()
}
class MTLVertexDescriptor : Object, Copying {
  var layouts: MTLVertexBufferLayoutDescriptorArray { get }
  var attributes: MTLVertexAttributeDescriptorArray { get }
  func reset()
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
