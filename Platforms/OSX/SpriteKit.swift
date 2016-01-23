
class SK3DNode : SKNode {
  init(viewportSize: CGSize)
  init?(coder aDecoder: NSCoder)
  var viewportSize: CGSize
  var sceneTime: NSTimeInterval
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [AnyObject]
  func projectPoint(point: vector_float3) -> vector_float3
  func unprojectPoint(point: vector_float3) -> vector_float3
  var playing: Bool
  var loops: Bool
  var autoenablesDefaultLighting: Bool
  convenience init()
  convenience init?(fileNamed filename: String)
}
enum SKActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case EaseIn
  case EaseOut
  case EaseInEaseOut
}
typealias SKActionTimingFunction = (Float) -> Float
class SKAction : NSObject, NSCopying, NSCoding {
  var duration: NSTimeInterval
  var timingMode: SKActionTimingMode
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversedAction() -> SKAction
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SKAction {
  class func moveBy(delta: CGVector, duration sec: NSTimeInterval) -> SKAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func moveTo(location: CGPoint, duration sec: NSTimeInterval) -> SKAction
  class func moveToX(x: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func moveToY(y: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateByAngle(radians: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateToAngle(radians: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateToAngle(radians: CGFloat, duration sec: NSTimeInterval, shortestUnitArc: Bool) -> SKAction
  class func resizeByWidth(width: CGFloat, height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resizeToHeight(height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func scaleBy(scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXBy(xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleTo(scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXTo(xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXTo(scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleYTo(scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func sequence(actions: [SKAction]) -> SKAction
  class func group(actions: [SKAction]) -> SKAction
  class func repeatAction(action: SKAction, count: Int) -> SKAction
  class func repeatActionForever(action: SKAction) -> SKAction
  class func fadeInWithDuration(sec: NSTimeInterval) -> SKAction
  class func fadeOutWithDuration(sec: NSTimeInterval) -> SKAction
  class func fadeAlphaBy(factor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func fadeAlphaTo(alpha: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func hide() -> SKAction
  class func unhide() -> SKAction
  class func setTexture(texture: SKTexture) -> SKAction
  class func setNormalTexture(texture: SKTexture) -> SKAction
  class func setTexture(texture: SKTexture, resize: Bool) -> SKAction
  class func setNormalTexture(texture: SKTexture, resize: Bool) -> SKAction
  class func animateWithTextures(textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  class func animateWithTextures(textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func playSoundFileNamed(soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorizeWithColor(color: NSColor, colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func colorizeWithColorBlendFactor(colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func falloffTo(falloff: Float, duration sec: NSTimeInterval) -> SKAction
  class func falloffBy(falloff: Float, duration sec: NSTimeInterval) -> SKAction
  class func followPath(path: CGPath, duration sec: NSTimeInterval) -> SKAction
  class func followPath(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: NSTimeInterval) -> SKAction
  class func followPath(path: CGPath, speed: CGFloat) -> SKAction
  class func followPath(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction
  class func speedBy(speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func speedTo(speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func reachTo(position: CGPoint, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  class func reachTo(position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  class func reachToNode(node: SKNode, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  class func reachToNode(node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  class func strengthTo(strength: Float, duration sec: NSTimeInterval) -> SKAction
  class func strengthBy(strength: Float, duration sec: NSTimeInterval) -> SKAction
  class func waitForDuration(sec: NSTimeInterval) -> SKAction
  class func waitForDuration(sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func performSelector(selector: Selector, onTarget target: AnyObject) -> SKAction
  class func runBlock(block: dispatch_block_t) -> SKAction
  class func runBlock(block: dispatch_block_t, queue: dispatch_queue_t) -> SKAction
  class func runAction(action: SKAction, onChildWithName name: String) -> SKAction
  class func customActionWithDuration(seconds: NSTimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
   init?(named name: String)
   init?(named name: String, duration sec: NSTimeInterval)
   init?(named name: String, fromURL url: NSURL)
   init?(named name: String, fromURL url: NSURL, duration sec: NSTimeInterval)
}
extension SKAction {
  class func changeChargeTo(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeChargeBy(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeMassTo(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeMassBy(v: Float, duration: NSTimeInterval) -> SKAction
  class func applyForce(force: CGVector, duration sec: NSTimeInterval) -> SKAction
  class func applyForce(force: CGVector, atPoint point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  class func applyTorque(torque: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func applyImpulse(impulse: CGVector, duration sec: NSTimeInterval) -> SKAction
  class func applyImpulse(impulse: CGVector, atPoint point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  class func applyAngularImpulse(impulse: CGFloat, duration sec: NSTimeInterval) -> SKAction
}
extension SKAction {
  class func play() -> SKAction
  class func pause() -> SKAction
  class func stop() -> SKAction
  class func changePlaybackRateTo(v: Float, duration: NSTimeInterval) -> SKAction
  class func changePlaybackRateBy(v: Float, duration: NSTimeInterval) -> SKAction
}
extension SKAction {
  class func changeVolumeTo(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeVolumeBy(v: Float, duration: NSTimeInterval) -> SKAction
}
class SKAudioNode : SKNode, NSCoding {
  init?(coder aDecoder: NSCoder)
  convenience init(fileNamed name: String)
  convenience init(URL url: NSURL)
  var autoplayLooped: Bool
  var positional: Bool
  convenience init()
}
extension SKAction {
  class func stereoPanTo(v: Float, duration: NSTimeInterval) -> SKAction
  class func stereoPanBy(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeReverbTo(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeReverbBy(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeObstructionTo(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeObstructionBy(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeOcclusionTo(v: Float, duration: NSTimeInterval) -> SKAction
  class func changeOcclusionBy(v: Float, duration: NSTimeInterval) -> SKAction
}
class SKCameraNode : SKNode {
  func containsNode(node: SKNode) -> Bool
  func containedNodeSet() -> Set<SKNode>
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
class SKRange : NSObject, NSCoding, NSCopying {
  init(lowerLimit lower: CGFloat, upperLimit upper: CGFloat)
  convenience init(lowerLimit lower: CGFloat)
  convenience init(upperLimit upper: CGFloat)
  convenience init(constantValue value: CGFloat)
  convenience init(value: CGFloat, variance: CGFloat)
  class func rangeWithNoLimits() -> Self
  var lowerLimit: CGFloat
  var upperLimit: CGFloat
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class SKConstraint : NSObject, NSCoding, NSCopying {
  var enabled: Bool
  var referenceNode: SKNode?
  class func positionX(range: SKRange) -> Self
  class func positionY(range: SKRange) -> Self
  class func positionX(xRange: SKRange, y yRange: SKRange) -> Self
  class func distance(range: SKRange, toNode node: SKNode) -> Self
  class func distance(range: SKRange, toPoint point: CGPoint) -> Self
  class func distance(range: SKRange, toPoint point: CGPoint, inNode node: SKNode) -> Self
  class func zRotation(zRange: SKRange) -> Self
  class func orientToNode(node: SKNode, offset radians: SKRange) -> Self
  class func orientToPoint(point: CGPoint, offset radians: SKRange) -> Self
  class func orientToPoint(point: CGPoint, inNode node: SKNode, offset radians: SKRange) -> Self
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class SKCropNode : SKNode {
  var maskNode: SKNode?
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
class SKEffectNode : SKNode {
  var filter: CIFilter?
  var shouldCenterFilter: Bool
  var shouldEnableEffects: Bool
  var shouldRasterize: Bool
  var blendMode: SKBlendMode
  var shader: SKShader?
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
enum SKParticleRenderOrder : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OldestLast
  case OldestFirst
  case DontCare
}
class SKEmitterNode : SKNode {
  func advanceSimulationTime(sec: NSTimeInterval)
  func resetSimulation()
  var particleTexture: SKTexture?
  var particleBlendMode: SKBlendMode
  var particleColor: NSColor
  var particleColorRedRange: CGFloat
  var particleColorGreenRange: CGFloat
  var particleColorBlueRange: CGFloat
  var particleColorAlphaRange: CGFloat
  var particleColorRedSpeed: CGFloat
  var particleColorGreenSpeed: CGFloat
  var particleColorBlueSpeed: CGFloat
  var particleColorAlphaSpeed: CGFloat
  var particleColorSequence: SKKeyframeSequence?
  var particleColorBlendFactor: CGFloat
  var particleColorBlendFactorRange: CGFloat
  var particleColorBlendFactorSpeed: CGFloat
  var particleColorBlendFactorSequence: SKKeyframeSequence?
  var particlePosition: CGPoint
  var particlePositionRange: CGVector
  var particleSpeed: CGFloat
  var particleSpeedRange: CGFloat
  var emissionAngle: CGFloat
  var emissionAngleRange: CGFloat
  var xAcceleration: CGFloat
  var yAcceleration: CGFloat
  var particleBirthRate: CGFloat
  var numParticlesToEmit: Int
  var particleLifetime: CGFloat
  var particleLifetimeRange: CGFloat
  var particleRotation: CGFloat
  var particleRotationRange: CGFloat
  var particleRotationSpeed: CGFloat
  var particleSize: CGSize
  var particleScale: CGFloat
  var particleScaleRange: CGFloat
  var particleScaleSpeed: CGFloat
  var particleScaleSequence: SKKeyframeSequence?
  var particleAlpha: CGFloat
  var particleAlphaRange: CGFloat
  var particleAlphaSpeed: CGFloat
  var particleAlphaSequence: SKKeyframeSequence?
  @NSCopying var particleAction: SKAction?
  var fieldBitMask: UInt32
  weak var targetNode: @sil_weak SKNode?
  var shader: SKShader?
  var particleZPosition: CGFloat
  var particleRenderOrder: SKParticleRenderOrder
  var particleZPositionRange: CGFloat
  var particleZPositionSpeed: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
class SKFieldNode : SKNode {
  var region: SKRegion?
  var strength: Float
  var falloff: Float
  var minimumRadius: Float
  var enabled: Bool
  var exclusive: Bool
  var categoryBitMask: UInt32
  var direction: vector_float3
  var smoothness: Float
  var animationSpeed: Float
  var texture: SKTexture?
  class func dragField() -> SKFieldNode
  class func vortexField() -> SKFieldNode
  class func radialGravityField() -> SKFieldNode
  class func linearGravityFieldWithVector(direction: vector_float3) -> SKFieldNode
  class func velocityFieldWithVector(direction: vector_float3) -> SKFieldNode
  class func velocityFieldWithTexture(velocityTexture: SKTexture) -> SKFieldNode
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func springField() -> SKFieldNode
  class func electricField() -> SKFieldNode
  class func magneticField() -> SKFieldNode
  class func customFieldWithEvaluationBlock(block: SKFieldForceEvaluator) -> SKFieldNode
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
typealias SKFieldForceEvaluator = (vector_float3, vector_float3, Float, Float, NSTimeInterval) -> vector_float3
enum SKInterpolationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case Spline
  case Step
}
enum SKRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Clamp
  case Loop
}
class SKKeyframeSequence : NSObject, NSCoding, NSCopying {
  init(keyframeValues values: [AnyObject], times: [NSNumber])
  convenience init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  func count() -> Int
  func addKeyframeValue(value: AnyObject, time: CGFloat)
  func removeLastKeyframe()
  func removeKeyframeAtIndex(index: Int)
  func setKeyframeValue(value: AnyObject, forIndex index: Int)
  func setKeyframeTime(time: CGFloat, forIndex index: Int)
  func setKeyframeValue(value: AnyObject, time: CGFloat, forIndex index: Int)
  func getKeyframeValueForIndex(index: Int) -> AnyObject
  func getKeyframeTimeForIndex(index: Int) -> CGFloat
  func sampleAtTime(time: CGFloat) -> AnyObject?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum SKLabelVerticalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Baseline
  case Center
  case Top
  case Bottom
}
enum SKLabelHorizontalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Left
  case Right
}
class SKLabelNode : SKNode {
  convenience init(text: String?)
  init(fontNamed fontName: String?)
  var verticalAlignmentMode: SKLabelVerticalAlignmentMode
  var horizontalAlignmentMode: SKLabelHorizontalAlignmentMode
  var fontName: String?
  var text: String?
  var fontSize: CGFloat
  var fontColor: NSColor?
  var colorBlendFactor: CGFloat
  var color: NSColor?
  var blendMode: SKBlendMode
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
class SKLightNode : SKNode {
  var enabled: Bool
  var lightColor: NSColor
  var ambientColor: NSColor
  var shadowColor: NSColor
  var falloff: CGFloat
  var categoryBitMask: UInt32
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
class SKMutableTexture : SKTexture {
  init(size: CGSize)
  init(size: CGSize, pixelFormat format: Int32)
  func modifyPixelDataWithBlock(block: (UnsafeMutablePointer<Void>, Int) -> Void)
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, inTexture texture: SKTexture)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(CGImage image: CGImage)
  convenience init(image: NSImage)
  convenience init(data pixelData: NSData, size: CGSize)
  convenience init(data pixelData: NSData, size: CGSize, flipped: Bool)
  convenience init(data pixelData: NSData, size: CGSize, rowLength: UInt32, alignment: UInt32)
  init()
  init?(coder aDecoder: NSCoder)
}
enum SKBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case MultiplyX2
  case Screen
  case Replace
}
class SKNode : NSResponder, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
  var frame: CGRect { get }
  func calculateAccumulatedFrame() -> CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var zRotation: CGFloat
  var xScale: CGFloat
  var yScale: CGFloat
  var speed: CGFloat
  var alpha: CGFloat
  var paused: Bool
  var hidden: Bool
  var userInteractionEnabled: Bool
  var parent: SKNode? { get }
  var children: [SKNode] { get }
  var name: String?
  var scene: SKScene? { get }
  var physicsBody: SKPhysicsBody?
  var userData: NSMutableDictionary?
  @NSCopying var reachConstraints: SKReachConstraints?
  var constraints: [SKConstraint]?
  func setScale(scale: CGFloat)
  func addChild(node: SKNode)
  func insertChild(node: SKNode, atIndex index: Int)
  func removeChildrenInArray(nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func moveToParent(parent: SKNode)
  func childNodeWithName(name: String) -> SKNode?
  func enumerateChildNodesWithName(name: String, usingBlock block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  subscript (name: String) -> [SKNode] { get }
  func inParentHierarchy(parent: SKNode) -> Bool
  func runAction(action: SKAction)
  func runAction(action: SKAction, completion block: () -> Void)
  func runAction(action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func actionForKey(key: String) -> SKAction?
  func removeActionForKey(key: String)
  func removeAllActions()
  func containsPoint(p: CGPoint) -> Bool
  func nodeAtPoint(p: CGPoint) -> SKNode
  func nodesAtPoint(p: CGPoint) -> [SKNode]
  func convertPoint(point: CGPoint, fromNode node: SKNode) -> CGPoint
  func convertPoint(point: CGPoint, toNode node: SKNode) -> CGPoint
  func intersectsNode(node: SKNode) -> Bool
  func isEqualToNode(node: SKNode) -> Bool
  class func obstaclesFromSpriteTextures(sprites: [SKNode], accuracy: Float) -> [AnyObject]
  class func obstaclesFromNodeBounds(nodes: [SKNode]) -> [AnyObject]
  class func obstaclesFromNodePhysicsBodies(nodes: [SKNode]) -> [AnyObject]
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSEvent {
  func locationInNode(node: SKNode) -> CGPoint
}
class SKPhysicsBody : NSObject, NSCopying, NSCoding {
   init(circleOfRadius r: CGFloat)
   init(circleOfRadius r: CGFloat, center: CGPoint)
   init(rectangleOfSize s: CGSize)
   init(rectangleOfSize s: CGSize, center: CGPoint)
   init(polygonFromPath path: CGPath)
   init(edgeFromPoint p1: CGPoint, toPoint p2: CGPoint)
   init(edgeChainFromPath path: CGPath)
   init(edgeLoopFromPath path: CGPath)
   init(edgeLoopFromRect rect: CGRect)
   init(texture: SKTexture, size: CGSize)
   init(texture: SKTexture, alphaThreshold: Float, size: CGSize)
   init(bodies: [SKPhysicsBody])
  var dynamic: Bool
  var usesPreciseCollisionDetection: Bool
  var allowsRotation: Bool
  var pinned: Bool
  var resting: Bool
  var friction: CGFloat
  var charge: CGFloat
  var restitution: CGFloat
  var linearDamping: CGFloat
  var angularDamping: CGFloat
  var density: CGFloat
  var mass: CGFloat
  var area: CGFloat { get }
  var affectedByGravity: Bool
  var fieldBitMask: UInt32
  var categoryBitMask: UInt32
  var collisionBitMask: UInt32
  var contactTestBitMask: UInt32
  var joints: [SKPhysicsJoint] { get }
  weak var node: @sil_weak SKNode? { get }
  var velocity: CGVector
  var angularVelocity: CGFloat
  func applyForce(force: CGVector)
  func applyForce(force: CGVector, atPoint point: CGPoint)
  func applyTorque(torque: CGFloat)
  func applyImpulse(impulse: CGVector)
  func applyImpulse(impulse: CGVector, atPoint point: CGPoint)
  func applyAngularImpulse(impulse: CGFloat)
  func allContactedBodies() -> [SKPhysicsBody]
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsContact : NSObject {
  var bodyA: SKPhysicsBody { get }
  var bodyB: SKPhysicsBody { get }
  var contactPoint: CGPoint { get }
  var contactNormal: CGVector { get }
  var collisionImpulse: CGFloat { get }
  init()
}
class SKPhysicsJoint : NSObject, NSCoding {
  var bodyA: SKPhysicsBody
  var bodyB: SKPhysicsBody
  var reactionForce: CGVector { get }
  var reactionTorque: CGFloat { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointPin : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointPin
  var shouldEnableLimits: Bool
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  var frictionTorque: CGFloat
  var rotationSpeed: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointSpring : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointSpring
  var damping: CGFloat
  var frequency: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointFixed : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointFixed
  init()
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointSliding : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint, axis: CGVector) -> SKPhysicsJointSliding
  var shouldEnableLimits: Bool
  var lowerDistanceLimit: CGFloat
  var upperDistanceLimit: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointLimit : SKPhysicsJoint {
  var maxLength: CGFloat
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointLimit
  init()
  init?(coder aDecoder: NSCoder)
}
protocol SKPhysicsContactDelegate : NSObjectProtocol {
  optional func didBeginContact(contact: SKPhysicsContact)
  optional func didEndContact(contact: SKPhysicsContact)
}
class SKPhysicsWorld : NSObject, NSCoding {
  var gravity: CGVector
  var speed: CGFloat
  unowned(unsafe) var contactDelegate: @sil_unmanaged SKPhysicsContactDelegate?
  func addJoint(joint: SKPhysicsJoint)
  func removeJoint(joint: SKPhysicsJoint)
  func removeAllJoints()
  func sampleFieldsAt(position: vector_float3) -> vector_float3
  func bodyAtPoint(point: CGPoint) -> SKPhysicsBody?
  func bodyInRect(rect: CGRect) -> SKPhysicsBody?
  func bodyAlongRayStart(start: CGPoint, end: CGPoint) -> SKPhysicsBody?
  func enumerateBodiesAtPoint(point: CGPoint, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesInRect(rect: CGRect, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesAlongRayStart(start: CGPoint, end: CGPoint, usingBlock block: (SKPhysicsBody, CGPoint, CGVector, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SKReachConstraints : NSObject, NSCoding {
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit: CGFloat, upperAngleLimit: CGFloat)
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SKReferenceNode : SKNode {
  init(URL url: NSURL?)
  init(fileNamed fileName: String?)
  init?(coder aDecoder: NSCoder)
  convenience init(fileNamed fileName: String)
  convenience init(URL referenceURL: NSURL)
  func didLoadReferenceNode(node: SKNode?)
  func resolveReferenceNode()
  convenience init()
}
class SKRegion : NSObject, NSCopying, NSCoding {
  var path: CGPath? { get }
  class func infiniteRegion() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverseRegion() -> Self
  func regionByUnionWithRegion(region: SKRegion) -> Self
  func regionByDifferenceFromRegion(region: SKRegion) -> Self
  func regionByIntersectionWithRegion(region: SKRegion) -> Self
  func containsPoint(point: CGPoint) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case AspectFill
  case AspectFit
  case ResizeFill
}
protocol SKSceneDelegate : NSObjectProtocol {
  optional func update(currentTime: NSTimeInterval, forScene scene: SKScene)
  optional func didEvaluateActionsForScene(scene: SKScene)
  optional func didSimulatePhysicsForScene(scene: SKScene)
  optional func didApplyConstraintsForScene(scene: SKScene)
  optional func didFinishUpdateForScene(scene: SKScene)
}
class SKScene : SKEffectNode {
  init(size: CGSize)
  var size: CGSize
  var scaleMode: SKSceneScaleMode
  weak var camera: @sil_weak SKCameraNode?
  weak var listener: @sil_weak SKNode?
  var backgroundColor: NSColor
  unowned(unsafe) var delegate: @sil_unmanaged SKSceneDelegate?
  var anchorPoint: CGPoint
  var physicsWorld: SKPhysicsWorld { get }
  func convertPointFromView(point: CGPoint) -> CGPoint
  func convertPointToView(point: CGPoint) -> CGPoint
  weak var view: @sil_weak SKView? { get }
  func update(currentTime: NSTimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  func didApplyConstraints()
  func didFinishUpdate()
  func didMoveToView(view: SKView)
  func willMoveFromView(view: SKView)
  func didChangeSize(oldSize: CGSize)
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
class SKShader : NSObject, NSCopying, NSCoding {
  init(source: String)
  init(source: String, uniforms: [SKUniform])
  convenience init(fileNamed name: String)
  var source: String?
  var uniforms: [SKUniform]
  func addUniform(uniform: SKUniform)
  func uniformNamed(name: String) -> SKUniform?
  func removeUniformNamed(name: String)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SKShapeNode : SKNode {
  convenience init(path: CGPath)
  convenience init(path: CGPath, centered: Bool)
  convenience init(rect: CGRect)
  convenience init(rectOfSize size: CGSize)
  convenience init(rect: CGRect, cornerRadius: CGFloat)
  convenience init(rectOfSize size: CGSize, cornerRadius: CGFloat)
  convenience init(circleOfRadius radius: CGFloat)
  convenience init(ellipseInRect rect: CGRect)
  convenience init(ellipseOfSize size: CGSize)
  convenience init(points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  convenience init(splinePoints points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  var path: CGPath?
  var strokeColor: NSColor
  var fillColor: NSColor
  var blendMode: SKBlendMode
  var antialiased: Bool
  var lineWidth: CGFloat
  var glowWidth: CGFloat
  var lineCap: CGLineCap
  var lineJoin: CGLineJoin
  var miterLimit: CGFloat
  var lineLength: CGFloat { get }
  var fillTexture: SKTexture?
  var fillShader: SKShader?
  var strokeTexture: SKTexture?
  var strokeShader: SKShader?
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
extension SKShapeNode : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
class SKSpriteNode : SKNode {
  convenience init(texture: SKTexture?, size: CGSize)
  convenience init(texture: SKTexture?, normalMap: SKTexture?)
  convenience init(imageNamed name: String, normalMapped generateNormalMap: Bool)
  init(texture: SKTexture?, color: NSColor, size: CGSize)
  convenience init(texture: SKTexture?)
  convenience init(imageNamed name: String)
  convenience init(color: NSColor, size: CGSize)
  init?(coder aDecoder: NSCoder)
  var texture: SKTexture?
  var normalTexture: SKTexture?
  var lightingBitMask: UInt32
  var shadowCastBitMask: UInt32
  var shadowedBitMask: UInt32
  var centerRect: CGRect
  var colorBlendFactor: CGFloat
  var color: NSColor
  var blendMode: SKBlendMode
  var anchorPoint: CGPoint
  var size: CGSize
  var shader: SKShader?
  convenience init()
  convenience init?(fileNamed filename: String)
}
extension SKSpriteNode : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
enum SKTextureFilteringMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nearest
  case Linear
}
class SKTexture : NSObject, NSCopying, NSCoding {
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, inTexture texture: SKTexture)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(CGImage image: CGImage)
  convenience init(image: NSImage)
  convenience init(data pixelData: NSData, size: CGSize)
  convenience init(data pixelData: NSData, size: CGSize, flipped: Bool)
  convenience init(data pixelData: NSData, size: CGSize, rowLength: UInt32, alignment: UInt32)
  func textureByApplyingCIFilter(filter: CIFilter) -> Self
  func textureByGeneratingNormalMap() -> Self
  func textureByGeneratingNormalMapWithSmoothness(smoothness: CGFloat, contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  func CGImage() -> CGImage
  class func preloadTextures(textures: [SKTexture], withCompletionHandler completionHandler: () -> Void)
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SKTexture : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
class SKTextureAtlas : NSObject, NSCoding {
  convenience init(named name: String)
  convenience init(dictionary properties: [String : AnyObject])
  func textureNamed(name: String) -> SKTexture
  class func preloadTextureAtlases(textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: () -> Void)
  class func preloadTextureAtlasesNamed(atlasNames: [String], withCompletionHandler completionHandler: (NSError?, [SKTextureAtlas]) -> Void)
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  var textureNames: [String] { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SKTextureAtlas : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
enum SKTransitionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Right
  case Left
}
class SKTransition : NSObject, NSCopying {
  class func crossFadeWithDuration(sec: NSTimeInterval) -> SKTransition
  class func fadeWithDuration(sec: NSTimeInterval) -> SKTransition
  class func fadeWithColor(color: NSColor, duration sec: NSTimeInterval) -> SKTransition
  class func flipHorizontalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func flipVerticalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func revealWithDirection(direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func moveInWithDirection(direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func pushWithDirection(direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func doorsOpenHorizontalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func doorsOpenVerticalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func doorsCloseHorizontalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func doorsCloseVerticalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func doorwayWithDuration(sec: NSTimeInterval) -> SKTransition
   init(CIFilter filter: CIFilter, duration sec: NSTimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum SKUniformType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Float
  case FloatVector2
  case FloatVector3
  case FloatVector4
  case FloatMatrix2
  case FloatMatrix3
  case FloatMatrix4
  case Texture
}
class SKUniform : NSObject, NSCopying, NSCoding {
  convenience init(name: String, texture: SKTexture)
  var name: String { get }
  var uniformType: SKUniformType { get }
  var textureValue: SKTexture?
  var floatValue: Float
  var floatVector2Value: GLKVector2
  var floatVector3Value: GLKVector3
  var floatVector4Value: GLKVector4
  var floatMatrix2Value: GLKMatrix2
  var floatMatrix3Value: GLKMatrix3
  var floatMatrix4Value: GLKMatrix4
  init(name: String)
  init(name: String, texture: SKTexture?)
  init(name: String, float value: Float)
  init(name: String, floatVector2 value: GLKVector2)
  init(name: String, floatVector3 value: GLKVector3)
  init(name: String, floatVector4 value: GLKVector4)
  init(name: String, floatMatrix2 value: GLKMatrix2)
  init(name: String, floatMatrix3 value: GLKMatrix3)
  init(name: String, floatMatrix4 value: GLKMatrix4)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
var SK_VERSION: Int32 { get }
class SKVideoNode : SKNode {
  init(videoFileNamed videoFile: String)
  init(fileNamed videoFile: String)
  init(videoURL url: NSURL)
  init(URL url: NSURL)
  init?(coder aDecoder: NSCoder)
  func play()
  func pause()
  var size: CGSize
  var anchorPoint: CGPoint
  convenience init()
}
class SKView : NSView {
  var paused: Bool
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  var showsQuadCount: Bool
  var showsPhysics: Bool
  var showsFields: Bool
  var asynchronous: Bool
  var allowsTransparency: Bool
  var ignoresSiblingOrder: Bool
  var shouldCullNonVisibleNodes: Bool
  var frameInterval: Int
  func presentScene(scene: SKScene?)
  func presentScene(scene: SKScene, transition: SKTransition)
  var scene: SKScene? { get }
  func textureFromNode(node: SKNode) -> SKTexture?
  func textureFromNode(node: SKNode, crop: CGRect) -> SKTexture?
  func convertPoint(point: CGPoint, toScene scene: SKScene) -> CGPoint
  func convertPoint(point: CGPoint, fromScene scene: SKScene) -> CGPoint
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
