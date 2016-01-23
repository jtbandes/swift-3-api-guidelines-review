
class MPSImageConvolution : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  var bias: Float
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, weights kernelWeights: UnsafePointer<Float>)
  convenience init(device: MTLDevice)
  convenience init()
}
class MPSImageBox : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}
class MPSImageTent : MPSImageBox {
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}
class MPSImageGaussianBlur : MPSUnaryImageKernel {
  init(device: MTLDevice, sigma: Float)
  var sigma: Float { get }
  convenience init()
}
class MPSImageSobel : MPSUnaryImageKernel {
  convenience init(device: MTLDevice)
  init(device: MTLDevice, linearGrayColorTransform transform: UnsafePointer<Float>)
  var colorTransform: UnsafePointer<Float> { get }
  convenience init()
}
struct MPSImageHistogramInfo {
  var numberOfHistogramEntries: Int
  var histogramForAlpha: ObjCBool
  var minPixelValue: vector_float4
  var maxPixelValue: vector_float4
  init()
  init(numberOfHistogramEntries: Int, histogramForAlpha: ObjCBool, minPixelValue: vector_float4, maxPixelValue: vector_float4)
}
class MPSImageHistogram : MPSKernel {
  var clipRectSource: MTLRegion
  var zeroHistogram: Bool
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encodeTo(commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)
  func histogramSizeForSourceFormat(sourceFormat: MTLPixelFormat) -> Int
  convenience init(device: MTLDevice)
  convenience init()
}
class MPSImageHistogramEqualization : MPSUnaryImageKernel {
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encodeTransformTo(commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)
  convenience init(device: MTLDevice)
  convenience init()
}
class MPSImageHistogramSpecification : MPSUnaryImageKernel {
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encodeTransformTo(commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, sourceHistogram: MTLBuffer, sourceHistogramOffset: Int, desiredHistogram: MTLBuffer, desiredHistogramOffset: Int)
  convenience init(device: MTLDevice)
  convenience init()
}
class MPSImageIntegral : MPSUnaryImageKernel {
  init(device: MTLDevice)
  convenience init()
}
class MPSImageIntegralOfSquares : MPSUnaryImageKernel {
  init(device: MTLDevice)
  convenience init()
}
class MPSUnaryImageKernel : MPSKernel {
  var offset: MPSOffset
  var clipRect: MTLRegion
  var edgeMode: MPSImageEdgeMode
  func encodeTo(commandBuffer: MTLCommandBuffer, inPlace texture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encodeTo(commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, destinationTexture: MTLTexture)
  func sourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion
  init(device: MTLDevice)
  convenience init()
}
class MPSBinaryImageKernel : MPSKernel {
  var primaryOffset: MPSOffset
  var secondaryOffset: MPSOffset
  var primaryEdgeMode: MPSImageEdgeMode
  var secondaryEdgeMode: MPSImageEdgeMode
  var clipRect: MTLRegion
  func encodeTo(commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, inPlaceSecondaryTexture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encodeTo(commandBuffer: MTLCommandBuffer, inPlacePrimaryTexture: UnsafeMutablePointer<MTLTexture?>, secondaryTexture: MTLTexture, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encodeTo(commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, secondaryTexture: MTLTexture, destinationTexture: MTLTexture)
  func primarySourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion
  func secondarySourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion
  init(device: MTLDevice)
  convenience init()
}
class MPSImageMedian : MPSUnaryImageKernel {
  var kernelDiameter: Int { get }
  init(device: MTLDevice, kernelDiameter: Int)
  class func maxKernelDiameter() -> Int
  class func minKernelDiameter() -> Int
  convenience init()
}
class MPSImageAreaMax : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}
class MPSImageAreaMin : MPSImageAreaMax {
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}
class MPSImageDilate : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, values: UnsafePointer<Float>)
  convenience init()
}
class MPSImageErode : MPSImageDilate {
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, values: UnsafePointer<Float>)
  convenience init()
}
class MPSImageLanczosScale : MPSUnaryImageKernel {
  var scaleTransform: UnsafePointer<MPSScaleTransform>
  init(device: MTLDevice)
  convenience init()
}
class MPSImageThresholdBinary : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, maximumValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var maximumValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
class MPSImageThresholdBinaryInverse : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, maximumValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var maximumValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
class MPSImageThresholdTruncate : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
class MPSImageThresholdToZero : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
class MPSImageThresholdToZeroInverse : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
class MPSImageTranspose : MPSUnaryImageKernel {
  init(device: MTLDevice)
  convenience init()
}
func MPSSupportsMTLDevice(device: MTLDevice?) -> Bool
class MPSKernel : Object, Copying {
  var options: MPSKernelOptions
  var device: MTLDevice { get }
  var label: String?
  init(device: MTLDevice)
  func copy(zone zone: Zone = nil, device: MTLDevice?) -> Self
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
struct MPSKernelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MPSKernelOptions { get }
  static var SkipAPIValidation: MPSKernelOptions { get }
  static var AllowReducedPrecision: MPSKernelOptions { get }
}
enum MPSImageEdgeMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Zero
  case Clamp
}
struct MPSOffset {
  var x: Int
  var y: Int
  var z: Int
  init()
  init(x: Int, y: Int, z: Int)
}
struct MPSOrigin {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
struct MPSSize {
  var width: Double
  var height: Double
  var depth: Double
  init()
  init(width: Double, height: Double, depth: Double)
}
struct MPSRegion {
  var origin: MPSOrigin
  var size: MPSSize
  init()
  init(origin: MPSOrigin, size: MPSSize)
}
let MPSRectNoClip: MTLRegion
struct MPSScaleTransform {
  var scaleX: Double
  var scaleY: Double
  var translateX: Double
  var translateY: Double
  init()
  init(scaleX: Double, scaleY: Double, translateX: Double, translateY: Double)
}
typealias MPSCopyAllocator = (MPSKernel, MTLCommandBuffer, MTLTexture) -> MTLTexture
