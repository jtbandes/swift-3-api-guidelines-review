
var UNIFIED_CORE_IMAGE: Int32 { get }
class CIColor : Object, SecureCoding, Copying {
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat)
  convenience init(string representation: String)
  init(cgColor c: CGColor)
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CGFloat)
  var numberOfComponents: Int { get }
  var components: UnsafePointer<CGFloat> { get }
  var alpha: CGFloat { get }
  var colorSpace: CGColorSpace { get }
  var red: CGFloat { get }
  var green: CGFloat { get }
  var blue: CGFloat { get }
  var stringRepresentation: String { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class CIContext : Object {
   init(cglContext cglctx: CGLContextObj, pixelFormat: CGLPixelFormatObj, colorSpace: CGColorSpace?, options: [String : AnyObject]? = [:])
   init(cgContext cgctx: CGContext, options: [String : AnyObject]? = [:])
   init(options: [String : AnyObject]? = [:])
   init(mtlDevice device: MTLDevice)
   init(mtlDevice device: MTLDevice, options: [String : AnyObject]? = [:])
  var workingColorSpace: CGColorSpace { get }
  func draw(image: CIImage, in inRect: CGRect, from fromRect: CGRect)
  func createCGImage(image: CIImage, from fromRect: CGRect) -> CGImage
  func createCGImage(image: CIImage, from fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage
  func createCGLayerWith(size: CGSize, info: CFDictionary?) -> CGLayer
  func render(image: CIImage, toBitmap data: UnsafeMutablePointer<Void>, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  func render(image: CIImage, to surface: IOSurface, bounds: CGRect, colorSpace: CGColorSpace?)
  func render(image: CIImage, to buffer: CVPixelBuffer)
  func render(image: CIImage, to buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  func render(image: CIImage, to texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
  func reclaimResources()
  func clearCaches()
  init()
}
let kCIContextOutputColorSpace: String
let kCIContextWorkingColorSpace: String
let kCIContextWorkingFormat: String
let kCIContextHighQualityDownsample: String
let kCIContextUseSoftwareRenderer: String
extension CIContext {
  class func offlineGPUCount() -> UInt32
   init(forOfflineGPUAt index: UInt32)
   init(forOfflineGPUAt index: UInt32, colorSpace: CGColorSpace?, options: [String : AnyObject]? = [:], sharedContext: CGLContextObj)
}
class CIDetector : Object {
   init(ofType type: String, context: CIContext?, options: [String : AnyObject]? = [:])
  func featuresIn(image: CIImage) -> [CIFeature]
  func featuresIn(image: CIImage, options: [String : AnyObject]? = [:]) -> [CIFeature]
  init()
}
let CIDetectorTypeFace: String
let CIDetectorTypeRectangle: String
let CIDetectorTypeQRCode: String
let CIDetectorTypeText: String
let CIDetectorAccuracy: String
let CIDetectorAccuracyLow: String
let CIDetectorAccuracyHigh: String
let CIDetectorTracking: String
let CIDetectorMinFeatureSize: String
let CIDetectorNumberOfAngles: String
let CIDetectorImageOrientation: String
let CIDetectorEyeBlink: String
let CIDetectorSmile: String
let CIDetectorFocalLength: String
let CIDetectorAspectRatio: String
let CIDetectorReturnSubFeatures: String
class CIFeature : Object {
  var type: String { get }
  var bounds: CGRect { get }
  init()
}
let CIFeatureTypeFace: String
let CIFeatureTypeRectangle: String
let CIFeatureTypeQRCode: String
let CIFeatureTypeText: String
class CIFaceFeature : CIFeature {
  var bounds: CGRect { get }
  var hasLeftEyePosition: Bool { get }
  var leftEyePosition: CGPoint { get }
  var hasRightEyePosition: Bool { get }
  var rightEyePosition: CGPoint { get }
  var hasMouthPosition: Bool { get }
  var mouthPosition: CGPoint { get }
  var hasTrackingID: Bool { get }
  var trackingID: Int32 { get }
  var hasTrackingFrameCount: Bool { get }
  var trackingFrameCount: Int32 { get }
  var hasFaceAngle: Bool { get }
  var faceAngle: Float { get }
  var hasSmile: Bool { get }
  var leftEyeClosed: Bool { get }
  var rightEyeClosed: Bool { get }
  init()
}
class CIRectangleFeature : CIFeature {
  var bounds: CGRect { get }
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  init()
}
class CIQRCodeFeature : CIFeature {
  var bounds: CGRect { get }
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  var messageString: String { get }
  init()
}
class CITextFeature : CIFeature {
  var bounds: CGRect { get }
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  var subFeatures: [AnyObject] { get }
  init()
}
let kCIAttributeFilterName: String
let kCIAttributeFilterDisplayName: String
let kCIAttributeDescription: String
let kCIAttributeFilterAvailable_Mac: String
let kCIAttributeFilterAvailable_iOS: String
let kCIAttributeReferenceDocumentation: String
let kCIAttributeFilterCategories: String
let kCIAttributeClass: String
let kCIAttributeType: String
let kCIAttributeMin: String
let kCIAttributeMax: String
let kCIAttributeSliderMin: String
let kCIAttributeSliderMax: String
let kCIAttributeDefault: String
let kCIAttributeIdentity: String
let kCIAttributeName: String
let kCIAttributeDisplayName: String
let kCIUIParameterSet: String
let kCIUISetBasic: String
let kCIUISetIntermediate: String
let kCIUISetAdvanced: String
let kCIUISetDevelopment: String
let kCIAttributeTypeTime: String
let kCIAttributeTypeScalar: String
let kCIAttributeTypeDistance: String
let kCIAttributeTypeAngle: String
let kCIAttributeTypeBoolean: String
let kCIAttributeTypeInteger: String
let kCIAttributeTypeCount: String
let kCIAttributeTypePosition: String
let kCIAttributeTypeOffset: String
let kCIAttributeTypePosition3: String
let kCIAttributeTypeRectangle: String
let kCIAttributeTypeOpaqueColor: String
let kCIAttributeTypeColor: String
let kCIAttributeTypeGradient: String
let kCIAttributeTypeImage: String
let kCIAttributeTypeTransform: String
let kCICategoryDistortionEffect: String
let kCICategoryGeometryAdjustment: String
let kCICategoryCompositeOperation: String
let kCICategoryHalftoneEffect: String
let kCICategoryColorAdjustment: String
let kCICategoryColorEffect: String
let kCICategoryTransition: String
let kCICategoryTileEffect: String
let kCICategoryGenerator: String
let kCICategoryReduction: String
let kCICategoryGradient: String
let kCICategoryStylize: String
let kCICategorySharpen: String
let kCICategoryBlur: String
let kCICategoryVideo: String
let kCICategoryStillImage: String
let kCICategoryInterlaced: String
let kCICategoryNonSquarePixels: String
let kCICategoryHighDynamicRange: String
let kCICategoryBuiltIn: String
let kCICategoryFilterGenerator: String
let kCIApplyOptionExtent: String
let kCIApplyOptionDefinition: String
let kCIApplyOptionUserInfo: String
let kCIApplyOptionColorSpace: String
let kCIOutputImageKey: String
let kCIInputBackgroundImageKey: String
let kCIInputImageKey: String
let kCIInputTimeKey: String
let kCIInputTransformKey: String
let kCIInputScaleKey: String
let kCIInputAspectRatioKey: String
let kCIInputCenterKey: String
let kCIInputRadiusKey: String
let kCIInputAngleKey: String
let kCIInputRefractionKey: String
let kCIInputWidthKey: String
let kCIInputSharpnessKey: String
let kCIInputIntensityKey: String
let kCIInputEVKey: String
let kCIInputSaturationKey: String
let kCIInputColorKey: String
let kCIInputBrightnessKey: String
let kCIInputContrastKey: String
let kCIInputBiasKey: String
let kCIInputWeightsKey: String
let kCIInputGradientImageKey: String
let kCIInputMaskImageKey: String
let kCIInputShadingImageKey: String
let kCIInputTargetImageKey: String
let kCIInputExtentKey: String
let kCIInputVersionKey: String
class CIFilter : Object, SecureCoding, Copying {
  var outputImage: CIImage? { get }
  var name: String
  var isEnabled: Bool
  var inputKeys: [String] { get }
  var outputKeys: [String] { get }
  func setDefaults()
  var attributes: [String : AnyObject] { get }
  func apply(k: CIKernel, arguments args: [AnyObject]?, options dict: [String : AnyObject]? = [:]) -> CIImage?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension CIFilter {
  func apply(k: CIKernel, args: [AnyObject], options: (String, AnyObject)...) -> CIImage?
  convenience init?(name: String!, elements: (String, AnyObject)...)
}
extension CIFilter {
   init?(name: String)
   init?(name: String, withInputParameters params: [String : AnyObject]?)
  class func filterNamesInCategory(category: String?) -> [String]
  class func filterNamesInCategories(categories: [String]?) -> [String]
  class func registerName(name: String, constructor anObject: CIFilterConstructor, classAttributes attributes: [String : AnyObject] = [:])
  class func localizedNameForFilterName(filterName: String) -> String?
  class func localizedNameForCategory(category: String) -> String
  class func localizedDescriptionForFilterName(filterName: String) -> String?
  class func localizedReferenceDocumentationForFilterName(filterName: String) -> URL?
}
extension CIFilter {
  class func serializedXMPFrom(filters: [CIFilter], inputImageExtent extent: CGRect) -> Data
  class func filterArrayFromSerializedXMP(xmpData: Data, inputImageExtent extent: CGRect, error outError: ErrorPointer) -> [CIFilter]
}
protocol CIFilterConstructor {
  func filterWithName(name: String) -> CIFilter?
}
let kCIFilterGeneratorExportedKey: String
let kCIFilterGeneratorExportedKeyTargetObject: String
let kCIFilterGeneratorExportedKeyName: String
class CIFilterGenerator : Object, SecureCoding, Copying, CIFilterConstructor {
  init?(contentsOf aURL: URL)
  func connect(sourceObject: AnyObject, withKey sourceKey: String?, to targetObject: AnyObject, withKey targetKey: String)
  func disconnectObject(sourceObject: AnyObject, withKey key: String, to targetObject: AnyObject, withKey targetKey: String)
  func exportKey(key: String, from targetObject: AnyObject, withName exportedKeyName: String?)
  func removeExportedKey(exportedKeyName: String)
  var exportedKeys: [Object : AnyObject] { get }
  func setAttributes(attributes: [Object : AnyObject] = [:], forExportedKey key: String)
  var classAttributes: [Object : AnyObject]
  func filter() -> CIFilter
  func registerFilterName(name: String)
  func writeTo(aURL: URL, atomically flag: Bool) -> Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func filterWithName(name: String) -> CIFilter?
}
class CIFilterShape : Object, Copying {
  init(rect r: CGRect)
  func transformBy(m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetByX(dx: Int32, y dy: Int32) -> CIFilterShape
  func unionWith(s2: CIFilterShape) -> CIFilterShape
  func unionWith(r: CGRect) -> CIFilterShape
  func intersectWith(s2: CIFilterShape) -> CIFilterShape
  func intersectWith(r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class CIImage : Object, SecureCoding, Copying {
  class func empty() -> CIImage
  init(cgImage image: CGImage)
  init(cgImage image: CGImage, options: [String : AnyObject]? = [:])
  init(cgLayer layer: CGLayer)
  init(cgLayer layer: CGLayer, options: [String : AnyObject]? = [:])
  init?(data: Data)
  init?(data: Data, options: [String : AnyObject]? = [:])
  init(bitmapData data: Data, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  init(texture name: UInt32, size: CGSize, flipped: Bool, options: [String : AnyObject]? = [:])
  init(mtlTexture texture: MTLTexture, options: [String : AnyObject]? = [:])
  init?(contentsOf url: URL)
  init?(contentsOf url: URL, options: [String : AnyObject]? = [:])
  init(ioSurface surface: IOSurface)
  init(ioSurface surface: IOSurface, options: [String : AnyObject]? = [:])
  init(ioSurface surface: IOSurface, plane: Int, format: CIFormat, options: [String : AnyObject]? = [:])
  init(cvImageBuffer imageBuffer: CVImageBuffer)
  init(cvImageBuffer imageBuffer: CVImageBuffer, options: [String : AnyObject]? = [:])
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [String : AnyObject]? = [:])
  init(color: CIColor)
  func applying(matrix: CGAffineTransform) -> CIImage
  func applyingOrientation(orientation: Int32) -> CIImage
  func imageTransformForOrientation(orientation: Int32) -> CGAffineTransform
  func byCompositingOverImage(dest: CIImage) -> CIImage
  func byCroppingTo(rect: CGRect) -> CIImage
  func byClampingToExtent() -> CIImage
  func applyingFilter(filterName: String, withInputParameters params: [String : AnyObject]?) -> CIImage
  var extent: CGRect { get }
  var properties: [String : AnyObject] { get }
  var definition: CIFilterShape { get }
  var url: URL? { get }
  var colorSpace: CGColorSpace? { get }
  func regionOfInterestFor(image: CIImage, in rect: CGRect) -> CGRect
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias CIFormat = Int32
var kCIFormatARGB8: CIFormat
var kCIFormatBGRA8: CIFormat
var kCIFormatRGBA8: CIFormat
var kCIFormatABGR8: CIFormat
var kCIFormatRGBA16: CIFormat
var kCIFormatRGBAf: CIFormat
var kCIFormatRGBAh: CIFormat
var kCIFormatA8: CIFormat
var kCIFormatA16: CIFormat
var kCIFormatAh: CIFormat
var kCIFormatAf: CIFormat
var kCIFormatR8: CIFormat
var kCIFormatR16: CIFormat
var kCIFormatRh: CIFormat
var kCIFormatRf: CIFormat
var kCIFormatRG8: CIFormat
var kCIFormatRG16: CIFormat
var kCIFormatRGh: CIFormat
var kCIFormatRGf: CIFormat
let kCIImageColorSpace: String
let kCIImageProperties: String
let kCIImageTextureTarget: String
let kCIImageTextureFormat: String
extension CIImage {
  func autoAdjustmentFilters(options options: [String : AnyObject]? = [:]) -> [CIFilter]
}
let kCIImageAutoAdjustEnhance: String
let kCIImageAutoAdjustRedEye: String
let kCIImageAutoAdjustFeatures: String
let kCIImageAutoAdjustCrop: String
let kCIImageAutoAdjustLevel: String
class CIImageAccumulator : Object {
  init(extent: CGRect, format: CIFormat)
  init(extent: CGRect, format: CIFormat, colorSpace: CGColorSpace)
  var extent: CGRect { get }
  var format: CIFormat { get }
  func image() -> CIImage
  func setImage(image: CIImage)
  func setImage(image: CIImage, dirtyRect: CGRect)
  func clear()
  init()
}
extension CIImage {
  init(imageProvider p: AnyObject, size width: Int, _ height: Int, format f: CIFormat, colorSpace cs: CGColorSpace?, options: [String : AnyObject]? = [:])
}
extension Object {
  class func provideImageData(data: UnsafeMutablePointer<Void>, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: AnyObject?)
  func provideImageData(data: UnsafeMutablePointer<Void>, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: AnyObject?)
}
let kCIImageProviderTileSize: String
let kCIImageProviderUserInfo: String
typealias CIKernelROICallback = (Int32, CGRect) -> CGRect
class CIKernel : Object {
  class func kernelsWith(string: String) -> [CIKernel]?
  convenience init?(string: String)
  var name: String { get }
  func setROISelector(method: Selector)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, arguments args: [AnyObject]?) -> CIImage?
  init()
}
class CIColorKernel : CIKernel {
  convenience init?(string: String)
  func applyWithExtent(extent: CGRect, arguments args: [AnyObject]?) -> CIImage?
  init()
}
class CIWarpKernel : CIKernel {
  convenience init?(string: String)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, inputImage image: CIImage, arguments args: [AnyObject]?) -> CIImage?
  init()
}
class CIPlugIn : Object {
  class func loadAllPlugIns()
  class func loadNonExecutablePlugIns()
  class func load(url: URL!, allowExecutableCode: Bool)
  init()
}
protocol CIPlugInRegistration {
  func load(host: UnsafeMutablePointer<Void>) -> Bool
}
extension CIFilter {
   init!(imageURL url: URL!, options: [Object : AnyObject]! = [:])
   init!(imageData data: Data!, options: [Object : AnyObject]! = [:])
}
let kCIInputDecoderVersionKey: String
let kCISupportedDecoderVersionsKey: String
let kCIInputBoostKey: String
let kCIInputNeutralChromaticityXKey: String
let kCIInputNeutralChromaticityYKey: String
let kCIInputNeutralTemperatureKey: String
let kCIInputNeutralTintKey: String
let kCIInputNeutralLocationKey: String
let kCIInputScaleFactorKey: String
let kCIInputAllowDraftModeKey: String
let kCIInputIgnoreImageOrientationKey: String
let kCIInputImageOrientationKey: String
let kCIInputEnableSharpeningKey: String
let kCIInputEnableChromaticNoiseTrackingKey: String
let kCIInputNoiseReductionAmountKey: String
let kCIInputEnableVendorLensCorrectionKey: String
let kCIInputLuminanceNoiseReductionAmountKey: String
let kCIInputColorNoiseReductionAmountKey: String
let kCIInputNoiseReductionSharpnessAmountKey: String
let kCIInputNoiseReductionContrastAmountKey: String
let kCIInputNoiseReductionDetailAmountKey: String
let kCIInputBoostShadowAmountKey: String
let kCIInputLinearSpaceFilter: String
let kCIOutputNativeSizeKey: String
let kCIActiveKeys: String
class CISampler : Object, Copying {
  convenience init(image im: CIImage)
  init(image im: CIImage, options dict: [Object : AnyObject]? = [:])
  var definition: CIFilterShape { get }
  var extent: CGRect { get }
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension CISampler {
  convenience init(im: CIImage!, elements: (Copying, AnyObject)...)
}
let kCISamplerAffineMatrix: String
let kCISamplerWrapMode: String
let kCISamplerFilterMode: String
let kCISamplerWrapBlack: String
let kCISamplerWrapClamp: String
let kCISamplerFilterNearest: String
let kCISamplerFilterLinear: String
let kCISamplerColorSpace: String
class CIVector : Object, Copying, SecureCoding {
  init(values: UnsafePointer<CGFloat>, count: Int)
  convenience init(x: CGFloat)
  convenience init(x: CGFloat, y: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
  convenience init(cgPoint p: CGPoint)
  convenience init(cgRect r: CGRect)
  convenience init(cgAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func valueAt(index: Int) -> CGFloat
  var count: Int { get }
  var x: CGFloat { get }
  var y: CGFloat { get }
  var z: CGFloat { get }
  var w: CGFloat { get }
  var cgPointValue: CGPoint { get }
  var cgRectValue: CGRect { get }
  var cgAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
