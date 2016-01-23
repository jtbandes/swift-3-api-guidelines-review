
enum SCNActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case EaseIn
  case EaseOut
  case EaseInEaseOut
}
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : NSObjectProtocol {
  func runAction(action: SCNAction)
  func runAction(action: SCNAction, completionHandler block: (() -> Void)?)
  func runAction(action: SCNAction, forKey key: String?)
  func runAction(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)?)
  var hasActions: Bool { get }
  func actionForKey(key: String) -> SCNAction?
  func removeActionForKey(key: String)
  func removeAllActions()
  var actionKeys: [String] { get }
}
class SCNAction : NSObject, NSCopying, NSSecureCoding {
  var duration: NSTimeInterval
  var timingMode: SCNActionTimingMode
  var timingFunction: SCNActionTimingFunction?
  var speed: CGFloat
  func reversedAction() -> SCNAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func moveBy(delta: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func moveTo(location: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func rotateByX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func rotateToX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func rotateToX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval, shortestUnitArc: Bool) -> SCNAction
  class func rotateByAngle(angle: CGFloat, aroundAxis axis: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func rotateToAxisAngle(axisAngle: SCNVector4, duration: NSTimeInterval) -> SCNAction
  class func scaleBy(scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func scaleTo(scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func sequence(actions: [SCNAction]) -> SCNAction
  class func group(actions: [SCNAction]) -> SCNAction
  class func repeatAction(action: SCNAction, count: Int) -> SCNAction
  class func repeatActionForever(action: SCNAction) -> SCNAction
  class func fadeInWithDuration(sec: NSTimeInterval) -> SCNAction
  class func fadeOutWithDuration(sec: NSTimeInterval) -> SCNAction
  class func fadeOpacityBy(factor: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func fadeOpacityTo(opacity: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func hide() -> SCNAction
  class func unhide() -> SCNAction
  class func waitForDuration(sec: NSTimeInterval) -> SCNAction
  class func waitForDuration(sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func runBlock(block: (SCNNode) -> Void) -> SCNAction
  class func runBlock(block: (SCNNode) -> Void, queue: dispatch_queue_t) -> SCNAction
  class func javaScriptActionWithScript(script: String, duration seconds: NSTimeInterval) -> SCNAction
  class func customActionWithDuration(seconds: NSTimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction
  class func playAudioSource(source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void
class SCNAnimationEvent : NSObject {
  convenience init(keyTime time: CGFloat, block eventBlock: SCNAnimationEventBlock)
  init()
}
protocol SCNAnimatable : NSObjectProtocol {
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}
extension CAAnimation {
  var usesSceneTimeBase: Bool
  var fadeInDuration: CGFloat
  var fadeOutDuration: CGFloat
  var animationEvents: [SCNAnimationEvent]?
}
class SCNAudioSource : NSObject, NSCopying, NSSecureCoding {
  convenience init?(fileNamed name: String)
  init?(URL url: NSURL)
  convenience init?(named fileName: String)
  var positional: Bool
  var volume: Float
  var rate: Float
  var reverbBlend: Float
  var loops: Bool
  var shouldStream: Bool
  func load()
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SCNAudioPlayer : NSObject {
  init(source: SCNAudioSource)
  var willStartPlayback: (() -> Void)?
  var didFinishPlayback: (() -> Void)?
  var audioSource: SCNAudioSource? { get }
}
extension SCNNode {
  func addAudioPlayer(player: SCNAudioPlayer)
  func removeAllAudioPlayers()
  func removeAudioPlayer(player: SCNAudioPlayer)
  var audioPlayers: [SCNAudioPlayer] { get }
}
protocol SCNBoundingVolume : NSObjectProtocol {
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
}
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var name: String?
  var xFov: Double
  var yFov: Double
  var zNear: Double
  var zFar: Double
  var automaticallyAdjustsZRange: Bool
  var usesOrthographicProjection: Bool
  var orthographicScale: Double
  func projectionTransform() -> SCNMatrix4
  func setProjectionTransform(projectionTransform: SCNMatrix4)
  var focalDistance: CGFloat
  var focalSize: CGFloat
  var focalBlurRadius: CGFloat
  var aperture: CGFloat
  var categoryBitMask: Int
  init()
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @NSCopying var technique: SCNTechnique?
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SCNConstraint : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  var influenceFactor: CGFloat
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}
class SCNLookAtConstraint : SCNConstraint {
  convenience init(target: SCNNode)
  var target: SCNNode { get }
  var gimbalLockEnabled: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
struct SCNBillboardAxis : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var X: SCNBillboardAxis { get }
  static var Y: SCNBillboardAxis { get }
  static var Z: SCNBillboardAxis { get }
  static var All: SCNBillboardAxis { get }
}
class SCNBillboardConstraint : SCNConstraint {
  var freeAxes: SCNBillboardAxis
  init()
  init?(coder aDecoder: NSCoder)
}
class SCNTransformConstraint : SCNConstraint {
  convenience init(inWorldSpace world: Bool, withBlock block: (SCNNode, SCNMatrix4) -> SCNMatrix4)
  init()
  init?(coder aDecoder: NSCoder)
}
class SCNIKConstraint : SCNConstraint {
  init(chainRootNode: SCNNode)
  class func inverseKinematicsConstraintWithChainRootNode(chainRootNode: SCNNode) -> Self
  var chainRootNode: SCNNode { get }
  var targetPosition: SCNVector3
  func setMaxAllowedRotationAngle(angle: CGFloat, forJoint node: SCNNode)
  func maxAllowedRotationAngleForJoint(node: SCNNode) -> CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
enum SCNGeometryPrimitiveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Triangles
  case TriangleStrip
  case Line
  case Point
}
let SCNGeometrySourceSemanticVertex: String
let SCNGeometrySourceSemanticNormal: String
let SCNGeometrySourceSemanticColor: String
let SCNGeometrySourceSemanticTexcoord: String
let SCNGeometrySourceSemanticVertexCrease: String
let SCNGeometrySourceSemanticEdgeCrease: String
let SCNGeometrySourceSemanticBoneWeights: String
let SCNGeometrySourceSemanticBoneIndices: String
class SCNGeometry : NSObject, SCNAnimatable, SCNBoundingVolume, SCNShadable, NSCopying, NSSecureCoding {
  var name: String?
  var materials: [SCNMaterial]
  var firstMaterial: SCNMaterial?
  func insertMaterial(material: SCNMaterial, atIndex index: Int)
  func removeMaterialAtIndex(index: Int)
  func replaceMaterialAtIndex(index: Int, withMaterial material: SCNMaterial)
  func materialWithName(name: String) -> SCNMaterial?
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  var geometrySources: [SCNGeometrySource] { get }
  func geometrySourcesForSemantic(semantic: String) -> [SCNGeometrySource]
  var geometryElements: [SCNGeometryElement] { get }
  var geometryElementCount: Int { get }
  func geometryElementAtIndex(elementIndex: Int) -> SCNGeometryElement
  var levelsOfDetail: [SCNLevelOfDetail]?
  var subdivisionLevel: Int
  var edgeCreasesElement: SCNGeometryElement?
  var edgeCreasesSource: SCNGeometrySource?
  init()
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
  var program: SCNProgram?
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  var shaderModifiers: [String : String]?
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SCNGeometrySource : NSObject, NSSecureCoding {
  convenience init(data: NSData, semantic: String, vectorCount: Int, floatComponents: Bool, componentsPerVector: Int, bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(vertices: UnsafePointer<SCNVector3>, count: Int)
  convenience init(normals: UnsafePointer<SCNVector3>, count: Int)
  convenience init(textureCoordinates texcoord: UnsafePointer<CGPoint>, count: Int)
  convenience init(buffer mtlBuffer: MTLBuffer, vertexFormat: MTLVertexFormat, semantic: String, vertexCount: Int, dataOffset offset: Int, dataStride stride: Int)
  var data: NSData { get }
  var semantic: String { get }
  var vectorCount: Int { get }
  var floatComponents: Bool { get }
  var componentsPerVector: Int { get }
  var bytesPerComponent: Int { get }
  var dataOffset: Int { get }
  var dataStride: Int { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SCNGeometryElement : NSObject, NSSecureCoding {
  convenience init(data: NSData?, primitiveType: SCNGeometryPrimitiveType, primitiveCount: Int, bytesPerIndex: Int)
  var data: NSData { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  var bytesPerIndex: Int { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SCNGeometryElement {
  convenience init<IndexType : IntegerType>(indices: [IndexType], primitiveType: SCNGeometryPrimitiveType)
}
func SCNExportJavaScriptModule(context: JSContext)
class SCNLevelOfDetail : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry?, screenSpaceRadius radius: CGFloat)
  convenience init(geometry: SCNGeometry?, worldSpaceDistance distance: CGFloat)
  var geometry: SCNGeometry? { get }
  var screenSpaceRadius: CGFloat { get }
  var worldSpaceDistance: CGFloat { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let SCNLightTypeAmbient: String
let SCNLightTypeOmni: String
let SCNLightTypeDirectional: String
let SCNLightTypeSpot: String
enum SCNShadowMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Deferred
  case Modulated
}
class SCNLight : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var type: String
  var color: AnyObject
  var name: String?
  var castsShadow: Bool
  var shadowColor: AnyObject
  var shadowRadius: CGFloat
  var shadowMapSize: CGSize
  var shadowSampleCount: Int
  var shadowMode: SCNShadowMode
  var shadowBias: CGFloat
  var orthographicScale: CGFloat
  var zNear: CGFloat
  var zFar: CGFloat
  var attenuationStartDistance: CGFloat
  var attenuationEndDistance: CGFloat
  var attenuationFalloffExponent: CGFloat
  var spotInnerAngle: CGFloat
  var spotOuterAngle: CGFloat
  var gobo: SCNMaterialProperty? { get }
  var categoryBitMask: Int
  init()
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @NSCopying var technique: SCNTechnique?
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let SCNLightingModelPhong: String
let SCNLightingModelBlinn: String
let SCNLightingModelLambert: String
let SCNLightingModelConstant: String
enum SCNCullMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Back
  case Front
}
enum SCNTransparencyMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AOne
  case RGBZero
}
enum SCNBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case Screen
  case Replace
}
class SCNMaterial : NSObject, SCNAnimatable, SCNShadable, NSCopying, NSSecureCoding {
  var name: String?
  var diffuse: SCNMaterialProperty { get }
  var ambient: SCNMaterialProperty { get }
  var specular: SCNMaterialProperty { get }
  var emission: SCNMaterialProperty { get }
  var transparent: SCNMaterialProperty { get }
  var reflective: SCNMaterialProperty { get }
  var multiply: SCNMaterialProperty { get }
  var normal: SCNMaterialProperty { get }
  var ambientOcclusion: SCNMaterialProperty { get }
  var selfIllumination: SCNMaterialProperty { get }
  var shininess: CGFloat
  var transparency: CGFloat
  var lightingModelName: String
  var litPerPixel: Bool
  var doubleSided: Bool
  var cullMode: SCNCullMode
  var transparencyMode: SCNTransparencyMode
  var locksAmbientWithDiffuse: Bool
  var writesToDepthBuffer: Bool
  var readsFromDepthBuffer: Bool
  var fresnelExponent: CGFloat
  var blendMode: SCNBlendMode
  init()
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  var program: SCNProgram?
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  var shaderModifiers: [String : String]?
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum SCNFilterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Nearest
  case Linear
}
enum SCNWrapMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Clamp
  case Repeat
  case ClampToBorder
  case Mirror
}
class SCNMaterialProperty : NSObject, SCNAnimatable, NSSecureCoding {
  convenience init(contents: AnyObject)
  var contents: AnyObject?
  var intensity: CGFloat
  var minificationFilter: SCNFilterMode
  var magnificationFilter: SCNFilterMode
  var mipFilter: SCNFilterMode
  var contentsTransform: SCNMatrix4
  var wrapS: SCNWrapMode
  var wrapT: SCNWrapMode
  var borderColor: AnyObject?
  var mappingChannel: Int
  var maxAnisotropy: CGFloat
  init()
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum SCNMorpherCalculationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Normalized
  case Additive
}
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  func setWeight(weight: CGFloat, forTargetAtIndex targetIndex: Int)
  func weightForTargetAtIndex(targetIndex: Int) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
  init()
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String
class SCNNode : NSObject, NSCopying, NSSecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume {
   init(geometry: SCNGeometry?)
  func clone() -> Self
  func flattenedClone() -> Self
  var name: String?
  var light: SCNLight?
  var camera: SCNCamera?
  var geometry: SCNGeometry?
  var skinner: SCNSkinner?
  var morpher: SCNMorpher?
  var transform: SCNMatrix4
  var position: SCNVector3
  var rotation: SCNVector4
  var orientation: SCNQuaternion
  var eulerAngles: SCNVector3
  var scale: SCNVector3
  var pivot: SCNMatrix4
  var worldTransform: SCNMatrix4 { get }
  var hidden: Bool
  var opacity: CGFloat
  var renderingOrder: Int
  var castsShadow: Bool
  var parentNode: SCNNode? { get }
  var childNodes: [SCNNode] { get }
  func addChildNode(child: SCNNode)
  func insertChildNode(child: SCNNode, atIndex index: Int)
  func removeFromParentNode()
  func replaceChildNode(oldChild: SCNNode, with newChild: SCNNode)
  func childNodeWithName(name: String, recursively: Bool) -> SCNNode?
  func childNodesPassingTest(predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]
  func enumerateChildNodesUsingBlock(block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  func convertPosition(position: SCNVector3, toNode node: SCNNode?) -> SCNVector3
  func convertPosition(position: SCNVector3, fromNode node: SCNNode?) -> SCNVector3
  func convertTransform(transform: SCNMatrix4, toNode node: SCNNode?) -> SCNMatrix4
  func convertTransform(transform: SCNMatrix4, fromNode node: SCNNode?) -> SCNMatrix4
  var physicsBody: SCNPhysicsBody?
  var physicsField: SCNPhysicsField?
  var constraints: [SCNConstraint]?
  var filters: [CIFilter]?
  var presentationNode: SCNNode { get }
  var paused: Bool
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?
  func hitTestWithSegmentFromPoint(pointA: SCNVector3, toPoint pointB: SCNVector3, options: [String : AnyObject]?) -> [SCNHitTestResult]
  var categoryBitMask: Int
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  func runAction(action: SCNAction)
  func runAction(action: SCNAction, completionHandler block: (() -> Void)?)
  func runAction(action: SCNAction, forKey key: String?)
  func runAction(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)?)
  var hasActions: Bool { get }
  func actionForKey(key: String) -> SCNAction?
  func removeActionForKey(key: String)
  func removeAllActions()
  var actionKeys: [String] { get }
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
}
protocol SCNNodeRendererDelegate : NSObjectProtocol {
  optional func renderNode(node: SCNNode, renderer: SCNRenderer, arguments: [String : NSValue])
}
class SCNPlane : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  var cornerRadius: CGFloat
  var cornerSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNBox : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat, length: CGFloat, chamferRadius: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var length: CGFloat
  var chamferRadius: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  var lengthSegmentCount: Int
  var chamferSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNPyramid : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat, length: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var length: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  var lengthSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNSphere : SCNGeometry {
  convenience init(radius: CGFloat)
  var radius: CGFloat
  var geodesic: Bool
  var segmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNCylinder : SCNGeometry {
  convenience init(radius: CGFloat, height: CGFloat)
  var radius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNCone : SCNGeometry {
  convenience init(topRadius: CGFloat, bottomRadius: CGFloat, height: CGFloat)
  var topRadius: CGFloat
  var bottomRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNTube : SCNGeometry {
  convenience init(innerRadius: CGFloat, outerRadius: CGFloat, height: CGFloat)
  var innerRadius: CGFloat
  var outerRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNCapsule : SCNGeometry {
  convenience init(capRadius: CGFloat, height: CGFloat)
  var capRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  var capSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNTorus : SCNGeometry {
  convenience init(ringRadius: CGFloat, pipeRadius: CGFloat)
  var ringRadius: CGFloat
  var pipeRadius: CGFloat
  var ringSegmentCount: Int
  var pipeSegmentCount: Int
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNFloor : SCNGeometry {
  var reflectivity: CGFloat
  var reflectionFalloffStart: CGFloat
  var reflectionFalloffEnd: CGFloat
  var reflectionResolutionScaleFactor: CGFloat
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
class SCNText : SCNGeometry {
  convenience init(string: AnyObject?, extrusionDepth: CGFloat)
  var extrusionDepth: CGFloat
  @NSCopying var string: AnyObject?
  var font: UIFont!
  var wrapped: Bool
  var containerFrame: CGRect
  var truncationMode: String
  var alignmentMode: String
  var chamferRadius: CGFloat
  @NSCopying var chamferProfile: UIBezierPath?
  var flatness: CGFloat
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
enum SCNChamferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Both
  case Front
  case Back
}
class SCNShape : SCNGeometry {
  convenience init(path: UIBezierPath?, extrusionDepth: CGFloat)
  @NSCopying var path: UIBezierPath?
  var extrusionDepth: CGFloat
  var chamferMode: SCNChamferMode
  var chamferRadius: CGFloat
  @NSCopying var chamferProfile: UIBezierPath?
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
let SCNParticlePropertyPosition: String
let SCNParticlePropertyAngle: String
let SCNParticlePropertyRotationAxis: String
let SCNParticlePropertyVelocity: String
let SCNParticlePropertyAngularVelocity: String
let SCNParticlePropertyLife: String
let SCNParticlePropertyColor: String
let SCNParticlePropertyOpacity: String
let SCNParticlePropertySize: String
let SCNParticlePropertyFrame: String
let SCNParticlePropertyFrameRate: String
let SCNParticlePropertyBounce: String
let SCNParticlePropertyCharge: String
let SCNParticlePropertyFriction: String
let SCNParticlePropertyContactPoint: String
let SCNParticlePropertyContactNormal: String
typealias SCNParticleEventBlock = (UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<UInt32>, Int) -> Void
typealias SCNParticleModifierBlock = (UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Int>, Int, Int, Float) -> Void
enum SCNParticleSortingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ProjectedDepth
  case Distance
  case OldestFirst
  case YoungestFirst
}
enum SCNParticleBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Additive
  case Subtract
  case Multiply
  case Screen
  case Alpha
  case Replace
}
enum SCNParticleOrientationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BillboardScreenAligned
  case BillboardViewAligned
  case Free
  case BillboardYAligned
}
enum SCNParticleBirthLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Surface
  case Volume
  case Vertex
}
enum SCNParticleBirthDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Constant
  case SurfaceNormal
  case Random
}
enum SCNParticleImageSequenceAnimationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Repeat
  case Clamp
  case AutoReverse
}
enum SCNParticleInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OverLife
  case OverDistance
  case OverOtherProperty
}
enum SCNParticleModifierStage : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PreDynamics
  case PostDynamics
  case PreCollision
  case PostCollision
}
enum SCNParticleEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Birth
  case Death
  case Collision
}
class SCNParticlePropertyController : NSObject, NSSecureCoding, NSCopying {
  convenience init(animation: CAAnimation)
  var animation: CAAnimation
  var inputMode: SCNParticleInputMode
  var inputScale: CGFloat
  var inputBias: CGFloat
  weak var inputOrigin: @sil_weak SCNNode?
  var inputProperty: String?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class SCNParticleSystem : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  convenience init?(named name: String, inDirectory directory: String?)
  var emissionDuration: CGFloat
  var emissionDurationVariation: CGFloat
  var idleDuration: CGFloat
  var idleDurationVariation: CGFloat
  var loops: Bool
  var birthRate: CGFloat
  var birthRateVariation: CGFloat
  var warmupDuration: CGFloat
  var emitterShape: SCNGeometry?
  var birthLocation: SCNParticleBirthLocation
  var birthDirection: SCNParticleBirthDirection
  var spreadingAngle: CGFloat
  var emittingDirection: SCNVector3
  var acceleration: SCNVector3
  var local: Bool
  var particleAngle: CGFloat
  var particleAngleVariation: CGFloat
  var particleVelocity: CGFloat
  var particleVelocityVariation: CGFloat
  var particleAngularVelocity: CGFloat
  var particleAngularVelocityVariation: CGFloat
  var particleLifeSpan: CGFloat
  var particleLifeSpanVariation: CGFloat
  var systemSpawnedOnDying: SCNParticleSystem?
  var systemSpawnedOnCollision: SCNParticleSystem?
  var systemSpawnedOnLiving: SCNParticleSystem?
  var particleImage: AnyObject?
  var imageSequenceColumnCount: Int
  var imageSequenceRowCount: Int
  var imageSequenceInitialFrame: CGFloat
  var imageSequenceInitialFrameVariation: CGFloat
  var imageSequenceFrameRate: CGFloat
  var imageSequenceFrameRateVariation: CGFloat
  var imageSequenceAnimationMode: SCNParticleImageSequenceAnimationMode
  var particleColor: UIColor
  var particleColorVariation: SCNVector4
  var particleSize: CGFloat
  var particleSizeVariation: CGFloat
  var blendMode: SCNParticleBlendMode
  var blackPassEnabled: Bool
  var orientationMode: SCNParticleOrientationMode
  var sortingMode: SCNParticleSortingMode
  var lightingEnabled: Bool
  var affectedByGravity: Bool
  var affectedByPhysicsFields: Bool
  var particleDiesOnCollision: Bool
  var colliderNodes: [SCNNode]?
  var particleMass: CGFloat
  var particleMassVariation: CGFloat
  var particleBounce: CGFloat
  var particleBounceVariation: CGFloat
  var particleFriction: CGFloat
  var particleFrictionVariation: CGFloat
  var particleCharge: CGFloat
  var particleChargeVariation: CGFloat
  var dampingFactor: CGFloat
  var speedFactor: CGFloat
  var stretchFactor: CGFloat
  var fresnelExponent: CGFloat
  var propertyControllers: [String : SCNParticlePropertyController]?
  func reset()
  func handleEvent(event: SCNParticleEvent, forProperties properties: [String], withBlock block: SCNParticleEventBlock)
  func addModifierForProperties(properties: [String], atStage stage: SCNParticleModifierStage, withBlock block: SCNParticleModifierBlock)
  func removeModifiersOfStage(stage: SCNParticleModifierStage)
  func removeAllModifiers()
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}
extension SCNNode {
  func addParticleSystem(system: SCNParticleSystem)
  func removeAllParticleSystems()
  func removeParticleSystem(system: SCNParticleSystem)
  var particleSystems: [SCNParticleSystem]? { get }
}
extension SCNScene {
  func addParticleSystem(system: SCNParticleSystem, withTransform transform: SCNMatrix4)
  func removeAllParticleSystems()
  func removeParticleSystem(system: SCNParticleSystem)
  var particleSystems: [SCNParticleSystem]? { get }
}
class SCNPhysicsBehavior : NSObject, NSSecureCoding {
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SCNPhysicsHingeJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, axisA: SCNVector3, anchorA: SCNVector3, bodyB: SCNPhysicsBody, axisB: SCNVector3, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, axis: SCNVector3, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var axisA: SCNVector3
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var axisB: SCNVector3
  var anchorB: SCNVector3
  init()
  init?(coder aDecoder: NSCoder)
}
class SCNPhysicsBallSocketJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, anchorA: SCNVector3, bodyB: SCNPhysicsBody, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var anchorB: SCNVector3
  init()
  init?(coder aDecoder: NSCoder)
}
class SCNPhysicsSliderJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, axisA: SCNVector3, anchorA: SCNVector3, bodyB: SCNPhysicsBody, axisB: SCNVector3, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, axis: SCNVector3, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var axisA: SCNVector3
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var axisB: SCNVector3
  var anchorB: SCNVector3
  var minimumLinearLimit: CGFloat
  var maximumLinearLimit: CGFloat
  var minimumAngularLimit: CGFloat
  var maximumAngularLimit: CGFloat
  var motorTargetLinearVelocity: CGFloat
  var motorMaximumForce: CGFloat
  var motorTargetAngularVelocity: CGFloat
  var motorMaximumTorque: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
class SCNPhysicsVehicleWheel : NSObject, NSCopying, NSSecureCoding {
  convenience init(node: SCNNode)
  var node: SCNNode { get }
  var suspensionStiffness: CGFloat
  var suspensionCompression: CGFloat
  var suspensionDamping: CGFloat
  var maximumSuspensionTravel: CGFloat
  var frictionSlip: CGFloat
  var maximumSuspensionForce: CGFloat
  var connectionPosition: SCNVector3
  var steeringAxis: SCNVector3
  var axle: SCNVector3
  var radius: CGFloat
  var suspensionRestLength: CGFloat
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SCNPhysicsVehicle : SCNPhysicsBehavior {
  convenience init(chassisBody: SCNPhysicsBody, wheels: [SCNPhysicsVehicleWheel])
  var speedInKilometersPerHour: CGFloat { get }
  var wheels: [SCNPhysicsVehicleWheel] { get }
  var chassisBody: SCNPhysicsBody { get }
  func applyEngineForce(value: CGFloat, forWheelAtIndex index: Int)
  func setSteeringAngle(value: CGFloat, forWheelAtIndex index: Int)
  func applyBrakingForce(value: CGFloat, forWheelAtIndex index: Int)
  init()
  init?(coder aDecoder: NSCoder)
}
enum SCNPhysicsBodyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Static
  case Dynamic
  case Kinematic
}
struct SCNPhysicsCollisionCategory : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Default: SCNPhysicsCollisionCategory { get }
  static var Static: SCNPhysicsCollisionCategory { get }
  static var All: SCNPhysicsCollisionCategory { get }
}
class SCNPhysicsBody : NSObject, NSCopying, NSSecureCoding {
  class func staticBody() -> Self
  class func dynamicBody() -> Self
  class func kinematicBody() -> Self
  convenience init(type: SCNPhysicsBodyType, shape: SCNPhysicsShape?)
  var type: SCNPhysicsBodyType
  var mass: CGFloat
  var momentOfInertia: SCNVector3
  var usesDefaultMomentOfInertia: Bool
  var charge: CGFloat
  var friction: CGFloat
  var restitution: CGFloat
  var rollingFriction: CGFloat
  var physicsShape: SCNPhysicsShape?
  var isResting: Bool { get }
  var allowsResting: Bool
  var velocity: SCNVector3
  var angularVelocity: SCNVector4
  var damping: CGFloat
  var angularDamping: CGFloat
  var velocityFactor: SCNVector3
  var angularVelocityFactor: SCNVector3
  var categoryBitMask: Int
  var collisionBitMask: Int
  var contactTestBitMask: Int
  var affectedByGravity: Bool
  func applyForce(direction: SCNVector3, impulse: Bool)
  func applyForce(direction: SCNVector3, atPosition position: SCNVector3, impulse: Bool)
  func applyTorque(torque: SCNVector4, impulse: Bool)
  func clearAllForces()
  func resetTransform()
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SCNPhysicsContact : NSObject {
  var nodeA: SCNNode { get }
  var nodeB: SCNNode { get }
  var contactPoint: SCNVector3 { get }
  var contactNormal: SCNVector3 { get }
  var collisionImpulse: CGFloat { get }
  var penetrationDistance: CGFloat { get }
  init()
}
enum SCNPhysicsFieldScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InsideExtent
  case OutsideExtent
}
class SCNPhysicsField : NSObject, NSCopying, NSSecureCoding {
  var strength: CGFloat
  var falloffExponent: CGFloat
  var minimumDistance: CGFloat
  var active: Bool
  var exclusive: Bool
  var halfExtent: SCNVector3
  var usesEllipsoidalExtent: Bool
  var scope: SCNPhysicsFieldScope
  var offset: SCNVector3
  var direction: SCNVector3
  var categoryBitMask: Int
  class func dragField() -> SCNPhysicsField
  class func vortexField() -> SCNPhysicsField
  class func radialGravityField() -> SCNPhysicsField
  class func linearGravityField() -> SCNPhysicsField
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func springField() -> SCNPhysicsField
  class func electricField() -> SCNPhysicsField
  class func magneticField() -> SCNPhysicsField
  class func customFieldWithEvaluationBlock(block: SCNFieldForceEvaluator) -> SCNPhysicsField
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias SCNFieldForceEvaluator = (SCNVector3, SCNVector3, Float, Float, NSTimeInterval) -> SCNVector3
let SCNPhysicsShapeTypeKey: String
let SCNPhysicsShapeTypeBoundingBox: String
let SCNPhysicsShapeTypeConvexHull: String
let SCNPhysicsShapeTypeConcavePolyhedron: String
let SCNPhysicsShapeKeepAsCompoundKey: String
let SCNPhysicsShapeScaleKey: String
class SCNPhysicsShape : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry, options: [String : AnyObject]?)
  convenience init(node: SCNNode, options: [String : AnyObject]?)
  convenience init(shapes: [SCNPhysicsShape], transforms: [NSValue]?)
  var options: [String : AnyObject]? { get }
  var sourceObject: AnyObject { get }
  var transforms: [NSValue]? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let SCNPhysicsTestCollisionBitMaskKey: String
let SCNPhysicsTestSearchModeKey: String
let SCNPhysicsTestBackfaceCullingKey: String
let SCNPhysicsTestSearchModeAny: String
let SCNPhysicsTestSearchModeClosest: String
let SCNPhysicsTestSearchModeAll: String
protocol SCNPhysicsContactDelegate : NSObjectProtocol {
  optional func physicsWorld(world: SCNPhysicsWorld, didBeginContact contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didUpdateContact contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didEndContact contact: SCNPhysicsContact)
}
class SCNPhysicsWorld : NSObject, NSSecureCoding {
  var gravity: SCNVector3
  var speed: CGFloat
  var timeStep: NSTimeInterval
  unowned(unsafe) var contactDelegate: @sil_unmanaged SCNPhysicsContactDelegate?
  func addBehavior(behavior: SCNPhysicsBehavior)
  func removeBehavior(behavior: SCNPhysicsBehavior)
  func removeAllBehaviors()
  var allBehaviors: [SCNPhysicsBehavior] { get }
  func rayTestWithSegmentFromPoint(origin: SCNVector3, toPoint dest: SCNVector3, options: [String : AnyObject]?) -> [SCNHitTestResult]
  func contactTestBetweenBody(bodyA: SCNPhysicsBody, andBody bodyB: SCNPhysicsBody, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func contactTestWithBody(body: SCNPhysicsBody, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func convexSweepTestWithShape(shape: SCNPhysicsShape, fromTransform from: SCNMatrix4, toTransform to: SCNMatrix4, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func updateCollisionPairs()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case OnDemand
}
class SCNReferenceNode : SCNNode {
  init?(URL referenceURL: NSURL)
  init?(coder aDecoder: NSCoder)
  @NSCopying var referenceURL: NSURL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var loaded: Bool { get }
  convenience init()
  convenience init(MDLObject mdlObject: MDLObject)
}
class SCNRenderer : NSObject, SCNSceneRenderer, SCNTechniqueSupport {
  convenience init(context: EAGLContext, options: [NSObject : AnyObject]?)
  convenience init(device: MTLDevice?, options: [NSObject : AnyObject]?)
  var scene: SCNScene?
  func renderAtTime(time: CFTimeInterval)
  func renderAtTime(time: CFTimeInterval, viewport: CGRect, commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)
  var nextFrameTime: CFTimeInterval { get }
  func render()
  init()
  var sceneTime: NSTimeInterval
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]
  func projectPoint(point: SCNVector3) -> SCNVector3
  func unprojectPoint(point: SCNVector3) -> SCNVector3
  var playing: Bool
  var loops: Bool
  var pointOfView: SCNNode?
  var autoenablesDefaultLighting: Bool
  var jitteringEnabled: Bool
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)
  var showsStatistics: Bool
  var debugOptions: SCNDebugOptions
  var renderingAPI: SCNRenderingAPI { get }
  var context: UnsafeMutablePointer<Void> { get }
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  var device: MTLDevice? { get }
  var colorPixelFormat: MTLPixelFormat { get }
  var depthPixelFormat: MTLPixelFormat { get }
  var stencilPixelFormat: MTLPixelFormat { get }
  var commandQueue: MTLCommandQueue? { get }
  var audioListener: SCNNode?
  @NSCopying var technique: SCNTechnique?
}
typealias SCNSceneExportProgressHandler = (Float, NSError?, UnsafeMutablePointer<ObjCBool>) -> Void
let SCNSceneExportDestinationURL: String
let SCNSceneStartTimeAttributeKey: String
let SCNSceneEndTimeAttributeKey: String
let SCNSceneFrameRateAttributeKey: String
let SCNSceneUpAxisAttributeKey: String
class SCNScene : NSObject, NSSecureCoding {
  var rootNode: SCNNode { get }
  var physicsWorld: SCNPhysicsWorld { get }
  func attributeForKey(key: String) -> AnyObject?
  func setAttribute(attribute: AnyObject?, forKey key: String)
  var background: SCNMaterialProperty { get }
  convenience init?(named name: String)
  convenience init?(named name: String, inDirectory directory: String?, options: [String : AnyObject]?)
  convenience init(URL url: NSURL, options: [String : AnyObject]?) throws
  var fogStartDistance: CGFloat
  var fogEndDistance: CGFloat
  var fogDensityExponent: CGFloat
  var fogColor: AnyObject
  var paused: Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let SCNHitTestFirstFoundOnlyKey: String
let SCNHitTestSortResultsKey: String
let SCNHitTestClipToZRangeKey: String
let SCNHitTestBackFaceCullingKey: String
let SCNHitTestBoundingBoxOnlyKey: String
let SCNHitTestIgnoreChildNodesKey: String
let SCNHitTestRootNodeKey: String
let SCNHitTestIgnoreHiddenNodesKey: String
enum SCNRenderingAPI : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Metal
  case OpenGLES2
}
struct SCNDebugOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: SCNDebugOptions { get }
  static var ShowPhysicsShapes: SCNDebugOptions { get }
  static var ShowBoundingBoxes: SCNDebugOptions { get }
  static var ShowLightInfluences: SCNDebugOptions { get }
  static var ShowLightExtents: SCNDebugOptions { get }
  static var ShowPhysicsFields: SCNDebugOptions { get }
  static var ShowWireframe: SCNDebugOptions { get }
}
class SCNHitTestResult : NSObject {
  var node: SCNNode { get }
  var geometryIndex: Int { get }
  var faceIndex: Int { get }
  var localCoordinates: SCNVector3 { get }
  var worldCoordinates: SCNVector3 { get }
  var localNormal: SCNVector3 { get }
  var worldNormal: SCNVector3 { get }
  var modelTransform: SCNMatrix4 { get }
  func textureCoordinatesWithMappingChannel(channel: Int) -> CGPoint
  init()
}
protocol SCNSceneRenderer : NSObjectProtocol {
  var scene: SCNScene? { get set }
  var sceneTime: NSTimeInterval { get set }
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate? { get set }
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]
  func projectPoint(point: SCNVector3) -> SCNVector3
  func unprojectPoint(point: SCNVector3) -> SCNVector3
  var playing: Bool { get set }
  var loops: Bool { get set }
  var pointOfView: SCNNode? { get set }
  var autoenablesDefaultLighting: Bool { get set }
  var jitteringEnabled: Bool { get set }
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)
  var showsStatistics: Bool { get set }
  var debugOptions: SCNDebugOptions { get set }
  var renderingAPI: SCNRenderingAPI { get }
  var context: UnsafeMutablePointer<Void> { get }
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  var device: MTLDevice? { get }
  var colorPixelFormat: MTLPixelFormat { get }
  var depthPixelFormat: MTLPixelFormat { get }
  var stencilPixelFormat: MTLPixelFormat { get }
  var commandQueue: MTLCommandQueue? { get }
  var audioListener: SCNNode? { get set }
}
protocol SCNSceneRendererDelegate : NSObjectProtocol {
  optional func renderer(renderer: SCNSceneRenderer, updateAtTime time: NSTimeInterval)
  optional func renderer(renderer: SCNSceneRenderer, didApplyAnimationsAtTime time: NSTimeInterval)
  optional func renderer(renderer: SCNSceneRenderer, didSimulatePhysicsAtTime time: NSTimeInterval)
  optional func renderer(renderer: SCNSceneRenderer, willRenderScene scene: SCNScene, atTime time: NSTimeInterval)
  optional func renderer(renderer: SCNSceneRenderer, didRenderScene scene: SCNScene, atTime time: NSTimeInterval)
}
let SCNSceneSourceAssetContributorsKey: String
let SCNSceneSourceAssetCreatedDateKey: String
let SCNSceneSourceAssetModifiedDateKey: String
let SCNSceneSourceAssetUpAxisKey: String
let SCNSceneSourceAssetUnitKey: String
let SCNSceneSourceAssetAuthoringToolKey: String
let SCNSceneSourceAssetAuthorKey: String
let SCNSceneSourceAssetUnitNameKey: String
let SCNSceneSourceAssetUnitMeterKey: String
let SCNSceneSourceCreateNormalsIfAbsentKey: String
let SCNSceneSourceCheckConsistencyKey: String
let SCNSceneSourceFlattenSceneKey: String
let SCNSceneSourceUseSafeModeKey: String
let SCNSceneSourceAssetDirectoryURLsKey: String
let SCNSceneSourceOverrideAssetURLsKey: String
let SCNSceneSourceStrictConformanceKey: String
let SCNSceneSourceAnimationImportPolicyKey: String
let SCNSceneSourceAnimationImportPolicyPlay: String
let SCNSceneSourceAnimationImportPolicyPlayRepeatedly: String
let SCNSceneSourceAnimationImportPolicyDoNotPlay: String
let SCNSceneSourceAnimationImportPolicyPlayUsingSceneTimeBase: String
let SCNDetailedErrorsKey: String
let SCNConsistencyElementIDErrorKey: String
let SCNConsistencyElementTypeErrorKey: String
let SCNConsistencyLineNumberErrorKey: String
var SCNConsistencyInvalidURIError: Int { get }
var SCNConsistencyInvalidCountError: Int { get }
var SCNConsistencyInvalidArgumentError: Int { get }
var SCNConsistencyMissingElementError: Int { get }
var SCNConsistencyMissingAttributeError: Int { get }
var SCNConsistencyXMLSchemaValidationError: Int { get }
enum SCNSceneSourceStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Error
  case Parsing
  case Validating
  case Processing
  case Complete
}
typealias SCNSceneSourceStatusHandler = (Float, SCNSceneSourceStatus, NSError?, UnsafeMutablePointer<ObjCBool>) -> Void
class SCNSceneSource : NSObject {
  init?(URL url: NSURL, options: [String : AnyObject]?)
  init?(data: NSData, options: [String : AnyObject]?)
  var url: NSURL? { get }
  var data: NSData? { get }
  func sceneWithOptions(options: [String : AnyObject]?, statusHandler: SCNSceneSourceStatusHandler?) -> SCNScene?
  func sceneWithOptions(options: [String : AnyObject]?) throws -> SCNScene
  func propertyForKey(key: String) -> AnyObject?
  func __entryWithIdentifier(uid: String, withClass entryClass: AnyClass) -> AnyObject?
  func identifiersOfEntriesWithClass(entryClass: AnyClass) -> [String]
  func entriesPassingTest(predicate: (AnyObject, String, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [AnyObject]
  init()
}
extension SCNSceneSource {
  @warn_unused_result
  func entryWithIdentifier<T>(uid: String, withClass entryClass: T.Type) -> T?
}
enum SCNBufferFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PerFrame
  case PerNode
  case PerShadable
}
protocol SCNBufferStream : NSObjectProtocol {
  func writeBytes(bytes: UnsafeMutablePointer<Void>, length: Int)
}
typealias SCNBufferBindingBlock = (SCNBufferStream, SCNNode, SCNShadable, SCNRenderer) -> Void
typealias SCNBindingBlock = (UInt32, UInt32, SCNNode, SCNRenderer) -> Void
protocol SCNShadable : NSObjectProtocol {
  optional var program: SCNProgram? { get set }
  optional func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  optional func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  optional var shaderModifiers: [String : String]? { get set }
}
let SCNProgramMappingChannelKey: String
class SCNProgram : NSObject, NSCopying, NSSecureCoding {
  var vertexShader: String?
  var fragmentShader: String?
  var vertexFunctionName: String?
  var fragmentFunctionName: String?
  func handleBindingOfBufferNamed(name: String, frequency: SCNBufferFrequency, usingBlock block: SCNBufferBindingBlock)
  var opaque: Bool
  func setSemantic(semantic: String?, forSymbol symbol: String, options: [String : AnyObject]?)
  func semanticForSymbol(symbol: String) -> String?
  unowned(unsafe) var delegate: @sil_unmanaged SCNProgramDelegate?
  var library: MTLLibrary?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNProgramDelegate : NSObjectProtocol {
  optional func program(program: SCNProgram, handleError error: NSError)
}
let SCNShaderModifierEntryPointGeometry: String
let SCNShaderModifierEntryPointSurface: String
let SCNShaderModifierEntryPointLightingModel: String
let SCNShaderModifierEntryPointFragment: String
class SCNSkinner : NSObject, NSSecureCoding {
  var skeleton: SCNNode?
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [NSValue]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)
  var baseGeometry: SCNGeometry?
  var baseGeometryBindTransform: SCNMatrix4
  var boneInverseBindTransforms: [NSValue]? { get }
  var bones: [SCNNode] { get }
  var boneWeights: SCNGeometrySource { get }
  var boneIndices: SCNGeometrySource { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
   init?(dictionary: [String : AnyObject])
   init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  var dictionaryRepresentation: [String : AnyObject] { get }
  subscript (key: AnyObject) -> AnyObject? { get }
  func setObject(obj: AnyObject?, forKeyedSubscript key: NSCopying)
  init()
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  func pauseAnimationForKey(key: String)
  func resumeAnimationForKey(key: String)
  func isAnimationForKeyPaused(key: String) -> Bool
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @NSCopying var technique: SCNTechnique? { get set }
}
class SCNTransaction : NSObject {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class func animationDuration() -> CFTimeInterval
  class func setAnimationDuration(duration: CFTimeInterval)
  class func animationTimingFunction() -> CAMediaTimingFunction?
  class func setAnimationTimingFunction(animationTimingFunction: CAMediaTimingFunction?)
  class func disableActions() -> Bool
  class func setDisableActions(flag: Bool)
  class func completionBlock() -> (() -> Void)?
  class func setCompletionBlock(block: (() -> Void)?)
  class func valueForKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  init()
}
enum SCNAntialiasingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Multisampling2X
  case Multisampling4X
}
let SCNPreferredRenderingAPIKey: String
let SCNPreferredDeviceKey: String
let SCNPreferLowPowerDeviceKey: String
class SCNView : UIView, SCNSceneRenderer, SCNTechniqueSupport {
  init(frame: CGRect, options: [String : AnyObject]?)
  var scene: SCNScene?
  var allowsCameraControl: Bool
  func snapshot() -> UIImage
  @IBAction func play(sender: AnyObject?)
  @IBAction func pause(sender: AnyObject?)
  @IBAction func stop(sender: AnyObject?)
  var preferredFramesPerSecond: Int
  var eaglContext: EAGLContext?
  var antialiasingMode: SCNAntialiasingMode
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  var sceneTime: NSTimeInterval
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]
  func projectPoint(point: SCNVector3) -> SCNVector3
  func unprojectPoint(point: SCNVector3) -> SCNVector3
  var playing: Bool
  var loops: Bool
  var pointOfView: SCNNode?
  var autoenablesDefaultLighting: Bool
  var jitteringEnabled: Bool
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)
  var showsStatistics: Bool
  var debugOptions: SCNDebugOptions
  var renderingAPI: SCNRenderingAPI { get }
  var context: UnsafeMutablePointer<Void> { get }
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  var device: MTLDevice? { get }
  var colorPixelFormat: MTLPixelFormat { get }
  var depthPixelFormat: MTLPixelFormat { get }
  var stencilPixelFormat: MTLPixelFormat { get }
  var commandQueue: MTLCommandQueue? { get }
  var audioListener: SCNNode?
  @NSCopying var technique: SCNTechnique?
}
struct SCNVector3 {
  var x: Float
  var y: Float
  var z: Float
  init()
  init(x: Float, y: Float, z: Float)
}
extension SCNVector3 {
  init(_ x: Float, _ y: Float, _ z: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double)
  init(_ x: Int, _ y: Int, _ z: Int)
  init(_ v: float3)
  init(_ v: double3)
}
struct SCNVector4 {
  var x: Float
  var y: Float
  var z: Float
  var w: Float
  init()
  init(x: Float, y: Float, z: Float, w: Float)
}
extension SCNVector4 {
  init(_ x: Float, _ y: Float, _ z: Float, _ w: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double, _ w: Double)
  init(_ x: Int, _ y: Int, _ z: Int, _ w: Int)
  init(_ v: float4)
  init(_ v: double4)
}
struct SCNMatrix4 {
  var m11: Float
  var m12: Float
  var m13: Float
  var m14: Float
  var m21: Float
  var m22: Float
  var m23: Float
  var m24: Float
  var m31: Float
  var m32: Float
  var m33: Float
  var m34: Float
  var m41: Float
  var m42: Float
  var m43: Float
  var m44: Float
  init()
  init(m11: Float, m12: Float, m13: Float, m14: Float, m21: Float, m22: Float, m23: Float, m24: Float, m31: Float, m32: Float, m33: Float, m34: Float, m41: Float, m42: Float, m43: Float, m44: Float)
}
extension SCNMatrix4 {
  init(_ m: float4x4)
  init(_ m: double4x4)
}
typealias SCNQuaternion = SCNVector4
let SCNMatrix4Identity: SCNMatrix4
let SCNVector3Zero: SCNVector3
let SCNVector4Zero: SCNVector4
func SCNVector3EqualToVector3(a: SCNVector3, _ b: SCNVector3) -> Bool
func SCNVector4EqualToVector4(a: SCNVector4, _ b: SCNVector4) -> Bool
func SCNVector3Make(x: Float, _ y: Float, _ z: Float) -> SCNVector3
func SCNVector4Make(x: Float, _ y: Float, _ z: Float, _ w: Float) -> SCNVector4
func SCNMatrix4MakeTranslation(x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
func SCNMatrix4MakeScale(sx: Float, _ sy: Float, _ sz: Float) -> SCNMatrix4
func SCNMatrix4Translate(mat: SCNMatrix4, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
func SCNMatrix4MakeRotation(angle: Float, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
func SCNMatrix4Scale(mat: SCNMatrix4, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
func SCNMatrix4Rotate(mat: SCNMatrix4, _ angle: Float, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
func SCNMatrix4Invert(mat: SCNMatrix4) -> SCNMatrix4
func SCNMatrix4Mult(matA: SCNMatrix4, _ matB: SCNMatrix4) -> SCNMatrix4
func SCNMatrix4IsIdentity(mat: SCNMatrix4) -> Bool
func SCNMatrix4EqualToMatrix4(matA: SCNMatrix4, _ matB: SCNMatrix4) -> Bool
func SCNVector3FromGLKVector3(vector: GLKVector3) -> SCNVector3
func SCNVector3ToGLKVector3(vector: SCNVector3) -> GLKVector3
func SCNVector4FromGLKVector4(vector: GLKVector4) -> SCNVector4
func SCNVector4ToGLKVector4(vector: SCNVector4) -> GLKVector4
func SCNMatrix4ToGLKMatrix4(mat: SCNMatrix4) -> GLKMatrix4
func SCNMatrix4FromGLKMatrix4(mat: GLKMatrix4) -> SCNMatrix4
extension NSValue {
   init(SCNVector3 v: SCNVector3)
   init(SCNVector4 v: SCNVector4)
   init(SCNMatrix4 v: SCNMatrix4)
  var SCNVector3Value: SCNVector3 { get }
  var SCNVector4Value: SCNVector4 { get }
  var SCNMatrix4Value: SCNMatrix4 { get }
}
let SCNErrorDomain: String
var SCNProgramCompilationError: Int { get }
func SCNVector3ToFloat3(v: SCNVector3) -> vector_float3
func SCNVector4ToFloat4(v: SCNVector4) -> vector_float4
func SCNMatrix4ToMat4(m: SCNMatrix4) -> matrix_float4x4
func SCNVector3FromFloat3(v: vector_float3) -> SCNVector3
func SCNVector4FromFloat4(v: vector_float4) -> SCNVector4
func SCNMatrix4FromMat4(m: matrix_float4x4) -> SCNMatrix4
