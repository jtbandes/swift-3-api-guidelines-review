
let MTKModelErrorDomain: String
let MTKModelErrorKey: String
class MTKMeshBufferAllocator : Object, MDLMeshBufferAllocator {
  init(device: MTLDevice)
  var device: MTLDevice { get }
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWith(data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFrom(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFrom(zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MTKMeshBuffer : Object, MDLMeshBuffer {
  var length: Int { get }
  var allocator: MTKMeshBufferAllocator { get }
  var buffer: MTLBuffer { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  func fill(data: Data, offset: Int)
  func map() -> MDLMeshBufferMap
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MTKSubmesh : Object {
  var primitiveType: MTLPrimitiveType { get }
  var indexType: MTLIndexType { get }
  var indexBuffer: MTKMeshBuffer { get }
  var indexCount: Int { get }
  weak var mesh: @sil_weak MTKMesh? { get }
  var name: String
}
class MTKMesh : Object {
  init(mesh: MDLMesh, device: MTLDevice) throws
  class func newMeshesFrom(asset: MDLAsset, device: MTLDevice, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [MTKMesh]
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
typealias MTKTextureLoaderCallback = (MTLTexture?, Error?) -> Void
class MTKTextureLoader : Object {
  var device: MTLDevice { get }
  init(device: MTLDevice)
  func newTextureWithContentsOf(URL: URL, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWith(data: Data, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWith(cgImage: CGImage, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWithContentsOf(URL: URL, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTextureWith(data: Data, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTextureWith(cgImage: CGImage, options: [String : Number]? = [:]) throws -> MTLTexture
}
class MTKView : UIView, Coding {
  init(frame frameRect: CGRect, device: MTLDevice?)
  init(coder: Coder)
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
  var isPaused: Bool
  func draw()
  convenience init(frame: CGRect)
  convenience init()
}
protocol MTKViewDelegate : ObjectProtocol {
  func mtkView(view: MTKView, drawableSizeWillChange size: CGSize)
  func drawIn(view: MTKView)
}
