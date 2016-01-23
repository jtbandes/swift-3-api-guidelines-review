
class MDLAsset : Object, Copying, FastEnumeration {
  init(url URL: URL)
  init(url URL: URL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?)
  init(url URL: URL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?, preserveTopology: Bool, error: ErrorPointer)
  func exportTo(URL: URL) -> Bool
  func exportTo(URL: URL, error: ()) throws
  class func canImportFileExtension(extension: String) -> Bool
  class func canExportFileExtension(extension: String) -> Bool
  func boundingBoxAtTime(time: TimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: TimeInterval
  var startTime: TimeInterval
  var endTime: TimeInterval
  var url: URL? { get }
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func add(object: MDLObject)
  func remove(object: MDLObject)
  var count: Int { get }
  subscript (index: Int) -> MDLObject? { get }
  func objectAt(index: Int) -> MDLObject
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  var shutterOpenInterval: TimeInterval
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
  init?(iesProfile URL: URL)
  func generateSphericalHarmonicsFromLight(sphericalHarmonicsLevel: Int)
  func generateCubemapFromLight(textureSize: Int)
  var lightCubeMap: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: Data? { get }
  init()
}
class MDLLightProbe : MDLLight {
  init(reflectiveTexture: MDLTexture?, irradianceTexture: MDLTexture?)
  func generateSphericalHarmonicsFromIrradiance(sphericalHarmonicsLevel: Int)
  var reflectiveTexture: MDLTexture? { get }
  var irradianceTexture: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: Data? { get }
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
class MDLTextureFilter : Object {
  var sWrapMode: MDLMaterialTextureWrapMode
  var tWrapMode: MDLMaterialTextureWrapMode
  var rWrapMode: MDLMaterialTextureWrapMode
  var minFilter: MDLMaterialTextureFilterMode
  var magFilter: MDLMaterialTextureFilterMode
  var mipFilter: MDLMaterialMipMapFilterMode
  init()
}
class MDLTextureSampler : Object {
  var texture: MDLTexture?
  var hardwareFilter: MDLTextureFilter?
  var transform: MDLTransform?
  init()
}
class MDLMaterialProperty : Object, MDLNamed {
  init(name: String, semantic: MDLMaterialSemantic)
  convenience init(name: String, semantic: MDLMaterialSemantic, float value: Float)
  convenience init(name: String, semantic: MDLMaterialSemantic, float2 value: vector_float2)
  convenience init(name: String, semantic: MDLMaterialSemantic, float3 value: vector_float3)
  convenience init(name: String, semantic: MDLMaterialSemantic, float4 value: vector_float4)
  convenience init(name: String, semantic: MDLMaterialSemantic, matrix4x4 value: matrix_float4x4)
  convenience init(name: String, semantic: MDLMaterialSemantic, url URL: URL?)
  convenience init(name: String, semantic: MDLMaterialSemantic, string: String?)
  convenience init(name: String, semantic: MDLMaterialSemantic, textureSampler: MDLTextureSampler?)
  convenience init(name: String, semantic: MDLMaterialSemantic, color: CGColor)
  func setProperties(property: MDLMaterialProperty)
  var semantic: MDLMaterialSemantic
  var type: MDLMaterialPropertyType { get }
  var name: String
  var stringValue: String?
  @NSCopying var urlValue: URL?
  var textureSamplerValue: MDLTextureSampler?
  var color: CGColor?
  var floatValue: Float
  var float2Value: vector_float2
  var float3Value: vector_float3
  var float4Value: vector_float4
  var matrix4x4: matrix_float4x4
}
class MDLScatteringFunction : Object, MDLNamed {
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
class MDLMaterial : Object, MDLNamed, FastEnumeration {
  init(name: String, scatteringFunction: MDLScatteringFunction)
  func setProperty(property: MDLMaterialProperty)
  func remove(property: MDLMaterialProperty)
  func propertyNamed(name: String) -> MDLMaterialProperty?
  func propertyWith(semantic: MDLMaterialSemantic) -> MDLMaterialProperty?
  func removeAllProperties()
  var scatteringFunction: MDLScatteringFunction { get }
  var name: String
  var base: MDLMaterial?
  subscript (idx: Int) -> MDLMaterialProperty? { get }
  subscript (name: String) -> MDLMaterialProperty? { get }
  var count: Int { get }
  init()
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class MDLVertexAttributeData : Object {
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
  var submeshes: MutableArray { get }
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
class MDLMeshBufferMap : Object {
  init(bytes: UnsafeMutablePointer<Void>, deallocator: (() -> Void)? = nil)
  var bytes: UnsafeMutablePointer<Void> { get }
  init()
}
protocol MDLMeshBuffer : ObjectProtocol, Copying {
  func fill(data: Data, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
class MDLMeshBufferData : Object, MDLMeshBuffer {
  init(type: MDLMeshBufferType, length: Int)
  init(type: MDLMeshBufferType, data: Data?)
  var data: Data { get }
  init()
  func fill(data: Data, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MDLMeshBufferZone : ObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
protocol MDLMeshBufferAllocator : ObjectProtocol {
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWith(data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFrom(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFrom(zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : Object, MDLMeshBufferAllocator {
  init()
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWith(data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFrom(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFrom(zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferZoneDefault : Object, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  init()
}
class MDLObject : Object, MDLNamed {
  func setComponent(component: MDLComponent, forProtocol protocol: Protocol)
  func componentConformingTo(protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(child: MDLObject)
  func boundingBoxAtTime(time: TimeInterval) -> MDLAxisAlignedBoundingBox
  init()
  var name: String
}
class MDLObjectContainer : Object, MDLObjectContainerComponent {
  init()
  func add(object: MDLObject)
  func remove(object: MDLObject)
  var objects: [MDLObject] { get }
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class MDLSubmeshTopology : Object {
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
class MDLSubmesh : Object, MDLNamed {
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)
  init(indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?, topology: MDLSubmeshTopology?)
  init?(mdlSubmesh submesh: MDLSubmesh, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType)
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
class MDLTexture : Object, MDLNamed {
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  class func irradianceTextureCubeWith(texture: MDLTexture, name: String?, dimensions: vector_int2) -> Self
  class func irradianceTextureCubeWith(texture: MDLTexture, name: String?, dimensions: vector_int2, roughness: Float) -> Self
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  func writeTo(URL: URL) -> Bool
  func writeTo(nsurl: URL, type: CFString) -> Bool
  func imageFromTexture() -> Unmanaged<CGImage>?
  func texelDataWithTopLeftOrigin() -> Data?
  func texelDataWithBottomLeftOrigin() -> Data?
  func texelDataWithTopLeftOriginAtMipLevel(level: Int, create: Bool) -> Data?
  func texelDataWithBottomLeftOriginAtMipLevel(level: Int, create: Bool) -> Data?
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
  init(url URL: URL, name: String?)
  @NSCopying var url: URL
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLCheckerboardTexture : MDLTexture {
  init(divisions: Float, name: String?, dimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, color1: CGColor, color2: CGColor)
  var divisions: Float
  var color1: CGColor?
  var color2: CGColor?
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
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
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLColorSwatchTexture : MDLTexture {
  init(colorTemperatureGradientFrom colorTemperature1: Float, toColorTemperature colorTemperature2: Float, name: String?, textureDimensions: vector_int2)
  init(colorGradientFrom color1: CGColor, to color2: CGColor, name: String?, textureDimensions: vector_int2)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLNoiseTexture : MDLTexture {
  init(vectorNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelEncoding: MDLTextureChannelEncoding)
  init(scalarNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, grayscale: Bool)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
class MDLNormalMapTexture : MDLTexture {
  init(byGeneratingNormalMapWith sourceTexture: MDLTexture, name: String?, smoothness: Float, contrast: Float)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
protocol MDLTransformComponent : MDLComponent {
  var matrix: matrix_float4x4 { get set }
  var minimumTime: TimeInterval { get }
  var maximumTime: TimeInterval { get }
  optional func setLocalTransform(transform: matrix_float4x4, forTime time: TimeInterval)
  optional func setLocalTransform(transform: matrix_float4x4)
  optional func localTransformAtTime(time: TimeInterval) -> matrix_float4x4
  optional static func globalTransformWith(object: MDLObject, atTime time: TimeInterval) -> matrix_float4x4
}
class MDLTransform : Object, MDLTransformComponent {
  init(identity: ())
  convenience init(transformComponent component: MDLTransformComponent)
  convenience init(matrix: matrix_float4x4)
  func setIdentity()
  func translationAtTime(time: TimeInterval) -> vector_float3
  func rotationAtTime(time: TimeInterval) -> vector_float3
  func shearAtTime(time: TimeInterval) -> vector_float3
  func scaleAtTime(time: TimeInterval) -> vector_float3
  func setTranslation(translation: vector_float3, forTime time: TimeInterval)
  func setRotation(rotation: vector_float3, forTime time: TimeInterval)
  func setShear(shear: vector_float3, forTime time: TimeInterval)
  func setScale(scale: vector_float3, forTime time: TimeInterval)
  func rotationMatrixAtTime(time: TimeInterval) -> matrix_float4x4
  var translation: vector_float3
  var rotation: vector_float3
  var shear: vector_float3
  var scale: vector_float3
  convenience init()
  var matrix: matrix_float4x4
  var minimumTime: TimeInterval { get }
  var maximumTime: TimeInterval { get }
  func setLocalTransform(transform: matrix_float4x4, forTime time: TimeInterval)
  func setLocalTransform(transform: matrix_float4x4)
  func localTransformAtTime(time: TimeInterval) -> matrix_float4x4
  class func globalTransformWith(object: MDLObject, atTime time: TimeInterval) -> matrix_float4x4
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
protocol MDLComponent : ObjectProtocol {
}
protocol MDLObjectContainerComponent : MDLComponent, FastEnumeration {
  func add(object: MDLObject)
  func remove(object: MDLObject)
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
class MDLVertexBufferLayout : Object, Copying {
  var stride: Int
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MDLVertexAttribute : Object, Copying {
  init(name: String, format: MDLVertexFormat, offset: Int, bufferIndex: Int)
  var name: String
  var format: MDLVertexFormat
  var offset: Int
  var bufferIndex: Int
  var initializationValue: vector_float4
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MDLVertexDescriptor : Object, Copying {
  init(vertexDescriptor: MDLVertexDescriptor)
  func attributeNamed(name: String) -> MDLVertexAttribute?
  func addOrReplaceAttribute(attribute: MDLVertexAttribute)
  var attributes: MutableArray
  var layouts: MutableArray
  func reset()
  func setPackedStrides()
  func setPackedOffsets()
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias MDLVoxelIndex = vector_int4
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent: MDLVoxelIndex, maximumExtent: MDLVoxelIndex)
}
class MDLVoxelArray : Object {
  init(asset: MDLAsset, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  init(asset: MDLAsset, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  init(data voxelData: Data, boundingBox: MDLAxisAlignedBoundingBox, voxelExtent: Float)
  func meshUsing(allocator: MDLMeshBufferAllocator?) -> MDLMesh?
  func voxelExistsAtIndex(index: MDLVoxelIndex, allowAnyX: Bool, allowAnyY: Bool, allowAnyZ: Bool, allowAnyShell: Bool) -> Bool
  func setVoxelAtIndex(index: MDLVoxelIndex)
  func setVoxelsFor(mesh: MDLMesh, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  func setVoxelsFor(mesh: MDLMesh, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  func voxelsWithin(extent: MDLVoxelIndexExtent) -> Data?
  func voxelIndices() -> Data?
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
