
class MDLAsset : NSObject, NSCopying, NSFastEnumeration {
  init(URL: NSURL)
  init(URL: NSURL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?)
  init(URL: NSURL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?, preserveTopology: Bool, error: NSErrorPointer)
  func exportAssetToURL(URL: NSURL) -> Bool
  func exportAssetToURL(URL: NSURL, error: ()) throws
  class func canImportFileExtension(extension: String) -> Bool
  class func canExportFileExtension(extension: String) -> Bool
  func boundingBoxAtTime(time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: NSTimeInterval
  var startTime: NSTimeInterval
  var endTime: NSTimeInterval
  var URL: NSURL? { get }
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func addObject(object: MDLObject)
  func removeObject(object: MDLObject)
  var count: Int { get }
  subscript (index: Int) -> MDLObject? { get }
  func objectAtIndex(index: Int) -> MDLObject
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class MDLCamera : MDLObject {
  var projectionMatrix: matrix_float4x4 { get }
  func frameBoundingBox(boundingBox: MDLAxisAlignedBoundingBox, setNearAndFar: Bool)
  func lookAt(focusPosition: vector_float3)
  func lookAt(focusPosition: vector_float3, from cameraPosition: vector_float3)
  func rayTo(pixel: vector_int2, forViewPort size: vector_int2) -> vector_float3
  var nearVisibilityDistance: Float
  var farVisibilityDistance: Float
  var worldToMetersConversionScale: Float
  var barrelDistortion: Float
  var fisheyeDistortion: Float
  var opticalVignetting: Float
  var chromaticAberration: Float
  var focalLength: Float
  var focusDistance: Float
  var fieldOfView: Float
  var fStop: Float
  var apertureBladeCount: Int
  var maximumCircleOfConfusion: Float
  func bokehKernelWithSize(size: vector_int2) -> MDLTexture
  var shutterOpenInterval: NSTimeInterval
  var sensorVerticalAperture: Float
  var sensorAspect: Float
  var sensorEnlargement: vector_float2
  var sensorShift: vector_float2
  var flash: vector_float3
  var exposureCompression: vector_float2
  var exposure: vector_float3
  init()
}
class MDLStereoscopicCamera : MDLCamera {
  var interPupillaryDistance: Float
  var leftVergence: Float
  var rightVergence: Float
  var overlap: Float
  var leftViewMatrix: matrix_float4x4 { get }
  var rightViewMatrix: matrix_float4x4 { get }
  var leftProjectionMatrix: matrix_float4x4 { get }
  var rightProjectionMatrix: matrix_float4x4 { get }
  init()
}
enum MDLLightType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case Ambient
  case Directional
  case Spot
  case Point
  case Linear
  case DiscArea
  case RectangularArea
  case SuperElliptical
  case Photometric
  case Probe
  case Environment
}
class MDLLight : MDLObject {
  func irradianceAtPoint(point: vector_float3) -> Unmanaged<CGColor>
  func irradianceAtPoint(point: vector_float3, colorSpace: CGColorSpace) -> Unmanaged<CGColor>
  var lightType: MDLLightType
  init()
}
class MDLPhysicallyPlausibleLight : MDLLight {
  func setColorByTemperature(temperature: Float)
  var color: CGColor?
  var lumens: Float
  var innerConeAngle: Float
  var outerConeAngle: Float
  var attenuationStartDistance: Float
  var attenuationEndDistance: Float
  init()
}
class MDLAreaLight : MDLPhysicallyPlausibleLight {
  var areaRadius: Float
  var superEllipticPower: vector_float2
  var aspect: Float
  init()
}
class MDLPhotometricLight : MDLPhysicallyPlausibleLight {
  init?(IESProfile URL: NSURL)
  func generateSphericalHarmonicsFromLight(sphericalHarmonicsLevel: Int)
  func generateCubemapFromLight(textureSize: Int)
  var lightCubeMap: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: NSData? { get }
  init()
}
class MDLLightProbe : MDLLight {
  init(reflectiveTexture: MDLTexture?, irradianceTexture: MDLTexture?)
  func generateSphericalHarmonicsFromIrradiance(sphericalHarmonicsLevel: Int)
  var reflectiveTexture: MDLTexture? { get }
  var irradianceTexture: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: NSData? { get }
  init()
}
extension MDLLightProbe {
   init?(textureSize: Int, forLocation transform: MDLTransform, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], reflectiveCubemap: MDLTexture?, irradianceCubemap: MDLTexture?)
}
enum MDLMaterialSemantic : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BaseColor
  case Subsurface
  case Metallic
  case Specular
  case SpecularExponent
  case SpecularTint
  case Roughness
  case Anisotropic
  case AnisotropicRotation
  case Sheen
  case SheenTint
  case Clearcoat
  case ClearcoatGloss
  case Emission
  case Bump
  case Opacity
  case InterfaceIndexOfRefraction
  case MaterialIndexOfRefraction
  case ObjectSpaceNormal
  case TangentSpaceNormal
  case Displacement
  case DisplacementScale
  case AmbientOcclusion
  case AmbientOcclusionScale
  case None
  case UserDefined
}
enum MDLMaterialPropertyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case String
  case URL
  case Texture
  case Color
  case Float
  case Float2
  case Float3
  case Float4
  case Matrix44
}
enum MDLMaterialTextureWrapMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clamp
  case Repeat
  case Mirror
}
enum MDLMaterialTextureFilterMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
enum MDLMaterialMipMapFilterMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
class MDLTextureFilter : NSObject {
  var sWrapMode: MDLMaterialTextureWrapMode
  var tWrapMode: MDLMaterialTextureWrapMode
  var rWrapMode: MDLMaterialTextureWrapMode
  var minFilter: MDLMaterialTextureFilterMode
  var magFilter: MDLMaterialTextureFilterMode
  var mipFilter: MDLMaterialMipMapFilterMode
  init()
}
class MDLTextureSampler : NSObject {
  var texture: MDLTexture?
  var hardwareFilter: MDLTextureFilter?
  var transform: MDLTransform?
  init()
}
class MDLMaterialProperty : NSObject, MDLNamed {
  init(name: String, semantic: MDLMaterialSemantic)
  convenience init(name: String, semantic: MDLMaterialSemantic, float value: Float)
  convenience init(name: String, semantic: MDLMaterialSemantic, float2 value: vector_float2)
  convenience init(name: String, semantic: MDLMaterialSemantic, float3 value: vector_float3)
  convenience init(name: String, semantic: MDLMaterialSemantic, float4 value: vector_float4)
  convenience init(name: String, semantic: MDLMaterialSemantic, matrix4x4 value: matrix_float4x4)
  convenience init(name: String, semantic: MDLMaterialSemantic, URL: NSURL?)
  convenience init(name: String, semantic: MDLMaterialSemantic, string: String?)
  convenience init(name: String, semantic: MDLMaterialSemantic, textureSampler: MDLTextureSampler?)
  convenience init(name: String, semantic: MDLMaterialSemantic, color: CGColor)
  func setProperties(property: MDLMaterialProperty)
  var semantic: MDLMaterialSemantic
  var type: MDLMaterialPropertyType { get }
  var name: String
  var stringValue: String?
  @NSCopying var URLValue: NSURL?
  var textureSamplerValue: MDLTextureSampler?
  var color: CGColor?
  var floatValue: Float
  var float2Value: vector_float2
  var float3Value: vector_float3
  var float4Value: vector_float4
  var matrix4x4: matrix_float4x4
}
class MDLScatteringFunction : NSObject, MDLNamed {
  var name: String
  var baseColor: MDLMaterialProperty { get }
  var emission: MDLMaterialProperty { get }
  var specular: MDLMaterialProperty { get }
  var materialIndexOfRefraction: MDLMaterialProperty { get }
  var interfaceIndexOfRefraction: MDLMaterialProperty { get }
  var normal: MDLMaterialProperty { get }
  var ambientOcclusion: MDLMaterialProperty { get }
  var ambientOcclusionScale: MDLMaterialProperty { get }
  init()
}
class MDLPhysicallyPlausibleScatteringFunction : MDLScatteringFunction {
  var version: Int { get }
  var subsurface: MDLMaterialProperty { get }
  var metallic: MDLMaterialProperty { get }
  var specularAmount: MDLMaterialProperty { get }
  var specularTint: MDLMaterialProperty { get }
  var roughness: MDLMaterialProperty { get }
  var anisotropic: MDLMaterialProperty { get }
  var anisotropicRotation: MDLMaterialProperty { get }
  var sheen: MDLMaterialProperty { get }
  var sheenTint: MDLMaterialProperty { get }
  var clearcoat: MDLMaterialProperty { get }
  var clearcoatGloss: MDLMaterialProperty { get }
  init()
}
class MDLMaterial : NSObject, MDLNamed, NSFastEnumeration {
  init(name: String, scatteringFunction: MDLScatteringFunction)
  func setProperty(property: MDLMaterialProperty)
  func removeProperty(property: MDLMaterialProperty)
  func propertyNamed(name: String) -> MDLMaterialProperty?
  func propertyWithSemantic(semantic: MDLMaterialSemantic) -> MDLMaterialProperty?
  func removeAllProperties()
  var scatteringFunction: MDLScatteringFunction { get }
  var name: String
  var baseMaterial: MDLMaterial?
  subscript (idx: Int) -> MDLMaterialProperty? { get }
  subscript (name: String) -> MDLMaterialProperty? { get }
  var count: Int { get }
  init()
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class MDLVertexAttributeData : NSObject {
  var map: MDLMeshBufferMap
  var dataStart: UnsafeMutablePointer<Void>
  var stride: Int
  var format: MDLVertexFormat
  init()
}
class MDLMesh : MDLObject {
  init(vertexBuffer: MDLMeshBuffer, vertexCount: Int, descriptor: MDLVertexDescriptor, submeshes: [MDLSubmesh])
  init(vertexBuffers: [MDLMeshBuffer], vertexCount: Int, descriptor: MDLVertexDescriptor, submeshes: [MDLSubmesh])
  func vertexAttributeDataForAttributeNamed(name: String) -> MDLVertexAttributeData?
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  @NSCopying var vertexDescriptor: MDLVertexDescriptor
  var vertexCount: Int { get }
  var vertexBuffers: [MDLMeshBuffer] { get }
  var submeshes: NSMutableArray { get }
  init()
}
extension MDLMesh {
  func addAttributeWithName(name: String, format: MDLVertexFormat)
  func addNormalsWithAttributeNamed(attributeName: String?, creaseThreshold: Float)
  func addTangentBasisForTextureCoordinateAttributeNamed(textureCoordinateAttributeName: String, tangentAttributeNamed tangentAttributeName: String, bitangentAttributeNamed bitangentAttributeName: String?)
  func addTangentBasisForTextureCoordinateAttributeNamed(textureCoordinateAttributeName: String, normalAttributeNamed normalAttributeName: String, tangentAttributeNamed tangentAttributeName: String)
  func makeVerticesUnique()
}
extension MDLMesh {
  class func newEllipsoidWithRadii(radii: vector_float3, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, hemisphere: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newCylinderWithHeight(height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newEllipticalConeWithHeight(height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newIcosahedronWithRadius(radius: Float, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newSubdividedMesh(mesh: MDLMesh, submeshIndex: Int, subdivisionLevels: Int) -> Self?
}
extension MDLMesh {
  func generateAmbientOcclusionTextureWithSize(textureSize: vector_int2, raysPerSample: Int, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionTextureWithQuality(bakeQuality: Float, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionVertexColorsWithRaysPerSample(raysPerSample: Int, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateAmbientOcclusionVertexColorsWithQuality(bakeQuality: Float, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateLightMapTextureWithTextureSize(textureSize: vector_int2, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapTextureWithQuality(bakeQuality: Float, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapVertexColorsWithLightsToConsider(lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
}
enum MDLMeshBufferType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Index
}
class MDLMeshBufferMap : NSObject {
  init(bytes: UnsafeMutablePointer<Void>, deallocator: (() -> Void)?)
  var bytes: UnsafeMutablePointer<Void> { get }
  init()
}
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {
  func fillData(data: NSData, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
class MDLMeshBufferData : NSObject, MDLMeshBuffer {
  init(type: MDLMeshBufferType, length: Int)
  init(type: MDLMeshBufferType, data: NSData?)
  var data: NSData { get }
  init()
  func fillData(data: NSData, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
  func copyWithZone(zone: NSZone) -> AnyObject
}
protocol MDLMeshBufferZone : NSObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
protocol MDLMeshBufferAllocator : NSObjectProtocol {
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
  init()
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  init()
}
class MDLObject : NSObject, MDLNamed {
  func setComponent(component: MDLComponent, forProtocol protocol: Protocol)
  func componentConformingToProtocol(protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(child: MDLObject)
  func boundingBoxAtTime(time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  init()
  var name: String
}
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  init()
  func addObject(object: MDLObject)
  func removeObject(object: MDLObject)
  var objects: [MDLObject] { get }
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class MDLSubmeshTopology : NSObject {
  var faceTopology: MDLMeshBuffer?
  var faceCount: Int
  var vertexCreaseIndices: MDLMeshBuffer?
  var vertexCreases: MDLMeshBuffer?
  var vertexCreaseCount: Int
  var edgeCreaseIndices: MDLMeshBuffer?
  var edgeCreases: MDLMeshBuffer?
  var edgeCreaseCount: Int
  var holes: MDLMeshBuffer?
  var holeCount: Int
  init()
}
class MDLSubmesh : NSObject, MDLNamed {
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)
  init(indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?, topology: MDLSubmeshTopology?)
  init?(MDLSubmesh submesh: MDLSubmesh, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType)
  var indexBuffer: MDLMeshBuffer { get }
  var indexCount: Int { get }
  var indexType: MDLIndexBitDepth { get }
  var geometryType: MDLGeometryType { get }
  var material: MDLMaterial?
  var topology: MDLSubmeshTopology? { get }
  var name: String
  init()
}
enum MDLTextureChannelEncoding : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UInt8
  static var Uint8: MDLTextureChannelEncoding { get }
  case UInt16
  static var Uint16: MDLTextureChannelEncoding { get }
  case UInt24
  static var Uint24: MDLTextureChannelEncoding { get }
  case UInt32
  static var Uint32: MDLTextureChannelEncoding { get }
  case Float16
  case Float32
}
class MDLTexture : NSObject, MDLNamed {
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  class func irradianceTextureCubeWithTexture(texture: MDLTexture, name: String?, dimensions: vector_int2) -> Self
  class func irradianceTextureCubeWithTexture(texture: MDLTexture, name: String?, dimensions: vector_int2, roughness: Float) -> Self
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  func writeToURL(URL: NSURL) -> Bool
  func writeToURL(nsurl: NSURL, type: CFString) -> Bool
  func imageFromTexture() -> Unmanaged<CGImage>?
  func texelDataWithTopLeftOrigin() -> NSData?
  func texelDataWithBottomLeftOrigin() -> NSData?
  func texelDataWithTopLeftOriginAtMipLevel(level: Int, create: Bool) -> NSData?
  func texelDataWithBottomLeftOriginAtMipLevel(level: Int, create: Bool) -> NSData?
  var dimensions: vector_int2 { get }
  var rowStride: Int { get }
  var channelCount: Int { get }
  var mipLevelCount: Int { get }
  var channelEncoding: MDLTextureChannelEncoding { get }
  var isCube: Bool
  convenience init()
  var name: String
}
class MDLURLTexture : MDLTexture {
  init(URL: NSURL, name: String?)
  @NSCopying var URL: NSURL
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLCheckerboardTexture : MDLTexture {
  init(divisions: Float, name: String?, dimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, color1: CGColor, color2: CGColor)
  var divisions: Float
  var color1: CGColor?
  var color2: CGColor?
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLSkyCubeTexture : MDLTexture {
  init(name: String?, channelEncoding: MDLTextureChannelEncoding, textureDimensions: vector_int2, turbidity: Float, sunElevation: Float, upperAtmosphereScattering: Float, groundAlbedo: Float)
  func updateTexture()
  var turbidity: Float
  var sunElevation: Float
  var upperAtmosphereScattering: Float
  var groundAlbedo: Float
  var horizonElevation: Float
  var groundColor: CGColor?
  var gamma: Float
  var exposure: Float
  var brightness: Float
  var contrast: Float
  var saturation: Float
  var highDynamicRangeCompression: vector_float2
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLColorSwatchTexture : MDLTexture {
  init(colorTemperatureGradientFrom colorTemperature1: Float, toColorTemperature colorTemperature2: Float, name: String?, textureDimensions: vector_int2)
  init(colorGradientFrom color1: CGColor, toColor color2: CGColor, name: String?, textureDimensions: vector_int2)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLNoiseTexture : MDLTexture {
  init(vectorNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelEncoding: MDLTextureChannelEncoding)
  init(scalarNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, grayscale: Bool)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLNormalMapTexture : MDLTexture {
  init(byGeneratingNormalMapWithTexture sourceTexture: MDLTexture, name: String?, smoothness: Float, contrast: Float)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
protocol MDLTransformComponent : MDLComponent {
  var matrix: matrix_float4x4 { get set }
  var minimumTime: NSTimeInterval { get }
  var maximumTime: NSTimeInterval { get }
  optional func setLocalTransform(transform: matrix_float4x4, forTime time: NSTimeInterval)
  optional func setLocalTransform(transform: matrix_float4x4)
  optional func localTransformAtTime(time: NSTimeInterval) -> matrix_float4x4
  optional static func globalTransformWithObject(object: MDLObject, atTime time: NSTimeInterval) -> matrix_float4x4
}
class MDLTransform : NSObject, MDLTransformComponent {
  init(identity: ())
  convenience init(transformComponent component: MDLTransformComponent)
  convenience init(matrix: matrix_float4x4)
  func setIdentity()
  func translationAtTime(time: NSTimeInterval) -> vector_float3
  func rotationAtTime(time: NSTimeInterval) -> vector_float3
  func shearAtTime(time: NSTimeInterval) -> vector_float3
  func scaleAtTime(time: NSTimeInterval) -> vector_float3
  func setTranslation(translation: vector_float3, forTime time: NSTimeInterval)
  func setRotation(rotation: vector_float3, forTime time: NSTimeInterval)
  func setShear(shear: vector_float3, forTime time: NSTimeInterval)
  func setScale(scale: vector_float3, forTime time: NSTimeInterval)
  func rotationMatrixAtTime(time: NSTimeInterval) -> matrix_float4x4
  var translation: vector_float3
  var rotation: vector_float3
  var shear: vector_float3
  var scale: vector_float3
  convenience init()
  var matrix: matrix_float4x4
  var minimumTime: NSTimeInterval { get }
  var maximumTime: NSTimeInterval { get }
  func setLocalTransform(transform: matrix_float4x4, forTime time: NSTimeInterval)
  func setLocalTransform(transform: matrix_float4x4)
  func localTransformAtTime(time: NSTimeInterval) -> matrix_float4x4
  class func globalTransformWithObject(object: MDLObject, atTime time: NSTimeInterval) -> matrix_float4x4
}
let kUTTypeAlembic: String
let kUTType3dObject: String
let kUTTypePolygon: String
let kUTTypeStereolithography: String
enum MDLIndexBitDepth : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case UInt8
  static var Uint8: MDLIndexBitDepth { get }
  case UInt16
  static var Uint16: MDLIndexBitDepth { get }
  case UInt32
  static var Uint32: MDLIndexBitDepth { get }
}
enum MDLGeometryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case TypePoints
  case TypeLines
  case TypeTriangles
  case TypeTriangleStrips
  case TypeQuads
  case TypeVariableTopology
  static var KindPoints: MDLGeometryType { get }
  static var KindLines: MDLGeometryType { get }
  static var KindTriangles: MDLGeometryType { get }
  static var KindTriangleStrips: MDLGeometryType { get }
  static var KindQuads: MDLGeometryType { get }
}
protocol MDLNamed {
  var name: String { get set }
}
protocol MDLComponent : NSObjectProtocol {
}
protocol MDLObjectContainerComponent : MDLComponent, NSFastEnumeration {
  func addObject(object: MDLObject)
  func removeObject(object: MDLObject)
  var objects: [MDLObject] { get }
}
struct MDL_EXPORT_CPPCLASS {
  var maxBounds: vector_float3
  var minBounds: vector_float3
  init()
  init(maxBounds: vector_float3, minBounds: vector_float3)
}
typealias MDLAxisAlignedBoundingBox = MDL_EXPORT_CPPCLASS
let MDLVertexAttributeAnisotropy: String
let MDLVertexAttributeBinormal: String
let MDLVertexAttributeBitangent: String
let MDLVertexAttributeColor: String
let MDLVertexAttributeEdgeCrease: String
let MDLVertexAttributeJointIndices: String
let MDLVertexAttributeJointWeights: String
let MDLVertexAttributeNormal: String
let MDLVertexAttributeOcclusionValue: String
let MDLVertexAttributePosition: String
let MDLVertexAttributeShadingBasisU: String
let MDLVertexAttributeShadingBasisV: String
let MDLVertexAttributeSubdivisionStencil: String
let MDLVertexAttributeTangent: String
let MDLVertexAttributeTextureCoordinate: String
enum MDLVertexFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case PackedBit
  case UCharBits
  case CharBits
  case UCharNormalizedBits
  case CharNormalizedBits
  case UShortBits
  case ShortBits
  case UShortNormalizedBits
  case ShortNormalizedBits
  case UIntBits
  case IntBits
  case HalfBits
  case FloatBits
  case UChar
  case UChar2
  case UChar3
  case UChar4
  case Char
  case Char2
  case Char3
  case Char4
  case UCharNormalized
  case UChar2Normalized
  case UChar3Normalized
  case UChar4Normalized
  case CharNormalized
  case Char2Normalized
  case Char3Normalized
  case Char4Normalized
  case UShort
  case UShort2
  case UShort3
  case UShort4
  case Short
  case Short2
  case Short3
  case Short4
  case UShortNormalized
  case UShort2Normalized
  case UShort3Normalized
  case UShort4Normalized
  case ShortNormalized
  case Short2Normalized
  case Short3Normalized
  case Short4Normalized
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Int
  case Int2
  case Int3
  case Int4
  case Half
  case Half2
  case Half3
  case Half4
  case Float
  case Float2
  case Float3
  case Float4
  case Int1010102Normalized
  case UInt1010102Normalized
}
class MDLVertexBufferLayout : NSObject, NSCopying {
  var stride: Int
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class MDLVertexAttribute : NSObject, NSCopying {
  init(name: String, format: MDLVertexFormat, offset: Int, bufferIndex: Int)
  var name: String
  var format: MDLVertexFormat
  var offset: Int
  var bufferIndex: Int
  var initializationValue: vector_float4
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class MDLVertexDescriptor : NSObject, NSCopying {
  init(vertexDescriptor: MDLVertexDescriptor)
  func attributeNamed(name: String) -> MDLVertexAttribute?
  func addOrReplaceAttribute(attribute: MDLVertexAttribute)
  var attributes: NSMutableArray
  var layouts: NSMutableArray
  func reset()
  func setPackedStrides()
  func setPackedOffsets()
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias MDLVoxelIndex = vector_int4
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent: MDLVoxelIndex, maximumExtent: MDLVoxelIndex)
}
class MDLVoxelArray : NSObject {
  init(asset: MDLAsset, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  init(asset: MDLAsset, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  init(data voxelData: NSData, boundingBox: MDLAxisAlignedBoundingBox, voxelExtent: Float)
  func meshUsingAllocator(allocator: MDLMeshBufferAllocator?) -> MDLMesh?
  func voxelExistsAtIndex(index: MDLVoxelIndex, allowAnyX: Bool, allowAnyY: Bool, allowAnyZ: Bool, allowAnyShell: Bool) -> Bool
  func setVoxelAtIndex(index: MDLVoxelIndex)
  func setVoxelsForMesh(mesh: MDLMesh, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  func setVoxelsForMesh(mesh: MDLMesh, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  func voxelsWithinExtent(extent: MDLVoxelIndexExtent) -> NSData?
  func voxelIndices() -> NSData?
  func unionWithVoxels(voxels: MDLVoxelArray)
  func differenceWithVoxels(voxels: MDLVoxelArray)
  func intersectWithVoxels(voxels: MDLVoxelArray)
  func indexOfSpatialLocation(location: vector_float3) -> MDLVoxelIndex
  func spatialLocationOfIndex(index: MDLVoxelIndex) -> vector_float3
  func voxelBoundingBoxAtIndex(index: MDLVoxelIndex) -> MDLAxisAlignedBoundingBox
  var count: Int { get }
  var voxelIndexExtent: MDLVoxelIndexExtent { get }
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  init()
}
