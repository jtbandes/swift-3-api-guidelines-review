
struct CGAffineTransform {
  var a: CGFloat
  var b: CGFloat
  var c: CGFloat
  var d: CGFloat
  var tx: CGFloat
  var ty: CGFloat
  init()
  init(a: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat, tx: CGFloat, ty: CGFloat)
}
let CGAffineTransformIdentity: CGAffineTransform
func CGAffineTransformMake(a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func CGAffineTransformMakeTranslation(tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func CGAffineTransformMakeScale(sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
func CGAffineTransformMakeRotation(angle: CGFloat) -> CGAffineTransform
func CGAffineTransformIsIdentity(t: CGAffineTransform) -> Bool
func CGAffineTransformTranslate(t: CGAffineTransform, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func CGAffineTransformScale(t: CGAffineTransform, _ sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
func CGAffineTransformRotate(t: CGAffineTransform, _ angle: CGFloat) -> CGAffineTransform
func CGAffineTransformInvert(t: CGAffineTransform) -> CGAffineTransform
func CGAffineTransformConcat(t1: CGAffineTransform, _ t2: CGAffineTransform) -> CGAffineTransform
func CGAffineTransformEqualToTransform(t1: CGAffineTransform, _ t2: CGAffineTransform) -> Bool
func CGPointApplyAffineTransform(point: CGPoint, _ t: CGAffineTransform) -> CGPoint
func CGSizeApplyAffineTransform(size: CGSize, _ t: CGAffineTransform) -> CGSize
func CGRectApplyAffineTransform(rect: CGRect, _ t: CGAffineTransform) -> CGRect
func __CGAffineTransformMake(a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func __CGPointApplyAffineTransform(point: CGPoint, _ t: CGAffineTransform) -> CGPoint
func __CGSizeApplyAffineTransform(size: CGSize, _ t: CGAffineTransform) -> CGSize
var CGFLOAT_IS_DOUBLE: Int32 { get }
var CGFLOAT_MIN: Double { get }
var CGFLOAT_MAX: Double { get }
var CGFLOAT_DEFINED: Int32 { get }
typealias CGBitmapContextReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
func CGBitmapContextCreateWithData(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32, _ releaseCallback: CGBitmapContextReleaseDataCallback?, _ releaseInfo: UnsafeMutablePointer<Void>) -> CGContext?
func CGBitmapContextCreate(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32) -> CGContext?
func CGBitmapContextGetData(context: CGContext?) -> UnsafeMutablePointer<Void>
func CGBitmapContextGetWidth(context: CGContext?) -> Int
func CGBitmapContextGetHeight(context: CGContext?) -> Int
func CGBitmapContextGetBitsPerComponent(context: CGContext?) -> Int
func CGBitmapContextGetBitsPerPixel(context: CGContext?) -> Int
func CGBitmapContextGetBytesPerRow(context: CGContext?) -> Int
func CGBitmapContextGetColorSpace(context: CGContext?) -> CGColorSpace?
func CGBitmapContextGetAlphaInfo(context: CGContext?) -> CGImageAlphaInfo
func CGBitmapContextGetBitmapInfo(context: CGContext?) -> CGBitmapInfo
func CGBitmapContextCreateImage(context: CGContext?) -> CGImage?
class CGColor {
}
typealias CGColorRef = CGColor
func CGColorCreate(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>) -> CGColor?
func CGColorCreateGenericGray(gray: CGFloat, _ alpha: CGFloat) -> CGColor
func CGColorCreateGenericRGB(red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> CGColor
func CGColorCreateGenericCMYK(cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat) -> CGColor
func CGColorGetConstantColor(colorName: CFString?) -> CGColor?
func CGColorCreateWithPattern(space: CGColorSpace?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>) -> CGColor?
func CGColorCreateCopy(color: CGColor?) -> CGColor?
func CGColorCreateCopyWithAlpha(color: CGColor?, _ alpha: CGFloat) -> CGColor?
func CGColorCreateCopyByMatchingToColorSpace(_: CGColorSpace?, _ intent: CGColorRenderingIntent, _ color: CGColor?, _ options: CFDictionary?) -> CGColor?
func CGColorEqualToColor(color1: CGColor?, _ color2: CGColor?) -> Bool
func CGColorGetNumberOfComponents(color: CGColor?) -> Int
func CGColorGetComponents(color: CGColor?) -> UnsafePointer<CGFloat>
func CGColorGetAlpha(color: CGColor?) -> CGFloat
func CGColorGetColorSpace(color: CGColor?) -> CGColorSpace?
func CGColorGetPattern(color: CGColor?) -> CGPattern?
func CGColorGetTypeID() -> CFTypeID
let kCGColorWhite: CFString
let kCGColorBlack: CFString
let kCGColorClear: CFString
class CGColorSpace {
}
typealias CGColorSpaceRef = CGColorSpace
enum CGColorRenderingIntent : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case RenderingIntentDefault
  case RenderingIntentAbsoluteColorimetric
  case RenderingIntentRelativeColorimetric
  case RenderingIntentPerceptual
  case RenderingIntentSaturation
}
enum CGColorSpaceModel : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Monochrome
  case RGB
  case CMYK
  case Lab
  case DeviceN
  case Indexed
  case Pattern
}
let kCGColorSpaceGenericGray: CFString
let kCGColorSpaceGenericRGB: CFString
let kCGColorSpaceGenericCMYK: CFString
let kCGColorSpaceDisplayP3: CFString
let kCGColorSpaceGenericRGBLinear: CFString
let kCGColorSpaceAdobeRGB1998: CFString
let kCGColorSpaceSRGB: CFString
let kCGColorSpaceGenericGrayGamma2_2: CFString
let kCGColorSpaceGenericXYZ: CFString
let kCGColorSpaceACESCGLinear: CFString
let kCGColorSpaceITUR_709: CFString
let kCGColorSpaceITUR_2020: CFString
let kCGColorSpaceROMMRGB: CFString
let kCGColorSpaceDCIP3: CFString
func CGColorSpaceCreateDeviceGray() -> CGColorSpace?
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace?
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace?
func CGColorSpaceCreateCalibratedGray(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: CGFloat) -> CGColorSpace?
func CGColorSpaceCreateCalibratedRGB(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: UnsafePointer<CGFloat>, _ matrix: UnsafePointer<CGFloat>) -> CGColorSpace?
func CGColorSpaceCreateLab(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ range: UnsafePointer<CGFloat>) -> CGColorSpace?
func CGColorSpaceCreateWithICCProfile(data: CFData?) -> CGColorSpace?
func CGColorSpaceCreateICCBased(nComponents: Int, _ range: UnsafePointer<CGFloat>, _ profile: CGDataProvider?, _ alternate: CGColorSpace?) -> CGColorSpace?
func CGColorSpaceCreateIndexed(baseSpace: CGColorSpace?, _ lastIndex: Int, _ colorTable: UnsafePointer<UInt8>) -> CGColorSpace?
func CGColorSpaceCreatePattern(baseSpace: CGColorSpace?) -> CGColorSpace?
func CGColorSpaceCreateWithPlatformColorSpace(ref: UnsafePointer<Void>) -> CGColorSpace?
func CGColorSpaceCreateWithName(name: CFString?) -> CGColorSpace?
func CGColorSpaceCopyName(space: CGColorSpace?) -> CFString?
func CGColorSpaceGetTypeID() -> CFTypeID
func CGColorSpaceGetNumberOfComponents(space: CGColorSpace?) -> Int
func CGColorSpaceGetModel(space: CGColorSpace?) -> CGColorSpaceModel
func CGColorSpaceGetBaseColorSpace(space: CGColorSpace?) -> CGColorSpace?
func CGColorSpaceGetColorTableCount(space: CGColorSpace?) -> Int
func CGColorSpaceGetColorTable(space: CGColorSpace?, _ table: UnsafeMutablePointer<UInt8>)
func CGColorSpaceCopyICCProfile(space: CGColorSpace?) -> CFData?
class CGContext {
}
typealias CGContextRef = CGContext
enum CGPathDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Fill
  case EOFill
  case Stroke
  case FillStroke
  case EOFillStroke
}
enum CGTextDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Fill
  case Stroke
  case FillStroke
  case Invisible
  case FillClip
  case StrokeClip
  case FillStrokeClip
  case Clip
}
enum CGInterpolationQuality : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Default
  case None
  case Low
  case Medium
  case High
}
enum CGBlendMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Normal
  case Multiply
  case Screen
  case Overlay
  case Darken
  case Lighten
  case ColorDodge
  case ColorBurn
  case SoftLight
  case HardLight
  case Difference
  case Exclusion
  case Hue
  case Saturation
  case Color
  case Luminosity
  case Clear
  case Copy
  case SourceIn
  case SourceOut
  case SourceAtop
  case DestinationOver
  case DestinationIn
  case DestinationOut
  case DestinationAtop
  case XOR
  case PlusDarker
  case PlusLighter
}
func CGContextGetTypeID() -> CFTypeID
func CGContextSaveGState(c: CGContext?)
func CGContextRestoreGState(c: CGContext?)
func CGContextScaleCTM(c: CGContext?, _ sx: CGFloat, _ sy: CGFloat)
func CGContextTranslateCTM(c: CGContext?, _ tx: CGFloat, _ ty: CGFloat)
func CGContextRotateCTM(c: CGContext?, _ angle: CGFloat)
func CGContextConcatCTM(c: CGContext?, _ transform: CGAffineTransform)
func CGContextGetCTM(c: CGContext?) -> CGAffineTransform
func CGContextSetLineWidth(c: CGContext?, _ width: CGFloat)
func CGContextSetLineCap(c: CGContext?, _ cap: CGLineCap)
func CGContextSetLineJoin(c: CGContext?, _ join: CGLineJoin)
func CGContextSetMiterLimit(c: CGContext?, _ limit: CGFloat)
func CGContextSetLineDash(c: CGContext?, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int)
func CGContextSetFlatness(c: CGContext?, _ flatness: CGFloat)
func CGContextSetAlpha(c: CGContext?, _ alpha: CGFloat)
func CGContextSetBlendMode(c: CGContext?, _ mode: CGBlendMode)
func CGContextBeginPath(c: CGContext?)
func CGContextMoveToPoint(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
func CGContextAddLineToPoint(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
func CGContextAddCurveToPoint(c: CGContext?, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
func CGContextAddQuadCurveToPoint(c: CGContext?, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
func CGContextClosePath(c: CGContext?)
func CGContextAddRect(c: CGContext?, _ rect: CGRect)
func CGContextAddRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
func CGContextAddLines(c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)
func CGContextAddEllipseInRect(c: CGContext?, _ rect: CGRect)
func CGContextAddArc(c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Int32)
func CGContextAddArcToPoint(c: CGContext?, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
func CGContextAddPath(c: CGContext?, _ path: CGPath?)
func CGContextReplacePathWithStrokedPath(c: CGContext?)
func CGContextIsPathEmpty(c: CGContext?) -> Bool
func CGContextGetPathCurrentPoint(c: CGContext?) -> CGPoint
func CGContextGetPathBoundingBox(c: CGContext?) -> CGRect
func CGContextCopyPath(c: CGContext?) -> CGPath?
func CGContextPathContainsPoint(c: CGContext?, _ point: CGPoint, _ mode: CGPathDrawingMode) -> Bool
func CGContextDrawPath(c: CGContext?, _ mode: CGPathDrawingMode)
func CGContextFillPath(c: CGContext?)
func CGContextEOFillPath(c: CGContext?)
func CGContextStrokePath(c: CGContext?)
func CGContextFillRect(c: CGContext?, _ rect: CGRect)
func CGContextFillRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
func CGContextStrokeRect(c: CGContext?, _ rect: CGRect)
func CGContextStrokeRectWithWidth(c: CGContext?, _ rect: CGRect, _ width: CGFloat)
func CGContextClearRect(c: CGContext?, _ rect: CGRect)
func CGContextFillEllipseInRect(c: CGContext?, _ rect: CGRect)
func CGContextStrokeEllipseInRect(c: CGContext?, _ rect: CGRect)
func CGContextStrokeLineSegments(c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)
func CGContextClip(c: CGContext?)
func CGContextEOClip(c: CGContext?)
func CGContextClipToMask(c: CGContext?, _ rect: CGRect, _ mask: CGImage?)
func CGContextGetClipBoundingBox(c: CGContext?) -> CGRect
func CGContextClipToRect(c: CGContext?, _ rect: CGRect)
func CGContextClipToRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
func CGContextSetFillColorWithColor(c: CGContext?, _ color: CGColor?)
func CGContextSetStrokeColorWithColor(c: CGContext?, _ color: CGColor?)
func CGContextSetFillColorSpace(c: CGContext?, _ space: CGColorSpace?)
func CGContextSetStrokeColorSpace(c: CGContext?, _ space: CGColorSpace?)
func CGContextSetFillColor(c: CGContext?, _ components: UnsafePointer<CGFloat>)
func CGContextSetStrokeColor(c: CGContext?, _ components: UnsafePointer<CGFloat>)
func CGContextSetFillPattern(c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
func CGContextSetStrokePattern(c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
func CGContextSetPatternPhase(c: CGContext?, _ phase: CGSize)
func CGContextSetGrayFillColor(c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
func CGContextSetGrayStrokeColor(c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
func CGContextSetRGBFillColor(c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
func CGContextSetRGBStrokeColor(c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
func CGContextSetCMYKFillColor(c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)
func CGContextSetCMYKStrokeColor(c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)
func CGContextSetRenderingIntent(c: CGContext?, _ intent: CGColorRenderingIntent)
func CGContextDrawImage(c: CGContext?, _ rect: CGRect, _ image: CGImage?)
func CGContextDrawTiledImage(c: CGContext?, _ rect: CGRect, _ image: CGImage?)
func CGContextGetInterpolationQuality(c: CGContext?) -> CGInterpolationQuality
func CGContextSetInterpolationQuality(c: CGContext?, _ quality: CGInterpolationQuality)
func CGContextSetShadowWithColor(c: CGContext?, _ offset: CGSize, _ blur: CGFloat, _ color: CGColor?)
func CGContextSetShadow(c: CGContext?, _ offset: CGSize, _ blur: CGFloat)
func CGContextDrawLinearGradient(c: CGContext?, _ gradient: CGGradient?, _ startPoint: CGPoint, _ endPoint: CGPoint, _ options: CGGradientDrawingOptions)
func CGContextDrawRadialGradient(c: CGContext?, _ gradient: CGGradient?, _ startCenter: CGPoint, _ startRadius: CGFloat, _ endCenter: CGPoint, _ endRadius: CGFloat, _ options: CGGradientDrawingOptions)
func CGContextDrawShading(c: CGContext?, _ shading: CGShading?)
func CGContextSetCharacterSpacing(c: CGContext?, _ spacing: CGFloat)
func CGContextSetTextPosition(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
func CGContextGetTextPosition(c: CGContext?) -> CGPoint
func CGContextSetTextMatrix(c: CGContext?, _ t: CGAffineTransform)
func CGContextGetTextMatrix(c: CGContext?) -> CGAffineTransform
func CGContextSetTextDrawingMode(c: CGContext?, _ mode: CGTextDrawingMode)
func CGContextSetFont(c: CGContext?, _ font: CGFont?)
func CGContextSetFontSize(c: CGContext?, _ size: CGFloat)
func CGContextShowGlyphsAtPositions(c: CGContext?, _ glyphs: UnsafePointer<CGGlyph>, _ Lpositions: UnsafePointer<CGPoint>, _ count: Int)
func CGContextDrawPDFPage(c: CGContext?, _ page: CGPDFPage?)
func CGContextBeginPage(c: CGContext?, _ mediaBox: UnsafePointer<CGRect>)
func CGContextEndPage(c: CGContext?)
func CGContextFlush(c: CGContext?)
func CGContextSynchronize(c: CGContext?)
func CGContextSetShouldAntialias(c: CGContext?, _ shouldAntialias: Bool)
func CGContextSetAllowsAntialiasing(c: CGContext?, _ allowsAntialiasing: Bool)
func CGContextSetShouldSmoothFonts(c: CGContext?, _ shouldSmoothFonts: Bool)
func CGContextSetAllowsFontSmoothing(c: CGContext?, _ allowsFontSmoothing: Bool)
func CGContextSetShouldSubpixelPositionFonts(c: CGContext?, _ shouldSubpixelPositionFonts: Bool)
func CGContextSetAllowsFontSubpixelPositioning(c: CGContext?, _ allowsFontSubpixelPositioning: Bool)
func CGContextSetShouldSubpixelQuantizeFonts(c: CGContext?, _ shouldSubpixelQuantizeFonts: Bool)
func CGContextSetAllowsFontSubpixelQuantization(c: CGContext?, _ allowsFontSubpixelQuantization: Bool)
func CGContextBeginTransparencyLayer(c: CGContext?, _ auxiliaryInfo: CFDictionary?)
func CGContextBeginTransparencyLayerWithRect(c: CGContext?, _ rect: CGRect, _ auxInfo: CFDictionary?)
func CGContextEndTransparencyLayer(c: CGContext?)
func CGContextGetUserSpaceToDeviceSpaceTransform(c: CGContext?) -> CGAffineTransform
func CGContextConvertPointToDeviceSpace(c: CGContext?, _ point: CGPoint) -> CGPoint
func CGContextConvertPointToUserSpace(c: CGContext?, _ point: CGPoint) -> CGPoint
func CGContextConvertSizeToDeviceSpace(c: CGContext?, _ size: CGSize) -> CGSize
func CGContextConvertSizeToUserSpace(c: CGContext?, _ size: CGSize) -> CGSize
func CGContextConvertRectToDeviceSpace(c: CGContext?, _ rect: CGRect) -> CGRect
func CGContextConvertRectToUserSpace(c: CGContext?, _ rect: CGRect) -> CGRect
class CGDataConsumer {
}
typealias CGDataConsumerRef = CGDataConsumer
typealias CGDataConsumerPutBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Int
typealias CGDataConsumerReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGDataConsumerCallbacks {
  var putBytes: CGDataConsumerPutBytesCallback?
  var releaseConsumer: CGDataConsumerReleaseInfoCallback?
  init()
  init(putBytes: CGDataConsumerPutBytesCallback?, releaseConsumer: CGDataConsumerReleaseInfoCallback?)
}
func CGDataConsumerGetTypeID() -> CFTypeID
func CGDataConsumerCreate(info: UnsafeMutablePointer<Void>, _ cbks: UnsafePointer<CGDataConsumerCallbacks>) -> CGDataConsumer?
func CGDataConsumerCreateWithURL(url: CFURL?) -> CGDataConsumer?
func CGDataConsumerCreateWithCFData(data: CFMutableData?) -> CGDataConsumer?
class CGDataProvider {
}
typealias CGDataProviderRef = CGDataProvider
typealias CGDataProviderGetBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Int
typealias CGDataProviderSkipForwardCallback = @convention(c) (UnsafeMutablePointer<Void>, off_t) -> off_t
typealias CGDataProviderRewindCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGDataProviderReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGDataProviderSequentialCallbacks {
  var version: UInt32
  var getBytes: CGDataProviderGetBytesCallback?
  var skipForward: CGDataProviderSkipForwardCallback?
  var rewind: CGDataProviderRewindCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version: UInt32, getBytes: CGDataProviderGetBytesCallback?, skipForward: CGDataProviderSkipForwardCallback?, rewind: CGDataProviderRewindCallback?, releaseInfo: CGDataProviderReleaseInfoCallback?)
}
typealias CGDataProviderGetBytePointerCallback = @convention(c) (UnsafeMutablePointer<Void>) -> UnsafePointer<Void>
typealias CGDataProviderReleaseBytePointerCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>) -> Void
typealias CGDataProviderGetBytesAtPositionCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, off_t, Int) -> Int
struct CGDataProviderDirectCallbacks {
  var version: UInt32
  var getBytePointer: CGDataProviderGetBytePointerCallback?
  var releaseBytePointer: CGDataProviderReleaseBytePointerCallback?
  var getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version: UInt32, getBytePointer: CGDataProviderGetBytePointerCallback?, releaseBytePointer: CGDataProviderReleaseBytePointerCallback?, getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?, releaseInfo: CGDataProviderReleaseInfoCallback?)
}
func CGDataProviderGetTypeID() -> CFTypeID
func CGDataProviderCreateSequential(info: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<CGDataProviderSequentialCallbacks>) -> CGDataProvider?
func CGDataProviderCreateDirect(info: UnsafeMutablePointer<Void>, _ size: off_t, _ callbacks: UnsafePointer<CGDataProviderDirectCallbacks>) -> CGDataProvider?
typealias CGDataProviderReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Void
func CGDataProviderCreateWithData(info: UnsafeMutablePointer<Void>, _ data: UnsafePointer<Void>, _ size: Int, _ releaseData: CGDataProviderReleaseDataCallback?) -> CGDataProvider?
func CGDataProviderCreateWithCFData(data: CFData?) -> CGDataProvider?
func CGDataProviderCreateWithURL(url: CFURL?) -> CGDataProvider?
func CGDataProviderCreateWithFilename(filename: UnsafePointer<Int8>) -> CGDataProvider?
func CGDataProviderCopyData(provider: CGDataProvider?) -> CFData?
typealias CGDirectDisplayID = UInt32
typealias CGOpenGLDisplayMask = UInt32
typealias CGRefreshRate = Double
class CGDisplayMode {
}
typealias CGDisplayModeRef = CGDisplayMode
func CGMainDisplayID() -> CGDirectDisplayID
func CGGetDisplaysWithPoint(point: CGPoint, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
func CGGetDisplaysWithRect(rect: CGRect, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
func CGGetDisplaysWithOpenGLDisplayMask(mask: CGOpenGLDisplayMask, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
func CGGetActiveDisplayList(maxDisplays: UInt32, _ activeDisplays: UnsafeMutablePointer<CGDirectDisplayID>, _ displayCount: UnsafeMutablePointer<UInt32>) -> CGError
func CGGetOnlineDisplayList(maxDisplays: UInt32, _ onlineDisplays: UnsafeMutablePointer<CGDirectDisplayID>, _ displayCount: UnsafeMutablePointer<UInt32>) -> CGError
func CGDisplayIDToOpenGLDisplayMask(display: CGDirectDisplayID) -> CGOpenGLDisplayMask
func CGOpenGLDisplayMaskToDisplayID(mask: CGOpenGLDisplayMask) -> CGDirectDisplayID
func CGDisplayBounds(display: CGDirectDisplayID) -> CGRect
func CGDisplayPixelsWide(display: CGDirectDisplayID) -> Int
func CGDisplayPixelsHigh(display: CGDirectDisplayID) -> Int
func CGDisplayCopyAllDisplayModes(display: CGDirectDisplayID, _ options: CFDictionary?) -> CFArray?
let kCGDisplayShowDuplicateLowResolutionModes: CFString
func CGDisplayCopyDisplayMode(display: CGDirectDisplayID) -> CGDisplayMode?
func CGDisplaySetDisplayMode(display: CGDirectDisplayID, _ mode: CGDisplayMode?, _ options: CFDictionary?) -> CGError
func CGDisplayModeGetWidth(mode: CGDisplayMode?) -> Int
func CGDisplayModeGetHeight(mode: CGDisplayMode?) -> Int
func CGDisplayModeCopyPixelEncoding(mode: CGDisplayMode?) -> CFString?
func CGDisplayModeGetRefreshRate(mode: CGDisplayMode?) -> Double
func CGDisplayModeGetIOFlags(mode: CGDisplayMode?) -> UInt32
func CGDisplayModeGetIODisplayModeID(mode: CGDisplayMode?) -> Int32
func CGDisplayModeIsUsableForDesktopGUI(mode: CGDisplayMode?) -> Bool
func CGDisplayModeGetTypeID() -> CFTypeID
func CGDisplayModeGetPixelWidth(mode: CGDisplayMode?) -> Int
func CGDisplayModeGetPixelHeight(mode: CGDisplayMode?) -> Int
typealias CGGammaValue = Float
func CGSetDisplayTransferByFormula(display: CGDirectDisplayID, _ redMin: CGGammaValue, _ redMax: CGGammaValue, _ redGamma: CGGammaValue, _ greenMin: CGGammaValue, _ greenMax: CGGammaValue, _ greenGamma: CGGammaValue, _ blueMin: CGGammaValue, _ blueMax: CGGammaValue, _ blueGamma: CGGammaValue) -> CGError
func CGGetDisplayTransferByFormula(display: CGDirectDisplayID, _ redMin: UnsafeMutablePointer<CGGammaValue>, _ redMax: UnsafeMutablePointer<CGGammaValue>, _ redGamma: UnsafeMutablePointer<CGGammaValue>, _ greenMin: UnsafeMutablePointer<CGGammaValue>, _ greenMax: UnsafeMutablePointer<CGGammaValue>, _ greenGamma: UnsafeMutablePointer<CGGammaValue>, _ blueMin: UnsafeMutablePointer<CGGammaValue>, _ blueMax: UnsafeMutablePointer<CGGammaValue>, _ blueGamma: UnsafeMutablePointer<CGGammaValue>) -> CGError
func CGDisplayGammaTableCapacity(display: CGDirectDisplayID) -> UInt32
func CGSetDisplayTransferByTable(display: CGDirectDisplayID, _ tableSize: UInt32, _ redTable: UnsafePointer<CGGammaValue>, _ greenTable: UnsafePointer<CGGammaValue>, _ blueTable: UnsafePointer<CGGammaValue>) -> CGError
func CGGetDisplayTransferByTable(display: CGDirectDisplayID, _ capacity: UInt32, _ redTable: UnsafeMutablePointer<CGGammaValue>, _ greenTable: UnsafeMutablePointer<CGGammaValue>, _ blueTable: UnsafeMutablePointer<CGGammaValue>, _ sampleCount: UnsafeMutablePointer<UInt32>) -> CGError
func CGSetDisplayTransferByByteTable(display: CGDirectDisplayID, _ tableSize: UInt32, _ redTable: UnsafePointer<UInt8>, _ greenTable: UnsafePointer<UInt8>, _ blueTable: UnsafePointer<UInt8>) -> CGError
func CGDisplayRestoreColorSyncSettings()
struct CGCaptureOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NoOptions: CGCaptureOptions { get }
  static var NoFill: CGCaptureOptions { get }
}
func CGDisplayCapture(display: CGDirectDisplayID) -> CGError
func CGDisplayCaptureWithOptions(display: CGDirectDisplayID, _ options: CGCaptureOptions) -> CGError
func CGDisplayRelease(display: CGDirectDisplayID) -> CGError
func CGCaptureAllDisplays() -> CGError
func CGCaptureAllDisplaysWithOptions(options: CGCaptureOptions) -> CGError
func CGReleaseAllDisplays() -> CGError
func CGShieldingWindowID(display: CGDirectDisplayID) -> UInt32
func CGShieldingWindowLevel() -> Int32
func CGDisplayCreateImage(displayID: CGDirectDisplayID) -> CGImage?
func CGDisplayCreateImageForRect(display: CGDirectDisplayID, _ rect: CGRect) -> CGImage?
func CGDisplayHideCursor(display: CGDirectDisplayID) -> CGError
func CGDisplayShowCursor(display: CGDirectDisplayID) -> CGError
func CGDisplayMoveCursorToPoint(display: CGDirectDisplayID, _ point: CGPoint) -> CGError
func CGGetLastMouseDelta(deltaX: UnsafeMutablePointer<Int32>, _ deltaY: UnsafeMutablePointer<Int32>)
func CGDisplayGetDrawingContext(display: CGDirectDisplayID) -> CGContext?
var kCGDisplayWidth: String { get }
var kCGDisplayHeight: String { get }
var kCGDisplayMode: String { get }
var kCGDisplayBitsPerPixel: String { get }
var kCGDisplayBitsPerSample: String { get }
var kCGDisplaySamplesPerPixel: String { get }
var kCGDisplayRefreshRate: String { get }
var kCGDisplayModeUsableForDesktopGUI: String { get }
var kCGDisplayIOFlags: String { get }
var kCGDisplayBytesPerRow: String { get }
var kCGIODisplayModeID: String { get }
var kCGDisplayModeIsSafeForHardware: String { get }
var kCGDisplayModeIsInterlaced: String { get }
var kCGDisplayModeIsStretched: String { get }
var kCGDisplayModeIsTelevisionOutput: String { get }
typealias CGDisplayCount = UInt32
typealias CGDisplayErr = CGError
struct CGDeviceColor {
  var red: Float
  var green: Float
  var blue: Float
  init()
  init(red: Float, green: Float, blue: Float)
}
typealias CGDisplayConfigRef = COpaquePointer
func CGBeginDisplayConfiguration(config: UnsafeMutablePointer<CGDisplayConfigRef>) -> CGError
func CGConfigureDisplayOrigin(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ x: Int32, _ y: Int32) -> CGError
func CGConfigureDisplayWithDisplayMode(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ mode: CGDisplayMode?, _ options: CFDictionary?) -> CGError
func CGConfigureDisplayStereoOperation(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ stereo: boolean_t, _ forceBlueLine: boolean_t) -> CGError
func CGConfigureDisplayMirrorOfDisplay(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ master: CGDirectDisplayID) -> CGError
func CGCancelDisplayConfiguration(config: CGDisplayConfigRef) -> CGError
struct CGConfigureOption : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ForAppOnly: CGConfigureOption { get }
  static var ForSession: CGConfigureOption { get }
  static var Permanently: CGConfigureOption { get }
}
func CGCompleteDisplayConfiguration(config: CGDisplayConfigRef, _ option: CGConfigureOption) -> CGError
func CGRestorePermanentDisplayConfiguration()
struct CGDisplayChangeSummaryFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BeginConfigurationFlag: CGDisplayChangeSummaryFlags { get }
  static var MovedFlag: CGDisplayChangeSummaryFlags { get }
  static var SetMainFlag: CGDisplayChangeSummaryFlags { get }
  static var SetModeFlag: CGDisplayChangeSummaryFlags { get }
  static var AddFlag: CGDisplayChangeSummaryFlags { get }
  static var RemoveFlag: CGDisplayChangeSummaryFlags { get }
  static var EnabledFlag: CGDisplayChangeSummaryFlags { get }
  static var DisabledFlag: CGDisplayChangeSummaryFlags { get }
  static var MirrorFlag: CGDisplayChangeSummaryFlags { get }
  static var UnMirrorFlag: CGDisplayChangeSummaryFlags { get }
  static var DesktopShapeChangedFlag: CGDisplayChangeSummaryFlags { get }
}
typealias CGDisplayReconfigurationCallBack = @convention(c) (CGDirectDisplayID, CGDisplayChangeSummaryFlags, UnsafeMutablePointer<Void>) -> Void
func CGDisplayRegisterReconfigurationCallback(callback: CGDisplayReconfigurationCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CGError
func CGDisplayRemoveReconfigurationCallback(callback: CGDisplayReconfigurationCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CGError
func CGDisplaySetStereoOperation(display: CGDirectDisplayID, _ stereo: boolean_t, _ forceBlueLine: boolean_t, _ option: CGConfigureOption) -> CGError
func CGDisplayIsActive(display: CGDirectDisplayID) -> boolean_t
func CGDisplayIsAsleep(display: CGDirectDisplayID) -> boolean_t
func CGDisplayIsOnline(display: CGDirectDisplayID) -> boolean_t
func CGDisplayIsMain(display: CGDirectDisplayID) -> boolean_t
func CGDisplayIsBuiltin(display: CGDirectDisplayID) -> boolean_t
func CGDisplayIsInMirrorSet(display: CGDirectDisplayID) -> boolean_t
func CGDisplayIsAlwaysInMirrorSet(display: CGDirectDisplayID) -> boolean_t
func CGDisplayIsInHWMirrorSet(display: CGDirectDisplayID) -> boolean_t
func CGDisplayMirrorsDisplay(display: CGDirectDisplayID) -> CGDirectDisplayID
func CGDisplayUsesOpenGLAcceleration(display: CGDirectDisplayID) -> boolean_t
func CGDisplayIsStereo(display: CGDirectDisplayID) -> boolean_t
func CGDisplayPrimaryDisplay(display: CGDirectDisplayID) -> CGDirectDisplayID
func CGDisplayUnitNumber(display: CGDirectDisplayID) -> UInt32
func CGDisplayVendorNumber(display: CGDirectDisplayID) -> UInt32
func CGDisplayModelNumber(display: CGDirectDisplayID) -> UInt32
func CGDisplaySerialNumber(display: CGDirectDisplayID) -> UInt32
func CGDisplayScreenSize(display: CGDirectDisplayID) -> CGSize
func CGDisplayRotation(display: CGDirectDisplayID) -> Double
func CGDisplayCopyColorSpace(display: CGDirectDisplayID) -> CGColorSpace
typealias CGDisplayFadeReservationToken = UInt32
var kCGDisplayFadeReservationInvalidToken: Int32 { get }
typealias CGDisplayBlendFraction = Float
var kCGDisplayBlendNormal: Double { get }
var kCGDisplayBlendSolidColor: Double { get }
typealias CGDisplayFadeInterval = Float
func CGConfigureDisplayFadeEffect(config: CGDisplayConfigRef, _ fadeOutSeconds: CGDisplayFadeInterval, _ fadeInSeconds: CGDisplayFadeInterval, _ fadeRed: Float, _ fadeGreen: Float, _ fadeBlue: Float) -> CGError
typealias CGDisplayReservationInterval = Float
func CGAcquireDisplayFadeReservation(seconds: CGDisplayReservationInterval, _ token: UnsafeMutablePointer<CGDisplayFadeReservationToken>) -> CGError
func CGReleaseDisplayFadeReservation(token: CGDisplayFadeReservationToken) -> CGError
func CGDisplayFade(token: CGDisplayFadeReservationToken, _ duration: CGDisplayFadeInterval, _ startBlend: CGDisplayBlendFraction, _ endBlend: CGDisplayBlendFraction, _ redBlend: Float, _ greenBlend: Float, _ blueBlend: Float, _ synchronous: boolean_t) -> CGError
class CGDisplayStream {
}
typealias CGDisplayStreamRef = CGDisplayStream
typealias CGDisplayStreamUpdateRef = CGDisplayStreamUpdate
class CGDisplayStreamUpdate {
}
enum CGDisplayStreamUpdateRectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case RefreshedRects
  case MovedRects
  case DirtyRects
  case ReducedDirtyRects
}
enum CGDisplayStreamFrameStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case FrameComplete
  case FrameIdle
  case FrameBlank
  case Stopped
}
typealias CGDisplayStreamFrameAvailableHandler = (CGDisplayStreamFrameStatus, UInt64, IOSurface?, CGDisplayStreamUpdate?) -> Void
func CGDisplayStreamUpdateGetTypeID() -> CFTypeID
func CGDisplayStreamUpdateGetRects(updateRef: CGDisplayStreamUpdate?, _ rectType: CGDisplayStreamUpdateRectType, _ rectCount: UnsafeMutablePointer<Int>) -> UnsafePointer<CGRect>
func CGDisplayStreamUpdateCreateMergedUpdate(firstUpdate: CGDisplayStreamUpdate?, _ secondUpdate: CGDisplayStreamUpdate?) -> CGDisplayStreamUpdate?
func CGDisplayStreamUpdateGetMovedRectsDelta(updateRef: CGDisplayStreamUpdate?, _ dx: UnsafeMutablePointer<CGFloat>, _ dy: UnsafeMutablePointer<CGFloat>)
func CGDisplayStreamUpdateGetDropCount(updateRef: CGDisplayStreamUpdate?) -> Int
let kCGDisplayStreamSourceRect: CFString
let kCGDisplayStreamDestinationRect: CFString
let kCGDisplayStreamPreserveAspectRatio: CFString
let kCGDisplayStreamColorSpace: CFString
let kCGDisplayStreamMinimumFrameTime: CFString
let kCGDisplayStreamShowCursor: CFString
let kCGDisplayStreamQueueDepth: CFString
let kCGDisplayStreamYCbCrMatrix: CFString
let kCGDisplayStreamYCbCrMatrix_ITU_R_709_2: CFString
let kCGDisplayStreamYCbCrMatrix_ITU_R_601_4: CFString
let kCGDisplayStreamYCbCrMatrix_SMPTE_240M_1995: CFString
func CGDisplayStreamGetTypeID() -> CFTypeID
func CGDisplayStreamCreate(display: CGDirectDisplayID, _ outputWidth: Int, _ outputHeight: Int, _ pixelFormat: Int32, _ properties: CFDictionary?, _ handler: CGDisplayStreamFrameAvailableHandler?) -> CGDisplayStream?
func CGDisplayStreamCreateWithDispatchQueue(display: CGDirectDisplayID, _ outputWidth: Int, _ outputHeight: Int, _ pixelFormat: Int32, _ properties: CFDictionary?, _ queue: dispatch_queue_t, _ handler: CGDisplayStreamFrameAvailableHandler?) -> CGDisplayStream?
func CGDisplayStreamStart(displayStream: CGDisplayStream?) -> CGError
func CGDisplayStreamStop(displayStream: CGDisplayStream?) -> CGError
func CGDisplayStreamGetRunLoopSource(displayStream: CGDisplayStream?) -> CFRunLoopSource?
enum CGError : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Success
  case Failure
  case IllegalArgument
  case InvalidConnection
  case InvalidContext
  case CannotComplete
  case NotImplemented
  case RangeCheck
  case TypeCheck
  case InvalidOperation
  case NoneAvailable
}
func CGEventGetTypeID() -> CFTypeID
func CGEventCreate(source: CGEventSource?) -> CGEvent?
func CGEventCreateData(allocator: CFAllocator?, _ event: CGEvent?) -> CFData?
func CGEventCreateFromData(allocator: CFAllocator?, _ data: CFData?) -> CGEvent?
func CGEventCreateMouseEvent(source: CGEventSource?, _ mouseType: CGEventType, _ mouseCursorPosition: CGPoint, _ mouseButton: CGMouseButton) -> CGEvent?
func CGEventCreateKeyboardEvent(source: CGEventSource?, _ virtualKey: CGKeyCode, _ keyDown: Bool) -> CGEvent?
func CGEventCreateCopy(event: CGEvent?) -> CGEvent?
func CGEventCreateSourceFromEvent(event: CGEvent?) -> CGEventSource?
func CGEventSetSource(event: CGEvent?, _ source: CGEventSource?)
func CGEventGetType(event: CGEvent?) -> CGEventType
func CGEventSetType(event: CGEvent?, _ type: CGEventType)
func CGEventGetTimestamp(event: CGEvent?) -> CGEventTimestamp
func CGEventSetTimestamp(event: CGEvent?, _ timestamp: CGEventTimestamp)
func CGEventGetLocation(event: CGEvent?) -> CGPoint
func CGEventGetUnflippedLocation(event: CGEvent?) -> CGPoint
func CGEventSetLocation(event: CGEvent?, _ location: CGPoint)
func CGEventGetFlags(event: CGEvent?) -> CGEventFlags
func CGEventSetFlags(event: CGEvent?, _ flags: CGEventFlags)
func CGEventKeyboardGetUnicodeString(event: CGEvent?, _ maxStringLength: Int, _ actualStringLength: UnsafeMutablePointer<Int>, _ unicodeString: UnsafeMutablePointer<UniChar>)
func CGEventKeyboardSetUnicodeString(event: CGEvent?, _ stringLength: Int, _ unicodeString: UnsafePointer<UniChar>)
func CGEventGetIntegerValueField(event: CGEvent?, _ field: CGEventField) -> Int64
func CGEventSetIntegerValueField(event: CGEvent?, _ field: CGEventField, _ value: Int64)
func CGEventGetDoubleValueField(event: CGEvent?, _ field: CGEventField) -> Double
func CGEventSetDoubleValueField(event: CGEvent?, _ field: CGEventField, _ value: Double)
func CGEventTapCreate(tap: CGEventTapLocation, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
func CGEventTapCreateForPSN(processSerialNumber: UnsafeMutablePointer<Void>, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
func CGEventTapCreateForPid(pid: pid_t, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
func CGEventTapEnable(tap: CFMachPort, _ enable: Bool)
func CGEventTapIsEnabled(tap: CFMachPort) -> Bool
func CGEventTapPostEvent(proxy: CGEventTapProxy, _ event: CGEvent?)
func CGEventPost(tap: CGEventTapLocation, _ event: CGEvent?)
func CGEventPostToPSN(processSerialNumber: UnsafeMutablePointer<Void>, _ event: CGEvent?)
func CGEventPostToPid(pid: pid_t, _ event: CGEvent?)
func CGGetEventTapList(maxNumberOfTaps: UInt32, _ tapList: UnsafeMutablePointer<CGEventTapInformation>, _ eventTapCount: UnsafeMutablePointer<UInt32>) -> CGError
func CGEventSourceGetTypeID() -> CFTypeID
func CGEventSourceCreate(stateID: CGEventSourceStateID) -> CGEventSource?
func CGEventSourceGetKeyboardType(source: CGEventSource?) -> CGEventSourceKeyboardType
func CGEventSourceSetKeyboardType(source: CGEventSource?, _ keyboardType: CGEventSourceKeyboardType)
func CGEventSourceGetPixelsPerLine(source: CGEventSource?) -> Double
func CGEventSourceSetPixelsPerLine(source: CGEventSource?, _ pixelsPerLine: Double)
func CGEventSourceGetSourceStateID(source: CGEventSource?) -> CGEventSourceStateID
func CGEventSourceButtonState(stateID: CGEventSourceStateID, _ button: CGMouseButton) -> Bool
func CGEventSourceKeyState(stateID: CGEventSourceStateID, _ key: CGKeyCode) -> Bool
func CGEventSourceFlagsState(stateID: CGEventSourceStateID) -> CGEventFlags
func CGEventSourceSecondsSinceLastEventType(stateID: CGEventSourceStateID, _ eventType: CGEventType) -> CFTimeInterval
func CGEventSourceCounterForEventType(stateID: CGEventSourceStateID, _ eventType: CGEventType) -> UInt32
func CGEventSourceSetUserData(source: CGEventSource?, _ userData: Int64)
func CGEventSourceGetUserData(source: CGEventSource?) -> Int64
func CGEventSourceSetLocalEventsFilterDuringSuppressionState(source: CGEventSource?, _ filter: CGEventFilterMask, _ state: CGEventSuppressionState)
func CGEventSourceGetLocalEventsFilterDuringSuppressionState(source: CGEventSource?, _ state: CGEventSuppressionState) -> CGEventFilterMask
func CGEventSourceSetLocalEventsSuppressionInterval(source: CGEventSource?, _ seconds: CFTimeInterval)
func CGEventSourceGetLocalEventsSuppressionInterval(source: CGEventSource?) -> CFTimeInterval
class CGEvent {
}
typealias CGEventRef = CGEvent
enum CGMouseButton : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Left
  case Right
  case Center
}
enum CGScrollEventUnit : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Pixel
  case Line
}
enum CGMomentumScrollPhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Begin
  case Continue
  case End
}
enum CGScrollPhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Began
  case Changed
  case Ended
  case Cancelled
  case MayBegin
}
enum CGGesturePhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Began
  case Changed
  case Ended
  case Cancelled
  case MayBegin
}
enum CGEventFlags : UInt64 {
  init?(rawValue: UInt64)
  var rawValue: UInt64 { get }
  case MaskAlphaShift
  case MaskShift
  case MaskControl
  case MaskAlternate
  case MaskCommand
  case MaskHelp
  case MaskSecondaryFn
  case MaskNumericPad
  case MaskNonCoalesced
}
enum CGEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Null
  case LeftMouseDown
  case LeftMouseUp
  case RightMouseDown
  case RightMouseUp
  case MouseMoved
  case LeftMouseDragged
  case RightMouseDragged
  case KeyDown
  case KeyUp
  case FlagsChanged
  case ScrollWheel
  case TabletPointer
  case TabletProximity
  case OtherMouseDown
  case OtherMouseUp
  case OtherMouseDragged
  case TapDisabledByTimeout
  case TapDisabledByUserInput
}
typealias CGEventTimestamp = UInt64
enum CGEventField : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case MouseEventNumber
  case MouseEventClickState
  case MouseEventPressure
  case MouseEventButtonNumber
  case MouseEventDeltaX
  case MouseEventDeltaY
  case MouseEventInstantMouser
  case MouseEventSubtype
  case KeyboardEventAutorepeat
  case KeyboardEventKeycode
  case KeyboardEventKeyboardType
  case ScrollWheelEventDeltaAxis1
  case ScrollWheelEventDeltaAxis2
  case ScrollWheelEventDeltaAxis3
  case ScrollWheelEventFixedPtDeltaAxis1
  case ScrollWheelEventFixedPtDeltaAxis2
  case ScrollWheelEventFixedPtDeltaAxis3
  case ScrollWheelEventPointDeltaAxis1
  case ScrollWheelEventPointDeltaAxis2
  case ScrollWheelEventPointDeltaAxis3
  case ScrollWheelEventScrollPhase
  case ScrollWheelEventScrollCount
  case ScrollWheelEventMomentumPhase
  case ScrollWheelEventInstantMouser
  case TabletEventPointX
  case TabletEventPointY
  case TabletEventPointZ
  case TabletEventPointButtons
  case TabletEventPointPressure
  case TabletEventTiltX
  case TabletEventTiltY
  case TabletEventRotation
  case TabletEventTangentialPressure
  case TabletEventDeviceID
  case TabletEventVendor1
  case TabletEventVendor2
  case TabletEventVendor3
  case TabletProximityEventVendorID
  case TabletProximityEventTabletID
  case TabletProximityEventPointerID
  case TabletProximityEventDeviceID
  case TabletProximityEventSystemTabletID
  case TabletProximityEventVendorPointerType
  case TabletProximityEventVendorPointerSerialNumber
  case TabletProximityEventVendorUniqueID
  case TabletProximityEventCapabilityMask
  case TabletProximityEventPointerType
  case TabletProximityEventEnterProximity
  case EventTargetProcessSerialNumber
  case EventTargetUnixProcessID
  case EventSourceUnixProcessID
  case EventSourceUserData
  case EventSourceUserID
  case EventSourceGroupID
  case EventSourceStateID
  case ScrollWheelEventIsContinuous
  case MouseEventWindowUnderMousePointer
  case MouseEventWindowUnderMousePointerThatCanHandleThisEvent
}
enum CGEventMouseSubtype : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case TabletPoint
  case TabletProximity
}
enum CGEventTapLocation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case CGHIDEventTap
  case CGSessionEventTap
  case CGAnnotatedSessionEventTap
}
enum CGEventTapPlacement : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case HeadInsertEventTap
  case TailAppendEventTap
}
enum CGEventTapOptions : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case ListenOnly
}
typealias CGEventMask = UInt64
typealias CGEventTapProxy = COpaquePointer
typealias CGEventTapCallBack = @convention(c) (CGEventTapProxy, CGEventType, CGEvent, UnsafeMutablePointer<Void>) -> Unmanaged<CGEvent>?
var kCGNotifyEventTapAdded: String { get }
var kCGNotifyEventTapRemoved: String { get }
struct __CGEventTapInformation {
  var eventTapID: UInt32
  var tapPoint: CGEventTapLocation
  var options: CGEventTapOptions
  var eventsOfInterest: CGEventMask
  var tappingProcess: pid_t
  var processBeingTapped: pid_t
  var enabled: Bool
  var minUsecLatency: Float
  var avgUsecLatency: Float
  var maxUsecLatency: Float
  init()
  init(eventTapID: UInt32, tapPoint: CGEventTapLocation, options: CGEventTapOptions, eventsOfInterest: CGEventMask, tappingProcess: pid_t, processBeingTapped: pid_t, enabled: Bool, minUsecLatency: Float, avgUsecLatency: Float, maxUsecLatency: Float)
}
typealias CGEventTapInformation = __CGEventTapInformation
typealias CGEventSourceRef = CGEventSource
class CGEventSource {
}
enum CGEventSourceStateID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Private
  case CombinedSessionState
  case HIDSystemState
}
typealias CGEventSourceKeyboardType = UInt32
class CGFont {
}
typealias CGFontRef = CGFont
typealias CGFontIndex = UInt16
typealias CGGlyph = CGFontIndex
enum CGFontPostScriptFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Type1
  case Type3
  case Type42
}
let kCGFontIndexMax: CGFontIndex
let kCGFontIndexInvalid: CGFontIndex
let kCGGlyphMax: CGFontIndex
func CGFontGetTypeID() -> CFTypeID
func CGFontCreateWithDataProvider(provider: CGDataProvider?) -> CGFont?
func CGFontCreateWithFontName(name: CFString?) -> CGFont?
func CGFontCreateCopyWithVariations(font: CGFont?, _ variations: CFDictionary?) -> CGFont?
func CGFontGetNumberOfGlyphs(font: CGFont?) -> Int
func CGFontGetUnitsPerEm(font: CGFont?) -> Int32
func CGFontCopyPostScriptName(font: CGFont?) -> CFString?
func CGFontCopyFullName(font: CGFont?) -> CFString?
func CGFontGetAscent(font: CGFont?) -> Int32
func CGFontGetDescent(font: CGFont?) -> Int32
func CGFontGetLeading(font: CGFont?) -> Int32
func CGFontGetCapHeight(font: CGFont?) -> Int32
func CGFontGetXHeight(font: CGFont?) -> Int32
func CGFontGetFontBBox(font: CGFont?) -> CGRect
func CGFontGetItalicAngle(font: CGFont?) -> CGFloat
func CGFontGetStemV(font: CGFont?) -> CGFloat
func CGFontCopyVariationAxes(font: CGFont?) -> CFArray?
func CGFontCopyVariations(font: CGFont?) -> CFDictionary?
func CGFontGetGlyphAdvances(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ advances: UnsafeMutablePointer<Int32>) -> Bool
func CGFontGetGlyphBBoxes(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ bboxes: UnsafeMutablePointer<CGRect>) -> Bool
func CGFontGetGlyphWithGlyphName(font: CGFont?, _ name: CFString?) -> CGGlyph
func CGFontCopyGlyphNameForGlyph(font: CGFont?, _ glyph: CGGlyph) -> CFString?
func CGFontCanCreatePostScriptSubset(font: CGFont?, _ format: CGFontPostScriptFormat) -> Bool
func CGFontCreatePostScriptSubset(font: CGFont?, _ subsetName: CFString?, _ format: CGFontPostScriptFormat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
func CGFontCreatePostScriptEncoding(font: CGFont?, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
func CGFontCopyTableTags(font: CGFont?) -> CFArray?
func CGFontCopyTableForTag(font: CGFont?, _ tag: UInt32) -> CFData?
let kCGFontVariationAxisName: CFString
let kCGFontVariationAxisMinValue: CFString
let kCGFontVariationAxisMaxValue: CFString
let kCGFontVariationAxisDefaultValue: CFString
enum CGGlypDeprecatedEnum : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case GlyphMin
  case GlyphMax
}
class CGFunction {
}
typealias CGFunctionRef = CGFunction
typealias CGFunctionEvaluateCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<CGFloat>, UnsafeMutablePointer<CGFloat>) -> Void
typealias CGFunctionReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGFunctionCallbacks {
  var version: UInt32
  var evaluate: CGFunctionEvaluateCallback?
  var releaseInfo: CGFunctionReleaseInfoCallback?
  init()
  init(version: UInt32, evaluate: CGFunctionEvaluateCallback?, releaseInfo: CGFunctionReleaseInfoCallback?)
}
func CGFunctionGetTypeID() -> CFTypeID
func CGFunctionCreate(info: UnsafeMutablePointer<Void>, _ domainDimension: Int, _ domain: UnsafePointer<CGFloat>, _ rangeDimension: Int, _ range: UnsafePointer<CGFloat>, _ callbacks: UnsafePointer<CGFunctionCallbacks>) -> CGFunction?
struct CGPoint {
  var x: CGFloat
  var y: CGFloat
  init()
  init(x: CGFloat, y: CGFloat)
}
extension CGPoint {
  static var zero: CGPoint { get }
  @_transparent init(x: Int, y: Int)
  @_transparent init(x: Double, y: Double)
}
extension CGPoint : Equatable {
}
extension CGPoint : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
struct CGSize {
  var width: CGFloat
  var height: CGFloat
  init()
  init(width: CGFloat, height: CGFloat)
}
extension CGSize {
  static var zero: CGSize { get }
  @_transparent init(width: Int, height: Int)
  @_transparent init(width: Double, height: Double)
}
extension CGSize : Equatable {
}
extension CGSize : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
struct CGVector {
  var dx: CGFloat
  var dy: CGFloat
  init()
  init(dx: CGFloat, dy: CGFloat)
}
extension CGVector {
  static var zero: CGVector { get }
  @_transparent init(dx: Int, dy: Int)
  @_transparent init(dx: Double, dy: Double)
}
extension CGVector : Equatable {
}
struct CGRect {
  var origin: CGPoint
  var size: CGSize
  init()
  init(origin: CGPoint, size: CGSize)
}
extension CGRect {
  static var zero: CGRect { get }
  static var null: CGRect { get }
  static var infinite: CGRect { get }
  @_transparent init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat)
  @_transparent init(x: Double, y: Double, width: Double, height: Double)
  @_transparent init(x: Int, y: Int, width: Int, height: Int)
  var width: CGFloat { get }
  var height: CGFloat { get }
  var minX: CGFloat { get }
  var midX: CGFloat { get }
  var maxX: CGFloat { get }
  var minY: CGFloat { get }
  var midY: CGFloat { get }
  var maxY: CGFloat { get }
  var isNull: Bool { get }
  var isEmpty: Bool { get }
  var isInfinite: Bool { get }
  var standardized: CGRect { get }
  var integral: CGRect { get }
  @_transparent mutating func standardizeInPlace()
  @_transparent mutating func makeIntegralInPlace()
  @warn_unused_result(mutable_variant="insetInPlace")
  @_transparent func insetBy(dx dx: CGFloat, dy: CGFloat) -> CGRect
  @_transparent mutating func insetInPlace(dx dx: CGFloat, dy: CGFloat)
  @warn_unused_result(mutable_variant="offsetInPlace")
  @_transparent func offsetBy(dx dx: CGFloat, dy: CGFloat) -> CGRect
  @_transparent mutating func offsetInPlace(dx dx: CGFloat, dy: CGFloat)
  @warn_unused_result(mutable_variant="unionInPlace")
  @_transparent func union(rect: CGRect) -> CGRect
  @_transparent mutating func unionInPlace(rect: CGRect)
  @warn_unused_result(mutable_variant="intersectInPlace")
  @_transparent func intersect(rect: CGRect) -> CGRect
  @_transparent mutating func intersectInPlace(rect: CGRect)
  @warn_unused_result
  @_transparent func divide(atDistance: CGFloat, fromEdge: CGRectEdge) -> (slice: CGRect, remainder: CGRect)
  @warn_unused_result
  @_transparent func contains(rect: CGRect) -> Bool
  @warn_unused_result
  @_transparent func contains(point: CGPoint) -> Bool
  @warn_unused_result
  @_transparent func intersects(rect: CGRect) -> Bool
}
extension CGRect : Equatable {
}
extension CGRect : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
enum CGRectEdge : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case MinXEdge
  case MinYEdge
  case MaxXEdge
  case MaxYEdge
}
let CGPointZero: CGPoint
let CGSizeZero: CGSize
let CGRectZero: CGRect
let CGRectNull: CGRect
let CGRectInfinite: CGRect
func CGRectGetMinX(rect: CGRect) -> CGFloat
func CGRectGetMidX(rect: CGRect) -> CGFloat
func CGRectGetMaxX(rect: CGRect) -> CGFloat
func CGRectGetMinY(rect: CGRect) -> CGFloat
func CGRectGetMidY(rect: CGRect) -> CGFloat
func CGRectGetMaxY(rect: CGRect) -> CGFloat
func CGRectGetWidth(rect: CGRect) -> CGFloat
func CGRectGetHeight(rect: CGRect) -> CGFloat
func CGPointEqualToPoint(point1: CGPoint, _ point2: CGPoint) -> Bool
func CGSizeEqualToSize(size1: CGSize, _ size2: CGSize) -> Bool
func CGRectEqualToRect(rect1: CGRect, _ rect2: CGRect) -> Bool
func CGRectStandardize(rect: CGRect) -> CGRect
func CGRectIsEmpty(rect: CGRect) -> Bool
func CGRectIsNull(rect: CGRect) -> Bool
func CGRectIsInfinite(rect: CGRect) -> Bool
func CGRectInset(rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
func CGRectIntegral(rect: CGRect) -> CGRect
func CGRectUnion(r1: CGRect, _ r2: CGRect) -> CGRect
func CGRectIntersection(r1: CGRect, _ r2: CGRect) -> CGRect
func CGRectOffset(rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
func CGRectDivide(rect: CGRect, _ slice: UnsafeMutablePointer<CGRect>, _ remainder: UnsafeMutablePointer<CGRect>, _ amount: CGFloat, _ edge: CGRectEdge)
func CGRectContainsPoint(rect: CGRect, _ point: CGPoint) -> Bool
func CGRectContainsRect(rect1: CGRect, _ rect2: CGRect) -> Bool
func CGRectIntersectsRect(rect1: CGRect, _ rect2: CGRect) -> Bool
func CGPointCreateDictionaryRepresentation(point: CGPoint) -> CFDictionary
func CGPointMakeWithDictionaryRepresentation(dict: CFDictionary?, _ point: UnsafeMutablePointer<CGPoint>) -> Bool
func CGSizeCreateDictionaryRepresentation(size: CGSize) -> CFDictionary
func CGSizeMakeWithDictionaryRepresentation(dict: CFDictionary?, _ size: UnsafeMutablePointer<CGSize>) -> Bool
func CGRectCreateDictionaryRepresentation(_: CGRect) -> CFDictionary
func CGRectMakeWithDictionaryRepresentation(dict: CFDictionary?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
func CGPointMake(x: CGFloat, _ y: CGFloat) -> CGPoint
func CGSizeMake(width: CGFloat, _ height: CGFloat) -> CGSize
func CGVectorMake(dx: CGFloat, _ dy: CGFloat) -> CGVector
func CGRectMake(x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect
func __CGPointEqualToPoint(point1: CGPoint, _ point2: CGPoint) -> Bool
func __CGSizeEqualToSize(size1: CGSize, _ size2: CGSize) -> Bool
class CGGradient {
}
typealias CGGradientRef = CGGradient
struct CGGradientDrawingOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var DrawsBeforeStartLocation: CGGradientDrawingOptions { get }
  static var DrawsAfterEndLocation: CGGradientDrawingOptions { get }
}
func CGGradientGetTypeID() -> CFTypeID
func CGGradientCreateWithColorComponents(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>, _ locations: UnsafePointer<CGFloat>, _ count: Int) -> CGGradient?
func CGGradientCreateWithColors(space: CGColorSpace?, _ colors: CFArray?, _ locations: UnsafePointer<CGFloat>) -> CGGradient?
class CGImage {
}
typealias CGImageRef = CGImage
enum CGImageAlphaInfo : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case PremultipliedLast
  case PremultipliedFirst
  case Last
  case First
  case NoneSkipLast
  case NoneSkipFirst
  case Only
}
struct CGBitmapInfo : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AlphaInfoMask: CGBitmapInfo { get }
  static var FloatComponents: CGBitmapInfo { get }
  static var ByteOrderMask: CGBitmapInfo { get }
  static var ByteOrderDefault: CGBitmapInfo { get }
  static var ByteOrder16Little: CGBitmapInfo { get }
  static var ByteOrder32Little: CGBitmapInfo { get }
  static var ByteOrder16Big: CGBitmapInfo { get }
  static var ByteOrder32Big: CGBitmapInfo { get }
}
func CGImageGetTypeID() -> CFTypeID
func CGImageCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: CGBitmapInfo, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
func CGImageMaskCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool) -> CGImage?
func CGImageCreateCopy(image: CGImage?) -> CGImage?
func CGImageCreateWithJPEGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
func CGImageCreateWithPNGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
func CGImageCreateWithImageInRect(image: CGImage?, _ rect: CGRect) -> CGImage?
func CGImageCreateWithMask(image: CGImage?, _ mask: CGImage?) -> CGImage?
func CGImageCreateWithMaskingColors(image: CGImage?, _ components: UnsafePointer<CGFloat>) -> CGImage?
func CGImageCreateCopyWithColorSpace(image: CGImage?, _ space: CGColorSpace?) -> CGImage?
func CGImageIsMask(image: CGImage?) -> Bool
func CGImageGetWidth(image: CGImage?) -> Int
func CGImageGetHeight(image: CGImage?) -> Int
func CGImageGetBitsPerComponent(image: CGImage?) -> Int
func CGImageGetBitsPerPixel(image: CGImage?) -> Int
func CGImageGetBytesPerRow(image: CGImage?) -> Int
func CGImageGetColorSpace(image: CGImage?) -> CGColorSpace?
func CGImageGetAlphaInfo(image: CGImage?) -> CGImageAlphaInfo
func CGImageGetDataProvider(image: CGImage?) -> CGDataProvider?
func CGImageGetDecode(image: CGImage?) -> UnsafePointer<CGFloat>
func CGImageGetShouldInterpolate(image: CGImage?) -> Bool
func CGImageGetRenderingIntent(image: CGImage?) -> CGColorRenderingIntent
func CGImageGetBitmapInfo(image: CGImage?) -> CGBitmapInfo
func CGImageGetUTType(image: CGImage?) -> CFString?
class CGLayer {
}
typealias CGLayerRef = CGLayer
func CGLayerCreateWithContext(context: CGContext?, _ size: CGSize, _ auxiliaryInfo: CFDictionary?) -> CGLayer?
func CGLayerGetSize(layer: CGLayer?) -> CGSize
func CGLayerGetContext(layer: CGLayer?) -> CGContext?
func CGContextDrawLayerInRect(context: CGContext?, _ rect: CGRect, _ layer: CGLayer?)
func CGContextDrawLayerAtPoint(context: CGContext?, _ point: CGPoint, _ layer: CGLayer?)
func CGLayerGetTypeID() -> CFTypeID
typealias CGPDFArrayRef = COpaquePointer
func CGPDFArrayGetCount(array: CGPDFArrayRef) -> Int
func CGPDFArrayGetObject(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
func CGPDFArrayGetNull(array: CGPDFArrayRef, _ index: Int) -> Bool
func CGPDFArrayGetBoolean(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
func CGPDFArrayGetInteger(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
func CGPDFArrayGetNumber(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
func CGPDFArrayGetName(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
func CGPDFArrayGetString(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
func CGPDFArrayGetArray(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
func CGPDFArrayGetDictionary(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
func CGPDFArrayGetStream(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFContentStreamRef = COpaquePointer
func CGPDFContentStreamCreateWithPage(page: CGPDFPage!) -> CGPDFContentStreamRef
func CGPDFContentStreamCreateWithStream(stream: CGPDFStreamRef, _ streamResources: CGPDFDictionaryRef, _ parent: CGPDFContentStreamRef) -> CGPDFContentStreamRef
func CGPDFContentStreamRetain(cs: CGPDFContentStreamRef) -> CGPDFContentStreamRef
func CGPDFContentStreamRelease(cs: CGPDFContentStreamRef)
func CGPDFContentStreamGetStreams(cs: CGPDFContentStreamRef) -> CFArray!
func CGPDFContentStreamGetResource(cs: CGPDFContentStreamRef, _ category: UnsafePointer<Int8>, _ name: UnsafePointer<Int8>) -> CGPDFObjectRef
func CGPDFContextCreate(consumer: CGDataConsumer?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
func CGPDFContextCreateWithURL(url: CFURL?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
func CGPDFContextClose(context: CGContext?)
func CGPDFContextBeginPage(context: CGContext?, _ pageInfo: CFDictionary?)
func CGPDFContextEndPage(context: CGContext?)
func CGPDFContextAddDocumentMetadata(context: CGContext?, _ metadata: CFData?)
func CGPDFContextSetURLForRect(context: CGContext?, _ url: CFURL, _ rect: CGRect)
func CGPDFContextAddDestinationAtPoint(context: CGContext?, _ name: CFString, _ point: CGPoint)
func CGPDFContextSetDestinationForRect(context: CGContext?, _ name: CFString, _ rect: CGRect)
let kCGPDFContextMediaBox: CFString
let kCGPDFContextCropBox: CFString
let kCGPDFContextBleedBox: CFString
let kCGPDFContextTrimBox: CFString
let kCGPDFContextArtBox: CFString
let kCGPDFContextTitle: CFString
let kCGPDFContextAuthor: CFString
let kCGPDFContextSubject: CFString
let kCGPDFContextKeywords: CFString
let kCGPDFContextCreator: CFString
let kCGPDFContextOwnerPassword: CFString
let kCGPDFContextUserPassword: CFString
let kCGPDFContextEncryptionKeyLength: CFString
let kCGPDFContextAllowsPrinting: CFString
let kCGPDFContextAllowsCopying: CFString
let kCGPDFContextOutputIntent: CFString
let kCGPDFXOutputIntentSubtype: CFString
let kCGPDFXOutputConditionIdentifier: CFString
let kCGPDFXOutputCondition: CFString
let kCGPDFXRegistryName: CFString
let kCGPDFXInfo: CFString
let kCGPDFXDestinationOutputProfile: CFString
let kCGPDFContextOutputIntents: CFString
typealias CGPDFDictionaryRef = COpaquePointer
func CGPDFDictionaryGetCount(dict: CGPDFDictionaryRef) -> Int
func CGPDFDictionaryGetObject(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
func CGPDFDictionaryGetBoolean(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
func CGPDFDictionaryGetInteger(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
func CGPDFDictionaryGetNumber(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
func CGPDFDictionaryGetName(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
func CGPDFDictionaryGetString(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
func CGPDFDictionaryGetArray(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
func CGPDFDictionaryGetDictionary(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
func CGPDFDictionaryGetStream(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<Int8>, CGPDFObjectRef, UnsafeMutablePointer<Void>) -> Void
func CGPDFDictionaryApplyFunction(dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction?, _ info: UnsafeMutablePointer<Void>)
class CGPDFDocument {
}
typealias CGPDFDocumentRef = CGPDFDocument
func CGPDFDocumentCreateWithProvider(provider: CGDataProvider?) -> CGPDFDocument?
func CGPDFDocumentCreateWithURL(url: CFURL?) -> CGPDFDocument?
func CGPDFDocumentGetVersion(document: CGPDFDocument?, _ majorVersion: UnsafeMutablePointer<Int32>, _ minorVersion: UnsafeMutablePointer<Int32>)
func CGPDFDocumentIsEncrypted(document: CGPDFDocument?) -> Bool
func CGPDFDocumentUnlockWithPassword(document: CGPDFDocument?, _ password: UnsafePointer<Int8>) -> Bool
func CGPDFDocumentIsUnlocked(document: CGPDFDocument?) -> Bool
func CGPDFDocumentAllowsPrinting(document: CGPDFDocument?) -> Bool
func CGPDFDocumentAllowsCopying(document: CGPDFDocument?) -> Bool
func CGPDFDocumentGetNumberOfPages(document: CGPDFDocument?) -> Int
func CGPDFDocumentGetPage(document: CGPDFDocument?, _ pageNumber: Int) -> CGPDFPage?
func CGPDFDocumentGetCatalog(document: CGPDFDocument?) -> CGPDFDictionaryRef
func CGPDFDocumentGetInfo(document: CGPDFDocument?) -> CGPDFDictionaryRef
func CGPDFDocumentGetID(document: CGPDFDocument?) -> CGPDFArrayRef
func CGPDFDocumentGetTypeID() -> CFTypeID
typealias CGPDFBoolean = UInt8
typealias CGPDFInteger = Int
typealias CGPDFReal = CGFloat
typealias CGPDFObjectRef = COpaquePointer
enum CGPDFObjectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Null
  case Boolean
  case Integer
  case Real
  case Name
  case String
  case Array
  case Dictionary
  case Stream
}
func CGPDFObjectGetType(object: CGPDFObjectRef) -> CGPDFObjectType
func CGPDFObjectGetValue(object: CGPDFObjectRef, _ type: CGPDFObjectType, _ value: UnsafeMutablePointer<Void>) -> Bool
typealias CGPDFOperatorTableRef = COpaquePointer
typealias CGPDFOperatorCallback = @convention(c) (CGPDFScannerRef, UnsafeMutablePointer<Void>) -> Void
func CGPDFOperatorTableCreate() -> CGPDFOperatorTableRef
func CGPDFOperatorTableRetain(table: CGPDFOperatorTableRef) -> CGPDFOperatorTableRef
func CGPDFOperatorTableRelease(table: CGPDFOperatorTableRef)
func CGPDFOperatorTableSetCallback(table: CGPDFOperatorTableRef, _ name: UnsafePointer<Int8>, _ callback: CGPDFOperatorCallback?)
class CGPDFPage {
}
typealias CGPDFPageRef = CGPDFPage
enum CGPDFBox : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MediaBox
  case CropBox
  case BleedBox
  case TrimBox
  case ArtBox
}
func CGPDFPageGetDocument(page: CGPDFPage?) -> CGPDFDocument?
func CGPDFPageGetPageNumber(page: CGPDFPage?) -> Int
func CGPDFPageGetBoxRect(page: CGPDFPage?, _ box: CGPDFBox) -> CGRect
func CGPDFPageGetRotationAngle(page: CGPDFPage?) -> Int32
func CGPDFPageGetDrawingTransform(page: CGPDFPage?, _ box: CGPDFBox, _ rect: CGRect, _ rotate: Int32, _ preserveAspectRatio: Bool) -> CGAffineTransform
func CGPDFPageGetDictionary(page: CGPDFPage?) -> CGPDFDictionaryRef
func CGPDFPageGetTypeID() -> CFTypeID
typealias CGPDFScannerRef = COpaquePointer
func CGPDFScannerCreate(cs: CGPDFContentStreamRef, _ table: CGPDFOperatorTableRef, _ info: UnsafeMutablePointer<Void>) -> CGPDFScannerRef
func CGPDFScannerRetain(scanner: CGPDFScannerRef) -> CGPDFScannerRef
func CGPDFScannerRelease(scanner: CGPDFScannerRef)
func CGPDFScannerScan(scanner: CGPDFScannerRef) -> Bool
func CGPDFScannerGetContentStream(scanner: CGPDFScannerRef) -> CGPDFContentStreamRef
func CGPDFScannerPopObject(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
func CGPDFScannerPopBoolean(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
func CGPDFScannerPopInteger(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
func CGPDFScannerPopNumber(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
func CGPDFScannerPopName(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
func CGPDFScannerPopString(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
func CGPDFScannerPopArray(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
func CGPDFScannerPopDictionary(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
func CGPDFScannerPopStream(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFStreamRef = COpaquePointer
enum CGPDFDataFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Raw
  case JPEGEncoded
  case JPEG2000
}
func CGPDFStreamGetDictionary(stream: CGPDFStreamRef) -> CGPDFDictionaryRef
func CGPDFStreamCopyData(stream: CGPDFStreamRef, _ format: UnsafeMutablePointer<CGPDFDataFormat>) -> CFData?
typealias CGPDFStringRef = COpaquePointer
func CGPDFStringGetLength(string: CGPDFStringRef) -> Int
func CGPDFStringGetBytePtr(string: CGPDFStringRef) -> UnsafePointer<UInt8>
func CGPDFStringCopyTextString(string: CGPDFStringRef) -> CFString?
func CGPDFStringCopyDate(string: CGPDFStringRef) -> CFDate?
class CGPSConverter {
}
typealias CGPSConverterRef = CGPSConverter
typealias CGPSConverterBeginDocumentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGPSConverterEndDocumentCallback = @convention(c) (UnsafeMutablePointer<Void>, Bool) -> Void
typealias CGPSConverterBeginPageCallback = @convention(c) (UnsafeMutablePointer<Void>, Int, CFDictionary) -> Void
typealias CGPSConverterEndPageCallback = @convention(c) (UnsafeMutablePointer<Void>, Int, CFDictionary) -> Void
typealias CGPSConverterProgressCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGPSConverterMessageCallback = @convention(c) (UnsafeMutablePointer<Void>, CFString) -> Void
typealias CGPSConverterReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGPSConverterCallbacks {
  var version: UInt32
  var beginDocument: CGPSConverterBeginDocumentCallback?
  var endDocument: CGPSConverterEndDocumentCallback?
  var beginPage: CGPSConverterBeginPageCallback?
  var endPage: CGPSConverterEndPageCallback?
  var noteProgress: CGPSConverterProgressCallback?
  var noteMessage: CGPSConverterMessageCallback?
  var releaseInfo: CGPSConverterReleaseInfoCallback?
  init()
  init(version: UInt32, beginDocument: CGPSConverterBeginDocumentCallback?, endDocument: CGPSConverterEndDocumentCallback?, beginPage: CGPSConverterBeginPageCallback?, endPage: CGPSConverterEndPageCallback?, noteProgress: CGPSConverterProgressCallback?, noteMessage: CGPSConverterMessageCallback?, releaseInfo: CGPSConverterReleaseInfoCallback?)
}
func CGPSConverterCreate(info: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<CGPSConverterCallbacks>, _ options: CFDictionary?) -> CGPSConverter?
func CGPSConverterConvert(converter: CGPSConverter, _ provider: CGDataProvider, _ consumer: CGDataConsumer, _ options: CFDictionary?) -> Bool
func CGPSConverterAbort(converter: CGPSConverter) -> Bool
func CGPSConverterIsConverting(converter: CGPSConverter) -> Bool
func CGPSConverterGetTypeID() -> CFTypeID
class CGMutablePath {
}
typealias CGMutablePathRef = CGMutablePath
class CGPath {
}
typealias CGPathRef = CGPath
enum CGLineJoin : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Miter
  case Round
  case Bevel
}
enum CGLineCap : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Butt
  case Round
  case Square
}
func CGPathGetTypeID() -> CFTypeID
func CGPathCreateMutable() -> CGMutablePath
func CGPathCreateCopy(path: CGPath?) -> CGPath?
func CGPathCreateCopyByTransformingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath?
func CGPathCreateMutableCopy(path: CGPath?) -> CGMutablePath?
func CGPathCreateMutableCopyByTransformingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGMutablePath?
func CGPathCreateWithRect(rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
func CGPathCreateWithEllipseInRect(rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
func CGPathCreateWithRoundedRect(rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
func CGPathAddRoundedRect(path: CGMutablePath?, _ transform: UnsafePointer<CGAffineTransform>, _ rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat)
func CGPathCreateCopyByDashingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int) -> CGPath?
func CGPathCreateCopyByStrokingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ lineWidth: CGFloat, _ lineCap: CGLineCap, _ lineJoin: CGLineJoin, _ miterLimit: CGFloat) -> CGPath?
func CGPathEqualToPath(path1: CGPath?, _ path2: CGPath?) -> Bool
func CGPathMoveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
func CGPathAddLineToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
func CGPathAddQuadCurveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
func CGPathAddCurveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
func CGPathCloseSubpath(path: CGMutablePath?)
func CGPathAddRect(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
func CGPathAddRects(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rects: UnsafePointer<CGRect>, _ count: Int)
func CGPathAddLines(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ points: UnsafePointer<CGPoint>, _ count: Int)
func CGPathAddEllipseInRect(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
func CGPathAddRelativeArc(path: CGMutablePath?, _ matrix: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ delta: CGFloat)
func CGPathAddArc(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Bool)
func CGPathAddArcToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
func CGPathAddPath(path1: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ path2: CGPath?)
func CGPathIsEmpty(path: CGPath?) -> Bool
func CGPathIsRect(path: CGPath?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
func CGPathGetCurrentPoint(path: CGPath?) -> CGPoint
func CGPathGetBoundingBox(path: CGPath?) -> CGRect
func CGPathGetPathBoundingBox(path: CGPath?) -> CGRect
func CGPathContainsPoint(path: CGPath?, _ m: UnsafePointer<CGAffineTransform>, _ point: CGPoint, _ eoFill: Bool) -> Bool
enum CGPathElementType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MoveToPoint
  case AddLineToPoint
  case AddQuadCurveToPoint
  case AddCurveToPoint
  case CloseSubpath
}
struct CGPathElement {
  var type: CGPathElementType
  var points: UnsafeMutablePointer<CGPoint>
}
typealias CGPathApplierFunction = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<CGPathElement>) -> Void
func CGPathApply(path: CGPath?, _ info: UnsafeMutablePointer<Void>, _ function: CGPathApplierFunction?)
class CGPattern {
}
typealias CGPatternRef = CGPattern
enum CGPatternTiling : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NoDistortion
  case ConstantSpacingMinimalDistortion
  case ConstantSpacing
}
typealias CGPatternDrawPatternCallback = @convention(c) (UnsafeMutablePointer<Void>, CGContext?) -> Void
typealias CGPatternReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGPatternCallbacks {
  var version: UInt32
  var drawPattern: CGPatternDrawPatternCallback?
  var releaseInfo: CGPatternReleaseInfoCallback?
  init()
  init(version: UInt32, drawPattern: CGPatternDrawPatternCallback?, releaseInfo: CGPatternReleaseInfoCallback?)
}
func CGPatternGetTypeID() -> CFTypeID
func CGPatternCreate(info: UnsafeMutablePointer<Void>, _ bounds: CGRect, _ matrix: CGAffineTransform, _ xStep: CGFloat, _ yStep: CGFloat, _ tiling: CGPatternTiling, _ isColored: Bool, _ callbacks: UnsafePointer<CGPatternCallbacks>) -> CGPattern?
typealias CGEventErr = CGError
typealias CGButtonCount = UInt32
typealias CGWheelCount = UInt32
typealias CGCharCode = UInt16
typealias CGKeyCode = UInt16
typealias CGScreenRefreshCallback = @convention(c) (UInt32, UnsafePointer<CGRect>, UnsafeMutablePointer<Void>) -> Void
struct CGScreenUpdateOperation : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Refresh: CGScreenUpdateOperation { get }
  static var Move: CGScreenUpdateOperation { get }
  static var ReducedDirtyRectangleCount: CGScreenUpdateOperation { get }
}
struct CGScreenUpdateMoveDelta {
  var dX: Int32
  var dY: Int32
  init()
  init(dX: Int32, dY: Int32)
}
typealias CGScreenUpdateMoveCallback = @convention(c) (CGScreenUpdateMoveDelta, Int, UnsafePointer<CGRect>, UnsafeMutablePointer<Void>) -> Void
func CGWarpMouseCursorPosition(newCursorPosition: CGPoint) -> CGError
var kCGMouseDownEventMaskingDeadSwitchTimeout: Double { get }
func CGAssociateMouseAndMouseCursorPosition(connected: boolean_t) -> CGError
func CGWindowServerCreateServerPort() -> CFMachPort?
struct CGEventFilterMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PermitLocalMouseEvents: CGEventFilterMask { get }
  static var PermitLocalKeyboardEvents: CGEventFilterMask { get }
  static var PermitSystemDefinedEvents: CGEventFilterMask { get }
}
enum CGEventSuppressionState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case EventSuppressionStateSuppressionInterval
  case EventSuppressionStateRemoteMouseDrag
  case NumberOfEventSuppressionStates
}
typealias CGRectCount = UInt32
func CGSessionCopyCurrentDictionary() -> CFDictionary?
var kCGSessionUserIDKey: String { get }
var kCGSessionUserNameKey: String { get }
var kCGSessionConsoleSetKey: String { get }
var kCGSessionOnConsoleKey: String { get }
var kCGSessionLoginDoneKey: String { get }
var kCGNotifyGUIConsoleSessionChanged: String { get }
var kCGNotifyGUISessionUserChanged: String { get }
class CGShading {
}
typealias CGShadingRef = CGShading
func CGShadingGetTypeID() -> CFTypeID
func CGShadingCreateAxial(space: CGColorSpace?, _ start: CGPoint, _ end: CGPoint, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
func CGShadingCreateRadial(space: CGColorSpace?, _ start: CGPoint, _ startRadius: CGFloat, _ end: CGPoint, _ endRadius: CGFloat, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
typealias CGWindowID = UInt32
enum CGWindowSharingType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case ReadOnly
  case ReadWrite
}
enum CGWindowBackingType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case BackingStoreRetained
  case BackingStoreNonretained
  case BackingStoreBuffered
}
let kCGWindowNumber: CFString
let kCGWindowStoreType: CFString
let kCGWindowLayer: CFString
let kCGWindowBounds: CFString
let kCGWindowSharingState: CFString
let kCGWindowAlpha: CFString
let kCGWindowOwnerPID: CFString
let kCGWindowMemoryUsage: CFString
let kCGWindowOwnerName: CFString
let kCGWindowName: CFString
let kCGWindowIsOnscreen: CFString
let kCGWindowBackingLocationVideoMemory: CFString
struct CGWindowListOption : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var OptionAll: CGWindowListOption { get }
  static var OptionOnScreenOnly: CGWindowListOption { get }
  static var OptionOnScreenAboveWindow: CGWindowListOption { get }
  static var OptionOnScreenBelowWindow: CGWindowListOption { get }
  static var OptionIncludingWindow: CGWindowListOption { get }
  static var ExcludeDesktopElements: CGWindowListOption { get }
}
func CGWindowListCopyWindowInfo(option: CGWindowListOption, _ relativeToWindow: CGWindowID) -> CFArray?
func CGWindowListCreateDescriptionFromArray(windowArray: CFArray?) -> CFArray?
struct CGWindowImageOption : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Default: CGWindowImageOption { get }
  static var BoundsIgnoreFraming: CGWindowImageOption { get }
  static var ShouldBeOpaque: CGWindowImageOption { get }
  static var OnlyShadows: CGWindowImageOption { get }
  static var BestResolution: CGWindowImageOption { get }
  static var NominalResolution: CGWindowImageOption { get }
}
func CGWindowListCreateImage(screenBounds: CGRect, _ listOption: CGWindowListOption, _ windowID: CGWindowID, _ imageOption: CGWindowImageOption) -> CGImage?
func CGWindowListCreateImageFromArray(screenBounds: CGRect, _ windowArray: CFArray, _ imageOption: CGWindowImageOption) -> CGImage?
enum CGWindowLevelKey : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case BaseWindowLevelKey
  case MinimumWindowLevelKey
  case DesktopWindowLevelKey
  case BackstopMenuLevelKey
  case NormalWindowLevelKey
  case FloatingWindowLevelKey
  case TornOffMenuWindowLevelKey
  case DockWindowLevelKey
  case MainMenuWindowLevelKey
  case StatusWindowLevelKey
  case ModalPanelWindowLevelKey
  case PopUpMenuWindowLevelKey
  case DraggingWindowLevelKey
  case ScreenSaverWindowLevelKey
  case MaximumWindowLevelKey
  case OverlayWindowLevelKey
  case HelpWindowLevelKey
  case UtilityWindowLevelKey
  case DesktopIconWindowLevelKey
  case CursorWindowLevelKey
  case AssistiveTechHighWindowLevelKey
  case NumberOfWindowLevelKeys
}
typealias CGWindowLevel = Int32
func CGWindowLevelForKey(key: CGWindowLevelKey) -> CGWindowLevel
var kCGNumReservedWindowLevels: Int32 { get }
