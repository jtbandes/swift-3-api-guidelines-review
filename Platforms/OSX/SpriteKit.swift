
class SK3DNode : SKNode {
  init(viewportSize: CGSize)
  init?(coder aDecoder: Coder)
  var viewportSize: CGSize
  var sceneTime: TimeInterval
  func hitTest(point: CGPoint, options: [String : AnyObject]? = [:]) -> [AnyObject]
  func projectPoint(point: vector_float3) -> vector_float3
  func unprojectPoint(point: vector_float3) -> vector_float3
  var isPlaying: Bool
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
class SKAction : Object, Copying, Coding {
  var duration: TimeInterval
  var timingMode: SKActionTimingMode
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversed() -> SKAction
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SKAction {
  class func moveBy(delta: CGVector, duration sec: TimeInterval) -> SKAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, duration sec: TimeInterval) -> SKAction
  class func moveTo(location: CGPoint, duration sec: TimeInterval) -> SKAction
  class func moveToX(x: CGFloat, duration sec: TimeInterval) -> SKAction
  class func moveToY(y: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateByAngle(radians: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateToAngle(radians: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateToAngle(radians: CGFloat, duration sec: TimeInterval, shortestUnitArc: Bool) -> SKAction
  class func resizeByWidth(width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeToHeight(height: CGFloat, duration: TimeInterval) -> SKAction
  class func scaleBy(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXBy(xScale: CGFloat, y yScale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXTo(xScale: CGFloat, y yScale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleYTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func sequence(actions: [SKAction]) -> SKAction
  class func group(actions: [SKAction]) -> SKAction
  class func repeatAction(action: SKAction, count: Int) -> SKAction
  class func repeatForever(action: SKAction) -> SKAction
  class func fadeInWithDuration(sec: TimeInterval) -> SKAction
  class func fadeOutWithDuration(sec: TimeInterval) -> SKAction
  class func fadeAlphaBy(factor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func fadeAlphaTo(alpha: CGFloat, duration sec: TimeInterval) -> SKAction
  class func hide() -> SKAction
  class func unhide() -> SKAction
  class func setTexture(texture: SKTexture) -> SKAction
  class func setNormalTexture(texture: SKTexture) -> SKAction
  class func setTexture(texture: SKTexture, resize: Bool) -> SKAction
  class func setNormalTexture(texture: SKTexture, resize: Bool) -> SKAction
  class func animateWith(textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  class func animateWith(textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func playSoundFileNamed(soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorizeWith(color: NSColor, colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func colorizeWithColorBlendFactor(colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func falloffTo(falloff: Float, duration sec: TimeInterval) -> SKAction
  class func falloffBy(falloff: Float, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, speed: CGFloat) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction
  class func speedBy(speed: CGFloat, duration sec: TimeInterval) -> SKAction
  class func speedTo(speed: CGFloat, duration sec: TimeInterval) -> SKAction
  class func reachTo(position: CGPoint, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  class func reachTo(position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  class func reachTo(node: SKNode, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  class func reachTo(node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  class func strengthTo(strength: Float, duration sec: TimeInterval) -> SKAction
  class func strengthBy(strength: Float, duration sec: TimeInterval) -> SKAction
  class func waitForDuration(sec: TimeInterval) -> SKAction
  class func waitForDuration(sec: TimeInterval, withRange durationRange: TimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func perform(selector: Selector, onTarget target: AnyObject) -> SKAction
  class func run(block: dispatch_block_t) -> SKAction
  class func run(block: dispatch_block_t, queue: dispatch_queue_t) -> SKAction
  class func run(action: SKAction, onChildWithName name: String) -> SKAction
  class func customActionWithDuration(seconds: TimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
   init?(named name: String)
   init?(named name: String, duration sec: TimeInterval)
   init?(named name: String, from url: URL)
   init?(named name: String, from url: URL, duration sec: TimeInterval)
}
extension SKAction {
  class func changeChargeTo(v: Float, duration: TimeInterval) -> SKAction
  class func changeChargeBy(v: Float, duration: TimeInterval) -> SKAction
  class func changeMassTo(v: Float, duration: TimeInterval) -> SKAction
  class func changeMassBy(v: Float, duration: TimeInterval) -> SKAction
  class func applyForce(force: CGVector, duration sec: TimeInterval) -> SKAction
  class func applyForce(force: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  class func applyTorque(torque: CGFloat, duration sec: TimeInterval) -> SKAction
  class func applyImpulse(impulse: CGVector, duration sec: TimeInterval) -> SKAction
  class func applyImpulse(impulse: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  class func applyAngularImpulse(impulse: CGFloat, duration sec: TimeInterval) -> SKAction
}
extension SKAction {
  class func play() -> SKAction
  class func pause() -> SKAction
  class func stop() -> SKAction
  class func changePlaybackRateTo(v: Float, duration: TimeInterval) -> SKAction
  class func changePlaybackRateBy(v: Float, duration: TimeInterval) -> SKAction
}
extension SKAction {
  class func changeVolumeTo(v: Float, duration: TimeInterval) -> SKAction
  class func changeVolumeBy(v: Float, duration: TimeInterval) -> SKAction
}
class SKAudioNode : SKNode, Coding {
  init?(coder aDecoder: Coder)
  convenience init(fileNamed name: String)
  convenience init(url: URL)
  var autoplayLooped: Bool
  var isPositional: Bool
  convenience init()
}
extension SKAction {
  class func stereoPanTo(v: Float, duration: TimeInterval) -> SKAction
  class func stereoPanBy(v: Float, duration: TimeInterval) -> SKAction
  class func changeReverbTo(v: Float, duration: TimeInterval) -> SKAction
  class func changeReverbBy(v: Float, duration: TimeInterval) -> SKAction
  class func changeObstructionTo(v: Float, duration: TimeInterval) -> SKAction
  class func changeObstructionBy(v: Float, duration: TimeInterval) -> SKAction
  class func changeOcclusionTo(v: Float, duration: TimeInterval) -> SKAction
  class func changeOcclusionBy(v: Float, duration: TimeInterval) -> SKAction
}
class SKCameraNode : SKNode {
  func contains(node: SKNode) -> Bool
  func containedNodeSet() -> Set<SKNode>
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
class SKRange : Object, Coding, Copying {
  init(lowerLimit lower: CGFloat, upperLimit upper: CGFloat)
  convenience init(lowerLimit lower: CGFloat)
  convenience init(upperLimit upper: CGFloat)
  convenience init(constantValue value: CGFloat)
  convenience init(value: CGFloat, variance: CGFloat)
  class func withNoLimits() -> Self
  var lowerLimit: CGFloat
  var upperLimit: CGFloat
  convenience init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class SKConstraint : Object, Coding, Copying {
  var enabled: Bool
  var referenceNode: SKNode?
  class func positionX(range: SKRange) -> Self
  class func positionY(range: SKRange) -> Self
  class func positionX(xRange: SKRange, y yRange: SKRange) -> Self
  class func distance(range: SKRange, to node: SKNode) -> Self
  class func distance(range: SKRange, to point: CGPoint) -> Self
  class func distance(range: SKRange, to point: CGPoint, in node: SKNode) -> Self
  class func zRotation(zRange: SKRange) -> Self
  class func orientTo(node: SKNode, offset radians: SKRange) -> Self
  class func orientTo(point: CGPoint, offset radians: SKRange) -> Self
  class func orientTo(point: CGPoint, in node: SKNode, offset radians: SKRange) -> Self
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class SKCropNode : SKNode {
  var maskNode: SKNode?
  init()
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
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
  func advanceSimulationTime(sec: TimeInterval)
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
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
class SKFieldNode : SKNode {
  var region: SKRegion?
  var strength: Float
  var falloff: Float
  var minimumRadius: Float
  var isEnabled: Bool
  var isExclusive: Bool
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
  class func velocityFieldWith(velocityTexture: SKTexture) -> SKFieldNode
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func springField() -> SKFieldNode
  class func electricField() -> SKFieldNode
  class func magneticField() -> SKFieldNode
  class func customFieldWithEvaluationBlock(block: SKFieldForceEvaluator) -> SKFieldNode
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
typealias SKFieldForceEvaluator = (vector_float3, vector_float3, Float, Float, TimeInterval) -> vector_float3
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
class SKKeyframeSequence : Object, Coding, Copying {
  init(keyframeValues values: [AnyObject], times: [Number])
  convenience init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  func count() -> Int
  func addKeyframeValue(value: AnyObject, time: CGFloat)
  func removeLastKeyframe()
  func removeKeyframeAt(index: Int)
  func setKeyframeValue(value: AnyObject, forIndex index: Int)
  func setKeyframeTime(time: CGFloat, forIndex index: Int)
  func setKeyframeValue(value: AnyObject, time: CGFloat, forIndex index: Int)
  func getKeyframeValueFor(index: Int) -> AnyObject
  func getKeyframeTimeFor(index: Int) -> CGFloat
  func sampleAtTime(time: CGFloat) -> AnyObject?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
  convenience init()
  func encodeWith(aCoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
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
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
class SKLightNode : SKNode {
  var isEnabled: Bool
  var lightColor: NSColor
  var ambientColor: NSColor
  var shadowColor: NSColor
  var falloff: CGFloat
  var categoryBitMask: UInt32
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
class SKMutableTexture : SKTexture {
  init(size: CGSize)
  init(size: CGSize, pixelFormat format: Int32)
  func modifyPixelDataWith(block: (UnsafeMutablePointer<Void>, Int) -> Void)
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, in texture: SKTexture)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(cgImage image: CGImage)
  convenience init(image: NSImage)
  convenience init(data pixelData: Data, size: CGSize)
  convenience init(data pixelData: Data, size: CGSize, flipped: Bool)
  convenience init(data pixelData: Data, size: CGSize, rowLength: UInt32, alignment: UInt32)
  init()
  init?(coder aDecoder: Coder)
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
class SKNode : NSResponder, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
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
  var isPaused: Bool
  var isHidden: Bool
  var isUserInteractionEnabled: Bool
  var parent: SKNode? { get }
  var children: [SKNode] { get }
  var name: String?
  var scene: SKScene? { get }
  var physicsBody: SKPhysicsBody?
  var userData: MutableDictionary?
  @NSCopying var reachConstraints: SKReachConstraints?
  var constraints: [SKConstraint]?
  func setScale(scale: CGFloat)
  func addChild(node: SKNode)
  func insertChild(node: SKNode, at index: Int)
  func removeChildrenIn(nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func moveToParent(parent: SKNode)
  func childNodeWithName(name: String) -> SKNode?
  func enumerateChildNodesWithName(name: String, usingBlock block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  subscript (name: String) -> [SKNode] { get }
  func inParentHierarchy(parent: SKNode) -> Bool
  func run(action: SKAction)
  func run(action: SKAction, completion block: () -> Void)
  func run(action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func actionForKey(key: String) -> SKAction?
  func removeActionForKey(key: String)
  func removeAllActions()
  func contains(p: CGPoint) -> Bool
  func atPoint(p: CGPoint) -> SKNode
  func nodesAt(p: CGPoint) -> [SKNode]
  func convert(point: CGPoint, from node: SKNode) -> CGPoint
  func convert(point: CGPoint, to node: SKNode) -> CGPoint
  func intersectsNode(node: SKNode) -> Bool
  func isEqualTo(node: SKNode) -> Bool
  class func obstaclesFromSpriteTextures(sprites: [SKNode], accuracy: Float) -> [AnyObject]
  class func obstaclesFromNodeBounds(nodes: [SKNode]) -> [AnyObject]
  class func obstaclesFromNodePhysicsBodies(nodes: [SKNode]) -> [AnyObject]
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension NSEvent {
  func locationIn(node: SKNode) -> CGPoint
}
class SKPhysicsBody : Object, Copying, Coding {
   init(circleOfRadius r: CGFloat)
   init(circleOfRadius r: CGFloat, center: CGPoint)
   init(rectangleOf s: CGSize)
   init(rectangleOf s: CGSize, center: CGPoint)
   init(polygonFrom path: CGPath)
   init(edgeFrom p1: CGPoint, to p2: CGPoint)
   init(edgeChainFrom path: CGPath)
   init(edgeLoopFrom path: CGPath)
   init(edgeLoopFrom rect: CGRect)
   init(texture: SKTexture, size: CGSize)
   init(texture: SKTexture, alphaThreshold: Float, size: CGSize)
   init(bodies: [SKPhysicsBody])
  var isDynamic: Bool
  var usesPreciseCollisionDetection: Bool
  var allowsRotation: Bool
  var pinned: Bool
  var isResting: Bool
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
  func applyForce(force: CGVector, at point: CGPoint)
  func applyTorque(torque: CGFloat)
  func applyImpulse(impulse: CGVector)
  func applyImpulse(impulse: CGVector, at point: CGPoint)
  func applyAngularImpulse(impulse: CGFloat)
  func allContactedBodies() -> [SKPhysicsBody]
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class SKPhysicsContact : Object {
  var bodyA: SKPhysicsBody { get }
  var bodyB: SKPhysicsBody { get }
  var contactPoint: CGPoint { get }
  var contactNormal: CGVector { get }
  var collisionImpulse: CGFloat { get }
  init()
}
class SKPhysicsJoint : Object, Coding {
  var bodyA: SKPhysicsBody
  var bodyB: SKPhysicsBody
  var reactionForce: CGVector { get }
  var reactionTorque: CGFloat { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointPin : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointPin
  var shouldEnableLimits: Bool
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  var frictionTorque: CGFloat
  var rotationSpeed: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointSpring : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointSpring
  var damping: CGFloat
  var frequency: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointFixed : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointFixed
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointSliding : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint, axis: CGVector) -> SKPhysicsJointSliding
  var shouldEnableLimits: Bool
  var lowerDistanceLimit: CGFloat
  var upperDistanceLimit: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointLimit : SKPhysicsJoint {
  var maxLength: CGFloat
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointLimit
  init()
  init?(coder aDecoder: Coder)
}
protocol SKPhysicsContactDelegate : ObjectProtocol {
  optional func didBegin(contact: SKPhysicsContact)
  optional func didEnd(contact: SKPhysicsContact)
}
class SKPhysicsWorld : Object, Coding {
  var gravity: CGVector
  var speed: CGFloat
  unowned(unsafe) var contactDelegate: @sil_unmanaged SKPhysicsContactDelegate?
  func add(joint: SKPhysicsJoint)
  func remove(joint: SKPhysicsJoint)
  func removeAllJoints()
  func sampleFieldsAt(position: vector_float3) -> vector_float3
  func bodyAt(point: CGPoint) -> SKPhysicsBody?
  func bodyIn(rect: CGRect) -> SKPhysicsBody?
  func bodyAlongRayStart(start: CGPoint, end: CGPoint) -> SKPhysicsBody?
  func enumerateBodiesAt(point: CGPoint, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesIn(rect: CGRect, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesAlongRayStart(start: CGPoint, end: CGPoint, usingBlock block: (SKPhysicsBody, CGPoint, CGVector, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class SKReachConstraints : Object, Coding {
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit: CGFloat, upperAngleLimit: CGFloat)
  convenience init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class SKReferenceNode : SKNode {
  init(url: URL?)
  init(fileNamed fileName: String?)
  init?(coder aDecoder: Coder)
  convenience init(fileNamed fileName: String)
  convenience init(url referenceURL: URL)
  func didLoad(node: SKNode?)
  func resolve()
  convenience init()
}
class SKRegion : Object, Copying, Coding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverse() -> Self
  func byUnionWith(region: SKRegion) -> Self
  func byDifferenceFrom(region: SKRegion) -> Self
  func byIntersectionWith(region: SKRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case AspectFill
  case AspectFit
  case ResizeFill
}
protocol SKSceneDelegate : ObjectProtocol {
  optional func update(currentTime: TimeInterval, forScene scene: SKScene)
  optional func didEvaluateActionsFor(scene: SKScene)
  optional func didSimulatePhysicsFor(scene: SKScene)
  optional func didApplyConstraintsFor(scene: SKScene)
  optional func didFinishUpdateFor(scene: SKScene)
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
  func update(currentTime: TimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  func didApplyConstraints()
  func didFinishUpdate()
  func didMoveTo(view: SKView)
  func willMoveFrom(view: SKView)
  func didChangeSize(oldSize: CGSize)
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
class SKShader : Object, Copying, Coding {
  init(source: String)
  init(source: String, uniforms: [SKUniform])
  convenience init(fileNamed name: String)
  var source: String?
  var uniforms: [SKUniform]
  func addUniform(uniform: SKUniform)
  func uniformNamed(name: String) -> SKUniform?
  func removeUniformNamed(name: String)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class SKShapeNode : SKNode {
  convenience init(path: CGPath)
  convenience init(path: CGPath, centered: Bool)
  convenience init(rect: CGRect)
  convenience init(rectOf size: CGSize)
  convenience init(rect: CGRect, cornerRadius: CGFloat)
  convenience init(rectOf size: CGSize, cornerRadius: CGFloat)
  convenience init(circleOfRadius radius: CGFloat)
  convenience init(ellipseIn rect: CGRect)
  convenience init(ellipseOf size: CGSize)
  convenience init(points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  convenience init(splinePoints points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  var path: CGPath?
  var strokeColor: NSColor
  var fillColor: NSColor
  var blendMode: SKBlendMode
  var isAntialiased: Bool
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
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
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
class SKTexture : Object, Copying, Coding {
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, in texture: SKTexture)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(cgImage image: CGImage)
  convenience init(image: NSImage)
  convenience init(data pixelData: Data, size: CGSize)
  convenience init(data pixelData: Data, size: CGSize, flipped: Bool)
  convenience init(data pixelData: Data, size: CGSize, rowLength: UInt32, alignment: UInt32)
  func applying(filter: CIFilter) -> Self
  func generatingNormalMap() -> Self
  func generatingNormalMapWithSmoothness(smoothness: CGFloat, contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  func cgImage() -> CGImage
  class func preload(textures: [SKTexture], withCompletionHandler completionHandler: () -> Void)
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SKTexture : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
class SKTextureAtlas : Object, Coding {
  convenience init(named name: String)
  convenience init(dictionary properties: [String : AnyObject])
  func textureNamed(name: String) -> SKTexture
  class func preloadTextureAtlases(textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: () -> Void)
  class func preloadTextureAtlasesNamed(atlasNames: [String], withCompletionHandler completionHandler: (Error?, [SKTextureAtlas]) -> Void)
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  var textureNames: [String] { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
class SKTransition : Object, Copying {
  class func crossFadeWithDuration(sec: TimeInterval) -> SKTransition
  class func fadeWithDuration(sec: TimeInterval) -> SKTransition
  class func fadeWith(color: NSColor, duration sec: TimeInterval) -> SKTransition
  class func flipHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func flipVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func revealWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func moveInWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func pushWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func doorsOpenHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsOpenVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsCloseHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsCloseVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorwayWithDuration(sec: TimeInterval) -> SKTransition
   init(ciFilter filter: CIFilter, duration sec: TimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
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
class SKUniform : Object, Copying, Coding {
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
  init(name: String, float value: GLKVector2)
  init(name: String, float value: GLKVector3)
  init(name: String, float value: GLKVector4)
  init(name: String, float value: GLKMatrix2)
  init(name: String, float value: GLKMatrix3)
  init(name: String, float value: GLKMatrix4)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
var SK_VERSION: Int32 { get }
class SKVideoNode : SKNode {
  init(videoFileNamed videoFile: String)
  init(fileNamed videoFile: String)
  init(videoURL url: URL)
  init(url: URL)
  init?(coder aDecoder: Coder)
  func play()
  func pause()
  var size: CGSize
  var anchorPoint: CGPoint
  convenience init()
}
class SKView : NSView {
  var isPaused: Bool
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  var showsQuadCount: Bool
  var showsPhysics: Bool
  var showsFields: Bool
  var isAsynchronous: Bool
  var allowsTransparency: Bool
  var ignoresSiblingOrder: Bool
  var shouldCullNonVisibleNodes: Bool
  var frameInterval: Int
  func presentScene(scene: SKScene?)
  func presentScene(scene: SKScene, transition: SKTransition)
  var scene: SKScene? { get }
  func textureFrom(node: SKNode) -> SKTexture?
  func textureFrom(node: SKNode, crop: CGRect) -> SKTexture?
  func convert(point: CGPoint, to scene: SKScene) -> CGPoint
  func convert(point: CGPoint, from scene: SKScene) -> CGPoint
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
