
let MTKModelErrorDomain: String
let MTKModelErrorKey: String
class MTKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  init(device: MTLDevice)
  var device: MTLDevice { get }
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MTKMeshBuffer : NSObject, MDLMeshBuffer {
  var length: Int { get }
  var allocator: MTKMeshBufferAllocator { get }
  var buffer: MTLBuffer { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  func fillData(data: NSData, offset: Int)
  func map() -> MDLMeshBufferMap
  func copyWithZone(zone: NSZone) -> AnyObject
}
class MTKSubmesh : NSObject {
  var primitiveType: MTLPrimitiveType { get }
  var indexType: MTLIndexType { get }
  var indexBuffer: MTKMeshBuffer { get }
  var indexCount: Int { get }
  weak var mesh: @sil_weak MTKMesh? { get }
  var name: String
}
class MTKMesh : NSObject {
  init(mesh: MDLMesh, device: MTLDevice) throws
  class func newMeshesFromAsset(asset: MDLAsset, device: MTLDevice, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [MTKMesh]
  var vertexBuffers: [MTKMeshBuffer] { get }
  var vertexDescriptor: MDLVertexDescriptor { get }
  var submeshes: [MTKSubmesh] { get }
  var vertexCount: Int { get }
  var name: String
}
func MTKModelIOVertexDescriptorFromMetal(metalDescriptor: MTLVertexDescriptor) -> MDLVertexDescriptor
func MTKMetalVertexDescriptorFromModelIO(modelIODescriptor: MDLVertexDescriptor) -> MTLVertexDescriptor
func MTKModelIOVertexFormatFromMetal(vertexFormat: MTLVertexFormat) -> MDLVertexFormat
func MTKMetalVertexFormatFromModelIO(vertexFormat: MDLVertexFormat) -> MTLVertexFormat
let MTKTextureLoaderErrorDomain: String
let MTKTextureLoaderErrorKey: String
let MTKTextureLoaderOptionAllocateMipmaps: String
let MTKTextureLoaderOptionSRGB: String
let MTKTextureLoaderOptionTextureUsage: String
let MTKTextureLoaderOptionTextureCPUCacheMode: String
typealias MTKTextureLoaderCallback = (MTLTexture?, NSError?) -> Void
class MTKTextureLoader : NSObject {
  var device: MTLDevice { get }
  init(device: MTLDevice)
  func newTextureWithContentsOfURL(URL: NSURL, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)
  func newTextureWithData(data: NSData, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)
  func newTextureWithCGImage(cgImage: CGImage, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)
  func newTextureWithContentsOfURL(URL: NSURL, options: [String : NSNumber]?) throws -> MTLTexture
  func newTextureWithData(data: NSData, options: [String : NSNumber]?) throws -> MTLTexture
  func newTextureWithCGImage(cgImage: CGImage, options: [String : NSNumber]?) throws -> MTLTexture
}
class MTKView : UIView, NSCoding {
  init(frame frameRect: CGRect, device: MTLDevice?)
  init(coder: NSCoder)
  weak var delegate: @sil_weak MTKViewDelegate?
  var device: MTLDevice?
  var currentDrawable: CAMetalDrawable? { get }
  var framebufferOnly: Bool
  var presentsWithTransaction: Bool
  var colorPixelFormat: MTLPixelFormat
  var depthStencilPixelFormat: MTLPixelFormat
  var sampleCount: Int
  var clearColor: MTLClearColor
  var clearDepth: Double
  var clearStencil: UInt32
  var depthStencilTexture: MTLTexture? { get }
  var multisampleColorTexture: MTLTexture? { get }
  func releaseDrawables()
  var currentRenderPassDescriptor: MTLRenderPassDescriptor? { get }
  var preferredFramesPerSecond: Int
  var enableSetNeedsDisplay: Bool
  var autoResizeDrawable: Bool
  var drawableSize: CGSize
  var paused: Bool
  func draw()
  convenience init(frame: CGRect)
  convenience init()
}
protocol MTKViewDelegate : NSObjectProtocol {
  func mtkView(view: MTKView, drawableSizeWillChange size: CGSize)
  func drawInMTKView(view: MTKView)
}
