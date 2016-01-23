
class CAAnimation : Object, Coding, Copying, CAMediaTiming, CAAction {
  class func defaultValueForKey(key: String) -> AnyObject?
  func shouldArchiveValueForKey(key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: AnyObject?
  var isRemovedOnCompletion: Bool
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [Object : AnyObject]?)
}
extension Object {
  class func animationDidStart(anim: CAAnimation)
  func animationDidStart(anim: CAAnimation)
  class func animationDidStop(anim: CAAnimation, finished flag: Bool)
  func animationDidStop(anim: CAAnimation, finished flag: Bool)
}
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var isAdditive: Bool
  var isCumulative: Bool
  var valueFunction: CAValueFunction?
  init()
  init?(coder aDecoder: Coder)
}
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: AnyObject?
  var toValue: AnyObject?
  var byValue: AnyObject?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: Coder)
}
class CAKeyframeAnimation : CAPropertyAnimation {
  var values: [AnyObject]?
  var path: CGPath?
  var keyTimes: [Number]?
  var timingFunctions: [CAMediaTimingFunction]?
  var calculationMode: String
  var tensionValues: [Number]?
  var continuityValues: [Number]?
  var biasValues: [Number]?
  var rotationMode: String?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
}
class CATransition : CAAnimation {
  var type: String
  var subtype: String?
  var startProgress: Float
  var endProgress: Float
  var filter: AnyObject?
  init()
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
}
var __MAC_10_12: Int32 { get }
var CA_WARN_DEPRECATED: Int32 { get }
func CACurrentMediaTime() -> CFTimeInterval
class CADisplayLink : Object {
   init(target: AnyObject, selector sel: Selector)
  func addTo(runloop: RunLoop, forMode mode: String)
  func removeFrom(runloop: RunLoop, forMode mode: String)
  func invalidate()
  var timestamp: CFTimeInterval { get }
  var duration: CFTimeInterval { get }
  var isPaused: Bool
  var frameInterval: Int
  init()
}
class CAEAGLLayer : CALayer, EAGLDrawable {
  var presentsWithTransaction: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
  var drawableProperties: [Object : AnyObject]!
}
class CAEmitterBehavior : Object, Coding {
  class func behaviorTypes() -> [String]
  init(type: String)
  var type: String { get }
  var name: String?
  var isEnabled: Bool
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let kCAEmitterBehaviorWave: String
let kCAEmitterBehaviorDrag: String
let kCAEmitterBehaviorAlignToMotion: String
let kCAEmitterBehaviorValueOverLife: String
let kCAEmitterBehaviorColorOverLife: String
let kCAEmitterBehaviorLight: String
let kCAEmitterBehaviorAttractor: String
class CAEmitterCell : Object, Coding, CAMediaTiming {
  class func defaultValueForKey(key: String) -> AnyObject?
  func shouldArchiveValueForKey(key: String) -> Bool
  var name: String?
  var isEnabled: Bool
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
  var style: [Object : AnyObject]?
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
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
  var locations: [Number]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
let kCAGradientLayerAxial: String
struct CAEdgeAntialiasingMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LayerLeftEdge: CAEdgeAntialiasingMask { get }
  static var LayerRightEdge: CAEdgeAntialiasingMask { get }
  static var LayerBottomEdge: CAEdgeAntialiasingMask { get }
  static var LayerTopEdge: CAEdgeAntialiasingMask { get }
}
class CALayer : Object, Coding, CAMediaTiming {
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
  var isHidden: Bool
  var isDoubleSided: Bool
  var isGeometryFlipped: Bool
  func contentsAreFlipped() -> Bool
  var superlayer: CALayer? { get }
  func removeFromSuperlayer()
  var sublayers: [CALayer]?
  func addSublayer(layer: CALayer)
  func insertSublayer(layer: CALayer, at idx: UInt32)
  func insertSublayer(layer: CALayer, below sibling: CALayer?)
  func insertSublayer(layer: CALayer, above sibling: CALayer?)
  func replaceSublayer(layer: CALayer, with layer2: CALayer)
  var sublayerTransform: CATransform3D
  var mask: CALayer?
  var masksToBounds: Bool
  func convert(p: CGPoint, from l: CALayer?) -> CGPoint
  func convert(p: CGPoint, to l: CALayer?) -> CGPoint
  func convert(r: CGRect, from l: CALayer?) -> CGRect
  func convert(r: CGRect, to l: CALayer?) -> CGRect
  func convertTime(t: CFTimeInterval, from l: CALayer?) -> CFTimeInterval
  func convertTime(t: CFTimeInterval, to l: CALayer?) -> CFTimeInterval
  func hitTest(p: CGPoint) -> CALayer?
  func contains(p: CGPoint) -> Bool
  var contents: AnyObject?
  var contentsRect: CGRect
  var contentsGravity: String
  var contentsScale: CGFloat
  var contentsCenter: CGRect
  var minificationFilter: String
  var magnificationFilter: String
  var minificationFilterBias: Float
  var isOpaque: Bool
  func display()
  func setNeedsDisplay()
  func setNeedsDisplayIn(r: CGRect)
  func needsDisplay() -> Bool
  func displayIfNeeded()
  var needsDisplayOnBoundsChange: Bool
  var drawsAsynchronously: Bool
  func drawIn(ctx: CGContext)
  func renderIn(ctx: CGContext)
  var edgeAntialiasingMask: CAEdgeAntialiasingMask
  var allowsEdgeAntialiasing: Bool
  var backgroundColor: CGColor?
  var cornerRadius: CGFloat
  var borderWidth: CGFloat
  var borderColor: CGColor?
  var opacity: Float
  var allowsGroupOpacity: Bool
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
  func preferredFrameSize() -> CGSize
  func setNeedsLayout()
  func needsLayout() -> Bool
  func layoutIfNeeded()
  func layoutSublayers()
  class func defaultActionForKey(event: String) -> CAAction?
  func actionForKey(event: String) -> CAAction?
  var actions: [String : CAAction]?
  func add(anim: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  func animationKeys() -> [String]?
  func animationForKey(key: String) -> CAAnimation?
  var name: String?
  weak var delegate: @sil_weak AnyObject?
  var style: [Object : AnyObject]?
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
protocol CAAction {
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [Object : AnyObject]?)
}
extension Null : CAAction {
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [Object : AnyObject]?)
}
extension Object {
  class func display(layer: CALayer)
  func display(layer: CALayer)
  class func draw(layer: CALayer, in ctx: CGContext)
  func draw(layer: CALayer, in ctx: CGContext)
  class func layoutSublayersOf(layer: CALayer)
  func layoutSublayersOf(layer: CALayer)
  class func actionFor(layer: CALayer, forKey event: String) -> CAAction?
  func actionFor(layer: CALayer, forKey event: String) -> CAAction?
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
class CAMediaTimingFunction : Object, Coding {
  convenience init(name: String)
  init(controlPoints c1x: Float, _ c1y: Float, _ c2x: Float, _ c2y: Float)
  func getControlPointAt(idx: Int, values ptr: UnsafeMutablePointer<Float>)
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
}
class CAScrollLayer : CALayer {
  func scrollTo(p: CGPoint)
  func scrollTo(r: CGRect)
  var scrollMode: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
extension CALayer {
  func scroll(p: CGPoint)
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
  var lineDashPattern: [Number]?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
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
  var isWrapped: Bool
  var truncationMode: String
  var alignmentMode: String
  var allowsFontSubpixelQuantization: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
}
class CATransaction : Object {
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
extension Value {
   init(caTransform3D t: CATransform3D)
  var caTransform3DValue: CATransform3D { get }
}
class CATransformLayer : CALayer {
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
class CAValueFunction : Object, Coding {
  convenience init?(name: String)
  var name: String { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
