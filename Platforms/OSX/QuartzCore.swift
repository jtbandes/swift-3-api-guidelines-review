
class CAAnimation : NSObject, NSCoding, NSCopying, CAMediaTiming, CAAction {
  class func defaultValueForKey(key: String) -> AnyObject?
  func shouldArchiveValueForKey(key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: AnyObject?
  var removedOnCompletion: Bool
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSObject {
  class func animationDidStart(anim: CAAnimation)
  func animationDidStart(anim: CAAnimation)
  class func animationDidStop(anim: CAAnimation, finished flag: Bool)
  func animationDidStop(anim: CAAnimation, finished flag: Bool)
}
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var additive: Bool
  var cumulative: Bool
  var valueFunction: CAValueFunction?
  init()
  init?(coder aDecoder: NSCoder)
}
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: AnyObject?
  var toValue: AnyObject?
  var byValue: AnyObject?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}
class CAKeyframeAnimation : CAPropertyAnimation {
  var values: [AnyObject]?
  var path: CGPath?
  var keyTimes: [NSNumber]?
  var timingFunctions: [CAMediaTimingFunction]?
  var calculationMode: String
  var tensionValues: [NSNumber]?
  var continuityValues: [NSNumber]?
  var biasValues: [NSNumber]?
  var rotationMode: String?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}
let kCAAnimationLinear: String
let kCAAnimationDiscrete: String
let kCAAnimationPaced: String
let kCAAnimationCubic: String
let kCAAnimationCubicPaced: String
let kCAAnimationRotateAuto: String
let kCAAnimationRotateAutoReverse: String
class CASpringAnimation : CABasicAnimation {
  var mass: CGFloat
  var stiffness: CGFloat
  var damping: CGFloat
  var initialVelocity: CGFloat
  var settlingDuration: CFTimeInterval { get }
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}
class CATransition : CAAnimation {
  var type: String
  var subtype: String?
  var startProgress: Float
  var endProgress: Float
  var filter: AnyObject?
  init()
  init?(coder aDecoder: NSCoder)
}
let kCATransitionFade: String
let kCATransitionMoveIn: String
let kCATransitionPush: String
let kCATransitionReveal: String
let kCATransitionFromRight: String
let kCATransitionFromLeft: String
let kCATransitionFromTop: String
let kCATransitionFromBottom: String
class CAAnimationGroup : CAAnimation {
  var animations: [CAAnimation]?
  init()
  init?(coder aDecoder: NSCoder)
}
var CA_WARN_DEPRECATED: Int32 { get }
func CACurrentMediaTime() -> CFTimeInterval
enum CAConstraintAttribute : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MinX
  case MidX
  case MaxX
  case Width
  case MinY
  case MidY
  case MaxY
  case Height
}
extension CALayer {
  var constraints: [CAConstraint]?
  func addConstraint(c: CAConstraint)
}
class CAConstraintLayoutManager : NSObject {
  init()
}
class CAConstraint : NSObject, NSCoding {
  convenience init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute, offset c: CGFloat)
  convenience init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute)
  init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute, scale m: CGFloat, offset c: CGFloat)
  var attribute: CAConstraintAttribute { get }
  var sourceName: String { get }
  var sourceAttribute: CAConstraintAttribute { get }
  var scale: CGFloat { get }
  var offset: CGFloat { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CAEmitterBehavior : NSObject, NSCoding {
  class func behaviorTypes() -> [String]
  init(type: String)
  var type: String { get }
  var name: String?
  var enabled: Bool
  func inputKeys() -> [AnyObject]
  class func attributesForKey(key: String) -> [NSObject : AnyObject]
  func attributesForKeyPath(keyPath: String) -> [NSObject : AnyObject]
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let kCAEmitterBehaviorWave: String
let kCAEmitterBehaviorDrag: String
let kCAEmitterBehaviorAlignToMotion: String
let kCAEmitterBehaviorValueOverLife: String
let kCAEmitterBehaviorColorOverLife: String
let kCAEmitterBehaviorLight: String
let kCAEmitterBehaviorAttractor: String
class CAEmitterCell : NSObject, NSCoding, CAMediaTiming {
  class func defaultValueForKey(key: String) -> AnyObject?
  func shouldArchiveValueForKey(key: String) -> Bool
  var name: String?
  var enabled: Bool
  var birthRate: Float
  var lifetime: Float
  var lifetimeRange: Float
  var emissionLatitude: CGFloat
  var emissionLongitude: CGFloat
  var emissionRange: CGFloat
  var velocity: CGFloat
  var velocityRange: CGFloat
  var xAcceleration: CGFloat
  var yAcceleration: CGFloat
  var zAcceleration: CGFloat
  var scale: CGFloat
  var scaleRange: CGFloat
  var scaleSpeed: CGFloat
  var spin: CGFloat
  var spinRange: CGFloat
  var color: CGColor?
  var redRange: Float
  var greenRange: Float
  var blueRange: Float
  var alphaRange: Float
  var redSpeed: Float
  var greenSpeed: Float
  var blueSpeed: Float
  var alphaSpeed: Float
  var contents: AnyObject?
  var contentsRect: CGRect
  var contentsScale: CGFloat
  var minificationFilter: String
  var magnificationFilter: String
  var minificationFilterBias: Float
  var emitterCells: [CAEmitterCell]?
  var style: [NSObject : AnyObject]?
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
}
class CAEmitterLayer : CALayer {
  var emitterCells: [CAEmitterCell]?
  var birthRate: Float
  var lifetime: Float
  var emitterPosition: CGPoint
  var emitterZPosition: CGFloat
  var emitterSize: CGSize
  var emitterDepth: CGFloat
  var emitterShape: String
  var emitterMode: String
  var renderMode: String
  var preservesDepth: Bool
  var velocity: Float
  var scale: Float
  var spin: Float
  var seed: UInt32
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
let kCAEmitterLayerPoint: String
let kCAEmitterLayerLine: String
let kCAEmitterLayerRectangle: String
let kCAEmitterLayerCuboid: String
let kCAEmitterLayerCircle: String
let kCAEmitterLayerSphere: String
let kCAEmitterLayerPoints: String
let kCAEmitterLayerOutline: String
let kCAEmitterLayerSurface: String
let kCAEmitterLayerVolume: String
let kCAEmitterLayerUnordered: String
let kCAEmitterLayerOldestFirst: String
let kCAEmitterLayerOldestLast: String
let kCAEmitterLayerBackToFront: String
let kCAEmitterLayerAdditive: String
class CAGradientLayer : CALayer {
  var colors: [AnyObject]?
  var locations: [NSNumber]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
let kCAGradientLayerAxial: String
struct CAAutoresizingMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LayerNotSizable: CAAutoresizingMask { get }
  static var LayerMinXMargin: CAAutoresizingMask { get }
  static var LayerWidthSizable: CAAutoresizingMask { get }
  static var LayerMaxXMargin: CAAutoresizingMask { get }
  static var LayerMinYMargin: CAAutoresizingMask { get }
  static var LayerHeightSizable: CAAutoresizingMask { get }
  static var LayerMaxYMargin: CAAutoresizingMask { get }
}
struct CAEdgeAntialiasingMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LayerLeftEdge: CAEdgeAntialiasingMask { get }
  static var LayerRightEdge: CAEdgeAntialiasingMask { get }
  static var LayerBottomEdge: CAEdgeAntialiasingMask { get }
  static var LayerTopEdge: CAEdgeAntialiasingMask { get }
}
class CALayer : NSObject, NSCoding, CAMediaTiming {
  init()
  init(layer: AnyObject)
  func presentationLayer() -> AnyObject?
  func modelLayer() -> AnyObject
  class func defaultValueForKey(key: String) -> AnyObject?
  class func needsDisplayForKey(key: String) -> Bool
  func shouldArchiveValueForKey(key: String) -> Bool
  var bounds: CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var anchorPoint: CGPoint
  var anchorPointZ: CGFloat
  var transform: CATransform3D
  func affineTransform() -> CGAffineTransform
  func setAffineTransform(m: CGAffineTransform)
  var frame: CGRect
  var hidden: Bool
  var doubleSided: Bool
  var geometryFlipped: Bool
  func contentsAreFlipped() -> Bool
  var superlayer: CALayer? { get }
  func removeFromSuperlayer()
  var sublayers: [CALayer]?
  func addSublayer(layer: CALayer)
  func insertSublayer(layer: CALayer, atIndex idx: UInt32)
  func insertSublayer(layer: CALayer, below sibling: CALayer?)
  func insertSublayer(layer: CALayer, above sibling: CALayer?)
  func replaceSublayer(layer: CALayer, with layer2: CALayer)
  var sublayerTransform: CATransform3D
  var mask: CALayer?
  var masksToBounds: Bool
  func convertPoint(p: CGPoint, fromLayer l: CALayer?) -> CGPoint
  func convertPoint(p: CGPoint, toLayer l: CALayer?) -> CGPoint
  func convertRect(r: CGRect, fromLayer l: CALayer?) -> CGRect
  func convertRect(r: CGRect, toLayer l: CALayer?) -> CGRect
  func convertTime(t: CFTimeInterval, fromLayer l: CALayer?) -> CFTimeInterval
  func convertTime(t: CFTimeInterval, toLayer l: CALayer?) -> CFTimeInterval
  func hitTest(p: CGPoint) -> CALayer?
  func containsPoint(p: CGPoint) -> Bool
  var contents: AnyObject?
  var contentsRect: CGRect
  var contentsGravity: String
  var contentsScale: CGFloat
  var contentsCenter: CGRect
  var minificationFilter: String
  var magnificationFilter: String
  var minificationFilterBias: Float
  var opaque: Bool
  func display()
  func setNeedsDisplay()
  func setNeedsDisplayInRect(r: CGRect)
  func needsDisplay() -> Bool
  func displayIfNeeded()
  var needsDisplayOnBoundsChange: Bool
  var drawsAsynchronously: Bool
  func drawInContext(ctx: CGContext)
  func renderInContext(ctx: CGContext)
  var edgeAntialiasingMask: CAEdgeAntialiasingMask
  var backgroundColor: CGColor?
  var cornerRadius: CGFloat
  var borderWidth: CGFloat
  var borderColor: CGColor?
  var opacity: Float
  var compositingFilter: AnyObject?
  var filters: [AnyObject]?
  var backgroundFilters: [AnyObject]?
  var shouldRasterize: Bool
  var rasterizationScale: CGFloat
  var shadowColor: CGColor?
  var shadowOpacity: Float
  var shadowOffset: CGSize
  var shadowRadius: CGFloat
  var shadowPath: CGPath?
  var autoresizingMask: CAAutoresizingMask
  var layoutManager: AnyObject?
  func preferredFrameSize() -> CGSize
  func setNeedsLayout()
  func needsLayout() -> Bool
  func layoutIfNeeded()
  func layoutSublayers()
  func resizeSublayersWithOldSize(size: CGSize)
  func resizeWithOldSuperlayerSize(size: CGSize)
  class func defaultActionForKey(event: String) -> CAAction?
  func actionForKey(event: String) -> CAAction?
  var actions: [String : CAAction]?
  func addAnimation(anim: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  func animationKeys() -> [String]?
  func animationForKey(key: String) -> CAAnimation?
  var name: String?
  weak var delegate: @sil_weak AnyObject?
  var style: [NSObject : AnyObject]?
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
}
struct _CALayerIvars {
  var refcount: Int32
  var magic: UInt32
  var layer: UnsafeMutablePointer<Void>
}
extension NSObject {
  class func preferredSizeOfLayer(layer: CALayer) -> CGSize
  func preferredSizeOfLayer(layer: CALayer) -> CGSize
  class func invalidateLayoutOfLayer(layer: CALayer)
  func invalidateLayoutOfLayer(layer: CALayer)
  class func layoutSublayersOfLayer(layer: CALayer)
  func layoutSublayersOfLayer(layer: CALayer)
}
protocol CAAction {
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSNull : CAAction {
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSObject {
  class func displayLayer(layer: CALayer)
  func displayLayer(layer: CALayer)
  class func drawLayer(layer: CALayer, inContext ctx: CGContext)
  func drawLayer(layer: CALayer, inContext ctx: CGContext)
  class func actionForLayer(layer: CALayer, forKey event: String) -> CAAction?
  func actionForLayer(layer: CALayer, forKey event: String) -> CAAction?
}
let kCAGravityCenter: String
let kCAGravityTop: String
let kCAGravityBottom: String
let kCAGravityLeft: String
let kCAGravityRight: String
let kCAGravityTopLeft: String
let kCAGravityTopRight: String
let kCAGravityBottomLeft: String
let kCAGravityBottomRight: String
let kCAGravityResize: String
let kCAGravityResizeAspect: String
let kCAGravityResizeAspectFill: String
let kCAFilterNearest: String
let kCAFilterLinear: String
let kCAFilterTrilinear: String
let kCAOnOrderIn: String
let kCAOnOrderOut: String
let kCATransition: String
protocol CAMediaTiming {
  var beginTime: CFTimeInterval { get set }
  var duration: CFTimeInterval { get set }
  var speed: Float { get set }
  var timeOffset: CFTimeInterval { get set }
  var repeatCount: Float { get set }
  var repeatDuration: CFTimeInterval { get set }
  var autoreverses: Bool { get set }
  var fillMode: String { get set }
}
let kCAFillModeForwards: String
let kCAFillModeBackwards: String
let kCAFillModeBoth: String
let kCAFillModeRemoved: String
class CAMediaTimingFunction : NSObject, NSCoding {
  convenience init(name: String)
  init(controlPoints c1x: Float, _ c1y: Float, _ c2x: Float, _ c2y: Float)
  func getControlPointAtIndex(idx: Int, values ptr: UnsafeMutablePointer<Float>)
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let kCAMediaTimingFunctionLinear: String
let kCAMediaTimingFunctionEaseIn: String
let kCAMediaTimingFunctionEaseOut: String
let kCAMediaTimingFunctionEaseInEaseOut: String
let kCAMediaTimingFunctionDefault: String
protocol CAMetalDrawable : MTLDrawable {
  var texture: MTLTexture { get }
  var layer: CAMetalLayer { get }
}
class CAMetalLayer : CALayer {
  var device: MTLDevice?
  var pixelFormat: MTLPixelFormat
  var framebufferOnly: Bool
  var drawableSize: CGSize
  func nextDrawable() -> CAMetalDrawable?
  var presentsWithTransaction: Bool
  var colorspace: CGColorSpace
  var wantsExtendedDynamicRangeContent: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CAOpenGLLayer : CALayer {
  var asynchronous: Bool
  func canDrawInCGLContext(ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func drawInCGLContext(ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  func copyCGLPixelFormatForDisplayMask(mask: UInt32) -> CGLPixelFormatObj
  func releaseCGLPixelFormat(pf: CGLPixelFormatObj)
  func copyCGLContextForPixelFormat(pf: CGLPixelFormatObj) -> CGLContextObj
  func releaseCGLContext(ctx: CGLContextObj)
  var colorspace: CGColorSpace
  var wantsExtendedDynamicRangeContent: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CARemoteLayerClient : NSObject {
  init(serverPort port: mach_port_t)
  func invalidate()
  var clientId: UInt32 { get }
  var layer: CALayer?
  init()
}
class CARemoteLayerServer : NSObject {
  class func sharedServer() -> CARemoteLayerServer
  var serverPort: mach_port_t { get }
  init()
}
extension CALayer {
   init(remoteClientId client_id: UInt32)
}
class CARenderer : NSObject {
   init(CGLContext ctx: UnsafeMutablePointer<Void>, options dict: [NSObject : AnyObject]?)
  var layer: CALayer?
  var bounds: CGRect
  func beginFrameAtTime(t: CFTimeInterval, timeStamp ts: UnsafeMutablePointer<CVTimeStamp>)
  func updateBounds() -> CGRect
  func addUpdateRect(r: CGRect)
  func render()
  func nextFrameTime() -> CFTimeInterval
  func endFrame()
  init()
}
class CAReplicatorLayer : CALayer {
  var instanceCount: Int
  var preservesDepth: Bool
  var instanceDelay: CFTimeInterval
  var instanceTransform: CATransform3D
  var instanceColor: CGColor?
  var instanceRedOffset: Float
  var instanceGreenOffset: Float
  var instanceBlueOffset: Float
  var instanceAlphaOffset: Float
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CAScrollLayer : CALayer {
  func scrollToPoint(p: CGPoint)
  func scrollToRect(r: CGRect)
  var scrollMode: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
extension CALayer {
  func scrollPoint(p: CGPoint)
  func scrollRectToVisible(r: CGRect)
  var visibleRect: CGRect { get }
}
let kCAScrollNone: String
let kCAScrollVertically: String
let kCAScrollHorizontally: String
let kCAScrollBoth: String
class CAShapeLayer : CALayer {
  var path: CGPath?
  var fillColor: CGColor?
  var fillRule: String
  var strokeColor: CGColor?
  var strokeStart: CGFloat
  var strokeEnd: CGFloat
  var lineWidth: CGFloat
  var miterLimit: CGFloat
  var lineCap: String
  var lineJoin: String
  var lineDashPhase: CGFloat
  var lineDashPattern: [NSNumber]?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
let kCAFillRuleNonZero: String
let kCAFillRuleEvenOdd: String
let kCALineJoinMiter: String
let kCALineJoinRound: String
let kCALineJoinBevel: String
let kCALineCapButt: String
let kCALineCapRound: String
let kCALineCapSquare: String
class CATextLayer : CALayer {
  @NSCopying var string: AnyObject?
  var font: AnyObject?
  var fontSize: CGFloat
  var foregroundColor: CGColor?
  var wrapped: Bool
  var truncationMode: String
  var alignmentMode: String
  var allowsFontSubpixelQuantization: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
let kCATruncationNone: String
let kCATruncationStart: String
let kCATruncationEnd: String
let kCATruncationMiddle: String
let kCAAlignmentNatural: String
let kCAAlignmentLeft: String
let kCAAlignmentRight: String
let kCAAlignmentCenter: String
let kCAAlignmentJustified: String
class CATiledLayer : CALayer {
  class func fadeDuration() -> CFTimeInterval
  var levelsOfDetail: Int
  var levelsOfDetailBias: Int
  var tileSize: CGSize
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CATransaction : NSObject {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class func animationDuration() -> CFTimeInterval
  class func setAnimationDuration(dur: CFTimeInterval)
  class func animationTimingFunction() -> CAMediaTimingFunction?
  class func setAnimationTimingFunction(function: CAMediaTimingFunction?)
  class func disableActions() -> Bool
  class func setDisableActions(flag: Bool)
  class func completionBlock() -> (() -> Void)?
  class func setCompletionBlock(block: (() -> Void)?)
  class func valueForKey(key: String) -> AnyObject?
  class func setValue(anObject: AnyObject?, forKey key: String)
  init()
}
let kCATransactionAnimationDuration: String
let kCATransactionDisableActions: String
let kCATransactionAnimationTimingFunction: String
let kCATransactionCompletionBlock: String
struct CATransform3D {
  var m11: CGFloat
  var m12: CGFloat
  var m13: CGFloat
  var m14: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var m23: CGFloat
  var m24: CGFloat
  var m31: CGFloat
  var m32: CGFloat
  var m33: CGFloat
  var m34: CGFloat
  var m41: CGFloat
  var m42: CGFloat
  var m43: CGFloat
  var m44: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m13: CGFloat, m14: CGFloat, m21: CGFloat, m22: CGFloat, m23: CGFloat, m24: CGFloat, m31: CGFloat, m32: CGFloat, m33: CGFloat, m34: CGFloat, m41: CGFloat, m42: CGFloat, m43: CGFloat, m44: CGFloat)
}
let CATransform3DIdentity: CATransform3D
func CATransform3DIsIdentity(t: CATransform3D) -> Bool
func CATransform3DEqualToTransform(a: CATransform3D, _ b: CATransform3D) -> Bool
func CATransform3DMakeTranslation(tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
func CATransform3DMakeScale(sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
func CATransform3DMakeRotation(angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
func CATransform3DTranslate(t: CATransform3D, _ tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
func CATransform3DScale(t: CATransform3D, _ sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
func CATransform3DRotate(t: CATransform3D, _ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
func CATransform3DConcat(a: CATransform3D, _ b: CATransform3D) -> CATransform3D
func CATransform3DInvert(t: CATransform3D) -> CATransform3D
func CATransform3DMakeAffineTransform(m: CGAffineTransform) -> CATransform3D
func CATransform3DIsAffine(t: CATransform3D) -> Bool
func CATransform3DGetAffineTransform(t: CATransform3D) -> CGAffineTransform
extension NSValue {
   init(CATransform3D t: CATransform3D)
  var CATransform3DValue: CATransform3D { get }
}
class CATransformLayer : CALayer {
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CAValueFunction : NSObject, NSCoding {
  convenience init?(name: String)
  var name: String { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let kCAValueFunctionRotateX: String
let kCAValueFunctionRotateY: String
let kCAValueFunctionRotateZ: String
let kCAValueFunctionScale: String
let kCAValueFunctionScaleX: String
let kCAValueFunctionScaleY: String
let kCAValueFunctionScaleZ: String
let kCAValueFunctionTranslate: String
let kCAValueFunctionTranslateX: String
let kCAValueFunctionTranslateY: String
let kCAValueFunctionTranslateZ: String
