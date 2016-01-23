
let NSFontAttributeName: String
let NSParagraphStyleAttributeName: String
let NSForegroundColorAttributeName: String
let NSBackgroundColorAttributeName: String
let NSLigatureAttributeName: String
let NSKernAttributeName: String
let NSStrikethroughStyleAttributeName: String
let NSUnderlineStyleAttributeName: String
let NSStrokeColorAttributeName: String
let NSStrokeWidthAttributeName: String
let NSShadowAttributeName: String
let NSTextEffectAttributeName: String
let NSAttachmentAttributeName: String
let NSLinkAttributeName: String
let NSBaselineOffsetAttributeName: String
let NSUnderlineColorAttributeName: String
let NSStrikethroughColorAttributeName: String
let NSObliquenessAttributeName: String
let NSExpansionAttributeName: String
let NSWritingDirectionAttributeName: String
let NSVerticalGlyphFormAttributeName: String
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  case StyleThick
  case StyleDouble
  static var PatternSolid: NSUnderlineStyle { get }
  case PatternDot
  case PatternDash
  case PatternDashDot
  case PatternDashDotDot
  case ByWord
}
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
let NSTextEffectLetterpressStyle: String
extension MutableAttributedString {
  func fixAttributesIn(range: NSRange)
}
let NSPlainTextDocumentType: String
let NSRTFTextDocumentType: String
let NSRTFDTextDocumentType: String
let NSHTMLTextDocumentType: String
let NSTextLayoutSectionOrientation: String
let NSTextLayoutSectionRange: String
let NSDocumentTypeDocumentAttribute: String
let NSCharacterEncodingDocumentAttribute: String
let NSDefaultAttributesDocumentAttribute: String
let NSPaperSizeDocumentAttribute: String
let NSPaperMarginDocumentAttribute: String
let NSViewSizeDocumentAttribute: String
let NSViewZoomDocumentAttribute: String
let NSViewModeDocumentAttribute: String
let NSReadOnlyDocumentAttribute: String
let NSBackgroundColorDocumentAttribute: String
let NSHyphenationFactorDocumentAttribute: String
let NSDefaultTabIntervalDocumentAttribute: String
let NSTextLayoutSectionsAttribute: String
extension AttributedString {
  init(url: URL, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(data: Data, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  func dataFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> Data
  func fileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> FileWrapper
}
extension MutableAttributedString {
  func readFrom(url: URL, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  func readFrom(data: Data, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension AttributedString {
  func containsAttachmentsIn(range: NSRange) -> Bool
}
enum NSTextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
extension AttributedString {
  init(fileURL url: URL, options: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension MutableAttributedString {
  func readFromFileURL(url: URL, options opts: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
let NSTabColumnTerminatorsAttributeName: String
class NSTextTab : Object, Copying, Coding {
  class func columnTerminatorsFor(aLocale: Locale?) -> CharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
enum NSLineBreakMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
class NSParagraphStyle : Object, Copying, MutableCopying, SecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirectionForLanguage(languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  var tabStops: [NSTextTab] { get }
  var defaultTabInterval: CGFloat { get }
  var allowsDefaultTighteningForTruncation: Bool { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class NSMutableParagraphStyle : NSParagraphStyle {
  var lineSpacing: CGFloat
  var paragraphSpacing: CGFloat
  var alignment: NSTextAlignment
  var firstLineHeadIndent: CGFloat
  var headIndent: CGFloat
  var tailIndent: CGFloat
  var lineBreakMode: NSLineBreakMode
  var minimumLineHeight: CGFloat
  var maximumLineHeight: CGFloat
  var baseWritingDirection: NSWritingDirection
  var lineHeightMultiple: CGFloat
  var paragraphSpacingBefore: CGFloat
  var hyphenationFactor: Float
  var tabStops: [NSTextTab]!
  var defaultTabInterval: CGFloat
  var allowsDefaultTighteningForTruncation: Bool
  func addTabStop(anObject: NSTextTab)
  func removeTabStop(anObject: NSTextTab)
  func setParagraphStyle(obj: NSParagraphStyle)
  init()
  init?(coder aDecoder: Coder)
}
class NSStringDrawingContext : Object {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  func size(attributes attrs: [String : AnyObject]? = [:]) -> CGSize
  func drawAt(point: CGPoint, withAttributes attrs: [String : AnyObject]? = [:])
  func drawIn(rect: CGRect, withAttributes attrs: [String : AnyObject]? = [:])
}
extension AttributedString {
  func size() -> CGSize
  func drawAt(point: CGPoint)
  func drawIn(rect: CGRect)
}
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  func drawWith(rect: CGRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?)
  func boundingRectWith(size: CGSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?) -> CGRect
}
extension AttributedString {
  func drawWith(rect: CGRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  func boundingRectWith(size: CGSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> CGRect
}
extension NSStringDrawingContext {
  var minimumTrackingAdjustment: CGFloat
  var actualTrackingAdjustment: CGFloat { get }
}
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
  case Justified
  case Natural
}
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
typealias UIAccessibilityTraits = UInt64
var UIAccessibilityTraitNone: UIAccessibilityTraits
var UIAccessibilityTraitButton: UIAccessibilityTraits
var UIAccessibilityTraitLink: UIAccessibilityTraits
var UIAccessibilityTraitHeader: UIAccessibilityTraits
var UIAccessibilityTraitSearchField: UIAccessibilityTraits
var UIAccessibilityTraitImage: UIAccessibilityTraits
var UIAccessibilityTraitSelected: UIAccessibilityTraits
var UIAccessibilityTraitPlaysSound: UIAccessibilityTraits
var UIAccessibilityTraitKeyboardKey: UIAccessibilityTraits
var UIAccessibilityTraitStaticText: UIAccessibilityTraits
var UIAccessibilityTraitSummaryElement: UIAccessibilityTraits
var UIAccessibilityTraitNotEnabled: UIAccessibilityTraits
var UIAccessibilityTraitUpdatesFrequently: UIAccessibilityTraits
var UIAccessibilityTraitStartsMediaSession: UIAccessibilityTraits
var UIAccessibilityTraitAdjustable: UIAccessibilityTraits
var UIAccessibilityTraitAllowsDirectInteraction: UIAccessibilityTraits
var UIAccessibilityTraitCausesPageTurn: UIAccessibilityTraits
typealias UIAccessibilityNotifications = UInt32
var UIAccessibilityScreenChangedNotification: UIAccessibilityNotifications
var UIAccessibilityLayoutChangedNotification: UIAccessibilityNotifications
var UIAccessibilityAnnouncementNotification: UIAccessibilityNotifications
let UIAccessibilityAnnouncementDidFinishNotification: String
let UIAccessibilityAnnouncementKeyStringValue: String
let UIAccessibilityAnnouncementKeyWasSuccessful: String
let UIAccessibilityElementFocusedNotification: String
let UIAccessibilityFocusedElementKey: String
let UIAccessibilityUnfocusedElementKey: String
let UIAccessibilityAssistiveTechnologyKey: String
var UIAccessibilityPageScrolledNotification: UIAccessibilityNotifications
var UIAccessibilityPauseAssistiveTechnologyNotification: UIAccessibilityNotifications
var UIAccessibilityResumeAssistiveTechnologyNotification: UIAccessibilityNotifications
let UIAccessibilityNotificationSwitchControlIdentifier: String
let UIAccessibilityNotificationVoiceOverIdentifier: String
enum UIAccessibilityNavigationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Separate
  case Combined
}
let UIAccessibilitySpeechAttributePunctuation: String
let UIAccessibilitySpeechAttributeLanguage: String
let UIAccessibilitySpeechAttributePitch: String
struct UIRectCorner : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TopLeft: UIRectCorner { get }
  static var TopRight: UIRectCorner { get }
  static var BottomLeft: UIRectCorner { get }
  static var BottomRight: UIRectCorner { get }
  static var AllCorners: UIRectCorner { get }
}
class UIBezierPath : Object, Copying, Coding {
  convenience init(rect: CGRect)
  convenience init(ovalIn rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)
  convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  convenience init(cgPath CGPath: CGPath)
  init()
  init?(coder aDecoder: Coder)
  var cgPath: CGPath
  func moveTo(point: CGPoint)
  func addLineTo(point: CGPoint)
  func addCurveTo(endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  func addQuadCurveTo(endPoint: CGPoint, controlPoint: CGPoint)
  func addArcWithCenter(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func close()
  func removeAllPoints()
  func append(bezierPath: UIBezierPath)
  func reversing() -> UIBezierPath
  func apply(transform: CGAffineTransform)
  var isEmpty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func contains(point: CGPoint) -> Bool
  var lineWidth: CGFloat
  var lineCapStyle: CGLineCap
  var lineJoinStyle: CGLineJoin
  var miterLimit: CGFloat
  var flatness: CGFloat
  var usesEvenOddFillRule: Bool
  func setLineDash(pattern: UnsafePointer<CGFloat>, count: Int, phase: CGFloat)
  func getLineDash(pattern: UnsafeMutablePointer<CGFloat>, count: UnsafeMutablePointer<Int>, phase: UnsafeMutablePointer<CGFloat>)
  func fill()
  func stroke()
  func fillWith(blendMode: CGBlendMode, alpha: CGFloat)
  func strokeWith(blendMode: CGBlendMode, alpha: CGFloat)
  func addClip()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
class UIColor : Object, SecureCoding, Copying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(cgColor: CGColor)
  init(patternImage image: UIImage)
  class func black() -> UIColor
  class func darkGray() -> UIColor
  class func lightGray() -> UIColor
  class func white() -> UIColor
  class func gray() -> UIColor
  class func red() -> UIColor
  class func green() -> UIColor
  class func blue() -> UIColor
  class func cyan() -> UIColor
  class func yellow() -> UIColor
  class func magenta() -> UIColor
  class func orange() -> UIColor
  class func purple() -> UIColor
  class func brown() -> UIColor
  class func clear() -> UIColor
  func set()
  func setFill()
  func setStroke()
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func withAlphaComponent(alpha: CGFloat) -> UIColor
  var cgColor: CGColor { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension UIColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
class UIFont : Object, Copying {
  class func preferredFontForTextStyle(style: String) -> UIFont
   init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNamesForFamilyName(familyName: String) -> [String]
  class func systemFontOfSize(fontSize: CGFloat) -> UIFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> UIFont
  class func italicSystemFontOfSize(fontSize: CGFloat) -> UIFont
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func withSize(fontSize: CGFloat) -> UIFont
   init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  func fontDescriptor() -> UIFontDescriptor
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
struct UIFontDescriptorSymbolicTraits : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TraitItalic: UIFontDescriptorSymbolicTraits { get }
  static var TraitBold: UIFontDescriptorSymbolicTraits { get }
  static var TraitExpanded: UIFontDescriptorSymbolicTraits { get }
  static var TraitCondensed: UIFontDescriptorSymbolicTraits { get }
  static var TraitMonoSpace: UIFontDescriptorSymbolicTraits { get }
  static var TraitVertical: UIFontDescriptorSymbolicTraits { get }
  static var TraitUIOptimized: UIFontDescriptorSymbolicTraits { get }
  static var TraitTightLeading: UIFontDescriptorSymbolicTraits { get }
  static var TraitLooseLeading: UIFontDescriptorSymbolicTraits { get }
  static var ClassMask: UIFontDescriptorSymbolicTraits { get }
  static var ClassUnknown: UIFontDescriptorSymbolicTraits { get }
  static var ClassOldStyleSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassTransitionalSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassModernSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassClarendonSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassSlabSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassFreeformSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassSansSerif: UIFontDescriptorSymbolicTraits { get }
  static var ClassOrnamentals: UIFontDescriptorSymbolicTraits { get }
  static var ClassScripts: UIFontDescriptorSymbolicTraits { get }
  static var ClassSymbolic: UIFontDescriptorSymbolicTraits { get }
}
typealias UIFontDescriptorClass = Int
class UIFontDescriptor : Object, Copying, SecureCoding {
  convenience init()
  init?(coder aDecoder: Coder)
  var postscriptName: String { get }
  var pointSize: CGFloat { get }
  var matrix: CGAffineTransform { get }
  var symbolicTraits: UIFontDescriptorSymbolicTraits { get }
  func objectForKey(anAttribute: String) -> AnyObject?
  func fontAttributes() -> [String : AnyObject]
  func matchingFontDescriptorsWithMandatoryKeys(mandatoryKeys: Set<String>?) -> [UIFontDescriptor]
   init(name fontName: String, size: CGFloat)
   init(name fontName: String, matrix: CGAffineTransform)
  class func preferredFontDescriptorWithTextStyle(style: String) -> UIFontDescriptor
  init(fontAttributes attributes: [String : AnyObject] = [:])
  func addingAttributes(attributes: [String : AnyObject] = [:]) -> UIFontDescriptor
  func withSymbolicTraits(symbolicTraits: UIFontDescriptorSymbolicTraits) -> UIFontDescriptor
  func withSize(newPointSize: CGFloat) -> UIFontDescriptor
  func withMatrix(matrix: CGAffineTransform) -> UIFontDescriptor
  func withFace(newFace: String) -> UIFontDescriptor
  func withFamily(newFamily: String) -> UIFontDescriptor
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
let UIFontDescriptorFamilyAttribute: String
let UIFontDescriptorNameAttribute: String
let UIFontDescriptorFaceAttribute: String
let UIFontDescriptorSizeAttribute: String
let UIFontDescriptorVisibleNameAttribute: String
let UIFontDescriptorMatrixAttribute: String
let UIFontDescriptorCharacterSetAttribute: String
let UIFontDescriptorCascadeListAttribute: String
let UIFontDescriptorTraitsAttribute: String
let UIFontDescriptorFixedAdvanceAttribute: String
let UIFontDescriptorFeatureSettingsAttribute: String
let UIFontDescriptorTextStyleAttribute: String
let UIFontSymbolicTrait: String
let UIFontWeightTrait: String
let UIFontWidthTrait: String
let UIFontSlantTrait: String
let UIFontWeightUltraLight: CGFloat
let UIFontWeightThin: CGFloat
let UIFontWeightLight: CGFloat
let UIFontWeightRegular: CGFloat
let UIFontWeightMedium: CGFloat
let UIFontWeightSemibold: CGFloat
let UIFontWeightBold: CGFloat
let UIFontWeightHeavy: CGFloat
let UIFontWeightBlack: CGFloat
let UIFontFeatureTypeIdentifierKey: String
let UIFontFeatureSelectorIdentifierKey: String
let UIFontTextStyleTitle1: String
let UIFontTextStyleTitle2: String
let UIFontTextStyleTitle3: String
let UIFontTextStyleHeadline: String
let UIFontTextStyleSubheadline: String
let UIFontTextStyleBody: String
let UIFontTextStyleCallout: String
let UIFontTextStyleFootnote: String
let UIFontTextStyleCaption1: String
let UIFontTextStyleCaption2: String
struct UIEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}
extension UIEdgeInsets : Equatable {
}
struct UIOffset {
  var horizontal: CGFloat
  var vertical: CGFloat
  init()
  init(horizontal: CGFloat, vertical: CGFloat)
}
extension UIOffset : Equatable {
}
struct UIRectEdge : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIRectEdge { get }
  static var Top: UIRectEdge { get }
  static var Left: UIRectEdge { get }
  static var Bottom: UIRectEdge { get }
  static var Right: UIRectEdge { get }
  static var All: UIRectEdge { get }
}
func UIEdgeInsetsMake(top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> UIEdgeInsets
func UIEdgeInsetsInsetRect(rect: CGRect, _ insets: UIEdgeInsets) -> CGRect
func UIOffsetMake(horizontal: CGFloat, _ vertical: CGFloat) -> UIOffset
func UIEdgeInsetsEqualToEdgeInsets(insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> Bool
func UIOffsetEqualToOffset(offset1: UIOffset, _ offset2: UIOffset) -> Bool
let UIEdgeInsetsZero: UIEdgeInsets
let UIOffsetZero: UIOffset
func NSStringFromCGPoint(point: CGPoint) -> String
func NSStringFromCGVector(vector: CGVector) -> String
func NSStringFromCGSize(size: CGSize) -> String
func NSStringFromCGRect(rect: CGRect) -> String
func NSStringFromCGAffineTransform(transform: CGAffineTransform) -> String
func NSStringFromUIEdgeInsets(insets: UIEdgeInsets) -> String
func NSStringFromUIOffset(offset: UIOffset) -> String
func CGPointFromString(string: String) -> CGPoint
func CGVectorFromString(string: String) -> CGVector
func CGSizeFromString(string: String) -> CGSize
func CGRectFromString(string: String) -> CGRect
func CGAffineTransformFromString(string: String) -> CGAffineTransform
func UIEdgeInsetsFromString(string: String) -> UIEdgeInsets
func UIOffsetFromString(string: String) -> UIOffset
extension Value {
   init(cgPoint point: CGPoint)
   init(cgVector vector: CGVector)
   init(cgSize size: CGSize)
   init(cgRect rect: CGRect)
   init(cgAffineTransform transform: CGAffineTransform)
   init(uiEdgeInsets insets: UIEdgeInsets)
   init(uiOffset insets: UIOffset)
  func cgPointValue() -> CGPoint
  func cgVectorValue() -> CGVector
  func cgSizeValue() -> CGSize
  func cgRectValue() -> CGRect
  func cgAffineTransform() -> CGAffineTransform
  func uiEdgeInsetsValue() -> UIEdgeInsets
  func uiOffsetValue() -> UIOffset
}
extension Coder {
  func encode(point: CGPoint, forKey key: String)
  func encode(vector: CGVector, forKey key: String)
  func encode(size: CGSize, forKey key: String)
  func encode(rect: CGRect, forKey key: String)
  func encode(transform: CGAffineTransform, forKey key: String)
  func encode(insets: UIEdgeInsets, forKey key: String)
  func encode(offset: UIOffset, forKey key: String)
  func decodeCGPointForKey(key: String) -> CGPoint
  func decodeCGVectorForKey(key: String) -> CGVector
  func decodeCGSizeForKey(key: String) -> CGSize
  func decodeCGRectForKey(key: String) -> CGRect
  func decodeCGAffineTransformForKey(key: String) -> CGAffineTransform
  func decodeUIEdgeInsetsForKey(key: String) -> UIEdgeInsets
  func decodeUIOffsetForKey(key: String) -> UIOffset
}
func UIGraphicsGetCurrentContext() -> CGContext?
func UIGraphicsPushContext(context: CGContext)
func UIGraphicsPopContext()
func UIRectFillUsingBlendMode(rect: CGRect, _ blendMode: CGBlendMode)
func UIRectFill(rect: CGRect)
func UIRectFrameUsingBlendMode(rect: CGRect, _ blendMode: CGBlendMode)
func UIRectFrame(rect: CGRect)
func UIRectClip(rect: CGRect)
func UIGraphicsBeginImageContext(size: CGSize)
func UIGraphicsBeginImageContextWithOptions(size: CGSize, _ opaque: Bool, _ scale: CGFloat)
func UIGraphicsGetImageFromCurrentImageContext() -> UIImage!
func UIGraphicsEndImageContext()
func UIGraphicsBeginPDFContextToFile(path: String, _ bounds: CGRect, _ documentInfo: [Object : AnyObject]?) -> Bool
func UIGraphicsBeginPDFContextToData(data: MutableData, _ bounds: CGRect, _ documentInfo: [Object : AnyObject]?)
func UIGraphicsEndPDFContext()
func UIGraphicsBeginPDFPage()
func UIGraphicsBeginPDFPageWithInfo(bounds: CGRect, _ pageInfo: [Object : AnyObject]?)
func UIGraphicsGetPDFContextBounds() -> CGRect
func UIGraphicsSetPDFContextURLForRect(url: URL, _ rect: CGRect)
func UIGraphicsAddPDFContextDestinationAtPoint(name: String, _ point: CGPoint)
func UIGraphicsSetPDFContextDestinationForRect(name: String, _ rect: CGRect)
enum UIImageOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Left
  case Right
  case UpMirrored
  case DownMirrored
  case LeftMirrored
  case RightMirrored
}
enum UIImageResizingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Tile
  case Stretch
}
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case AlwaysOriginal
  case AlwaysTemplate
}
class UIImage : Object, SecureCoding {
   init?(named name: String)
  init?(contentsOfFile path: String)
  init?(data: Data)
  init?(data: Data, scale: CGFloat)
  init(cgImage: CGImage)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  var imageOrientation: UIImageOrientation { get }
  var scale: CGFloat { get }
  class func animatedImageNamed(name: String, duration: TimeInterval) -> UIImage?
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: TimeInterval) -> UIImage?
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: TimeInterval) -> UIImage?
  class func animatedImageWith(images: [UIImage], duration: TimeInterval) -> UIImage?
  var images: [UIImage]? { get }
  var duration: TimeInterval { get }
  func drawAt(point: CGPoint)
  func drawAt(point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func drawIn(rect: CGRect)
  func drawIn(rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPatternIn(rect: CGRect)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  var capInsets: UIEdgeInsets { get }
  var resizingMode: UIImageResizingMode { get }
  func withAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  var alignmentRectInsets: UIEdgeInsets { get }
  func withRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  var renderingMode: UIImageRenderingMode { get }
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
extension UIImage {
  func stretchableImageWithLeftCapWidth(leftCapWidth: Int, topCapHeight: Int) -> UIImage
  var leftCapWidth: Int { get }
  var topCapHeight: Int { get }
}
func UIImagePNGRepresentation(image: UIImage) -> Data?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> Data?
class UILocalNotification : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  @NSCopying var fireDate: Date?
  @NSCopying var timeZone: TimeZone?
  var repeatInterval: CalendarUnit
  @NSCopying var repeatCalendar: Calendar?
  var regionTriggersOnce: Bool
  var alertBody: String?
  var hasAction: Bool
  var alertAction: String?
  var alertLaunchImage: String?
  var alertTitle: String?
  var soundName: String?
  var applicationIconBadgeNumber: Int
  var userInfo: [Object : AnyObject]?
  var category: String?
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
let UILocalNotificationDefaultSoundName: String
