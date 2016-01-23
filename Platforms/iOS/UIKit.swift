
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
extension NSMutableAttributedString {
  func fixAttributesInRange(range: NSRange)
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
extension NSAttributedString {
  init(URL url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  func dataFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSData
  func fileWrapperFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSFileWrapper
}
extension NSMutableAttributedString {
  func readFromURL(url: NSURL, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  func readFromData(data: NSData, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension NSAttributedString {
  func containsAttachmentsInRange(range: NSRange) -> Bool
}
enum NSTextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
extension NSAttributedString {
  init(fileURL url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension NSMutableAttributedString {
  func readFromFileURL(url: NSURL, options opts: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
/// NSDataAsset represents the contents of data entries in your asset catalog.
/// Data assets are not in the same class of stored content as images, so you cannot use a data asset to get image data for an image.
class NSDataAsset : NSObject, NSCopying {
  /// Equivalent to -initWithName:name bundle:[NSBundle mainBundle];
  convenience init?(name: String)
  /// Create a data asset with the given name from the given bundle. Returns nil if the asset was not found.
  init?(name: String, bundle: NSBundle)
  /// The name used to reference the data asset
  var name: String { get }
  /// The data for this asset, as stored in the asset catalog
  @NSCopying var data: NSData { get }
  /// The Uniform Type Identifier for this data object.
  var typeIdentifier: String { get }
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSFileProviderExtension : NSObject {
  class func writePlaceholderAtURL(placeholderURL: NSURL, withMetadata metadata: [NSObject : AnyObject]) throws
  class func placeholderURLForURL(url: NSURL) -> NSURL
  func providerIdentifier() -> String
  func documentStorageURL() -> NSURL
  func URLForItemWithPersistentIdentifier(identifier: String) -> NSURL?
  func persistentIdentifierForItemAtURL(url: NSURL) -> String?
  func providePlaceholderAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  func startProvidingItemAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  func itemChangedAtURL(url: NSURL)
  func stopProvidingItemAtURL(url: NSURL)
  init()
}
class NSLayoutAnchor : NSObject {
  func constraintEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
class NSLayoutXAxisAnchor : NSLayoutAnchor {
  init()
}
class NSLayoutYAxisAnchor : NSLayoutAnchor {
  init()
}
class NSLayoutDimension : NSLayoutAnchor {
  func constraintEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
enum NSLayoutRelation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LessThanOrEqual
  case Equal
  case GreaterThanOrEqual
}
enum NSLayoutAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Right
  case Top
  case Bottom
  case Leading
  case Trailing
  case Width
  case Height
  case CenterX
  case CenterY
  case Baseline
  static var LastBaseline: NSLayoutAttribute { get }
  case FirstBaseline
  case LeftMargin
  case RightMargin
  case TopMargin
  case BottomMargin
  case LeadingMargin
  case TrailingMargin
  case CenterXWithinMargins
  case CenterYWithinMargins
  case NotAnAttribute
}
struct NSLayoutFormatOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AlignAllLeft: NSLayoutFormatOptions { get }
  static var AlignAllRight: NSLayoutFormatOptions { get }
  static var AlignAllTop: NSLayoutFormatOptions { get }
  static var AlignAllBottom: NSLayoutFormatOptions { get }
  static var AlignAllLeading: NSLayoutFormatOptions { get }
  static var AlignAllTrailing: NSLayoutFormatOptions { get }
  static var AlignAllCenterX: NSLayoutFormatOptions { get }
  static var AlignAllCenterY: NSLayoutFormatOptions { get }
  static var AlignAllBaseline: NSLayoutFormatOptions { get }
  static var AlignAllLastBaseline: NSLayoutFormatOptions { get }
  static var AlignAllFirstBaseline: NSLayoutFormatOptions { get }
  static var AlignmentMask: NSLayoutFormatOptions { get }
  static var DirectionLeadingToTrailing: NSLayoutFormatOptions { get }
  static var DirectionLeftToRight: NSLayoutFormatOptions { get }
  static var DirectionRightToLeft: NSLayoutFormatOptions { get }
  static var DirectionMask: NSLayoutFormatOptions { get }
}
typealias UILayoutPriority = Float
let UILayoutPriorityRequired: UILayoutPriority
let UILayoutPriorityDefaultHigh: UILayoutPriority
let UILayoutPriorityDefaultLow: UILayoutPriority
let UILayoutPriorityFittingSizeLevel: UILayoutPriority
class NSLayoutConstraint : NSObject {
  class func constraintsWithVisualFormat(format: String, options opts: NSLayoutFormatOptions, metrics: [String : AnyObject]?, views: [String : AnyObject]) -> [NSLayoutConstraint]
  convenience init(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute, multiplier: CGFloat, constant c: CGFloat)
  var priority: UILayoutPriority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject { get }
  var firstAttribute: NSLayoutAttribute { get }
  var relation: NSLayoutRelation { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var secondAttribute: NSLayoutAttribute { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  var active: Bool
  class func activateConstraints(constraints: [NSLayoutConstraint])
  class func deactivateConstraints(constraints: [NSLayoutConstraint])
  init()
}
extension NSLayoutConstraint {
  var identifier: String?
}
protocol UILayoutSupport : NSObjectProtocol {
  var length: CGFloat { get }
  var topAnchor: NSLayoutYAxisAnchor { get }
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  var heightAnchor: NSLayoutDimension { get }
}
enum NSTextLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
enum NSGlyphProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Null
  case ControlCharacter
  case Elastic
  case NonBaseCharacter
}
enum NSControlCharacterAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ZeroAdvancement
  case Whitespace
  case HorizontalTab
  case LineBreak
  case ParagraphBreak
  case ContainerBreak
}
protocol NSTextLayoutOrientationProvider {
  var layoutOrientation: NSTextLayoutOrientation { get }
}
class NSLayoutManager : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, atIndex index: Int)
  func removeTextContainerAtIndex(index: Int)
  func textContainerChangedGeometry(container: NSTextContainer)
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: CGFloat
  var usesFontLeading: Bool
  var allowsNonContiguousLayout: Bool
  var hasNonContiguousLayout: Bool { get }
  func invalidateGlyphsForCharacterRange(charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateLayoutForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(charRange: NSRange)
  func invalidateDisplayForGlyphRange(glyphRange: NSRange)
  func processEditingForTextStorage(textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphsForCharacterRange(charRange: NSRange)
  func ensureGlyphsForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForCharacterRange(charRange: NSRange)
  func ensureLayoutForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForTextContainer(container: NSTextContainer)
  func ensureLayoutForBoundingRect(bounds: CGRect, inTextContainer container: NSTextContainer)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  func CGGlyphAtIndex(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func CGGlyphAtIndex(glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(glyphIndex: Int) -> Bool
  func propertyForGlyphAtIndex(glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAtIndex(glyphIndex: Int) -> Int
  func glyphIndexForCharacterAtIndex(charIndex: Int) -> Int
  func getGlyphsInRange(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(fragmentRect: CGRect, forGlyphRange glyphRange: NSRange, usedRect: CGRect)
  func setExtraLineFragmentRect(fragmentRect: CGRect, usedRect: CGRect, textContainer container: NSTextContainer)
  func setLocation(location: CGPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setAttachmentSize(attachmentSize: CGSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(charIndex: UnsafeMutablePointer<Int>, glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  func textContainerForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectForTextContainer(container: NSTextContainer) -> CGRect
  func lineFragmentRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> CGRect
  func lineFragmentRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  func lineFragmentUsedRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> CGRect
  func lineFragmentUsedRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  var extraLineFragmentRect: CGRect { get }
  var extraLineFragmentUsedRect: CGRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAtIndex(glyphIndex: Int) -> CGPoint
  func notShownAttributeForGlyphAtIndex(glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAtIndex(glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAtIndex(glyphIndex: Int) -> CGSize
  func truncatedGlyphRangeInLineFragmentForGlyphAtIndex(glyphIndex: Int) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForTextContainer(container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContainingIndex(glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(glyphRange: NSRange, inTextContainer container: NSTextContainer) -> CGRect
  func glyphRangeForBoundingRect(bounds: CGRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(bounds: CGRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphIndexForPoint(point: CGPoint, inTextContainer container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexForPoint(point: CGPoint, inTextContainer container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphForPoint(point: CGPoint, inTextContainer container: NSTextContainer) -> CGFloat
  func characterIndexForPoint(point: CGPoint, inTextContainer container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAtIndex(charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  func enumerateLineFragmentsForGlyphRange(glyphRange: NSRange, usingBlock block: (CGRect, CGRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateEnclosingRectsForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, inTextContainer textContainer: NSTextContainer, usingBlock block: (CGRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackgroundForGlyphRange(glyphsToShow: NSRange, atPoint origin: CGPoint)
  func drawGlyphsForGlyphRange(glyphsToShow: NSRange, atPoint origin: CGPoint)
  func showCGGlyphs(glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, matrix textMatrix: CGAffineTransform, attributes: [String : AnyObject], inContext graphicsContext: CGContext)
  func fillBackgroundRectArray(rectArray: UnsafePointer<CGRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: UIColor)
  func drawUnderlineForGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func underlineGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func drawStrikethroughForGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func strikethroughGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func encodeWithCoder(aCoder: NSCoder)
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> Int
  optional func layoutManager(layoutManager: NSLayoutManager, lineSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUseAction action: NSControlCharacterAction, forControlCharacterAtIndex charIndex: Int) -> NSControlCharacterAction
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAtIndex charIndex: Int) -> Bool
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAtIndex charIndex: Int) -> Bool
  optional func layoutManager(layoutManager: NSLayoutManager, boundingBoxForControlGlyphAtIndex glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: CGRect, glyphPosition: CGPoint, characterIndex charIndex: Int) -> CGRect
  optional func layoutManager(layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<CGRect>, lineFragmentUsedRect: UnsafeMutablePointer<CGRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, inTextContainer textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  optional func layoutManagerDidInvalidateLayout(sender: NSLayoutManager)
  optional func layoutManager(layoutManager: NSLayoutManager, didCompleteLayoutForTextContainer textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  optional func layoutManager(layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFromSize oldSize: CGSize)
}
var NSControlCharacterZeroAdvancementAction: Int { get }
var NSControlCharacterWhitespaceAction: Int { get }
var NSControlCharacterHorizontalTabAction: Int { get }
var NSControlCharacterLineBreakAction: Int { get }
var NSControlCharacterParagraphBreakAction: Int { get }
var NSControlCharacterContainerBreakAction: Int { get }
extension NSLayoutManager {
  func glyphAtIndex(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func glyphAtIndex(glyphIndex: Int) -> CGGlyph
}
let NSTabColumnTerminatorsAttributeName: String
class NSTextTab : NSObject, NSCopying, NSCoding {
  class func columnTerminatorsForLocale(aLocale: NSLocale?) -> NSCharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
class NSParagraphStyle : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
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
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
  init?(coder aDecoder: NSCoder)
}
class NSShadow : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  func sizeWithAttributes(attrs: [String : AnyObject]?) -> CGSize
  func drawAtPoint(point: CGPoint, withAttributes attrs: [String : AnyObject]?)
  func drawInRect(rect: CGRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  func size() -> CGSize
  func drawAtPoint(point: CGPoint)
  func drawInRect(rect: CGRect)
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
  func drawWithRect(rect: CGRect, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?)
  func boundingRectWithSize(size: CGSize, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  func drawWithRect(rect: CGRect, options: NSStringDrawingOptions, context: NSStringDrawingContext?)
  func boundingRectWithSize(size: CGSize, options: NSStringDrawingOptions, context: NSStringDrawingContext?) -> CGRect
}
extension NSStringDrawingContext {
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
func NSTextAlignmentToCTTextAlignment(nsTextAlignment: NSTextAlignment) -> CTTextAlignment
func NSTextAlignmentFromCTTextAlignment(ctTextAlignment: CTTextAlignment) -> NSTextAlignment
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : NSObjectProtocol {
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSCoding {
  init(data contentData: NSData?, ofType uti: String?)
  @NSCopying var contents: NSData?
  var fileType: String?
  var image: UIImage?
  var bounds: CGRect
  var fileWrapper: NSFileWrapper?
  convenience init()
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
   init(attachment: NSTextAttachment)
}
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {
  init(size: CGSize)
  init?(coder: NSCoder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)
  var size: CGSize
  var exclusionPaths: [UIBezierPath]
  var lineBreakMode: NSLineBreakMode
  var lineFragmentPadding: CGFloat
  var maximumNumberOfLines: Int
  func lineFragmentRectForProposedRect(proposedRect: CGRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect: UnsafeMutablePointer<CGRect>) -> CGRect
  var simpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EditedAttributes: NSTextStorageEditActions { get }
  static var EditedCharacters: NSTextStorageEditActions { get }
}
class NSTextStorage : NSMutableAttributedString {
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(aLayoutManager: NSLayoutManager)
  func removeLayoutManager(aLayoutManager: NSLayoutManager)
  var editedMask: NSTextStorageEditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSTextStorageDelegate?
  func edited(editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributesInRange(range: NSRange)
  func ensureAttributesAreFixedInRange(range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  init(URL url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(fileURL url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}
protocol NSTextStorageDelegate : NSObjectProtocol {
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}
let NSTextStorageWillProcessEditingNotification: String
let NSTextStorageDidProcessEditingNotification: String
typealias UIAccelerationValue = Double
protocol UIAccelerometerDelegate : NSObjectProtocol {
}
extension NSObject {
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityHint: String?
  var accessibilityValue: String?
  var accessibilityTraits: UIAccessibilityTraits
  var accessibilityFrame: CGRect
  @NSCopying var accessibilityPath: UIBezierPath?
  var accessibilityActivationPoint: CGPoint
  var accessibilityLanguage: String?
  var accessibilityElementsHidden: Bool
  var accessibilityViewIsModal: Bool
  var shouldGroupAccessibilityChildren: Bool
  var accessibilityNavigationStyle: UIAccessibilityNavigationStyle
  class func isAccessibilityElement() -> Bool
  class func setIsAccessibilityElement(isAccessibilityElement: Bool)
  class func accessibilityLabel() -> String?
  class func setAccessibilityLabel(accessibilityLabel: String?)
  class func accessibilityHint() -> String?
  class func setAccessibilityHint(accessibilityHint: String?)
  class func accessibilityValue() -> String?
  class func setAccessibilityValue(accessibilityValue: String?)
  class func accessibilityTraits() -> UIAccessibilityTraits
  class func setAccessibilityTraits(accessibilityTraits: UIAccessibilityTraits)
  class func accessibilityFrame() -> CGRect
  class func setAccessibilityFrame(accessibilityFrame: CGRect)
  class func accessibilityPath() -> UIBezierPath?
  class func setAccessibilityPath(accessibilityPath: UIBezierPath?)
  class func accessibilityActivationPoint() -> CGPoint
  class func setAccessibilityActivationPoint(accessibilityActivationPoint: CGPoint)
  class func accessibilityLanguage() -> String?
  class func setAccessibilityLanguage(accessibilityLanguage: String?)
  class func accessibilityElementsHidden() -> Bool
  class func setAccessibilityElementsHidden(accessibilityElementsHidden: Bool)
  class func accessibilityViewIsModal() -> Bool
  class func setAccessibilityViewIsModal(accessibilityViewIsModal: Bool)
  class func shouldGroupAccessibilityChildren() -> Bool
  class func setShouldGroupAccessibilityChildren(shouldGroupAccessibilityChildren: Bool)
  class func accessibilityNavigationStyle() -> UIAccessibilityNavigationStyle
  class func setAccessibilityNavigationStyle(accessibilityNavigationStyle: UIAccessibilityNavigationStyle)
  class func accessibilityHeaderElements() -> [AnyObject]?
  class func setAccessibilityHeaderElements(accessibilityHeaderElements: [AnyObject]?)
}
func UIAccessibilityConvertFrameToScreenCoordinates(rect: CGRect, _ view: UIView) -> CGRect
func UIAccessibilityConvertPathToScreenCoordinates(path: UIBezierPath, _ view: UIView) -> UIBezierPath
extension NSObject {
  class func accessibilityElementCount() -> Int
  func accessibilityElementCount() -> Int
  class func accessibilityElementAtIndex(index: Int) -> AnyObject?
  func accessibilityElementAtIndex(index: Int) -> AnyObject?
  class func indexOfAccessibilityElement(element: AnyObject) -> Int
  func indexOfAccessibilityElement(element: AnyObject) -> Int
  var accessibilityElements: [AnyObject]?
  class func accessibilityElements() -> [AnyObject]?
  class func setAccessibilityElements(accessibilityElements: [AnyObject]?)
}
extension NSObject {
  class func accessibilityElementDidBecomeFocused()
  func accessibilityElementDidBecomeFocused()
  class func accessibilityElementDidLoseFocus()
  func accessibilityElementDidLoseFocus()
  class func accessibilityElementIsFocused() -> Bool
  func accessibilityElementIsFocused() -> Bool
  class func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<String>?
  func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<String>?
}
func UIAccessibilityFocusedElement(assistiveTechnologyIdentifier: String?) -> AnyObject?
extension NSObject {
  class func accessibilityActivate() -> Bool
  func accessibilityActivate() -> Bool
  class func accessibilityIncrement()
  func accessibilityIncrement()
  class func accessibilityDecrement()
  func accessibilityDecrement()
  class func accessibilityScroll(direction: UIAccessibilityScrollDirection) -> Bool
  func accessibilityScroll(direction: UIAccessibilityScrollDirection) -> Bool
  class func accessibilityPerformEscape() -> Bool
  func accessibilityPerformEscape() -> Bool
  class func accessibilityPerformMagicTap() -> Bool
  func accessibilityPerformMagicTap() -> Bool
  var accessibilityCustomActions: [UIAccessibilityCustomAction]?
  class func accessibilityCustomActions() -> [UIAccessibilityCustomAction]?
  class func setAccessibilityCustomActions(accessibilityCustomActions: [UIAccessibilityCustomAction]?)
}
enum UIAccessibilityScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Right
  case Left
  case Up
  case Down
  case Next
  case Previous
}
protocol UIAccessibilityReadingContent {
  func accessibilityLineNumberForPoint(point: CGPoint) -> Int
  func accessibilityContentForLineNumber(lineNumber: Int) -> String?
  func accessibilityFrameForLineNumber(lineNumber: Int) -> CGRect
  func accessibilityPageContent() -> String?
}
func UIAccessibilityPostNotification(notification: UIAccessibilityNotifications, _ argument: AnyObject?)
func UIAccessibilityIsVoiceOverRunning() -> Bool
let UIAccessibilityVoiceOverStatusChanged: String
func UIAccessibilityIsMonoAudioEnabled() -> Bool
let UIAccessibilityMonoAudioStatusDidChangeNotification: String
func UIAccessibilityIsClosedCaptioningEnabled() -> Bool
let UIAccessibilityClosedCaptioningStatusDidChangeNotification: String
func UIAccessibilityIsInvertColorsEnabled() -> Bool
let UIAccessibilityInvertColorsStatusDidChangeNotification: String
func UIAccessibilityIsGuidedAccessEnabled() -> Bool
let UIAccessibilityGuidedAccessStatusDidChangeNotification: String
func UIAccessibilityIsBoldTextEnabled() -> Bool
let UIAccessibilityBoldTextStatusDidChangeNotification: String
func UIAccessibilityIsGrayscaleEnabled() -> Bool
let UIAccessibilityGrayscaleStatusDidChangeNotification: String
func UIAccessibilityIsReduceTransparencyEnabled() -> Bool
let UIAccessibilityReduceTransparencyStatusDidChangeNotification: String
func UIAccessibilityIsReduceMotionEnabled() -> Bool
let UIAccessibilityReduceMotionStatusDidChangeNotification: String
func UIAccessibilityDarkerSystemColorsEnabled() -> Bool
let UIAccessibilityDarkerSystemColorsStatusDidChangeNotification: String
func UIAccessibilityIsSwitchControlRunning() -> Bool
let UIAccessibilitySwitchControlStatusDidChangeNotification: String
func UIAccessibilityIsSpeakSelectionEnabled() -> Bool
let UIAccessibilitySpeakSelectionStatusDidChangeNotification: String
func UIAccessibilityIsSpeakScreenEnabled() -> Bool
let UIAccessibilitySpeakScreenStatusDidChangeNotification: String
func UIAccessibilityIsShakeToUndoEnabled() -> Bool
let UIAccessibilityShakeToUndoDidChangeNotification: String
func UIAccessibilityRequestGuidedAccessSession(enable: Bool, _ completionHandler: (Bool) -> Void)
protocol UIPickerViewAccessibilityDelegate : UIPickerViewDelegate {
  optional func pickerView(pickerView: UIPickerView, accessibilityLabelForComponent component: Int) -> String?
  optional func pickerView(pickerView: UIPickerView, accessibilityHintForComponent component: Int) -> String?
}
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  optional func accessibilityScrollStatusForScrollView(scrollView: UIScrollView) -> String?
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
class UIAccessibilityCustomAction : NSObject {
  init(name: String, target: AnyObject?, selector: Selector)
  var name: String
  weak var target: @sil_weak AnyObject?
  var selector: Selector
  init()
}
class UIAccessibilityElement : NSObject, UIAccessibilityIdentification {
  init(accessibilityContainer container: AnyObject)
  unowned(unsafe) var accessibilityContainer: @sil_unmanaged AnyObject?
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityHint: String?
  var accessibilityValue: String?
  var accessibilityFrame: CGRect
  var accessibilityTraits: UIAccessibilityTraits
  init()
  var accessibilityIdentifier: String?
}
protocol UIAccessibilityIdentification : NSObjectProtocol {
  var accessibilityIdentifier: String? { get set }
}
extension UIView : UIAccessibilityIdentification {
  var accessibilityIdentifier: String?
}
extension UIBarItem : UIAccessibilityIdentification {
  var accessibilityIdentifier: String?
}
extension UIImage : UIAccessibilityIdentification {
  var accessibilityIdentifier: String?
}
enum UIAccessibilityZoomType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InsertionPoint
}
func UIAccessibilityZoomFocusChanged(type: UIAccessibilityZoomType, _ frame: CGRect, _ view: UIView)
func UIAccessibilityRegisterGestureConflictWithZoom()
enum UIActionSheetStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Default
  case BlackTranslucent
  case BlackOpaque
}
class UIActionSheet : UIView {
  init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?)
  weak var delegate: @sil_weak UIActionSheetDelegate?
  var title: String
  var actionSheetStyle: UIActionSheetStyle
  func addButtonWithTitle(title: String?) -> Int
  func buttonTitleAtIndex(buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var destructiveButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var visible: Bool { get }
  func showFromToolbar(view: UIToolbar)
  func showFromTabBar(view: UITabBar)
  func showFromBarButtonItem(item: UIBarButtonItem, animated: Bool)
  func showFromRect(rect: CGRect, inView view: UIView, animated: Bool)
  func showInView(view: UIView)
  func dismissWithClickedButtonIndex(buttonIndex: Int, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension UIActionSheet {
  convenience init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIActionSheetDelegate : NSObjectProtocol {
  optional func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int)
  optional func actionSheetCancel(actionSheet: UIActionSheet)
  optional func willPresentActionSheet(actionSheet: UIActionSheet)
  optional func didPresentActionSheet(actionSheet: UIActionSheet)
  optional func actionSheet(actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  optional func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
let UIActivityTypePostToFacebook: String
let UIActivityTypePostToTwitter: String
let UIActivityTypePostToWeibo: String
let UIActivityTypeMessage: String
let UIActivityTypeMail: String
let UIActivityTypePrint: String
let UIActivityTypeCopyToPasteboard: String
let UIActivityTypeAssignToContact: String
let UIActivityTypeSaveToCameraRoll: String
let UIActivityTypeAddToReadingList: String
let UIActivityTypePostToFlickr: String
let UIActivityTypePostToVimeo: String
let UIActivityTypePostToTencentWeibo: String
let UIActivityTypeAirDrop: String
let UIActivityTypeOpenInIBooks: String
enum UIActivityCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Action
  case Share
}
class UIActivity : NSObject {
  class func activityCategory() -> UIActivityCategory
  func activityType() -> String?
  func activityTitle() -> String?
  func activityImage() -> UIImage?
  func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool
  func prepareWithActivityItems(activityItems: [AnyObject])
  func activityViewController() -> UIViewController?
  func performActivity()
  func activityDidFinish(completed: Bool)
  init()
}
enum UIActivityIndicatorViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WhiteLarge
  case White
  case Gray
}
class UIActivityIndicatorView : UIView, NSCoding {
  init(activityIndicatorStyle style: UIActivityIndicatorViewStyle)
  init(frame: CGRect)
  init(coder: NSCoder)
  var activityIndicatorViewStyle: UIActivityIndicatorViewStyle
  var hidesWhenStopped: Bool
  var color: UIColor?
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  convenience init()
}
protocol UIActivityItemSource : NSObjectProtocol {
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  optional func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  optional func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  optional func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
class UIActivityItemProvider : NSOperation, UIActivityItemSource {
  init(placeholderItem: AnyObject)
  var placeholderItem: AnyObject? { get }
  var activityType: String? { get }
  func item() -> AnyObject
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
typealias UIActivityViewControllerCompletionHandler = (String?, Bool) -> Void
typealias UIActivityViewControllerCompletionWithItemsHandler = (String?, Bool, [AnyObject]?, NSError?) -> Void
class UIActivityViewController : UIViewController {
  init(activityItems: [AnyObject], applicationActivities: [UIActivity]?)
  var completionHandler: UIActivityViewControllerCompletionHandler?
  var completionWithItemsHandler: UIActivityViewControllerCompletionWithItemsHandler?
  var excludedActivityTypes: [String]?
}
enum UIAlertActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Cancel
  case Destructive
}
enum UIAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ActionSheet
  case Alert
}
class UIAlertAction : NSObject, NSCopying {
  convenience init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?)
  var title: String? { get }
  var style: UIAlertActionStyle { get }
  var enabled: Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class UIAlertController : UIViewController {
  convenience init(title: String?, message: String?, preferredStyle: UIAlertControllerStyle)
  func addAction(action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  var preferredAction: UIAlertAction?
  func addTextFieldWithConfigurationHandler(configurationHandler: ((UITextField) -> Void)?)
  var textFields: [UITextField]? { get }
  var title: String?
  var message: String?
  var preferredStyle: UIAlertControllerStyle { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum UIAlertViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case SecureTextInput
  case PlainTextInput
  case LoginAndPasswordInput
}
class UIAlertView : UIView {
  convenience init(title: String?, message: String?, delegate: AnyObject?, cancelButtonTitle: String?)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  weak var delegate: @sil_weak AnyObject?
  var title: String
  var message: String?
  func addButtonWithTitle(title: String?) -> Int
  func buttonTitleAtIndex(buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var visible: Bool { get }
  func show()
  func dismissWithClickedButtonIndex(buttonIndex: Int, animated: Bool)
  var alertViewStyle: UIAlertViewStyle
  func textFieldAtIndex(textFieldIndex: Int) -> UITextField?
  convenience init()
}
extension UIAlertView {
  convenience init(title: String, message: String, delegate: UIAlertViewDelegate?, cancelButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIAlertViewDelegate : NSObjectProtocol {
  optional func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int)
  optional func alertViewCancel(alertView: UIAlertView)
  optional func willPresentAlertView(alertView: UIAlertView)
  optional func didPresentAlertView(alertView: UIAlertView)
  optional func alertView(alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int)
  optional func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int)
  optional func alertViewShouldEnableFirstOtherButton(alertView: UIAlertView) -> Bool
}
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  static func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  static func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  static func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
enum UIStatusBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case LightContent
}
enum UIStatusBarAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Fade
  case Slide
}
enum UIInterfaceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Portrait
  case PortraitUpsideDown
  case LandscapeLeft
  case LandscapeRight
}
extension UIInterfaceOrientation {
  var isLandscape: Bool { get }
  var isPortrait: Bool { get }
}
let UIApplicationInvalidInterfaceOrientationException: String
struct UIInterfaceOrientationMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Portrait: UIInterfaceOrientationMask { get }
  static var LandscapeLeft: UIInterfaceOrientationMask { get }
  static var LandscapeRight: UIInterfaceOrientationMask { get }
  static var PortraitUpsideDown: UIInterfaceOrientationMask { get }
  static var Landscape: UIInterfaceOrientationMask { get }
  static var All: UIInterfaceOrientationMask { get }
  static var AllButUpsideDown: UIInterfaceOrientationMask { get }
}
func UIInterfaceOrientationIsPortrait(orientation: UIInterfaceOrientation) -> Bool
func UIInterfaceOrientationIsLandscape(orientation: UIInterfaceOrientation) -> Bool
struct UIRemoteNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIRemoteNotificationType { get }
  static var Badge: UIRemoteNotificationType { get }
  static var Sound: UIRemoteNotificationType { get }
  static var Alert: UIRemoteNotificationType { get }
  static var NewsstandContentAvailability: UIRemoteNotificationType { get }
}
enum UIBackgroundFetchResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
enum UIBackgroundRefreshStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Restricted
  case Denied
  case Available
}
enum UIApplicationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Active
  case Inactive
  case Background
}
typealias UIBackgroundTaskIdentifier = Int
let UIBackgroundTaskInvalid: UIBackgroundTaskIdentifier
let UIMinimumKeepAliveTimeout: NSTimeInterval
let UIApplicationBackgroundFetchIntervalMinimum: NSTimeInterval
let UIApplicationBackgroundFetchIntervalNever: NSTimeInterval
class UIApplication : UIResponder {
  class func sharedApplication() -> UIApplication
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  func beginIgnoringInteractionEvents()
  func endIgnoringInteractionEvents()
  func isIgnoringInteractionEvents() -> Bool
  var idleTimerDisabled: Bool
  func openURL(url: NSURL) -> Bool
  func canOpenURL(url: NSURL) -> Bool
  func sendEvent(event: UIEvent)
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(action: Selector, to target: AnyObject?, from sender: AnyObject?, forEvent event: UIEvent?) -> Bool
  var networkActivityIndicatorVisible: Bool
  func supportedInterfaceOrientationsForWindow(window: UIWindow?) -> UIInterfaceOrientationMask
  var statusBarOrientationAnimationDuration: NSTimeInterval { get }
  var statusBarFrame: CGRect { get }
  var applicationIconBadgeNumber: Int
  var applicationSupportsShakeToEdit: Bool
  var applicationState: UIApplicationState { get }
  var backgroundTimeRemaining: NSTimeInterval { get }
  func beginBackgroundTaskWithExpirationHandler(handler: (() -> Void)?) -> UIBackgroundTaskIdentifier
  func beginBackgroundTaskWithName(taskName: String?, expirationHandler handler: (() -> Void)?) -> UIBackgroundTaskIdentifier
  func endBackgroundTask(identifier: UIBackgroundTaskIdentifier)
  func setMinimumBackgroundFetchInterval(minimumBackgroundFetchInterval: NSTimeInterval)
  var backgroundRefreshStatus: UIBackgroundRefreshStatus { get }
  var protectedDataAvailable: Bool { get }
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  var preferredContentSizeCategory: String { get }
  init()
}
extension UIApplication {
  func registerForRemoteNotifications()
  func unregisterForRemoteNotifications()
  func isRegisteredForRemoteNotifications() -> Bool
  func registerForRemoteNotificationTypes(types: UIRemoteNotificationType)
  func enabledRemoteNotificationTypes() -> UIRemoteNotificationType
}
extension UIApplication {
  func presentLocalNotificationNow(notification: UILocalNotification)
  func scheduleLocalNotification(notification: UILocalNotification)
  func cancelLocalNotification(notification: UILocalNotification)
  func cancelAllLocalNotifications()
  var scheduledLocalNotifications: [UILocalNotification]?
}
extension UIApplication {
  func registerUserNotificationSettings(notificationSettings: UIUserNotificationSettings)
  func currentUserNotificationSettings() -> UIUserNotificationSettings?
}
extension UIApplication {
  func beginReceivingRemoteControlEvents()
  func endReceivingRemoteControlEvents()
}
extension UIApplication {
  func setNewsstandIconImage(image: UIImage?)
}
extension UIApplication {
  var shortcutItems: [UIApplicationShortcutItem]?
}
extension UIApplication {
  func extendStateRestoration()
  func completeStateRestoration()
  func ignoreSnapshotOnNextApplicationLaunch()
  class func registerObjectForStateRestoration(object: UIStateRestoring, restorationIdentifier: String)
}
protocol UIApplicationDelegate : NSObjectProtocol {
  optional func applicationDidFinishLaunching(application: UIApplication)
  optional func application(application: UIApplication, willFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  optional func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  optional func applicationDidBecomeActive(application: UIApplication)
  optional func applicationWillResignActive(application: UIApplication)
  optional func application(application: UIApplication, handleOpenURL url: NSURL) -> Bool
  optional func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool
  optional func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool
  optional func applicationDidReceiveMemoryWarning(application: UIApplication)
  optional func applicationWillTerminate(application: UIApplication)
  optional func applicationSignificantTimeChange(application: UIApplication)
  optional func application(application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration: NSTimeInterval)
  optional func application(application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation)
  optional func application(application: UIApplication, willChangeStatusBarFrame newStatusBarFrame: CGRect)
  optional func application(application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect)
  optional func application(application: UIApplication, didRegisterUserNotificationSettings notificationSettings: UIUserNotificationSettings)
  optional func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  optional func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject])
  optional func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, completionHandler: () -> Void)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [NSObject : AnyObject], withResponseInfo responseInfo: [NSObject : AnyObject], completionHandler: () -> Void)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [NSObject : AnyObject], completionHandler: () -> Void)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, withResponseInfo responseInfo: [NSObject : AnyObject], completionHandler: () -> Void)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject], fetchCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void)
  /// Applications with the "fetch" background mode may be given opportunities to fetch updated content in the background or when it is convenient for the system. This method will be called in these situations. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
  optional func application(application: UIApplication, performFetchWithCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void)
  optional func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void)
  optional func application(application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: () -> Void)
  optional func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply: ([NSObject : AnyObject]?) -> Void)
  optional func applicationShouldRequestHealthAuthorization(application: UIApplication)
  optional func applicationDidEnterBackground(application: UIApplication)
  optional func applicationWillEnterForeground(application: UIApplication)
  optional func applicationProtectedDataWillBecomeUnavailable(application: UIApplication)
  optional func applicationProtectedDataDidBecomeAvailable(application: UIApplication)
  optional var window: UIWindow? { get set }
  optional func application(application: UIApplication, supportedInterfaceOrientationsForWindow window: UIWindow?) -> UIInterfaceOrientationMask
  optional func application(application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: String) -> Bool
  optional func application(application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
  optional func application(application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool
  optional func application(application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool
  optional func application(application: UIApplication, willEncodeRestorableStateWithCoder coder: NSCoder)
  optional func application(application: UIApplication, didDecodeRestorableStateWithCoder coder: NSCoder)
  optional func application(application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  optional func application(application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool
  optional func application(application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: NSError)
  optional func application(application: UIApplication, didUpdateUserActivity userActivity: NSUserActivity)
}
extension UIApplication {
  var statusBarOrientation: UIInterfaceOrientation
  func setStatusBarOrientation(interfaceOrientation: UIInterfaceOrientation, animated: Bool)
  var statusBarStyle: UIStatusBarStyle
  func setStatusBarStyle(statusBarStyle: UIStatusBarStyle, animated: Bool)
  var statusBarHidden: Bool
  func setStatusBarHidden(hidden: Bool, withAnimation animation: UIStatusBarAnimation)
  func setKeepAliveTimeout(timeout: NSTimeInterval, handler keepAliveHandler: (() -> Void)?) -> Bool
  func clearKeepAliveTimeout()
}
func UIApplicationMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ principalClassName: String?, _ delegateClassName: String?) -> Int32
let UITrackingRunLoopMode: String
let UIApplicationDidEnterBackgroundNotification: String
let UIApplicationWillEnterForegroundNotification: String
let UIApplicationDidFinishLaunchingNotification: String
let UIApplicationDidBecomeActiveNotification: String
let UIApplicationWillResignActiveNotification: String
let UIApplicationDidReceiveMemoryWarningNotification: String
let UIApplicationWillTerminateNotification: String
let UIApplicationSignificantTimeChangeNotification: String
let UIApplicationWillChangeStatusBarOrientationNotification: String
let UIApplicationDidChangeStatusBarOrientationNotification: String
let UIApplicationStatusBarOrientationUserInfoKey: String
let UIApplicationWillChangeStatusBarFrameNotification: String
let UIApplicationDidChangeStatusBarFrameNotification: String
let UIApplicationStatusBarFrameUserInfoKey: String
let UIApplicationBackgroundRefreshStatusDidChangeNotification: String
let UIApplicationLaunchOptionsURLKey: String
let UIApplicationLaunchOptionsSourceApplicationKey: String
let UIApplicationLaunchOptionsRemoteNotificationKey: String
let UIApplicationLaunchOptionsLocalNotificationKey: String
let UIApplicationLaunchOptionsAnnotationKey: String
let UIApplicationProtectedDataWillBecomeUnavailable: String
let UIApplicationProtectedDataDidBecomeAvailable: String
let UIApplicationLaunchOptionsLocationKey: String
let UIApplicationLaunchOptionsNewsstandDownloadsKey: String
let UIApplicationLaunchOptionsBluetoothCentralsKey: String
let UIApplicationLaunchOptionsBluetoothPeripheralsKey: String
let UIApplicationLaunchOptionsShortcutItemKey: String
let UIApplicationLaunchOptionsUserActivityDictionaryKey: String
let UIApplicationLaunchOptionsUserActivityTypeKey: String
let UIApplicationOpenSettingsURLString: String
let UIApplicationOpenURLOptionsSourceApplicationKey: String
let UIApplicationOpenURLOptionsAnnotationKey: String
let UIApplicationOpenURLOptionsOpenInPlaceKey: String
let UIContentSizeCategoryExtraSmall: String
let UIContentSizeCategorySmall: String
let UIContentSizeCategoryMedium: String
let UIContentSizeCategoryLarge: String
let UIContentSizeCategoryExtraLarge: String
let UIContentSizeCategoryExtraExtraLarge: String
let UIContentSizeCategoryExtraExtraExtraLarge: String
let UIContentSizeCategoryAccessibilityMedium: String
let UIContentSizeCategoryAccessibilityLarge: String
let UIContentSizeCategoryAccessibilityExtraLarge: String
let UIContentSizeCategoryAccessibilityExtraExtraLarge: String
let UIContentSizeCategoryAccessibilityExtraExtraExtraLarge: String
let UIContentSizeCategoryDidChangeNotification: String
let UIContentSizeCategoryNewValueKey: String
let UIApplicationUserDidTakeScreenshotNotification: String
let UIApplicationKeyboardExtensionPointIdentifier: String
enum UIApplicationShortcutIconType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Compose
  case Play
  case Pause
  case Add
  case Location
  case Search
  case Share
  case Prohibit
  case Contact
  case Home
  case MarkLocation
  case Favorite
  case Love
  case Cloud
  case Invitation
  case Confirmation
  case Mail
  case Message
  case Date
  case Time
  case CapturePhoto
  case CaptureVideo
  case Task
  case TaskCompleted
  case Alarm
  case Bookmark
  case Shuffle
  case Audio
  case Update
}
class UIApplicationShortcutIcon : NSObject, NSCopying {
  convenience init(type: UIApplicationShortcutIconType)
  convenience init(templateImageName: String)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class UIApplicationShortcutItem : NSObject, NSCopying, NSMutableCopying {
  init(type: String, localizedTitle: String, localizedSubtitle: String?, icon: UIApplicationShortcutIcon?, userInfo: [NSObject : AnyObject]?)
  convenience init(type: String, localizedTitle: String)
  var type: String { get }
  var localizedTitle: String { get }
  var localizedSubtitle: String? { get }
  @NSCopying var icon: UIApplicationShortcutIcon? { get }
  var userInfo: [String : NSSecureCoding]? { get }
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
class UIMutableApplicationShortcutItem : UIApplicationShortcutItem {
  var type: String
  var localizedTitle: String
  var localizedSubtitle: String?
  @NSCopying var icon: UIApplicationShortcutIcon?
  var userInfo: [String : NSSecureCoding]?
  init(type: String, localizedTitle: String, localizedSubtitle: String?, icon: UIApplicationShortcutIcon?, userInfo: [NSObject : AnyObject]?)
  convenience init(type: String, localizedTitle: String)
}
enum UIAttachmentBehaviorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Items
  case Anchor
}
struct UIFloatRange {
  var minimum: CGFloat
  var maximum: CGFloat
  init()
  init(minimum: CGFloat, maximum: CGFloat)
}
let UIFloatRangeZero: UIFloatRange
let UIFloatRangeInfinite: UIFloatRange
func UIFloatRangeIsInfinite(range: UIFloatRange) -> Bool
func UIFloatRangeIsEqualToRange(range: UIFloatRange, _ otherRange: UIFloatRange) -> Bool
func UIFloatRangeMake(minimum: CGFloat, _ maximum: CGFloat) -> UIFloatRange
class UIAttachmentBehavior : UIDynamicBehavior {
  convenience init(item: UIDynamicItem, attachedToAnchor point: CGPoint)
  init(item: UIDynamicItem, offsetFromCenter offset: UIOffset, attachedToAnchor point: CGPoint)
  convenience init(item item1: UIDynamicItem, attachedToItem item2: UIDynamicItem)
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedToItem item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)
  class func slidingAttachmentWithItem(item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  class func slidingAttachmentWithItem(item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  class func limitAttachmentWithItem(item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedToItem item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self
  class func fixedAttachmentWithItem(item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  class func pinAttachmentWithItem(item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  var items: [UIDynamicItem] { get }
  var attachedBehaviorType: UIAttachmentBehaviorType { get }
  var anchorPoint: CGPoint
  var length: CGFloat
  var damping: CGFloat
  var frequency: CGFloat
  var frictionTorque: CGFloat
  var attachmentRange: UIFloatRange
  convenience init()
}
enum UIBarButtonItemStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case Bordered
  case Done
}
enum UIBarButtonSystemItem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Cancel
  case Edit
  case Save
  case Add
  case FlexibleSpace
  case FixedSpace
  case Compose
  case Reply
  case Action
  case Organize
  case Bookmarks
  case Search
  case Refresh
  case Stop
  case Camera
  case Trash
  case Play
  case Pause
  case Rewind
  case FastForward
  case Undo
  case Redo
  case PageCurl
}
class UIBarButtonItem : UIBarItem, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(image: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(title: String?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target: AnyObject?, action: Selector)
  convenience init(customView: UIView)
  var style: UIBarButtonItemStyle
  var width: CGFloat
  var possibleTitles: Set<String>?
  var customView: UIView?
  var action: Selector
  weak var target: @sil_weak AnyObject?
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  func backgroundImageForState(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics)
  func backgroundImageForState(state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> UIImage?
  var tintColor: UIColor?
  func setBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  func backgroundVerticalPositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> CGFloat
  func setTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  func titlePositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> UIOffset
  func setBackButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  func backButtonBackgroundImageForState(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  func setBackButtonTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  func backButtonTitlePositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> UIOffset
  func setBackButtonBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  func backButtonBackgroundVerticalPositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> CGFloat
}
class UIBarButtonItemGroup : NSObject, NSCoding {
  /// Create a new bar button item group with the given items. When bar button item layout is done, either the group's barButtonItems or its representativeItem is displayed (if it exists).
  init(barButtonItems: [UIBarButtonItem], representativeItem: UIBarButtonItem?)
  init?(coder aDecoder: NSCoder)
  /// The bar button items assocaited with this group. Changing these items will affect the bar displaying these items without needing to re-set the groups that are in that bar. Any UIBarButtonItems that are already in group will be removed from that group.
  var barButtonItems: [UIBarButtonItem]
  /// In order to display as many items as possible, bars that support UIBarButtonItemGroup may choose to collapse items associated with groups to the representativeItem specified by the group.
  /// A bar will only collapse groups that have a representativeItem set, but may still choose to use an alternate presentation of these items.
  /// A UIBarButtonItem may only be either the representativeItem or a member of the barbuttonItems of a single UIBarButtonItemGroup and may only represent a single group.
  /// If the representativeItem has an action, then that action will be invoked, otherwise the bar will present a standard UI to allow selection of the barButtonItems in the representedItem's group.
  var representativeItem: UIBarButtonItem?
  /// Returns YES if the representativeItem of this group is currently being displayed, rather than its barButtonItems.
  var displayingRepresentativeItem: Bool { get }
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
}
extension UIBarButtonItem {
  /// The group that the UIBarButtonItem is currently associated with, either as a member of the barButtonItems array or as that group's representativeItem.
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
enum UIBarMetrics : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Compact
  case DefaultPrompt
  case CompactPrompt
  static var LandscapePhone: UIBarMetrics { get }
  static var LandscapePhonePrompt: UIBarMetrics { get }
}
enum UIBarPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Bottom
  case Top
  case TopAttached
}
protocol UIBarPositioning : NSObjectProtocol {
  var barPosition: UIBarPosition { get }
}
protocol UIBarPositioningDelegate : NSObjectProtocol {
  optional func positionForBar(bar: UIBarPositioning) -> UIBarPosition
}
class UIBarItem : NSObject, NSCoding, UIAppearance {
  init()
  init?(coder aDecoder: NSCoder)
  var enabled: Bool
  var title: String?
  var image: UIImage?
  var landscapeImagePhone: UIImage?
  var imageInsets: UIEdgeInsets
  var landscapeImagePhoneInsets: UIEdgeInsets
  var tag: Int
  func setTitleTextAttributes(attributes: [String : AnyObject]?, forState state: UIControlState)
  func titleTextAttributesForState(state: UIControlState) -> [String : AnyObject]?
  func encodeWithCoder(aCoder: NSCoder)
  class func appearance() -> Self
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  class func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  class func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
struct UIRectCorner : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TopLeft: UIRectCorner { get }
  static var TopRight: UIRectCorner { get }
  static var BottomLeft: UIRectCorner { get }
  static var BottomRight: UIRectCorner { get }
  static var AllCorners: UIRectCorner { get }
}
class UIBezierPath : NSObject, NSCopying, NSCoding {
  convenience init(rect: CGRect)
  convenience init(ovalInRect rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)
  convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  convenience init(CGPath: CGPath)
  init()
  init?(coder aDecoder: NSCoder)
  var CGPath: CGPath
  func moveToPoint(point: CGPoint)
  func addLineToPoint(point: CGPoint)
  func addCurveToPoint(endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  func addQuadCurveToPoint(endPoint: CGPoint, controlPoint: CGPoint)
  func addArcWithCenter(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func closePath()
  func removeAllPoints()
  func appendPath(bezierPath: UIBezierPath)
  func bezierPathByReversingPath() -> UIBezierPath
  func applyTransform(transform: CGAffineTransform)
  var empty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func containsPoint(point: CGPoint) -> Bool
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
  func fillWithBlendMode(blendMode: CGBlendMode, alpha: CGFloat)
  func strokeWithBlendMode(blendMode: CGBlendMode, alpha: CGFloat)
  func addClip()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
enum UIButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Custom
  case System
  case DetailDisclosure
  case InfoLight
  case InfoDark
  case ContactAdd
  static var RoundedRect: UIButtonType { get }
}
class UIButton : UIControl, NSCoding {
  convenience init(type buttonType: UIButtonType)
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  var showsTouchWhenHighlighted: Bool
  var tintColor: UIColor!
  var buttonType: UIButtonType { get }
  func setTitle(title: String?, forState state: UIControlState)
  func setTitleColor(color: UIColor?, forState state: UIControlState)
  func setTitleShadowColor(color: UIColor?, forState state: UIControlState)
  func setImage(image: UIImage?, forState state: UIControlState)
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  func setAttributedTitle(title: NSAttributedString?, forState state: UIControlState)
  func titleForState(state: UIControlState) -> String?
  func titleColorForState(state: UIControlState) -> UIColor?
  func titleShadowColorForState(state: UIControlState) -> UIColor?
  func imageForState(state: UIControlState) -> UIImage?
  func backgroundImageForState(state: UIControlState) -> UIImage?
  func attributedTitleForState(state: UIControlState) -> NSAttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  var currentAttributedTitle: NSAttributedString? { get }
  var titleLabel: UILabel? { get }
  var imageView: UIImageView? { get }
  func backgroundRectForBounds(bounds: CGRect) -> CGRect
  func contentRectForBounds(bounds: CGRect) -> CGRect
  func titleRectForContentRect(contentRect: CGRect) -> CGRect
  func imageRectForContentRect(contentRect: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension UIButton {
}
struct UICollectionViewScrollPosition : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UICollectionViewScrollPosition { get }
  static var Top: UICollectionViewScrollPosition { get }
  static var CenteredVertically: UICollectionViewScrollPosition { get }
  static var Bottom: UICollectionViewScrollPosition { get }
  static var Left: UICollectionViewScrollPosition { get }
  static var CenteredHorizontally: UICollectionViewScrollPosition { get }
  static var Right: UICollectionViewScrollPosition { get }
}
typealias UICollectionViewLayoutInteractiveTransitionCompletion = (Bool, Bool) -> Void
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
  init()
}
protocol UICollectionViewDataSource : NSObjectProtocol {
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  optional func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
  optional func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  optional func collectionView(collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  optional func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  optional func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  optional func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  optional func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  optional func collectionView(collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  optional func indexPathForPreferredFocusedViewInCollectionView(collectionView: UICollectionView) -> NSIndexPath?
  optional func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  optional func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
}
class UICollectionView : UIScrollView {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  init?(coder aDecoder: NSCoder)
  var collectionViewLayout: UICollectionViewLayout
  weak var delegate: @sil_weak UICollectionViewDelegate?
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  var backgroundView: UIView?
  func registerClass(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func registerNib(nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func registerClass(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func registerNib(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  func indexPathsForSelectedItems() -> [NSIndexPath]?
  func selectItemAtIndexPath(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
  func deselectItemAtIndexPath(indexPath: NSIndexPath, animated: Bool)
  func reloadData()
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool)
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)?)
  func startInteractiveTransitionToCollectionViewLayout(layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion?) -> UICollectionViewTransitionLayout
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func numberOfSections() -> Int
  func numberOfItemsInSection(section: Int) -> Int
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItemAtPoint(point: CGPoint) -> NSIndexPath?
  func indexPathForCell(cell: UICollectionViewCell) -> NSIndexPath?
  func cellForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell?
  func visibleCells() -> [UICollectionViewCell]
  func indexPathsForVisibleItems() -> [NSIndexPath]
  func supplementaryViewForElementKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [UICollectionReusableView]
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> [NSIndexPath]
  func scrollToItemAtIndexPath(indexPath: NSIndexPath, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool)
  func insertSections(sections: NSIndexSet)
  func deleteSections(sections: NSIndexSet)
  func reloadSections(sections: NSIndexSet)
  func moveSection(section: Int, toSection newSection: Int)
  func insertItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func deleteItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func reloadItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func moveItemAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)?)
  func beginInteractiveMovementForItemAtIndexPath(indexPath: NSIndexPath) -> Bool
  func updateInteractiveMovementTargetPosition(targetPosition: CGPoint)
  func endInteractiveMovement()
  func cancelInteractiveMovement()
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
extension NSIndexPath {
  convenience init(forItem item: Int, inSection section: Int)
  var item: Int { get }
}
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransitionFromLayout(oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  func didTransitionFromLayout(oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  func preferredLayoutAttributesFittingAttributes(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class UICollectionViewCell : UICollectionReusableView {
  var contentView: UIView { get }
  var selected: Bool
  var highlighted: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class UICollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  init(collectionViewLayout layout: UICollectionViewLayout)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView?
  var clearsSelectionOnViewWillAppear: Bool
  var useLayoutToLayoutNavigationTransitions: Bool
  var collectionViewLayout: UICollectionViewLayout { get }
  var installsStandardGestureForInteractiveMovement: Bool
  convenience init()
  func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath)
  func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
  func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
  func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
  func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  func collectionView(collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  func collectionView(collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  func indexPathForPreferredFocusedViewInCollectionView(collectionView: UICollectionView) -> NSIndexPath?
  func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  func scrollViewDidScroll(scrollView: UIScrollView)
  func scrollViewDidZoom(scrollView: UIScrollView)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
  func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  func collectionView(collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
let UICollectionElementKindSectionHeader: String
let UICollectionElementKindSectionFooter: String
enum UICollectionViewScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Vertical
  case Horizontal
}
class UICollectionViewFlowLayoutInvalidationContext : UICollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
  init()
}
protocol UICollectionViewDelegateFlowLayout : UICollectionViewDelegate {
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize
}
class UICollectionViewFlowLayout : UICollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: CGSize
  var estimatedItemSize: CGSize
  var scrollDirection: UICollectionViewScrollDirection
  var headerReferenceSize: CGSize
  var footerReferenceSize: CGSize
  var sectionInset: UIEdgeInsets
  var sectionHeadersPinToVisibleBounds: Bool
  var sectionFootersPinToVisibleBounds: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum UICollectionElementCategory : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Cell
  case SupplementaryView
  case DecorationView
}
class UICollectionViewLayoutAttributes : NSObject, NSCopying, UIDynamicItem {
  var frame: CGRect
  var center: CGPoint
  var size: CGSize
  var transform3D: CATransform3D
  var bounds: CGRect
  var transform: CGAffineTransform
  var alpha: CGFloat
  var zIndex: Int
  var hidden: Bool
  var indexPath: NSIndexPath
  var representedElementCategory: UICollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forCellWithIndexPath indexPath: NSIndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: NSIndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: NSIndexPath)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  var collisionBoundingPath: UIBezierPath { get }
}
enum UICollectionUpdateAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Insert
  case Delete
  case Reload
  case Move
  case None
}
class UICollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: NSIndexPath? { get }
  var indexPathAfterUpdate: NSIndexPath? { get }
  var updateAction: UICollectionUpdateAction { get }
  init()
}
class UICollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  func invalidateItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func invalidateSupplementaryElementsOfKind(elementKind: String, atIndexPaths indexPaths: [NSIndexPath])
  func invalidateDecorationElementsOfKind(elementKind: String, atIndexPaths indexPaths: [NSIndexPath])
  var invalidatedItemIndexPaths: [NSIndexPath]? { get }
  var invalidatedSupplementaryIndexPaths: [String : [NSIndexPath]]? { get }
  var invalidatedDecorationIndexPaths: [String : [NSIndexPath]]? { get }
  var contentOffsetAdjustment: CGPoint
  var contentSizeAdjustment: CGSize
  var previousIndexPathsForInteractivelyMovingItems: [NSIndexPath]? { get }
  var targetIndexPathsForInteractivelyMovingItems: [NSIndexPath]? { get }
  var interactiveMovementTarget: CGPoint { get }
  init()
}
class UICollectionViewLayout : NSObject, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  func invalidateLayoutWithContext(context: UICollectionViewLayoutInvalidationContext)
  func registerClass(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func registerNib(nib: UINib?, forDecorationViewOfKind elementKind: String)
  func encodeWithCoder(aCoder: NSCoder)
}
extension UICollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool
  func invalidationContextForBoundsChange(newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  func shouldInvalidateLayoutForPreferredLayoutAttributes(preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  func invalidationContextForPreferredLayoutAttributes(preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint) -> CGPoint
  func collectionViewContentSize() -> CGSize
}
extension UICollectionViewLayout {
  func prepareForCollectionViewUpdates(updateItems: [UICollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: CGRect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransitionToLayout(newLayout: UICollectionViewLayout)
  func prepareForTransitionFromLayout(oldLayout: UICollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> [NSIndexPath]
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> [NSIndexPath]
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> [NSIndexPath]
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> [NSIndexPath]
}
extension UICollectionViewLayout {
  func targetIndexPathForInteractivelyMovingItem(previousIndexPath: NSIndexPath, withPosition position: CGPoint) -> NSIndexPath
  func layoutAttributesForInteractivelyMovingItemAtIndexPath(indexPath: NSIndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  func invalidationContextForInteractivelyMovingItems(targetIndexPaths: [NSIndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [NSIndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  func invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths(indexPaths: [NSIndexPath], previousIndexPaths: [NSIndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
class UICollectionViewTransitionLayout : UICollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: UICollectionViewLayout { get }
  var nextLayout: UICollectionViewLayout { get }
  init(currentLayout: UICollectionViewLayout, nextLayout newLayout: UICollectionViewLayout)
  init?(coder aDecoder: NSCoder)
  func updateValue(value: CGFloat, forAnimatedKey key: String)
  func valueForAnimatedKey(key: String) -> CGFloat
}
struct UICollisionBehaviorMode : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Items: UICollisionBehaviorMode { get }
  static var Boundaries: UICollisionBehaviorMode { get }
  static var Everything: UICollisionBehaviorMode { get }
}
protocol UICollisionBehaviorDelegate : NSObjectProtocol {
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem, atPoint p: CGPoint)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, atPoint p: CGPoint)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?)
}
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehaviorMode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundaryWithInsets(insets: UIEdgeInsets)
  func addBoundaryWithIdentifier(identifier: NSCopying, forPath bezierPath: UIBezierPath)
  func addBoundaryWithIdentifier(identifier: NSCopying, fromPoint p1: CGPoint, toPoint p2: CGPoint)
  func boundaryWithIdentifier(identifier: NSCopying) -> UIBezierPath?
  func removeBoundaryWithIdentifier(identifier: NSCopying)
  var boundaryIdentifiers: [NSCopying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
  convenience init()
}
class UIColor : NSObject, NSSecureCoding, NSCopying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(CGColor cgColor: CGColor)
  init(patternImage image: UIImage)
  init(CIColor ciColor: CIColor)
  class func blackColor() -> UIColor
  class func darkGrayColor() -> UIColor
  class func lightGrayColor() -> UIColor
  class func whiteColor() -> UIColor
  class func grayColor() -> UIColor
  class func redColor() -> UIColor
  class func greenColor() -> UIColor
  class func blueColor() -> UIColor
  class func cyanColor() -> UIColor
  class func yellowColor() -> UIColor
  class func magentaColor() -> UIColor
  class func orangeColor() -> UIColor
  class func purpleColor() -> UIColor
  class func brownColor() -> UIColor
  class func clearColor() -> UIColor
  func set()
  func setFill()
  func setStroke()
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func colorWithAlphaComponent(alpha: CGFloat) -> UIColor
  var CGColor: CGColor { get }
  var CIColor: CIColor { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension UIColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
extension CIColor {
  convenience init(color: UIColor)
}
struct UIControlEvents : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TouchDown: UIControlEvents { get }
  static var TouchDownRepeat: UIControlEvents { get }
  static var TouchDragInside: UIControlEvents { get }
  static var TouchDragOutside: UIControlEvents { get }
  static var TouchDragEnter: UIControlEvents { get }
  static var TouchDragExit: UIControlEvents { get }
  static var TouchUpInside: UIControlEvents { get }
  static var TouchUpOutside: UIControlEvents { get }
  static var TouchCancel: UIControlEvents { get }
  static var ValueChanged: UIControlEvents { get }
  static var PrimaryActionTriggered: UIControlEvents { get }
  static var EditingDidBegin: UIControlEvents { get }
  static var EditingChanged: UIControlEvents { get }
  static var EditingDidEnd: UIControlEvents { get }
  static var EditingDidEndOnExit: UIControlEvents { get }
  static var AllTouchEvents: UIControlEvents { get }
  static var AllEditingEvents: UIControlEvents { get }
  static var ApplicationReserved: UIControlEvents { get }
  static var SystemReserved: UIControlEvents { get }
  static var AllEvents: UIControlEvents { get }
}
enum UIControlContentVerticalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Top
  case Bottom
  case Fill
}
enum UIControlContentHorizontalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Left
  case Right
  case Fill
}
struct UIControlState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Normal: UIControlState { get }
  static var Highlighted: UIControlState { get }
  static var Disabled: UIControlState { get }
  static var Selected: UIControlState { get }
  static var Focused: UIControlState { get }
  static var Application: UIControlState { get }
  static var Reserved: UIControlState { get }
}
class UIControl : UIView {
  var enabled: Bool
  var selected: Bool
  var highlighted: Bool
  var contentVerticalAlignment: UIControlContentVerticalAlignment
  var contentHorizontalAlignment: UIControlContentHorizontalAlignment
  var state: UIControlState { get }
  var tracking: Bool { get }
  var touchInside: Bool { get }
  func beginTrackingWithTouch(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func continueTrackingWithTouch(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func endTrackingWithTouch(touch: UITouch?, withEvent event: UIEvent?)
  func cancelTrackingWithEvent(event: UIEvent?)
  func addTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func removeTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func allTargets() -> Set<NSObject>
  func allControlEvents() -> UIControlEvents
  func actionsForTarget(target: AnyObject?, forControlEvent controlEvent: UIControlEvents) -> [String]?
  func sendAction(action: Selector, to target: AnyObject?, forEvent event: UIEvent?)
  func sendActionsForControlEvents(controlEvents: UIControlEvents)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
struct UIDataDetectorTypes : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PhoneNumber: UIDataDetectorTypes { get }
  static var Link: UIDataDetectorTypes { get }
  static var Address: UIDataDetectorTypes { get }
  static var CalendarEvent: UIDataDetectorTypes { get }
  static var None: UIDataDetectorTypes { get }
  static var All: UIDataDetectorTypes { get }
}
enum UIDatePickerMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Time
  case Date
  case DateAndTime
  case CountDownTimer
}
class UIDatePicker : UIControl, NSCoding {
  var datePickerMode: UIDatePickerMode
  var locale: NSLocale?
  @NSCopying var calendar: NSCalendar!
  var timeZone: NSTimeZone?
  var date: NSDate
  var minimumDate: NSDate?
  var maximumDate: NSDate?
  var countDownDuration: NSTimeInterval
  var minuteInterval: Int
  func setDate(date: NSDate, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum UIDeviceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Portrait
  case PortraitUpsideDown
  case LandscapeLeft
  case LandscapeRight
  case FaceUp
  case FaceDown
}
extension UIDeviceOrientation {
  var isLandscape: Bool { get }
  var isPortrait: Bool { get }
  var isFlat: Bool { get }
  var isValidInterfaceOrientation: Bool { get }
}
enum UIDeviceBatteryState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Unplugged
  case Charging
  case Full
}
enum UIUserInterfaceIdiom : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Phone
  case Pad
  case TV
}
func UIDeviceOrientationIsPortrait(orientation: UIDeviceOrientation) -> Bool
func UIDeviceOrientationIsLandscape(orientation: UIDeviceOrientation) -> Bool
class UIDevice : NSObject {
  class func currentDevice() -> UIDevice
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
  var orientation: UIDeviceOrientation { get }
  var identifierForVendor: NSUUID? { get }
  var generatesDeviceOrientationNotifications: Bool { get }
  func beginGeneratingDeviceOrientationNotifications()
  func endGeneratingDeviceOrientationNotifications()
  var batteryMonitoringEnabled: Bool
  var batteryState: UIDeviceBatteryState { get }
  var batteryLevel: Float { get }
  var proximityMonitoringEnabled: Bool
  var proximityState: Bool { get }
  var multitaskingSupported: Bool { get }
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  func playInputClick()
  init()
}
protocol UIInputViewAudioFeedback : NSObjectProtocol {
  optional var enableInputClicksWhenVisible: Bool { get }
}
func UI_USER_INTERFACE_IDIOM() -> UIUserInterfaceIdiom
let UIDeviceOrientationDidChangeNotification: String
let UIDeviceBatteryStateDidChangeNotification: String
let UIDeviceBatteryLevelDidChangeNotification: String
let UIDeviceProximityStateDidChangeNotification: String
enum UIDocumentChangeKind : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Undone
  case Redone
  case Cleared
}
enum UIDocumentSaveOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ForCreating
  case ForOverwriting
}
struct UIDocumentState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Normal: UIDocumentState { get }
  static var Closed: UIDocumentState { get }
  static var InConflict: UIDocumentState { get }
  static var SavingError: UIDocumentState { get }
  static var EditingDisabled: UIDocumentState { get }
  static var ProgressAvailable: UIDocumentState { get }
}
let UIDocumentStateChangedNotification: String
class UIDocument : NSObject, NSFilePresenter, NSProgressReporting {
  init(fileURL url: NSURL)
  var fileURL: NSURL { get }
  var localizedName: String { get }
  var fileType: String? { get }
  @NSCopying var fileModificationDate: NSDate?
  var documentState: UIDocumentState { get }
  func openWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func closeWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func loadFromContents(contents: AnyObject, ofType typeName: String?) throws
  func contentsForType(typeName: String) throws -> AnyObject
  func disableEditing()
  func enableEditing()
  var undoManager: NSUndoManager!
  func hasUnsavedChanges() -> Bool
  func updateChangeCount(change: UIDocumentChangeKind)
  func changeCountTokenForSaveOperation(saveOperation: UIDocumentSaveOperation) -> AnyObject
  func updateChangeCountWithToken(changeCountToken: AnyObject, forSaveOperation saveOperation: UIDocumentSaveOperation)
  func saveToURL(url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation, completionHandler: ((Bool) -> Void)?)
  func autosaveWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func savingFileType() -> String?
  func fileNameExtensionForType(typeName: String?, saveOperation: UIDocumentSaveOperation) -> String
  func writeContents(contents: AnyObject, andAttributes additionalFileAttributes: [NSObject : AnyObject]?, safelyToURL url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws
  func writeContents(contents: AnyObject, toURL url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation, originalContentsURL: NSURL?) throws
  func fileAttributesToWriteToURL(url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws -> [NSObject : AnyObject]
  func readFromURL(url: NSURL) throws
  func performAsynchronousFileAccessUsingBlock(block: () -> Void)
  func handleError(error: NSError, userInteractionPermitted: Bool)
  func finishedHandlingError(error: NSError, recovered: Bool)
  func userInteractionNoLongerPermittedForError(error: NSError)
  func revertToContentsOfURL(url: NSURL, completionHandler: ((Bool) -> Void)?)
  convenience init()
  @NSCopying var presentedItemURL: NSURL? { get }
  var presentedItemOperationQueue: NSOperationQueue { get }
  func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func presentedItemDidMoveToURL(newURL: NSURL)
  func presentedItemDidChange()
  func presentedItemDidGainVersion(version: NSFileVersion)
  func presentedItemDidLoseVersion(version: NSFileVersion)
  func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  func accommodatePresentedSubitemDeletionAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  func presentedSubitemDidAppearAtURL(url: NSURL)
  func presentedSubitemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  func presentedSubitemDidChangeAtURL(url: NSURL)
  func presentedSubitemAtURL(url: NSURL, didGainVersion version: NSFileVersion)
  func presentedSubitemAtURL(url: NSURL, didLoseVersion version: NSFileVersion)
  func presentedSubitemAtURL(url: NSURL, didResolveConflictVersion version: NSFileVersion)
  var progress: NSProgress { get }
}
let NSUserActivityDocumentURLKey: String
extension UIDocument {
  var userActivity: NSUserActivity?
  func updateUserActivityState(userActivity: NSUserActivity)
  func restoreUserActivityState(userActivity: NSUserActivity)
}
class UIDocumentInteractionController : NSObject, UIActionSheetDelegate {
   init(URL url: NSURL)
  weak var delegate: @sil_weak UIDocumentInteractionControllerDelegate?
  var URL: NSURL?
  var UTI: String?
  var name: String?
  var icons: [UIImage] { get }
  var annotation: AnyObject?
  func presentOptionsMenuFromRect(rect: CGRect, inView view: UIView, animated: Bool) -> Bool
  func presentOptionsMenuFromBarButtonItem(item: UIBarButtonItem, animated: Bool) -> Bool
  func presentPreviewAnimated(animated: Bool) -> Bool
  func presentOpenInMenuFromRect(rect: CGRect, inView view: UIView, animated: Bool) -> Bool
  func presentOpenInMenuFromBarButtonItem(item: UIBarButtonItem, animated: Bool) -> Bool
  func dismissPreviewAnimated(animated: Bool)
  func dismissMenuAnimated(animated: Bool)
  var gestureRecognizers: [UIGestureRecognizer] { get }
  init()
  func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int)
  func actionSheetCancel(actionSheet: UIActionSheet)
  func willPresentActionSheet(actionSheet: UIActionSheet)
  func didPresentActionSheet(actionSheet: UIActionSheet)
  func actionSheet(actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
protocol UIDocumentInteractionControllerDelegate : NSObjectProtocol {
  optional func documentInteractionControllerViewControllerForPreview(controller: UIDocumentInteractionController) -> UIViewController
  optional func documentInteractionControllerRectForPreview(controller: UIDocumentInteractionController) -> CGRect
  optional func documentInteractionControllerViewForPreview(controller: UIDocumentInteractionController) -> UIView?
  optional func documentInteractionControllerWillBeginPreview(controller: UIDocumentInteractionController)
  optional func documentInteractionControllerDidEndPreview(controller: UIDocumentInteractionController)
  optional func documentInteractionControllerWillPresentOptionsMenu(controller: UIDocumentInteractionController)
  optional func documentInteractionControllerDidDismissOptionsMenu(controller: UIDocumentInteractionController)
  optional func documentInteractionControllerWillPresentOpenInMenu(controller: UIDocumentInteractionController)
  optional func documentInteractionControllerDidDismissOpenInMenu(controller: UIDocumentInteractionController)
  optional func documentInteractionController(controller: UIDocumentInteractionController, willBeginSendingToApplication application: String?)
  optional func documentInteractionController(controller: UIDocumentInteractionController, didEndSendingToApplication application: String?)
}
enum UIDocumentMenuOrder : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case First
  case Last
}
protocol UIDocumentMenuDelegate : NSObjectProtocol {
  func documentMenu(documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController)
  optional func documentMenuWasCancelled(documentMenu: UIDocumentMenuViewController)
}
class UIDocumentMenuViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], inMode mode: UIDocumentPickerMode)
  init(URL url: NSURL, inMode mode: UIDocumentPickerMode)
  init?(coder aDecoder: NSCoder)
  func addOptionWithTitle(title: String, image: UIImage?, order: UIDocumentMenuOrder, handler: () -> Void)
  weak var delegate: @sil_weak UIDocumentMenuDelegate?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
class UIDocumentPickerExtensionViewController : UIViewController {
  func dismissGrantingAccessToURL(url: NSURL?)
  func prepareForPresentationInMode(mode: UIDocumentPickerMode)
  var documentPickerMode: UIDocumentPickerMode { get }
  @NSCopying var originalURL: NSURL? { get }
  var validTypes: [String]? { get }
  var providerIdentifier: String { get }
  @NSCopying var documentStorageURL: NSURL? { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIDocumentPickerDelegate : NSObjectProtocol {
  func documentPicker(controller: UIDocumentPickerViewController, didPickDocumentAtURL url: NSURL)
  optional func documentPickerWasCancelled(controller: UIDocumentPickerViewController)
}
enum UIDocumentPickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Import
  case Open
  case ExportToService
  case MoveToService
}
class UIDocumentPickerViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], inMode mode: UIDocumentPickerMode)
  init?(coder aDecoder: NSCoder)
  init(URL url: NSURL, inMode mode: UIDocumentPickerMode)
  weak var delegate: @sil_weak UIDocumentPickerDelegate?
  var documentPickerMode: UIDocumentPickerMode { get }
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
protocol UIDynamicAnimatorDelegate : NSObjectProtocol {
  optional func dynamicAnimatorWillResume(animator: UIDynamicAnimator)
  optional func dynamicAnimatorDidPause(animator: UIDynamicAnimator)
}
class UIDynamicAnimator : NSObject {
  init(referenceView view: UIView)
  func addBehavior(behavior: UIDynamicBehavior)
  func removeBehavior(behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func itemsInRect(rect: CGRect) -> [UIDynamicItem]
  func updateItemUsingCurrentState(item: UIDynamicItem)
  var running: Bool { get }
  func elapsedTime() -> NSTimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCellAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(decorationViewKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
}
enum UIDynamicItemCollisionBoundsType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Rectangle
  case Ellipse
  case Path
}
protocol UIDynamicItem : NSObjectProtocol {
  var center: CGPoint { get set }
  var bounds: CGRect { get }
  var transform: CGAffineTransform { get set }
  optional var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  optional var collisionBoundingPath: UIBezierPath { get }
}
class UIDynamicItemGroup : NSObject, UIDynamicItem {
  init(items: [UIDynamicItem])
  var items: [UIDynamicItem] { get }
  init()
  var center: CGPoint
  var bounds: CGRect { get }
  var transform: CGAffineTransform
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  var collisionBoundingPath: UIBezierPath { get }
}
class UIDynamicBehavior : NSObject {
  func addChildBehavior(behavior: UIDynamicBehavior)
  func removeChildBehavior(behavior: UIDynamicBehavior)
  var childBehaviors: [UIDynamicBehavior] { get }
  var action: (() -> Void)?
  func willMoveToAnimator(dynamicAnimator: UIDynamicAnimator?)
  var dynamicAnimator: UIDynamicAnimator? { get }
  init()
}
class UIDynamicItemBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var elasticity: CGFloat
  var friction: CGFloat
  var density: CGFloat
  var resistance: CGFloat
  var angularResistance: CGFloat
  var charge: CGFloat
  var anchored: Bool
  var allowsRotation: Bool
  func addLinearVelocity(velocity: CGPoint, forItem item: UIDynamicItem)
  func linearVelocityForItem(item: UIDynamicItem) -> CGPoint
  func addAngularVelocity(velocity: CGFloat, forItem item: UIDynamicItem)
  func angularVelocityForItem(item: UIDynamicItem) -> CGFloat
  convenience init()
}
enum UIEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Touches
  case Motion
  case RemoteControl
  case Presses
}
enum UIEventSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case MotionShake
  case RemoteControlPlay
  case RemoteControlPause
  case RemoteControlStop
  case RemoteControlTogglePlayPause
  case RemoteControlNextTrack
  case RemoteControlPreviousTrack
  case RemoteControlBeginSeekingBackward
  case RemoteControlEndSeekingBackward
  case RemoteControlBeginSeekingForward
  case RemoteControlEndSeekingForward
}
class UIEvent : NSObject {
  var type: UIEventType { get }
  var subtype: UIEventSubtype { get }
  var timestamp: NSTimeInterval { get }
  func allTouches() -> Set<UITouch>?
  func touchesForWindow(window: UIWindow) -> Set<UITouch>?
  func touchesForView(view: UIView) -> Set<UITouch>?
  func touchesForGestureRecognizer(gesture: UIGestureRecognizer) -> Set<UITouch>?
  func coalescedTouchesForTouch(touch: UITouch) -> [UITouch]?
  func predictedTouchesForTouch(touch: UITouch) -> [UITouch]?
  init()
}
class UIFieldBehavior : UIDynamicBehavior {
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var position: CGPoint
  var region: UIRegion
  var strength: CGFloat
  var falloff: CGFloat
  var minimumRadius: CGFloat
  var direction: CGVector
  var smoothness: CGFloat
  var animationSpeed: CGFloat
  class func dragField() -> Self
  class func vortexField() -> Self
  class func radialGravityFieldWithPosition(position: CGPoint) -> Self
  class func linearGravityFieldWithVector(direction: CGVector) -> Self
  class func velocityFieldWithVector(direction: CGVector) -> Self
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> Self
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> Self
  class func springField() -> Self
  class func electricField() -> Self
  class func magneticField() -> Self
  class func fieldWithEvaluationBlock(block: (UIFieldBehavior, CGPoint, CGVector, CGFloat, CGFloat, NSTimeInterval) -> CGVector) -> Self
}
struct UIFocusHeading : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Up: UIFocusHeading { get }
  static var Down: UIFocusHeading { get }
  static var Left: UIFocusHeading { get }
  static var Right: UIFocusHeading { get }
  static var Next: UIFocusHeading { get }
  static var Previous: UIFocusHeading { get }
}
/// UIFocusUpdateContexts provide information relevant to a specific focus update from one view to another. They are ephemeral objects that are usually discarded after the update is finished.
class UIFocusUpdateContext : NSObject {
  /// The view that was focused before the update. May be nil if no view was focused, such as when setting initial focus.
  weak var previouslyFocusedView: @sil_weak UIView? { get }
  /// The view that will be focused after the update. May be nil if no view will be focused.
  weak var nextFocusedView: @sil_weak UIView? { get }
  /// The focus heading in which the update is occuring.
  var focusHeading: UIFocusHeading { get }
  init()
}
/// UIFocusEnvironments represent branches of the view hierarchy participating in the focus system.
protocol UIFocusEnvironment : NSObjectProtocol {
  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }
  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()
  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()
  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool
  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
/// UIFocusGuides are UILayoutGuide subclasses that participate in the focus system from within their owning view. A UIFocusGuide may be used to expose non-view areas as focusable.
class UIFocusGuide : UILayoutGuide {
  /// If disabled, UIFocusGuides are ignored by the focus engine, but still participate in layout. Modifying this flag allows you to conditionally enable or disable certain focus behaviors. YES by default.
  var enabled: Bool
  /// Setting a preferred focused view marks this guide's layoutFrame as focusable, and if focused, redirects focus to its preferred focused view. If nil, this guide is effectively disabled.
  weak var preferredFocusedView: @sil_weak UIView?
  init()
  init?(coder aDecoder: NSCoder)
}
/// UIFocusAnimationCoordinator is used to coordinate disparate animations that are related to a focus update.
class UIFocusAnimationCoordinator : NSObject {
  func addCoordinatedAnimations(animations: (() -> Void)?, completion: (() -> Void)?)
  init()
}
class UIFont : NSObject, NSCopying {
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
  func fontWithSize(fontSize: CGFloat) -> UIFont
   init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  func fontDescriptor() -> UIFontDescriptor
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
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
class UIFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  convenience init()
  init?(coder aDecoder: NSCoder)
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
  init(fontAttributes attributes: [String : AnyObject])
  func fontDescriptorByAddingAttributes(attributes: [String : AnyObject]) -> UIFontDescriptor
  func fontDescriptorWithSymbolicTraits(symbolicTraits: UIFontDescriptorSymbolicTraits) -> UIFontDescriptor
  func fontDescriptorWithSize(newPointSize: CGFloat) -> UIFontDescriptor
  func fontDescriptorWithMatrix(matrix: CGAffineTransform) -> UIFontDescriptor
  func fontDescriptorWithFace(newFace: String) -> UIFontDescriptor
  func fontDescriptorWithFamily(newFamily: String) -> UIFontDescriptor
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
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
extension NSValue {
   init(CGPoint point: CGPoint)
   init(CGVector vector: CGVector)
   init(CGSize size: CGSize)
   init(CGRect rect: CGRect)
   init(CGAffineTransform transform: CGAffineTransform)
   init(UIEdgeInsets insets: UIEdgeInsets)
   init(UIOffset insets: UIOffset)
  func CGPointValue() -> CGPoint
  func CGVectorValue() -> CGVector
  func CGSizeValue() -> CGSize
  func CGRectValue() -> CGRect
  func CGAffineTransformValue() -> CGAffineTransform
  func UIEdgeInsetsValue() -> UIEdgeInsets
  func UIOffsetValue() -> UIOffset
}
extension NSCoder {
  func encodeCGPoint(point: CGPoint, forKey key: String)
  func encodeCGVector(vector: CGVector, forKey key: String)
  func encodeCGSize(size: CGSize, forKey key: String)
  func encodeCGRect(rect: CGRect, forKey key: String)
  func encodeCGAffineTransform(transform: CGAffineTransform, forKey key: String)
  func encodeUIEdgeInsets(insets: UIEdgeInsets, forKey key: String)
  func encodeUIOffset(offset: UIOffset, forKey key: String)
  func decodeCGPointForKey(key: String) -> CGPoint
  func decodeCGVectorForKey(key: String) -> CGVector
  func decodeCGSizeForKey(key: String) -> CGSize
  func decodeCGRectForKey(key: String) -> CGRect
  func decodeCGAffineTransformForKey(key: String) -> CGAffineTransform
  func decodeUIEdgeInsetsForKey(key: String) -> UIEdgeInsets
  func decodeUIOffsetForKey(key: String) -> UIOffset
}
enum UIGestureRecognizerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Possible
  case Began
  case Changed
  case Ended
  case Cancelled
  case Failed
  static var Recognized: UIGestureRecognizerState { get }
}
class UIGestureRecognizer : NSObject {
  init(target: AnyObject?, action: Selector)
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?, action: Selector)
  weak var delegate: @sil_weak UIGestureRecognizerDelegate?
  var enabled: Bool
  var view: UIView? { get }
  var cancelsTouchesInView: Bool
  var delaysTouchesBegan: Bool
  var delaysTouchesEnded: Bool
  var allowedTouchTypes: [NSNumber]
  var allowedPressTypes: [NSNumber]
  func requireGestureRecognizerToFail(otherGestureRecognizer: UIGestureRecognizer)
  func locationInView(view: UIView?) -> CGPoint
  func numberOfTouches() -> Int
  func locationOfTouch(touchIndex: Int, inView view: UIView?) -> CGPoint
  convenience init()
}
protocol UIGestureRecognizerDelegate : NSObjectProtocol {
  optional func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
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
func UIGraphicsBeginPDFContextToFile(path: String, _ bounds: CGRect, _ documentInfo: [NSObject : AnyObject]?) -> Bool
func UIGraphicsBeginPDFContextToData(data: NSMutableData, _ bounds: CGRect, _ documentInfo: [NSObject : AnyObject]?)
func UIGraphicsEndPDFContext()
func UIGraphicsBeginPDFPage()
func UIGraphicsBeginPDFPageWithInfo(bounds: CGRect, _ pageInfo: [NSObject : AnyObject]?)
func UIGraphicsGetPDFContextBounds() -> CGRect
func UIGraphicsSetPDFContextURLForRect(url: NSURL, _ rect: CGRect)
func UIGraphicsAddPDFContextDestinationAtPoint(name: String, _ point: CGPoint)
func UIGraphicsSetPDFContextDestinationForRect(name: String, _ rect: CGRect)
class UIGravityBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var gravityDirection: CGVector
  var angle: CGFloat
  var magnitude: CGFloat
  func setAngle(angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
enum UIGuidedAccessRestrictionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Allow
  case Deny
}
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestrictionWithIdentifier(restrictionIdentifier: String, didChangeState newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestrictionWithIdentifier(restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestrictionWithIdentifier(restrictionIdentifier: String) -> String?
}
func UIGuidedAccessRestrictionStateForIdentifier(restrictionIdentifier: String) -> UIGuidedAccessRestrictionState
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
class UIImage : NSObject, NSSecureCoding {
   init?(named name: String)
   init?(named name: String, inBundle bundle: NSBundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?)
  init?(contentsOfFile path: String)
  init?(data: NSData)
  init?(data: NSData, scale: CGFloat)
  init(CGImage cgImage: CGImage)
  init(CGImage cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  init(CIImage ciImage: CIImage)
  init(CIImage ciImage: CIImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var CGImage: CGImage? { get }
  var CIImage: CIImage? { get }
  var imageOrientation: UIImageOrientation { get }
  var scale: CGFloat { get }
  class func animatedImageNamed(name: String, duration: NSTimeInterval) -> UIImage?
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: NSTimeInterval) -> UIImage?
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: NSTimeInterval) -> UIImage?
  class func animatedImageWithImages(images: [UIImage], duration: NSTimeInterval) -> UIImage?
  var images: [UIImage]? { get }
  var duration: NSTimeInterval { get }
  func drawAtPoint(point: CGPoint)
  func drawAtPoint(point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func drawInRect(rect: CGRect)
  func drawInRect(rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPatternInRect(rect: CGRect)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  var capInsets: UIEdgeInsets { get }
  var resizingMode: UIImageResizingMode { get }
  func imageWithAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  var alignmentRectInsets: UIEdgeInsets { get }
  func imageWithRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  var renderingMode: UIImageRenderingMode { get }
  @NSCopying var traitCollection: UITraitCollection { get }
  var imageAsset: UIImageAsset? { get }
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
extension CIImage {
  init?(image: UIImage)
  init?(image: UIImage, options: [NSObject : AnyObject]?)
}
func UIImagePNGRepresentation(image: UIImage) -> NSData?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> NSData?
class UIImageAsset : NSObject, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func imageWithTraitCollection(traitCollection: UITraitCollection) -> UIImage
  func registerImage(image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregisterImageWithTraitCollection(traitCollection: UITraitCollection)
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
enum UIImagePickerControllerSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PhotoLibrary
  case Camera
  case SavedPhotosAlbum
}
enum UIImagePickerControllerQualityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case TypeHigh
  case TypeMedium
  case TypeLow
  case Type640x480
  case TypeIFrame1280x720
  case TypeIFrame960x540
}
enum UIImagePickerControllerCameraCaptureMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Photo
  case Video
}
enum UIImagePickerControllerCameraDevice : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Rear
  case Front
}
enum UIImagePickerControllerCameraFlashMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case Auto
  case On
}
let UIImagePickerControllerMediaType: String
let UIImagePickerControllerOriginalImage: String
let UIImagePickerControllerEditedImage: String
let UIImagePickerControllerCropRect: String
let UIImagePickerControllerMediaURL: String
let UIImagePickerControllerReferenceURL: String
let UIImagePickerControllerMediaMetadata: String
let UIImagePickerControllerLivePhoto: String
class UIImagePickerController : UINavigationController, NSCoding {
  class func isSourceTypeAvailable(sourceType: UIImagePickerControllerSourceType) -> Bool
  class func availableMediaTypesForSourceType(sourceType: UIImagePickerControllerSourceType) -> [String]?
  class func isCameraDeviceAvailable(cameraDevice: UIImagePickerControllerCameraDevice) -> Bool
  class func isFlashAvailableForCameraDevice(cameraDevice: UIImagePickerControllerCameraDevice) -> Bool
  class func availableCaptureModesForCameraDevice(cameraDevice: UIImagePickerControllerCameraDevice) -> [NSNumber]?
  weak var delegate: @sil_weak protocol<UIImagePickerControllerDelegate, UINavigationControllerDelegate>?
  var sourceType: UIImagePickerControllerSourceType
  var mediaTypes: [String]
  var allowsEditing: Bool
  var videoMaximumDuration: NSTimeInterval
  var videoQuality: UIImagePickerControllerQualityType
  var showsCameraControls: Bool
  var cameraOverlayView: UIView?
  var cameraViewTransform: CGAffineTransform
  func takePicture()
  func startVideoCapture() -> Bool
  func stopVideoCapture()
  var cameraCaptureMode: UIImagePickerControllerCameraCaptureMode
  var cameraDevice: UIImagePickerControllerCameraDevice
  var cameraFlashMode: UIImagePickerControllerCameraFlashMode
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIImagePickerControllerDelegate : NSObjectProtocol {
  optional func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
  optional func imagePickerControllerDidCancel(picker: UIImagePickerController)
}
func UIImageWriteToSavedPhotosAlbum(image: UIImage, _ completionTarget: AnyObject?, _ completionSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
func UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(videoPath: String) -> Bool
func UISaveVideoAtPathToSavedPhotosAlbum(videoPath: String, _ completionTarget: AnyObject?, _ completionSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
class UIImageView : UIView {
  init(image: UIImage?)
  init(image: UIImage?, highlightedImage: UIImage?)
  var image: UIImage?
  var highlightedImage: UIImage?
  var userInteractionEnabled: Bool
  var highlighted: Bool
  var animationImages: [UIImage]?
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: NSTimeInterval
  var animationRepeatCount: Int
  var tintColor: UIColor!
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum UIInputViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Keyboard
}
class UIInputView : UIView {
  var inputViewStyle: UIInputViewStyle { get }
  var allowsSelfSizing: Bool
  init(frame: CGRect, inputViewStyle: UIInputViewStyle)
  init?(coder aDecoder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITextDocumentProxy : UIKeyInput {
  var documentContextBeforeInput: String? { get }
  var documentContextAfterInput: String? { get }
  func adjustTextPositionByCharacterOffset(offset: Int)
}
class UIInputViewController : UIViewController, UITextInputDelegate {
  var inputView: UIInputView?
  var textDocumentProxy: UITextDocumentProxy { get }
  var primaryLanguage: String?
  func dismissKeyboard()
  func advanceToNextInputMode()
  func requestSupplementaryLexiconWithCompletion(completionHandler: (UILexicon) -> Void)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func selectionWillChange(textInput: UITextInput?)
  func selectionDidChange(textInput: UITextInput?)
  func textWillChange(textInput: UITextInput?)
  func textDidChange(textInput: UITextInput?)
}
enum UIBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Black
  static var BlackOpaque: UIBarStyle { get }
  case BlackTranslucent
}
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Compact
  case Regular
}
extension UIColor {
  class func lightTextColor() -> UIColor
  class func darkTextColor() -> UIColor
  class func groupTableViewBackgroundColor() -> UIColor
}
extension UIFont {
  class func labelFontSize() -> CGFloat
  class func buttonFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func systemFontSize() -> CGFloat
}
class UILabel : UIView, NSCoding {
  var text: String?
  var font: UIFont!
  var textColor: UIColor!
  var shadowColor: UIColor?
  var shadowOffset: CGSize
  var textAlignment: NSTextAlignment
  var lineBreakMode: NSLineBreakMode
  @NSCopying var attributedText: NSAttributedString?
  var highlightedTextColor: UIColor?
  var highlighted: Bool
  var userInteractionEnabled: Bool
  var enabled: Bool
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var baselineAdjustment: UIBaselineAdjustment
  var minimumScaleFactor: CGFloat
  var allowsDefaultTighteningForTruncation: Bool
  func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  func drawTextInRect(rect: CGRect)
  var preferredMaxLayoutWidth: CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class UILayoutGuide : NSObject, NSCoding {
  var layoutFrame: CGRect { get }
  weak var owningView: @sil_weak UIView?
  var identifier: String
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  var leftAnchor: NSLayoutXAxisAnchor { get }
  var rightAnchor: NSLayoutXAxisAnchor { get }
  var topAnchor: NSLayoutYAxisAnchor { get }
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  var widthAnchor: NSLayoutDimension { get }
  var heightAnchor: NSLayoutDimension { get }
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class UILexiconEntry : NSObject, NSCopying {
  var documentText: String { get }
  var userInput: String { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class UILexicon : NSObject, NSCopying {
  var entries: [UILexiconEntry] { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class UILocalNotification : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  @NSCopying var fireDate: NSDate?
  @NSCopying var timeZone: NSTimeZone?
  var repeatInterval: NSCalendarUnit
  @NSCopying var repeatCalendar: NSCalendar?
  var regionTriggersOnce: Bool
  var alertBody: String?
  var hasAction: Bool
  var alertAction: String?
  var alertLaunchImage: String?
  var alertTitle: String?
  var soundName: String?
  var applicationIconBadgeNumber: Int
  var userInfo: [NSObject : AnyObject]?
  var category: String?
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
let UILocalNotificationDefaultSoundName: String
class UILocalizedIndexedCollation : NSObject {
  class func currentCollation() -> Self
  var sectionTitles: [String] { get }
  var sectionIndexTitles: [String] { get }
  func sectionForSectionIndexTitleAtIndex(indexTitleIndex: Int) -> Int
  func sectionForObject(object: AnyObject, collationStringSelector selector: Selector) -> Int
  func sortedArrayFromArray(array: [AnyObject], collationStringSelector selector: Selector) -> [AnyObject]
  init()
}
class UILongPressGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  var minimumPressDuration: CFTimeInterval
  var allowableMovement: CGFloat
  init(target: AnyObject?, action: Selector)
  convenience init()
}
class UIManagedDocument : UIDocument {
  class func persistentStoreName() -> String
  var persistentStoreOptions: [NSObject : AnyObject]?
  var modelConfiguration: String?
  func configurePersistentStoreCoordinatorForURL(storeURL: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [NSObject : AnyObject]?) throws
  func persistentStoreTypeForFileType(fileType: String) -> String
  func readAdditionalContentFromURL(absoluteURL: NSURL) throws
  func additionalContentForURL(absoluteURL: NSURL) throws -> AnyObject
  func writeAdditionalContent(content: AnyObject, toURL absoluteURL: NSURL, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  init(fileURL url: NSURL)
  convenience init()
}
enum UIMenuControllerArrowDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Up
  case Down
  case Left
  case Right
}
class UIMenuController : NSObject {
  class func sharedMenuController() -> UIMenuController
  var menuVisible: Bool
  func setMenuVisible(menuVisible: Bool, animated: Bool)
  func setTargetRect(targetRect: CGRect, inView targetView: UIView)
  var arrowDirection: UIMenuControllerArrowDirection
  var menuItems: [UIMenuItem]?
  func update()
  var menuFrame: CGRect { get }
  init()
}
let UIMenuControllerWillShowMenuNotification: String
let UIMenuControllerDidShowMenuNotification: String
let UIMenuControllerWillHideMenuNotification: String
let UIMenuControllerDidHideMenuNotification: String
let UIMenuControllerMenuFrameDidChangeNotification: String
class UIMenuItem : NSObject {
  init(title: String, action: Selector)
  var title: String
  var action: Selector
  convenience init()
}
class UIMotionEffect : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func keyPathsAndRelativeValuesForViewerOffset(viewerOffset: UIOffset) -> [String : AnyObject]?
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
enum UIInterpolatingMotionEffectType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case TiltAlongHorizontalAxis
  case TiltAlongVerticalAxis
}
class UIInterpolatingMotionEffect : UIMotionEffect {
  init(keyPath: String, type: UIInterpolatingMotionEffectType)
  init?(coder aDecoder: NSCoder)
  var keyPath: String { get }
  var type: UIInterpolatingMotionEffectType { get }
  var minimumRelativeValue: AnyObject?
  var maximumRelativeValue: AnyObject?
  convenience init()
}
class UIMotionEffectGroup : UIMotionEffect {
  var motionEffects: [UIMotionEffect]?
  init()
  init?(coder aDecoder: NSCoder)
}
class UINavigationBar : UIView, NSCoding, UIBarPositioning {
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UINavigationBarDelegate?
  var translucent: Bool
  func pushNavigationItem(item: UINavigationItem, animated: Bool)
  func popNavigationItemAnimated(animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(items: [UINavigationItem]?, animated: Bool)
  var tintColor: UIColor!
  var barTintColor: UIColor?
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  func backgroundImageForBarPosition(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  func setBackgroundImage(backgroundImage: UIImage?, forBarMetrics barMetrics: UIBarMetrics)
  func backgroundImageForBarMetrics(barMetrics: UIBarMetrics) -> UIImage?
  var shadowImage: UIImage?
  var titleTextAttributes: [String : AnyObject]?
  func setTitleVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  func titleVerticalPositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> CGFloat
  var backIndicatorImage: UIImage?
  var backIndicatorTransitionMaskImage: UIImage?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  var barPosition: UIBarPosition { get }
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  optional func navigationBar(navigationBar: UINavigationBar, shouldPushItem item: UINavigationItem) -> Bool
  optional func navigationBar(navigationBar: UINavigationBar, didPushItem item: UINavigationItem)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPopItem item: UINavigationItem) -> Bool
  optional func navigationBar(navigationBar: UINavigationBar, didPopItem item: UINavigationItem)
}
class UINavigationItem : NSObject, NSCoding {
  init(title: String)
  init?(coder: NSCoder)
  var title: String?
  var titleView: UIView?
  var prompt: String?
  var backBarButtonItem: UIBarButtonItem?
  var hidesBackButton: Bool
  func setHidesBackButton(hidesBackButton: Bool, animated: Bool)
  var leftBarButtonItems: [UIBarButtonItem]?
  var rightBarButtonItems: [UIBarButtonItem]?
  func setLeftBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  func setRightBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  var leftItemsSupplementBackButton: Bool
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  func setRightBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
}
enum UINavigationControllerOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Push
  case Pop
}
let UINavigationControllerHideShowBarDuration: CGFloat
class UINavigationController : UIViewController {
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  func pushViewController(viewController: UIViewController, animated: Bool)
  func popViewControllerAnimated(animated: Bool) -> UIViewController?
  func popToViewController(viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewControllerAnimated(animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  func setViewControllers(viewControllers: [UIViewController], animated: Bool)
  var navigationBarHidden: Bool
  func setNavigationBarHidden(hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  var toolbarHidden: Bool
  func setToolbarHidden(hidden: Bool, animated: Bool)
  var toolbar: UIToolbar! { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
  var interactivePopGestureRecognizer: UIGestureRecognizer? { get }
  func showViewController(vc: UIViewController, sender: AnyObject?)
  /// When the keyboard appears, the navigation controller's navigationBar toolbar will be hidden. The bars will remain hidden when the keyboard dismisses, but a tap in the content area will show them.
  var hidesBarsWhenKeyboardAppears: Bool
  /// When the user swipes, the navigation controller's navigationBar & toolbar will be hidden (on a swipe up) or shown (on a swipe down). The toolbar only participates if it has items.
  var hidesBarsOnSwipe: Bool
  /// The gesture recognizer that triggers if the bars will hide or show due to a swipe. Do not change the delegate or attempt to replace this gesture by overriding this method.
  var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer { get }
  /// When the UINavigationController's vertical size class is compact, hide the UINavigationBar and UIToolbar. Unhandled taps in the regions that would normally be occupied by these bars will reveal the bars.
  var hidesBarsWhenVerticallyCompact: Bool
  /// When the user taps, the navigation controller's navigationBar & toolbar will be hidden or shown, depending on the hidden state of the navigationBar. The toolbar will only be shown if it has items to display.
  var hidesBarsOnTap: Bool
  /// The gesture recognizer used to recognize if the bars will hide or show due to a tap in content. Do not change the delegate or attempt to replace this gesture by overriding this method.
  unowned(unsafe) var barHideOnTapGestureRecognizer: @sil_unmanaged UITapGestureRecognizer { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UINavigationControllerDelegate : NSObjectProtocol {
  optional func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool)
  optional func navigationController(navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool)
  optional func navigationControllerSupportedInterfaceOrientations(navigationController: UINavigationController) -> UIInterfaceOrientationMask
  optional func navigationControllerPreferredInterfaceOrientationForPresentation(navigationController: UINavigationController) -> UIInterfaceOrientation
  optional func navigationController(navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var hidesBottomBarWhenPushed: Bool
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
  var toolbarItems: [UIBarButtonItem]?
  func setToolbarItems(toolbarItems: [UIBarButtonItem]?, animated: Bool)
}
class UINib : NSObject {
   init(nibName name: String, bundle bundleOrNil: NSBundle?)
   init(data: NSData, bundle bundleOrNil: NSBundle?)
  func instantiateWithOwner(ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]?) -> [AnyObject]
  init()
}
let UINibExternalObjects: String
extension NSBundle {
  func loadNibNamed(name: String!, owner: AnyObject!, options: [NSObject : AnyObject]!) -> [AnyObject]!
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  class func prepareForInterfaceBuilder()
  func prepareForInterfaceBuilder()
}
class UIPageControl : UIControl {
  var numberOfPages: Int
  var currentPage: Int
  var hidesForSinglePage: Bool
  var defersCurrentPageDisplay: Bool
  func updateCurrentPageDisplay()
  func sizeForNumberOfPages(pageCount: Int) -> CGSize
  var pageIndicatorTintColor: UIColor?
  var currentPageIndicatorTintColor: UIColor?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum UIPageViewControllerNavigationOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
enum UIPageViewControllerSpineLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Min
  case Mid
  case Max
}
enum UIPageViewControllerNavigationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Reverse
}
enum UIPageViewControllerTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PageCurl
  case Scroll
}
let UIPageViewControllerOptionSpineLocationKey: String
let UIPageViewControllerOptionInterPageSpacingKey: String
class UIPageViewController : UIViewController {
  init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : AnyObject]?)
  init?(coder: NSCoder)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewControllerTransitionStyle { get }
  var navigationOrientation: UIPageViewControllerNavigationOrientation { get }
  var spineLocation: UIPageViewControllerSpineLocation { get }
  var doubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(viewControllers: [UIViewController]?, direction: UIPageViewControllerNavigationDirection, animated: Bool, completion: ((Bool) -> Void)?)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
protocol UIPageViewControllerDelegate : NSObjectProtocol {
  optional func pageViewController(pageViewController: UIPageViewController, willTransitionToViewControllers pendingViewControllers: [UIViewController])
  optional func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
  optional func pageViewController(pageViewController: UIPageViewController, spineLocationForInterfaceOrientation orientation: UIInterfaceOrientation) -> UIPageViewControllerSpineLocation
  optional func pageViewControllerSupportedInterfaceOrientations(pageViewController: UIPageViewController) -> UIInterfaceOrientationMask
  optional func pageViewControllerPreferredInterfaceOrientationForPresentation(pageViewController: UIPageViewController) -> UIInterfaceOrientation
}
protocol UIPageViewControllerDataSource : NSObjectProtocol {
  func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
  optional func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
  optional func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
}
class UIPanGestureRecognizer : UIGestureRecognizer {
  var minimumNumberOfTouches: Int
  var maximumNumberOfTouches: Int
  func translationInView(view: UIView?) -> CGPoint
  func setTranslation(translation: CGPoint, inView view: UIView?)
  func velocityInView(view: UIView?) -> CGPoint
  init(target: AnyObject?, action: Selector)
  convenience init()
}
let UIPasteboardNameGeneral: String
let UIPasteboardNameFind: String
class UIPasteboard : NSObject {
  class func generalPasteboard() -> UIPasteboard
   init?(name pasteboardName: String, create: Bool)
  class func pasteboardWithUniqueName() -> UIPasteboard
  var name: String { get }
  class func removePasteboardWithName(pasteboardName: String)
  var persistent: Bool
  var changeCount: Int { get }
  func pasteboardTypes() -> [String]
  func containsPasteboardTypes(pasteboardTypes: [String]) -> Bool
  func dataForPasteboardType(pasteboardType: String) -> NSData?
  func valueForPasteboardType(pasteboardType: String) -> AnyObject?
  func setValue(value: AnyObject, forPasteboardType pasteboardType: String)
  func setData(data: NSData, forPasteboardType pasteboardType: String)
  var numberOfItems: Int { get }
  func pasteboardTypesForItemSet(itemSet: NSIndexSet?) -> [AnyObject]?
  func containsPasteboardTypes(pasteboardTypes: [String], inItemSet itemSet: NSIndexSet?) -> Bool
  func itemSetWithPasteboardTypes(pasteboardTypes: [AnyObject]) -> NSIndexSet?
  func valuesForPasteboardType(pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  func dataForPasteboardType(pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  var items: [AnyObject]
  func addItems(items: [[String : AnyObject]])
  init()
}
let UIPasteboardChangedNotification: String
let UIPasteboardChangedTypesAddedKey: String
let UIPasteboardChangedTypesRemovedKey: String
let UIPasteboardRemovedNotification: String
var UIPasteboardTypeListString: NSArray
var UIPasteboardTypeListURL: NSArray
var UIPasteboardTypeListImage: NSArray
var UIPasteboardTypeListColor: NSArray
extension UIPasteboard {
  var string: String?
  var strings: [String]?
  @NSCopying var URL: NSURL?
  var URLs: [NSURL]?
  @NSCopying var image: UIImage?
  var images: [UIImage]?
  @NSCopying var color: UIColor?
  var colors: [UIColor]?
}
class UIPickerView : UIView, NSCoding, UITableViewDataSource {
  weak var dataSource: @sil_weak UIPickerViewDataSource?
  weak var delegate: @sil_weak UIPickerViewDelegate?
  var showsSelectionIndicator: Bool
  var numberOfComponents: Int { get }
  func numberOfRowsInComponent(component: Int) -> Int
  func rowSizeForComponent(component: Int) -> CGSize
  func viewForRow(row: Int, forComponent component: Int) -> UIView?
  func reloadAllComponents()
  func reloadComponent(component: Int)
  func selectRow(row: Int, inComponent component: Int, animated: Bool)
  func selectedRowInComponent(component: Int) -> Int
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  func numberOfSectionsInTableView(tableView: UITableView) -> Int
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]?
  func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
  func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
protocol UIPickerViewDataSource : NSObjectProtocol {
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
}
protocol UIPickerViewDelegate : NSObjectProtocol {
  optional func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat
  optional func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat
  optional func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
  optional func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
  optional func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView
  optional func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
}
class UIPinchGestureRecognizer : UIGestureRecognizer {
  var scale: CGFloat
  var velocity: CGFloat { get }
  init(target: AnyObject?, action: Selector)
  convenience init()
}
protocol UIPopoverBackgroundViewMethods {
  static func arrowBase() -> CGFloat
  static func contentViewInsets() -> UIEdgeInsets
  static func arrowHeight() -> CGFloat
}
class UIPopoverBackgroundView : UIView, UIPopoverBackgroundViewMethods {
  var arrowOffset: CGFloat
  var arrowDirection: UIPopoverArrowDirection
  class func wantsDefaultContentAppearance() -> Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  class func arrowBase() -> CGFloat
  class func contentViewInsets() -> UIEdgeInsets
  class func arrowHeight() -> CGFloat
}
class UIPopoverController : NSObject, UIAppearanceContainer {
  init(contentViewController viewController: UIViewController)
  weak var delegate: @sil_weak UIPopoverControllerDelegate?
  var contentViewController: UIViewController
  func setContentViewController(viewController: UIViewController, animated: Bool)
  var popoverContentSize: CGSize
  func setPopoverContentSize(size: CGSize, animated: Bool)
  var popoverVisible: Bool { get }
  var popoverArrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  func presentPopoverFromRect(rect: CGRect, inView view: UIView, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func presentPopoverFromBarButtonItem(item: UIBarButtonItem, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func dismissPopoverAnimated(animated: Bool)
  @NSCopying var backgroundColor: UIColor?
  var popoverLayoutMargins: UIEdgeInsets
  var popoverBackgroundViewClass: AnyClass?
  init()
}
protocol UIPopoverControllerDelegate : NSObjectProtocol {
  optional func popoverControllerShouldDismissPopover(popoverController: UIPopoverController) -> Bool
  optional func popoverControllerDidDismissPopover(popoverController: UIPopoverController)
  optional func popoverController(popoverController: UIPopoverController, willRepositionPopoverToRect rect: UnsafeMutablePointer<CGRect>, inView view: AutoreleasingUnsafeMutablePointer<UIView?>)
}
protocol UIPopoverPresentationControllerDelegate : UIAdaptivePresentationControllerDelegate {
  optional func prepareForPopoverPresentation(popoverPresentationController: UIPopoverPresentationController)
  optional func popoverPresentationControllerShouldDismissPopover(popoverPresentationController: UIPopoverPresentationController) -> Bool
  optional func popoverPresentationControllerDidDismissPopover(popoverPresentationController: UIPopoverPresentationController)
  optional func popoverPresentationController(popoverPresentationController: UIPopoverPresentationController, willRepositionPopoverToRect rect: UnsafeMutablePointer<CGRect>, inView view: AutoreleasingUnsafeMutablePointer<UIView?>)
}
class UIPopoverPresentationController : UIPresentationController {
  weak var delegate: @sil_weak UIPopoverPresentationControllerDelegate?
  var permittedArrowDirections: UIPopoverArrowDirection
  var sourceView: UIView?
  var sourceRect: CGRect
  var canOverlapSourceViewRect: Bool
  var barButtonItem: UIBarButtonItem?
  var arrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  @NSCopying var backgroundColor: UIColor?
  var popoverLayoutMargins: UIEdgeInsets
  var popoverBackgroundViewClass: AnyObject.Type?
  init(presentedViewController: UIViewController, presentingViewController: UIViewController)
  init()
}
struct UIPopoverArrowDirection : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Up: UIPopoverArrowDirection { get }
  static var Down: UIPopoverArrowDirection { get }
  static var Left: UIPopoverArrowDirection { get }
  static var Right: UIPopoverArrowDirection { get }
  static var Any: UIPopoverArrowDirection { get }
  static var Unknown: UIPopoverArrowDirection { get }
}
extension UIViewController {
  var modalInPopover: Bool
}
protocol UIAdaptivePresentationControllerDelegate : NSObjectProtocol {
  optional func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle
  optional func adaptivePresentationStyleForPresentationController(controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle
  optional func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  optional func presentationController(presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator: UIViewControllerTransitionCoordinator?)
}
class UIPresentationController : NSObject, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController: UIViewController, presentingViewController: UIViewController)
  func adaptivePresentationStyle() -> UIModalPresentationStyle
  func adaptivePresentationStyleForTraitCollection(traitCollection: UITraitCollection) -> UIModalPresentationStyle
  func containerViewWillLayoutSubviews()
  func containerViewDidLayoutSubviews()
  func presentedView() -> UIView?
  func frameOfPresentedViewInContainerView() -> CGRect
  func shouldPresentInFullscreen() -> Bool
  func shouldRemovePresentersView() -> Bool
  func presentationTransitionWillBegin()
  func presentationTransitionDidEnd(completed: Bool)
  func dismissalTransitionWillBegin()
  func dismissalTransitionDidEnd(completed: Bool)
  @NSCopying var overrideTraitCollection: UITraitCollection?
  init()
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  var preferredContentSize: CGSize { get }
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }
  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()
  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()
  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool
  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
enum UIPressPhase : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Began
  case Changed
  case Stationary
  case Ended
  case Cancelled
}
enum UIPressType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UpArrow
  case DownArrow
  case LeftArrow
  case RightArrow
  case Select
  case Menu
  case PlayPause
}
class UIPress : NSObject {
  var timestamp: NSTimeInterval { get }
  var phase: UIPressPhase { get }
  var type: UIPressType { get }
  var window: UIWindow? { get }
  var responder: UIResponder? { get }
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  var force: CGFloat { get }
  init()
}
class UIPressesEvent : UIEvent {
  func allPresses() -> Set<UIPress>
  func pressesForGestureRecognizer(gesture: UIGestureRecognizer) -> Set<UIPress>
  init()
}
let UIPrintErrorDomain: String
var UIPrintingNotAvailableError: Int { get }
var UIPrintNoContentError: Int { get }
var UIPrintUnknownImageFormatError: Int { get }
var UIPrintJobFailedError: Int { get }
class UIPrintFormatter : NSObject, NSCopying {
  weak var printPageRenderer: @sil_weak UIPrintPageRenderer? { get }
  func removeFromPrintPageRenderer()
  var maximumContentHeight: CGFloat
  var maximumContentWidth: CGFloat
  var contentInsets: UIEdgeInsets
  var perPageContentInsets: UIEdgeInsets
  var startPage: Int
  var pageCount: Int { get }
  func rectForPageAtIndex(pageIndex: Int) -> CGRect
  func drawInRect(rect: CGRect, forPageAtIndex pageIndex: Int)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class UISimpleTextPrintFormatter : UIPrintFormatter {
  init(text: String)
  init(attributedText: NSAttributedString)
  var text: String?
  @NSCopying var attributedText: NSAttributedString?
  var font: UIFont?
  var color: UIColor?
  var textAlignment: NSTextAlignment
  init()
}
class UIMarkupTextPrintFormatter : UIPrintFormatter {
  init(markupText: String)
  var markupText: String?
  init()
}
class UIViewPrintFormatter : UIPrintFormatter {
  var view: UIView { get }
  init()
}
extension UIView {
  func viewPrintFormatter() -> UIViewPrintFormatter
  func drawRect(rect: CGRect, forViewPrintFormatter formatter: UIViewPrintFormatter)
}
enum UIPrintInfoOutputType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case General
  case Photo
  case Grayscale
  case PhotoGrayscale
}
enum UIPrintInfoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case Landscape
}
enum UIPrintInfoDuplex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case LongEdge
  case ShortEdge
}
class UIPrintInfo : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  class func printInfo() -> UIPrintInfo
   init(dictionary: [NSObject : AnyObject]?)
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  var printerID: String?
  var jobName: String
  var outputType: UIPrintInfoOutputType
  var orientation: UIPrintInfoOrientation
  var duplex: UIPrintInfoDuplex
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
typealias UIPrintInteractionCompletionHandler = (UIPrintInteractionController, Bool, NSError?) -> Void
enum UIPrinterCutterBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoCut
  case PrinterDefault
  case CutAfterEachPage
  case CutAfterEachCopy
  case CutAfterEachJob
}
class UIPrintInteractionController : NSObject {
  class func isPrintingAvailable() -> Bool
  class func printableUTIs() -> Set<String>
  class func canPrintURL(url: NSURL) -> Bool
  class func canPrintData(data: NSData) -> Bool
  class func sharedPrintController() -> UIPrintInteractionController
  var printInfo: UIPrintInfo?
  weak var delegate: @sil_weak UIPrintInteractionControllerDelegate?
  var showsPageRange: Bool
  var showsNumberOfCopies: Bool
  var showsPaperSelectionForLoadedPapers: Bool
  var printPaper: UIPrintPaper? { get }
  var printPageRenderer: UIPrintPageRenderer?
  var printFormatter: UIPrintFormatter?
  @NSCopying var printingItem: AnyObject?
  var printingItems: [AnyObject]?
  func presentAnimated(animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func presentFromRect(rect: CGRect, inView view: UIView, animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func presentFromBarButtonItem(item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func printToPrinter(printer: UIPrinter, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func dismissAnimated(animated: Bool)
  init()
}
protocol UIPrintInteractionControllerDelegate : NSObjectProtocol {
  optional func printInteractionControllerParentViewController(printInteractionController: UIPrintInteractionController) -> UIViewController
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, choosePaper paperList: [UIPrintPaper]) -> UIPrintPaper
  optional func printInteractionControllerWillPresentPrinterOptions(printInteractionController: UIPrintInteractionController)
  optional func printInteractionControllerDidPresentPrinterOptions(printInteractionController: UIPrintInteractionController)
  optional func printInteractionControllerWillDismissPrinterOptions(printInteractionController: UIPrintInteractionController)
  optional func printInteractionControllerDidDismissPrinterOptions(printInteractionController: UIPrintInteractionController)
  optional func printInteractionControllerWillStartJob(printInteractionController: UIPrintInteractionController)
  optional func printInteractionControllerDidFinishJob(printInteractionController: UIPrintInteractionController)
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, cutLengthForPaper paper: UIPrintPaper) -> CGFloat
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, chooseCutterBehavior availableBehaviors: [AnyObject]) -> UIPrinterCutterBehavior
}
class UIPrintPageRenderer : NSObject {
  var headerHeight: CGFloat
  var footerHeight: CGFloat
  var paperRect: CGRect { get }
  var printableRect: CGRect { get }
  var printFormatters: [UIPrintFormatter]?
  func printFormattersForPageAtIndex(pageIndex: Int) -> [UIPrintFormatter]?
  func addPrintFormatter(formatter: UIPrintFormatter, startingAtPageAtIndex pageIndex: Int)
  func numberOfPages() -> Int
  func prepareForDrawingPages(range: NSRange)
  func drawPageAtIndex(pageIndex: Int, inRect printableRect: CGRect)
  func drawPrintFormatter(printFormatter: UIPrintFormatter, forPageAtIndex pageIndex: Int)
  func drawHeaderForPageAtIndex(pageIndex: Int, inRect headerRect: CGRect)
  func drawContentForPageAtIndex(pageIndex: Int, inRect contentRect: CGRect)
  func drawFooterForPageAtIndex(pageIndex: Int, inRect footerRect: CGRect)
  init()
}
class UIPrintPaper : NSObject {
  class func bestPaperForPageSize(contentSize: CGSize, withPapersFromArray paperList: [UIPrintPaper]) -> UIPrintPaper
  var paperSize: CGSize { get }
  var printableRect: CGRect { get }
  init()
}
extension UIPrintPaper {
  func printRect() -> CGRect
}
class UIPrinter : NSObject {
   init(URL url: NSURL)
  @NSCopying var URL: NSURL { get }
  var displayName: String { get }
  var displayLocation: String? { get }
  var supportedJobTypes: UIPrinterJobTypes { get }
  var makeAndModel: String? { get }
  var supportsColor: Bool { get }
  var supportsDuplex: Bool { get }
  func contactPrinter(completionHandler: ((Bool) -> Void)?)
  init()
}
struct UIPrinterJobTypes : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Unknown: UIPrinterJobTypes { get }
  static var Document: UIPrinterJobTypes { get }
  static var Envelope: UIPrinterJobTypes { get }
  static var Label: UIPrinterJobTypes { get }
  static var Photo: UIPrinterJobTypes { get }
  static var Receipt: UIPrinterJobTypes { get }
  static var Roll: UIPrinterJobTypes { get }
  static var LargeFormat: UIPrinterJobTypes { get }
  static var Postcard: UIPrinterJobTypes { get }
}
typealias UIPrinterPickerCompletionHandler = (UIPrinterPickerController, Bool, NSError?) -> Void
protocol UIPrinterPickerControllerDelegate : NSObjectProtocol {
  optional func printerPickerControllerParentViewController(printerPickerController: UIPrinterPickerController) -> UIViewController?
  optional func printerPickerController(printerPickerController: UIPrinterPickerController, shouldShowPrinter printer: UIPrinter) -> Bool
  optional func printerPickerControllerWillPresent(printerPickerController: UIPrinterPickerController)
  optional func printerPickerControllerDidPresent(printerPickerController: UIPrinterPickerController)
  optional func printerPickerControllerWillDismiss(printerPickerController: UIPrinterPickerController)
  optional func printerPickerControllerDidDismiss(printerPickerController: UIPrinterPickerController)
  optional func printerPickerControllerDidSelectPrinter(printerPickerController: UIPrinterPickerController)
}
class UIPrinterPickerController : NSObject {
   init(initiallySelectedPrinter printer: UIPrinter?)
  var selectedPrinter: UIPrinter? { get }
  weak var delegate: @sil_weak UIPrinterPickerControllerDelegate?
  func presentAnimated(animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func presentFromRect(rect: CGRect, inView view: UIView, animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func presentFromBarButtonItem(item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func dismissAnimated(animated: Bool)
  init()
}
enum UIProgressViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Bar
}
class UIProgressView : UIView, NSCoding {
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init(progressViewStyle style: UIProgressViewStyle)
  var progressViewStyle: UIProgressViewStyle
  var progress: Float
  var progressTintColor: UIColor?
  var trackTintColor: UIColor?
  var progressImage: UIImage?
  var trackImage: UIImage?
  func setProgress(progress: Float, animated: Bool)
  var observedProgress: NSProgress?
  convenience init()
}
enum UIPushBehaviorMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Continuous
  case Instantaneous
}
class UIPushBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem], mode: UIPushBehaviorMode)
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  func targetOffsetFromCenterForItem(item: UIDynamicItem) -> UIOffset
  func setTargetOffsetFromCenter(o: UIOffset, forItem item: UIDynamicItem)
  var mode: UIPushBehaviorMode { get }
  var active: Bool
  var angle: CGFloat
  var magnitude: CGFloat
  var pushDirection: CGVector
  func setAngle(angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
class UIReferenceLibraryViewController : UIViewController {
  class func dictionaryHasDefinitionForTerm(term: String) -> Bool
  init(term: String)
  init(coder aDecoder: NSCoder)
}
class UIRefreshControl : UIControl {
  init()
  var refreshing: Bool { get }
  var tintColor: UIColor!
  var attributedTitle: NSAttributedString?
  func beginRefreshing()
  func endRefreshing()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
}
class UIRegion : NSObject, NSCopying, NSCoding {
  class func infiniteRegion() -> Self
  init(radius: CGFloat)
  init(size: CGSize)
  func inverseRegion() -> Self
  func regionByUnionWithRegion(region: UIRegion) -> Self
  func regionByDifferenceFromRegion(region: UIRegion) -> Self
  func regionByIntersectionWithRegion(region: UIRegion) -> Self
  func containsPoint(point: CGPoint) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class UIResponder : NSObject {
  func nextResponder() -> UIResponder?
  func canBecomeFirstResponder() -> Bool
  func becomeFirstResponder() -> Bool
  func canResignFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func isFirstResponder() -> Bool
  func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?)
  func touchesEstimatedPropertiesUpdated(touches: Set<NSObject>)
  func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  func pressesChanged(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  func pressesEnded(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  func pressesCancelled(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?)
  func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
  func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?)
  func remoteControlReceivedWithEvent(event: UIEvent?)
  func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool
  func targetForAction(action: Selector, withSender sender: AnyObject?) -> AnyObject?
  var undoManager: NSUndoManager? { get }
  init()
}
struct UIKeyModifierFlags : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var AlphaShift: UIKeyModifierFlags { get }
  static var Shift: UIKeyModifierFlags { get }
  static var Control: UIKeyModifierFlags { get }
  static var Alternate: UIKeyModifierFlags { get }
  static var Command: UIKeyModifierFlags { get }
  static var NumericPad: UIKeyModifierFlags { get }
}
class UIKeyCommand : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var input: String { get }
  var modifierFlags: UIKeyModifierFlags { get }
  var discoverabilityTitle: String?
   init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
   init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension UIResponder {
  var keyCommands: [UIKeyCommand]? { get }
}
extension NSObject {
  class func cut(sender: AnyObject?)
  func cut(sender: AnyObject?)
  class func copy(sender: AnyObject?)
  func copy(sender: AnyObject?)
  class func paste(sender: AnyObject?)
  func paste(sender: AnyObject?)
  class func select(sender: AnyObject?)
  func select(sender: AnyObject?)
  class func selectAll(sender: AnyObject?)
  func selectAll(sender: AnyObject?)
  class func delete(sender: AnyObject?)
  func delete(sender: AnyObject?)
  class func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  class func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  class func toggleBoldface(sender: AnyObject?)
  func toggleBoldface(sender: AnyObject?)
  class func toggleItalics(sender: AnyObject?)
  func toggleItalics(sender: AnyObject?)
  class func toggleUnderline(sender: AnyObject?)
  func toggleUnderline(sender: AnyObject?)
  class func increaseSize(sender: AnyObject?)
  func increaseSize(sender: AnyObject?)
  class func decreaseSize(sender: AnyObject?)
  func decreaseSize(sender: AnyObject?)
}
extension UIResponder {
  var inputView: UIView? { get }
  var inputAccessoryView: UIView? { get }
  /// This method is for clients that wish to put buttons on the Shortcuts Bar, shown on top of the keyboard.
  /// You may modify the returned inputAssistantItem to add to or replace the existing items on the bar.
  /// Modifications made to the returned UITextInputAssistantItem are reflected automatically.
  /// This method should not be overriden. Goes up the responder chain.
  var inputAssistantItem: UITextInputAssistantItem { get }
  var inputViewController: UIInputViewController? { get }
  var inputAccessoryViewController: UIInputViewController? { get }
  var textInputMode: UITextInputMode? { get }
  var textInputContextIdentifier: String? { get }
  class func clearTextInputContextIdentifier(identifier: String)
  func reloadInputViews()
}
let UIKeyInputUpArrow: String
let UIKeyInputDownArrow: String
let UIKeyInputLeftArrow: String
let UIKeyInputRightArrow: String
let UIKeyInputEscape: String
extension UIResponder {
  var userActivity: NSUserActivity?
  func updateUserActivityState(activity: NSUserActivity)
  func restoreUserActivityState(activity: NSUserActivity)
}
class UIRotationGestureRecognizer : UIGestureRecognizer {
  var rotation: CGFloat
  var velocity: CGFloat { get }
  init(target: AnyObject?, action: Selector)
  convenience init()
}
let UIScreenDidConnectNotification: String
let UIScreenDidDisconnectNotification: String
let UIScreenModeDidChangeNotification: String
let UIScreenBrightnessDidChangeNotification: String
enum UIScreenOverscanCompensation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Scale
  case InsetBounds
  case None
  static var InsetApplicationFrame: UIScreenOverscanCompensation { get }
}
class UIScreen : NSObject, UITraitEnvironment {
  class func screens() -> [UIScreen]
  class func mainScreen() -> UIScreen
  var bounds: CGRect { get }
  var scale: CGFloat { get }
  var availableModes: [UIScreenMode] { get }
  var preferredMode: UIScreenMode? { get }
  var currentMode: UIScreenMode?
  var overscanCompensation: UIScreenOverscanCompensation
  var overscanCompensationInsets: UIEdgeInsets { get }
  var mirroredScreen: UIScreen? { get }
  var brightness: CGFloat
  var wantsSoftwareDimming: Bool
  var coordinateSpace: UICoordinateSpace { get }
  var fixedCoordinateSpace: UICoordinateSpace { get }
  var nativeBounds: CGRect { get }
  var nativeScale: CGFloat { get }
  func displayLinkWithTarget(target: AnyObject, selector sel: Selector) -> CADisplayLink?
  weak var focusedView: @sil_weak UIView? { get }
  var supportsFocus: Bool { get }
  var applicationFrame: CGRect { get }
  init()
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
}
extension UIScreen {
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
}
class UIScreenEdgePanGestureRecognizer : UIPanGestureRecognizer {
  var edges: UIRectEdge
  init(target: AnyObject?, action: Selector)
  convenience init()
}
class UIScreenMode : NSObject {
  var size: CGSize { get }
  var pixelAspectRatio: CGFloat { get }
  init()
}
enum UIScrollViewIndicatorStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Black
  case White
}
enum UIScrollViewKeyboardDismissMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case OnDrag
  case Interactive
}
let UIScrollViewDecelerationRateNormal: CGFloat
let UIScrollViewDecelerationRateFast: CGFloat
class UIScrollView : UIView, NSCoding {
  var contentOffset: CGPoint
  var contentSize: CGSize
  var contentInset: UIEdgeInsets
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var directionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var pagingEnabled: Bool
  var scrollEnabled: Bool
  var showsHorizontalScrollIndicator: Bool
  var showsVerticalScrollIndicator: Bool
  var scrollIndicatorInsets: UIEdgeInsets
  var indicatorStyle: UIScrollViewIndicatorStyle
  var decelerationRate: CGFloat
  func setContentOffset(contentOffset: CGPoint, animated: Bool)
  func scrollRectToVisible(rect: CGRect, animated: Bool)
  func flashScrollIndicators()
  var tracking: Bool { get }
  var dragging: Bool { get }
  var decelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool
  func touchesShouldCancelInContentView(view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  var zoomScale: CGFloat
  func setZoomScale(scale: CGFloat, animated: Bool)
  func zoomToRect(rect: CGRect, animated: Bool)
  var bouncesZoom: Bool
  var zooming: Bool { get }
  var zoomBouncing: Bool { get }
  var scrollsToTop: Bool
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  var keyboardDismissMode: UIScrollViewKeyboardDismissMode
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIScrollViewDelegate : NSObjectProtocol {
  optional func scrollViewDidScroll(scrollView: UIScrollView)
  optional func scrollViewDidZoom(scrollView: UIScrollView)
  optional func scrollViewWillBeginDragging(scrollView: UIScrollView)
  optional func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  optional func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  optional func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  optional func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  optional func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  optional func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  optional func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  optional func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  optional func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  optional func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
enum UISearchBarIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Search
  case Clear
  case Bookmark
  case ResultsList
}
enum UISearchBarStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Prominent
  case Minimal
}
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  convenience init()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  var showsBookmarkButton: Bool
  var showsCancelButton: Bool
  var showsSearchResultsButton: Bool
  var searchResultsButtonSelected: Bool
  func setShowsCancelButton(showsCancelButton: Bool, animated: Bool)
  /// Use this method to modify the contents of the Unified Content Bar, shown on top of the keyboard when search is engaged.
  /// You may modify the returned inputAssistantItem to add to or replace the existing items on the bar.
  /// Modifications made to the returned UITextInputAssistantItem are reflected automatically.
  var inputAssistantItem: UITextInputAssistantItem { get }
  var tintColor: UIColor!
  var barTintColor: UIColor?
  var searchBarStyle: UISearchBarStyle
  var translucent: Bool
  var scopeButtonTitles: [String]?
  var selectedScopeButtonIndex: Int
  var showsScopeBar: Bool
  var inputAccessoryView: UIView?
  var backgroundImage: UIImage?
  var scopeBarBackgroundImage: UIImage?
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  func backgroundImageForBarPosition(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  func setSearchFieldBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  func searchFieldBackgroundImageForState(state: UIControlState) -> UIImage?
  func setImage(iconImage: UIImage?, forSearchBarIcon icon: UISearchBarIcon, state: UIControlState)
  func imageForSearchBarIcon(icon: UISearchBarIcon, state: UIControlState) -> UIImage?
  func setScopeBarButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  func scopeBarButtonBackgroundImageForState(state: UIControlState) -> UIImage?
  func setScopeBarButtonDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  func scopeBarButtonDividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState) -> UIImage?
  func setScopeBarButtonTitleTextAttributes(attributes: [String : AnyObject]?, forState state: UIControlState)
  func scopeBarButtonTitleTextAttributesForState(state: UIControlState) -> [String : AnyObject]?
  var searchFieldBackgroundPositionAdjustment: UIOffset
  var searchTextPositionAdjustment: UIOffset
  func setPositionAdjustment(adjustment: UIOffset, forSearchBarIcon icon: UISearchBarIcon)
  func positionAdjustmentForSearchBarIcon(icon: UISearchBarIcon) -> UIOffset
  var barPosition: UIBarPosition { get }
  var autocapitalizationType: UITextAutocapitalizationType
  var autocorrectionType: UITextAutocorrectionType
  var spellCheckingType: UITextSpellCheckingType
  var keyboardType: UIKeyboardType
  var keyboardAppearance: UIKeyboardAppearance
  var returnKeyType: UIReturnKeyType
  var enablesReturnKeyAutomatically: Bool
  var secureTextEntry: Bool
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  optional func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool
  optional func searchBarTextDidBeginEditing(searchBar: UISearchBar)
  optional func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool
  optional func searchBarTextDidEndEditing(searchBar: UISearchBar)
  optional func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
  optional func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  optional func searchBarSearchButtonClicked(searchBar: UISearchBar)
  optional func searchBarBookmarkButtonClicked(searchBar: UISearchBar)
  optional func searchBarCancelButtonClicked(searchBar: UISearchBar)
  optional func searchBarResultsListButtonClicked(searchBar: UISearchBar)
  optional func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
class UISearchContainerViewController : UIViewController {
  var searchController: UISearchController { get }
  init(searchController: UISearchController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UISearchControllerDelegate : NSObjectProtocol {
  optional func willPresentSearchController(searchController: UISearchController)
  optional func didPresentSearchController(searchController: UISearchController)
  optional func willDismissSearchController(searchController: UISearchController)
  optional func didDismissSearchController(searchController: UISearchController)
  optional func presentSearchController(searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  func updateSearchResultsForSearchController(searchController: UISearchController)
}
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var active: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  var dimsBackgroundDuringPresentation: Bool
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  func animationEnded(transitionCompleted: Bool)
}
class UISearchDisplayController : NSObject {
  init(searchBar: UISearchBar, contentsController viewController: UIViewController)
  unowned(unsafe) var delegate: @sil_unmanaged UISearchDisplayDelegate?
  var active: Bool
  func setActive(visible: Bool, animated: Bool)
  var searchBar: UISearchBar { get }
  var searchContentsController: UIViewController { get }
  var searchResultsTableView: UITableView { get }
  weak var searchResultsDataSource: @sil_weak UITableViewDataSource?
  weak var searchResultsDelegate: @sil_weak UITableViewDelegate?
  var searchResultsTitle: String?
  var displaysSearchBarInNavigationBar: Bool
  var navigationItem: UINavigationItem? { get }
  init()
}
protocol UISearchDisplayDelegate : NSObjectProtocol {
  optional func searchDisplayControllerWillBeginSearch(controller: UISearchDisplayController)
  optional func searchDisplayControllerDidBeginSearch(controller: UISearchDisplayController)
  optional func searchDisplayControllerWillEndSearch(controller: UISearchDisplayController)
  optional func searchDisplayControllerDidEndSearch(controller: UISearchDisplayController)
  optional func searchDisplayController(controller: UISearchDisplayController, didLoadSearchResultsTableView tableView: UITableView)
  optional func searchDisplayController(controller: UISearchDisplayController, willUnloadSearchResultsTableView tableView: UITableView)
  optional func searchDisplayController(controller: UISearchDisplayController, willShowSearchResultsTableView tableView: UITableView)
  optional func searchDisplayController(controller: UISearchDisplayController, didShowSearchResultsTableView tableView: UITableView)
  optional func searchDisplayController(controller: UISearchDisplayController, willHideSearchResultsTableView tableView: UITableView)
  optional func searchDisplayController(controller: UISearchDisplayController, didHideSearchResultsTableView tableView: UITableView)
  optional func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchString searchString: String?) -> Bool
  optional func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchScope searchOption: Int) -> Bool
}
var UISegmentedControlNoSegment: Int { get }
enum UISegmentedControlSegment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Left
  case Center
  case Right
  case Alone
}
class UISegmentedControl : UIControl, NSCoding {
  init(items: [AnyObject]?)
  var momentary: Bool
  var numberOfSegments: Int { get }
  var apportionsSegmentWidthsByContent: Bool
  func insertSegmentWithTitle(title: String?, atIndex segment: Int, animated: Bool)
  func insertSegmentWithImage(image: UIImage?, atIndex segment: Int, animated: Bool)
  func removeSegmentAtIndex(segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(title: String?, forSegmentAtIndex segment: Int)
  func titleForSegmentAtIndex(segment: Int) -> String?
  func setImage(image: UIImage?, forSegmentAtIndex segment: Int)
  func imageForSegmentAtIndex(segment: Int) -> UIImage?
  func setWidth(width: CGFloat, forSegmentAtIndex segment: Int)
  func widthForSegmentAtIndex(segment: Int) -> CGFloat
  func setContentOffset(offset: CGSize, forSegmentAtIndex segment: Int)
  func contentOffsetForSegmentAtIndex(segment: Int) -> CGSize
  func setEnabled(enabled: Bool, forSegmentAtIndex segment: Int)
  func isEnabledForSegmentAtIndex(segment: Int) -> Bool
  var selectedSegmentIndex: Int
  var tintColor: UIColor!
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  func backgroundImageForState(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  func setDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics)
  func dividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  func setTitleTextAttributes(attributes: [NSObject : AnyObject]?, forState state: UIControlState)
  func titleTextAttributesForState(state: UIControlState) -> [NSObject : AnyObject]?
  func setContentPositionAdjustment(adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics)
  func contentPositionAdjustmentForSegmentType(leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics) -> UIOffset
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class UISlider : UIControl, NSCoding {
  var value: Float
  var minimumValue: Float
  var maximumValue: Float
  var minimumValueImage: UIImage?
  var maximumValueImage: UIImage?
  var continuous: Bool
  var minimumTrackTintColor: UIColor?
  var maximumTrackTintColor: UIColor?
  var thumbTintColor: UIColor?
  func setValue(value: Float, animated: Bool)
  func setThumbImage(image: UIImage?, forState state: UIControlState)
  func setMinimumTrackImage(image: UIImage?, forState state: UIControlState)
  func setMaximumTrackImage(image: UIImage?, forState state: UIControlState)
  func thumbImageForState(state: UIControlState) -> UIImage?
  func minimumTrackImageForState(state: UIControlState) -> UIImage?
  func maximumTrackImageForState(state: UIControlState) -> UIImage?
  var currentThumbImage: UIImage? { get }
  var currentMinimumTrackImage: UIImage? { get }
  var currentMaximumTrackImage: UIImage? { get }
  func minimumValueImageRectForBounds(bounds: CGRect) -> CGRect
  func maximumValueImageRectForBounds(bounds: CGRect) -> CGRect
  func trackRectForBounds(bounds: CGRect) -> CGRect
  func thumbRectForBounds(bounds: CGRect, trackRect rect: CGRect, value: Float) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class UISnapBehavior : UIDynamicBehavior {
  init(item: UIDynamicItem, snapToPoint point: CGPoint)
  var snapPoint: CGPoint
  var damping: CGFloat
  convenience init()
}
enum UISplitViewControllerDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case PrimaryHidden
  case AllVisible
  case PrimaryOverlay
}
let UISplitViewControllerAutomaticDimension: CGFloat
class UISplitViewController : UIViewController {
  var viewControllers: [UIViewController]
  weak var delegate: @sil_weak UISplitViewControllerDelegate?
  var presentsWithGesture: Bool
  var collapsed: Bool { get }
  var preferredDisplayMode: UISplitViewControllerDisplayMode
  var displayMode: UISplitViewControllerDisplayMode { get }
  func displayModeButtonItem() -> UIBarButtonItem
  var preferredPrimaryColumnWidthFraction: CGFloat
  var minimumPrimaryColumnWidth: CGFloat
  var maximumPrimaryColumnWidth: CGFloat
  var primaryColumnWidth: CGFloat { get }
  func showViewController(vc: UIViewController, sender: AnyObject?)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UISplitViewControllerDelegate {
  optional func splitViewController(svc: UISplitViewController, willChangeToDisplayMode displayMode: UISplitViewControllerDisplayMode)
  optional func targetDisplayModeForActionInSplitViewController(svc: UISplitViewController) -> UISplitViewControllerDisplayMode
  optional func splitViewController(splitViewController: UISplitViewController, showViewController vc: UIViewController, sender: AnyObject?) -> Bool
  optional func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool
  optional func primaryViewControllerForCollapsingSplitViewController(splitViewController: UISplitViewController) -> UIViewController?
  optional func primaryViewControllerForExpandingSplitViewController(splitViewController: UISplitViewController) -> UIViewController?
  optional func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  optional func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
  optional func splitViewControllerSupportedInterfaceOrientations(splitViewController: UISplitViewController) -> UIInterfaceOrientationMask
  optional func splitViewControllerPreferredInterfaceOrientationForPresentation(splitViewController: UISplitViewController) -> UIInterfaceOrientation
  optional func splitViewController(svc: UISplitViewController, willHideViewController aViewController: UIViewController, withBarButtonItem barButtonItem: UIBarButtonItem, forPopoverController pc: UIPopoverController)
  optional func splitViewController(svc: UISplitViewController, willShowViewController aViewController: UIViewController, invalidatingBarButtonItem barButtonItem: UIBarButtonItem)
  optional func splitViewController(svc: UISplitViewController, popoverController pc: UIPopoverController, willPresentViewController aViewController: UIViewController)
  optional func splitViewController(svc: UISplitViewController, shouldHideViewController vc: UIViewController, inOrientation orientation: UIInterfaceOrientation) -> Bool
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  func collapseSecondaryViewController(secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  func separateSecondaryViewControllerForSplitViewController(splitViewController: UISplitViewController) -> UIViewController?
}
enum UIStackViewDistribution : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case FillEqually
  case FillProportionally
  case EqualSpacing
  case EqualCentering
}
enum UIStackViewAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case Leading
  static var Top: UIStackViewAlignment { get }
  case FirstBaseline
  case Center
  case Trailing
  static var Bottom: UIStackViewAlignment { get }
  case LastBaseline
}
class UIStackView : UIView {
  init(arrangedSubviews views: [UIView])
  var arrangedSubviews: [UIView] { get }
  func addArrangedSubview(view: UIView)
  func removeArrangedSubview(view: UIView)
  func insertArrangedSubview(view: UIView, atIndex stackIndex: Int)
  var axis: UILayoutConstraintAxis
  var distribution: UIStackViewDistribution
  var alignment: UIStackViewAlignment
  var spacing: CGFloat
  var baselineRelativeArrangement: Bool
  var layoutMarginsRelativeArrangement: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
let UIStateRestorationViewControllerStoryboardKey: String
let UIApplicationStateRestorationBundleVersionKey: String
let UIApplicationStateRestorationUserInterfaceIdiomKey: String
let UIApplicationStateRestorationTimestampKey: String
let UIApplicationStateRestorationSystemVersionKey: String
protocol UIViewControllerRestoration {
  static func viewControllerWithRestorationIdentifierPath(identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  func modelIdentifierForElementAtIndexPath(idx: NSIndexPath, inView view: UIView) -> String?
  func indexPathForElementWithModelIdentifier(identifier: String, inView view: UIView) -> NSIndexPath?
}
protocol UIStateRestoring : NSObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: AnyObject.Type? { get }
  optional func encodeRestorableStateWithCoder(coder: NSCoder)
  optional func decodeRestorableStateWithCoder(coder: NSCoder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func objectWithRestorationIdentifierPath(identifierComponents: [String], coder: NSCoder) -> UIStateRestoring?
}
class UIStepper : UIControl {
  var continuous: Bool
  var autorepeat: Bool
  var wraps: Bool
  var value: Double
  var minimumValue: Double
  var maximumValue: Double
  var stepValue: Double
  var tintColor: UIColor!
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  func backgroundImageForState(state: UIControlState) -> UIImage?
  func setDividerImage(image: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  func dividerImageForLeftSegmentState(state: UIControlState, rightSegmentState state: UIControlState) -> UIImage?
  func setIncrementImage(image: UIImage?, forState state: UIControlState)
  func incrementImageForState(state: UIControlState) -> UIImage?
  func setDecrementImage(image: UIImage?, forState state: UIControlState)
  func decrementImageForState(state: UIControlState) -> UIImage?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class UIStoryboard : NSObject {
   init(name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialViewController() -> UIViewController?
  func instantiateViewControllerWithIdentifier(identifier: String) -> UIViewController
  init()
}
class UIStoryboardPopoverSegue : UIStoryboardSegue {
  var popoverController: UIPopoverController { get }
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
}
class UIStoryboardSegue : NSObject {
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
  var identifier: String? { get }
  var sourceViewController: UIViewController { get }
  var destinationViewController: UIViewController { get }
  /// Subclasses can override this method to augment or replace the effect of this segue. For example, to animate alongside the effect of a Modal Presentation segue, an override of this method can call super, then send -animateAlongsideTransition:completion: to the transitionCoordinator of the destinationViewController.
  /// The segue runtime will call +[UIView setAnimationsAreEnabled:] prior to invoking this method, based on the value of the Animates checkbox in the Properties Inspector for the segue.
  func perform()
}
/// Encapsulates the source of a prospective unwind segue.
/// You do not create instances of this class directly. Instead, UIKit creates an instance of this class and sends -destinationViewControllerForUnwindSource: to each ancestor of the sourceViewController until one returns a non-null result or the chain is exhausted.
class UIStoryboardUnwindSegueSource : NSObject {
  var sourceViewController: UIViewController { get }
  var unwindAction: Selector { get }
  var sender: AnyObject? { get }
}
enum UIBaselineAdjustment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlignBaselines
  case AlignCenters
  case None
}
extension NSString {
}
struct UISwipeGestureRecognizerDirection : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Right: UISwipeGestureRecognizerDirection { get }
  static var Left: UISwipeGestureRecognizerDirection { get }
  static var Up: UISwipeGestureRecognizerDirection { get }
  static var Down: UISwipeGestureRecognizerDirection { get }
}
class UISwipeGestureRecognizer : UIGestureRecognizer {
  var numberOfTouchesRequired: Int
  var direction: UISwipeGestureRecognizerDirection
  init(target: AnyObject?, action: Selector)
  convenience init()
}
class UISwitch : UIControl, NSCoding {
  var onTintColor: UIColor?
  var tintColor: UIColor!
  var thumbTintColor: UIColor?
  var onImage: UIImage?
  var offImage: UIImage?
  var on: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  func setOn(on: Bool, animated: Bool)
  convenience init()
}
enum UITabBarItemPositioning : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Fill
  case Centered
}
class UITabBar : UIView {
  unowned(unsafe) var delegate: @sil_unmanaged UITabBarDelegate?
  var items: [UITabBarItem]?
  unowned(unsafe) var selectedItem: @sil_unmanaged UITabBarItem?
  func setItems(items: [UITabBarItem]?, animated: Bool)
  func beginCustomizingItems(items: [UITabBarItem])
  func endCustomizingAnimated(animated: Bool) -> Bool
  func isCustomizing() -> Bool
  var tintColor: UIColor!
  var barTintColor: UIColor?
  var selectedImageTintColor: UIColor?
  var backgroundImage: UIImage?
  var selectionIndicatorImage: UIImage?
  var shadowImage: UIImage?
  var itemPositioning: UITabBarItemPositioning
  var itemWidth: CGFloat
  var itemSpacing: CGFloat
  var barStyle: UIBarStyle
  var translucent: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UITabBarDelegate : NSObjectProtocol {
  optional func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem)
  optional func tabBar(tabBar: UITabBar, willBeginCustomizingItems items: [UITabBarItem])
  optional func tabBar(tabBar: UITabBar, didBeginCustomizingItems items: [UITabBarItem])
  optional func tabBar(tabBar: UITabBar, willEndCustomizingItems items: [UITabBarItem], changed: Bool)
  optional func tabBar(tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed: Bool)
}
class UITabBarController : UIViewController, UITabBarDelegate, NSCoding {
  var viewControllers: [UIViewController]?
  func setViewControllers(viewControllers: [UIViewController]?, animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  var moreNavigationController: UINavigationController { get }
  var customizableViewControllers: [UIViewController]?
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem)
  func tabBar(tabBar: UITabBar, willBeginCustomizingItems items: [UITabBarItem])
  func tabBar(tabBar: UITabBar, didBeginCustomizingItems items: [UITabBarItem])
  func tabBar(tabBar: UITabBar, willEndCustomizingItems items: [UITabBarItem], changed: Bool)
  func tabBar(tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed: Bool)
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  optional func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool
  optional func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController)
  optional func tabBarController(tabBarController: UITabBarController, willBeginCustomizingViewControllers viewControllers: [UIViewController])
  optional func tabBarController(tabBarController: UITabBarController, willEndCustomizingViewControllers viewControllers: [UIViewController], changed: Bool)
  optional func tabBarController(tabBarController: UITabBarController, didEndCustomizingViewControllers viewControllers: [UIViewController], changed: Bool)
  optional func tabBarControllerSupportedInterfaceOrientations(tabBarController: UITabBarController) -> UIInterfaceOrientationMask
  optional func tabBarControllerPreferredInterfaceOrientationForPresentation(tabBarController: UITabBarController) -> UIInterfaceOrientation
  optional func tabBarController(tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func tabBarController(tabBarController: UITabBarController, animationControllerForTransitionFromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
}
enum UITabBarSystemItem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case More
  case Favorites
  case Featured
  case TopRated
  case Recents
  case Contacts
  case History
  case Bookmarks
  case Search
  case Downloads
  case MostRecent
  case MostViewed
}
class UITabBarItem : UIBarItem {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(title: String?, image: UIImage?, tag: Int)
  convenience init(title: String?, image: UIImage?, selectedImage: UIImage?)
  convenience init(tabBarSystemItem systemItem: UITabBarSystemItem, tag: Int)
  var selectedImage: UIImage?
  var badgeValue: String?
  var titlePositionAdjustment: UIOffset
}
enum UITableViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case Grouped
}
enum UITableViewScrollPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Top
  case Middle
  case Bottom
}
enum UITableViewRowAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fade
  case Right
  case Left
  case Top
  case Bottom
  case None
  case Middle
  case Automatic
}
let UITableViewIndexSearch: String
let UITableViewAutomaticDimension: CGFloat
enum UITableViewRowActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  static var Destructive: UITableViewRowActionStyle { get }
  case Normal
}
class UITableViewRowAction : NSObject, NSCopying {
  convenience init(style: UITableViewRowActionStyle, title: String?, handler: (UITableViewRowAction, NSIndexPath) -> Void)
  var style: UITableViewRowActionStyle { get }
  var title: String?
  @NSCopying var backgroundColor: UIColor?
  @NSCopying var backgroundEffect: UIVisualEffect?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
  init()
}
protocol UITableViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  optional func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  optional func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  optional func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  optional func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  optional func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  optional func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  optional func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  optional func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  optional func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  optional func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  optional func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  optional func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  optional func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  optional func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  optional func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  optional func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String?
  optional func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]?
  optional func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func tableView(tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  optional func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  optional func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  optional func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  optional func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  optional func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  optional func indexPathForPreferredFocusedViewInTableView(tableView: UITableView) -> NSIndexPath?
}
let UITableViewSelectionDidChangeNotification: String
class UITableView : UIScrollView, NSCoding {
  init(frame: CGRect, style: UITableViewStyle)
  init?(coder aDecoder: NSCoder)
  var style: UITableViewStyle { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  weak var delegate: @sil_weak UITableViewDelegate?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  var estimatedRowHeight: CGFloat
  var estimatedSectionHeaderHeight: CGFloat
  var estimatedSectionFooterHeight: CGFloat
  var separatorInset: UIEdgeInsets
  var backgroundView: UIView?
  func reloadData()
  func reloadSectionIndexTitles()
  var numberOfSections: Int { get }
  func numberOfRowsInSection(section: Int) -> Int
  func rectForSection(section: Int) -> CGRect
  func rectForHeaderInSection(section: Int) -> CGRect
  func rectForFooterInSection(section: Int) -> CGRect
  func rectForRowAtIndexPath(indexPath: NSIndexPath) -> CGRect
  func indexPathForRowAtPoint(point: CGPoint) -> NSIndexPath?
  func indexPathForCell(cell: UITableViewCell) -> NSIndexPath?
  func indexPathsForRowsInRect(rect: CGRect) -> [NSIndexPath]?
  func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [NSIndexPath]? { get }
  func headerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  func footerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  func scrollToRowAtIndexPath(indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool)
  func scrollToNearestSelectedRowAtScrollPosition(scrollPosition: UITableViewScrollPosition, animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func reloadSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func moveSection(section: Int, toSection newSection: Int)
  func insertRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func reloadRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func moveRowAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  var editing: Bool
  func setEditing(editing: Bool, animated: Bool)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  var allowsMultipleSelection: Bool
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: NSIndexPath? { get }
  var indexPathsForSelectedRows: [NSIndexPath]? { get }
  func selectRowAtIndexPath(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition)
  func deselectRowAtIndexPath(indexPath: NSIndexPath, animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  var sectionIndexColor: UIColor?
  var sectionIndexBackgroundColor: UIColor?
  var sectionIndexTrackingBackgroundColor: UIColor?
  var separatorStyle: UITableViewCellSeparatorStyle
  var separatorColor: UIColor?
  @NSCopying var separatorEffect: UIVisualEffect?
  var cellLayoutMarginsFollowReadableWidth: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCellWithIdentifier(identifier: String) -> UITableViewCell?
  func dequeueReusableCellWithIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell
  func dequeueReusableHeaderFooterViewWithIdentifier(identifier: String) -> UITableViewHeaderFooterView?
  func registerNib(nib: UINib?, forCellReuseIdentifier identifier: String)
  func registerClass(cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  func registerNib(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  func registerClass(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITableViewDataSource : NSObjectProtocol {
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  optional func numberOfSectionsInTableView(tableView: UITableView) -> Int
  optional func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  optional func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  optional func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  optional func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]?
  optional func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
  optional func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  optional func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
extension NSIndexPath {
  convenience init(forRow row: Int, inSection section: Int)
  var section: Int { get }
  var row: Int { get }
}
enum UITableViewCellStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Value1
  case Value2
  case Subtitle
}
enum UITableViewCellSeparatorStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case SingleLine
  case SingleLineEtched
}
enum UITableViewCellSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Blue
  case Gray
  case Default
}
enum UITableViewCellFocusStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
}
enum UITableViewCellEditingStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Delete
  case Insert
}
enum UITableViewCellAccessoryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case DisclosureIndicator
  case DetailDisclosureButton
  case Checkmark
  case DetailButton
}
struct UITableViewCellStateMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DefaultMask: UITableViewCellStateMask { get }
  static var ShowingEditControlMask: UITableViewCellStateMask { get }
  static var ShowingDeleteConfirmationMask: UITableViewCellStateMask { get }
}
class UITableViewCell : UIView, NSCoding, UIGestureRecognizerDelegate {
  init(style: UITableViewCellStyle, reuseIdentifier: String?)
  init?(coder aDecoder: NSCoder)
  var imageView: UIImageView? { get }
  var textLabel: UILabel? { get }
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  var multipleSelectionBackgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var selectionStyle: UITableViewCellSelectionStyle
  var selected: Bool
  var highlighted: Bool
  func setSelected(selected: Bool, animated: Bool)
  func setHighlighted(highlighted: Bool, animated: Bool)
  var editingStyle: UITableViewCellEditingStyle { get }
  var showsReorderControl: Bool
  var shouldIndentWhileEditing: Bool
  var accessoryType: UITableViewCellAccessoryType
  var accessoryView: UIView?
  var editingAccessoryType: UITableViewCellAccessoryType
  var editingAccessoryView: UIView?
  var indentationLevel: Int
  var indentationWidth: CGFloat
  var separatorInset: UIEdgeInsets
  var editing: Bool
  func setEditing(editing: Bool, animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  var focusStyle: UITableViewCellFocusStyle
  func willTransitionToState(state: UITableViewCellStateMask)
  func didTransitionToState(state: UITableViewCellStateMask)
  convenience init(frame: CGRect)
  convenience init()
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
}
extension UITableViewCell {
}
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var tableView: UITableView!
  var clearsSelectionOnViewWillAppear: Bool
  var refreshControl: UIRefreshControl?
  convenience init()
  func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String?
  func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]?
  func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  func tableView(tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  func indexPathForPreferredFocusedViewInTableView(tableView: UITableView) -> NSIndexPath?
  func scrollViewDidScroll(scrollView: UIScrollView)
  func scrollViewDidZoom(scrollView: UIScrollView)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  func numberOfSectionsInTableView(tableView: UITableView) -> Int
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]?
  func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
  func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
class UITableViewHeaderFooterView : UIView {
  init(reuseIdentifier: String?)
  init?(coder aDecoder: NSCoder)
  var tintColor: UIColor!
  var textLabel: UILabel? { get }
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  convenience init(frame: CGRect)
  convenience init()
}
class UITapGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  init(target: AnyObject?, action: Selector)
  convenience init()
}
class UITextChecker : NSObject {
  func rangeOfMisspelledWordInString(stringToCheck: String, range: NSRange, startingAt startingOffset: Int, wrap wrapFlag: Bool, language: String) -> NSRange
  func guessesForWordRange(range: NSRange, inString string: String, language: String) -> [AnyObject]?
  func completionsForPartialWordRange(range: NSRange, inString string: String?, language: String) -> [AnyObject]?
  func ignoreWord(wordToIgnore: String)
  func ignoredWords() -> [AnyObject]?
  func setIgnoredWords(words: [AnyObject]?)
  class func learnWord(word: String)
  class func hasLearnedWord(word: String) -> Bool
  class func unlearnWord(word: String)
  class func availableLanguages() -> [AnyObject]
  init()
}
enum UITextBorderStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Line
  case Bezel
  case RoundedRect
}
enum UITextFieldViewMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Never
  case WhileEditing
  case UnlessEditing
  case Always
}
class UITextField : UIControl, UITextInput, NSCoding {
  var text: String?
  @NSCopying var attributedText: NSAttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextBorderStyle
  var defaultTextAttributes: [String : AnyObject]
  var placeholder: String?
  @NSCopying var attributedPlaceholder: NSAttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var editing: Bool { get }
  var allowsEditingTextAttributes: Bool
  var typingAttributes: [String : AnyObject]?
  var clearButtonMode: UITextFieldViewMode
  var leftView: UIView?
  var leftViewMode: UITextFieldViewMode
  var rightView: UIView?
  var rightViewMode: UITextFieldViewMode
  func borderRectForBounds(bounds: CGRect) -> CGRect
  func textRectForBounds(bounds: CGRect) -> CGRect
  func placeholderRectForBounds(bounds: CGRect) -> CGRect
  func editingRectForBounds(bounds: CGRect) -> CGRect
  func clearButtonRectForBounds(bounds: CGRect) -> CGRect
  func leftViewRectForBounds(bounds: CGRect) -> CGRect
  func rightViewRectForBounds(bounds: CGRect) -> CGRect
  func drawTextInRect(rect: CGRect)
  func drawPlaceholderInRect(rect: CGRect)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  var clearsOnInsertion: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func textInRange(range: UITextRange) -> String?
  func replaceRange(range: UITextRange, withText text: String)
  @NSCopying var selectedTextRange: UITextRange?
  var markedTextRange: UITextRange? { get }
  var markedTextStyle: [NSObject : AnyObject]?
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  var beginningOfDocument: UITextPosition { get }
  var endOfDocument: UITextPosition { get }
  func textRangeFromPosition(fromPosition: UITextPosition, toPosition: UITextPosition) -> UITextRange?
  func positionFromPosition(position: UITextPosition, offset: Int) -> UITextPosition?
  func positionFromPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  func comparePosition(position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  func offsetFromPosition(from: UITextPosition, toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  var tokenizer: UITextInputTokenizer { get }
  func positionWithinRange(range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  func characterRangeByExtendingPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  func baseWritingDirectionForPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  func firstRectForRange(range: UITextRange) -> CGRect
  func caretRectForPosition(position: UITextPosition) -> CGRect
  func selectionRectsForRange(range: UITextRange) -> [AnyObject]
  func closestPositionToPoint(point: CGPoint) -> UITextPosition?
  func closestPositionToPoint(point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  func characterRangeAtPoint(point: CGPoint) -> UITextRange?
  func shouldChangeTextInRange(range: UITextRange, replacementText text: String) -> Bool
  func textStylingAtPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  func positionWithinRange(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  func characterOffsetOfPosition(position: UITextPosition, withinRange range: UITextRange) -> Int
  var textInputView: UIView { get }
  var selectionAffinity: UITextStorageDirection
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  func dictationRecordingDidEnd()
  func dictationRecognitionFailed()
  func insertDictationResultPlaceholder() -> AnyObject
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  func beginFloatingCursorAtPoint(point: CGPoint)
  func updateFloatingCursorAtPoint(point: CGPoint)
  func endFloatingCursor()
  func hasText() -> Bool
  func insertText(text: String)
  func deleteBackward()
  var autocapitalizationType: UITextAutocapitalizationType
  var autocorrectionType: UITextAutocorrectionType
  var spellCheckingType: UITextSpellCheckingType
  var keyboardType: UIKeyboardType
  var keyboardAppearance: UIKeyboardAppearance
  var returnKeyType: UIReturnKeyType
  var enablesReturnKeyAutomatically: Bool
  var secureTextEntry: Bool
}
extension UIView {
  func endEditing(force: Bool) -> Bool
}
protocol UITextFieldDelegate : NSObjectProtocol {
  optional func textFieldShouldBeginEditing(textField: UITextField) -> Bool
  optional func textFieldDidBeginEditing(textField: UITextField)
  optional func textFieldShouldEndEditing(textField: UITextField) -> Bool
  optional func textFieldDidEndEditing(textField: UITextField)
  optional func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
  optional func textFieldShouldClear(textField: UITextField) -> Bool
  optional func textFieldShouldReturn(textField: UITextField) -> Bool
}
let UITextFieldTextDidBeginEditingNotification: String
let UITextFieldTextDidEndEditingNotification: String
let UITextFieldTextDidChangeNotification: String
protocol UIKeyInput : UITextInputTraits {
  func hasText() -> Bool
  func insertText(text: String)
  func deleteBackward()
}
enum UITextStorageDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Backward
}
enum UITextLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Right
  case Left
  case Up
  case Down
}
typealias UITextDirection = Int
enum UITextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
enum UITextGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Character
  case Word
  case Sentence
  case Paragraph
  case Line
  case Document
}
class UIDictationPhrase : NSObject {
  var text: String { get }
  var alternativeInterpretations: [String]? { get }
  init()
}
class UITextInputAssistantItem : NSObject {
  /// Default is YES, controls if the user is allowed to hide the shortcuts bar. Does not influence the built in auto-hiding logic.
  var allowsHidingShortcuts: Bool
  /// Contains UIBarButtonItemGroups that should be displayed in the leading position on the keyboard's assistant bar.
  var leadingBarButtonGroups: [UIBarButtonItemGroup]
  /// Contains UIBarButtonItemGroups that should be displayed in the trailing position on the keyboard's assistant bar.
  var trailingBarButtonGroups: [UIBarButtonItemGroup]
  init()
}
protocol UITextInput : UIKeyInput {
  func textInRange(range: UITextRange) -> String?
  func replaceRange(range: UITextRange, withText text: String)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  var markedTextRange: UITextRange? { get }
  var markedTextStyle: [NSObject : AnyObject]? { get set }
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  var beginningOfDocument: UITextPosition { get }
  var endOfDocument: UITextPosition { get }
  func textRangeFromPosition(fromPosition: UITextPosition, toPosition: UITextPosition) -> UITextRange?
  func positionFromPosition(position: UITextPosition, offset: Int) -> UITextPosition?
  func positionFromPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  func comparePosition(position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  func offsetFromPosition(from: UITextPosition, toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
  var tokenizer: UITextInputTokenizer { get }
  func positionWithinRange(range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  func characterRangeByExtendingPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  func baseWritingDirectionForPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  func firstRectForRange(range: UITextRange) -> CGRect
  func caretRectForPosition(position: UITextPosition) -> CGRect
  func selectionRectsForRange(range: UITextRange) -> [AnyObject]
  func closestPositionToPoint(point: CGPoint) -> UITextPosition?
  func closestPositionToPoint(point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  func characterRangeAtPoint(point: CGPoint) -> UITextRange?
  optional func shouldChangeTextInRange(range: UITextRange, replacementText text: String) -> Bool
  optional func textStylingAtPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  optional func positionWithinRange(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  optional func characterOffsetOfPosition(position: UITextPosition, withinRange range: UITextRange) -> Int
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  optional func insertDictationResult(dictationResult: [UIDictationPhrase])
  optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional func insertDictationResultPlaceholder() -> AnyObject
  optional func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  optional func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  optional func beginFloatingCursorAtPoint(point: CGPoint)
  optional func updateFloatingCursorAtPoint(point: CGPoint)
  optional func endFloatingCursor()
}
let UITextInputTextBackgroundColorKey: String
let UITextInputTextColorKey: String
let UITextInputTextFontKey: String
class UITextPosition : NSObject {
  init()
}
class UITextRange : NSObject {
  var empty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
  init()
}
class UITextSelectionRect : NSObject {
  var rect: CGRect { get }
  var writingDirection: UITextWritingDirection { get }
  var containsStart: Bool { get }
  var containsEnd: Bool { get }
  var isVertical: Bool { get }
  init()
}
protocol UITextInputDelegate : NSObjectProtocol {
  func selectionWillChange(textInput: UITextInput?)
  func selectionDidChange(textInput: UITextInput?)
  func textWillChange(textInput: UITextInput?)
  func textDidChange(textInput: UITextInput?)
}
protocol UITextInputTokenizer : NSObjectProtocol {
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  func positionFromPosition(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
class UITextInputStringTokenizer : NSObject, UITextInputTokenizer {
  init(textInput: UIResponder)
  init()
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  func positionFromPosition(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
class UITextInputMode : NSObject, NSSecureCoding {
  var primaryLanguage: String? { get }
  class func activeInputModes() -> [String]
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let UITextInputCurrentInputModeDidChangeNotification: String
enum UITextAutocapitalizationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Words
  case Sentences
  case AllCharacters
}
enum UITextAutocorrectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case No
  case Yes
}
enum UITextSpellCheckingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case No
  case Yes
}
enum UIKeyboardType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case ASCIICapable
  case NumbersAndPunctuation
  case URL
  case NumberPad
  case PhonePad
  case NamePhonePad
  case EmailAddress
  case DecimalPad
  case Twitter
  case WebSearch
  static var Alphabet: UIKeyboardType { get }
}
enum UIKeyboardAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Dark
  case Light
  static var Alert: UIKeyboardAppearance { get }
}
enum UIReturnKeyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Go
  case Google
  case Join
  case Next
  case Route
  case Search
  case Send
  case Yahoo
  case Done
  case EmergencyCall
  case Continue
}
protocol UITextInputTraits : NSObjectProtocol {
  optional var autocapitalizationType: UITextAutocapitalizationType { get set }
  optional var autocorrectionType: UITextAutocorrectionType { get set }
  optional var spellCheckingType: UITextSpellCheckingType { get set }
  optional var keyboardType: UIKeyboardType { get set }
  optional var keyboardAppearance: UIKeyboardAppearance { get set }
  optional var returnKeyType: UIReturnKeyType { get set }
  optional var enablesReturnKeyAutomatically: Bool { get set }
  optional var secureTextEntry: Bool { get set }
}
protocol UITextViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  optional func textViewShouldBeginEditing(textView: UITextView) -> Bool
  optional func textViewShouldEndEditing(textView: UITextView) -> Bool
  optional func textViewDidBeginEditing(textView: UITextView)
  optional func textViewDidEndEditing(textView: UITextView)
  optional func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  optional func textViewDidChange(textView: UITextView)
  optional func textViewDidChangeSelection(textView: UITextView)
  optional func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool
  optional func textView(textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange) -> Bool
}
class UITextView : UIScrollView, UITextInput {
  weak var delegate: @sil_weak UITextViewDelegate?
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  var editable: Bool
  var selectable: Bool
  var dataDetectorTypes: UIDataDetectorTypes
  var allowsEditingTextAttributes: Bool
  @NSCopying var attributedText: NSAttributedString!
  var typingAttributes: [String : AnyObject]
  func scrollRangeToVisible(range: NSRange)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  var clearsOnInsertion: Bool
  init(frame: CGRect, textContainer: NSTextContainer?)
  init?(coder aDecoder: NSCoder)
  var textContainer: NSTextContainer { get }
  var textContainerInset: UIEdgeInsets
  var layoutManager: NSLayoutManager { get }
  var textStorage: NSTextStorage { get }
  var linkTextAttributes: [String : AnyObject]!
  convenience init(frame: CGRect)
  convenience init()
  func textInRange(range: UITextRange) -> String?
  func replaceRange(range: UITextRange, withText text: String)
  @NSCopying var selectedTextRange: UITextRange?
  var markedTextRange: UITextRange? { get }
  var markedTextStyle: [NSObject : AnyObject]?
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  var beginningOfDocument: UITextPosition { get }
  var endOfDocument: UITextPosition { get }
  func textRangeFromPosition(fromPosition: UITextPosition, toPosition: UITextPosition) -> UITextRange?
  func positionFromPosition(position: UITextPosition, offset: Int) -> UITextPosition?
  func positionFromPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  func comparePosition(position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  func offsetFromPosition(from: UITextPosition, toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  var tokenizer: UITextInputTokenizer { get }
  func positionWithinRange(range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  func characterRangeByExtendingPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  func baseWritingDirectionForPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  func firstRectForRange(range: UITextRange) -> CGRect
  func caretRectForPosition(position: UITextPosition) -> CGRect
  func selectionRectsForRange(range: UITextRange) -> [AnyObject]
  func closestPositionToPoint(point: CGPoint) -> UITextPosition?
  func closestPositionToPoint(point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  func characterRangeAtPoint(point: CGPoint) -> UITextRange?
  func shouldChangeTextInRange(range: UITextRange, replacementText text: String) -> Bool
  func textStylingAtPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  func positionWithinRange(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  func characterOffsetOfPosition(position: UITextPosition, withinRange range: UITextRange) -> Int
  var textInputView: UIView { get }
  var selectionAffinity: UITextStorageDirection
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  func dictationRecordingDidEnd()
  func dictationRecognitionFailed()
  func insertDictationResultPlaceholder() -> AnyObject
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  func beginFloatingCursorAtPoint(point: CGPoint)
  func updateFloatingCursorAtPoint(point: CGPoint)
  func endFloatingCursor()
  func hasText() -> Bool
  func insertText(text: String)
  func deleteBackward()
  var autocapitalizationType: UITextAutocapitalizationType
  var autocorrectionType: UITextAutocorrectionType
  var spellCheckingType: UITextSpellCheckingType
  var keyboardType: UIKeyboardType
  var keyboardAppearance: UIKeyboardAppearance
  var returnKeyType: UIReturnKeyType
  var enablesReturnKeyAutomatically: Bool
  var secureTextEntry: Bool
}
let UITextViewTextDidBeginEditingNotification: String
let UITextViewTextDidChangeNotification: String
let UITextViewTextDidEndEditingNotification: String
class UIToolbar : UIView, UIBarPositioning {
  var barStyle: UIBarStyle
  var items: [UIBarButtonItem]?
  var translucent: Bool
  func setItems(items: [UIBarButtonItem]?, animated: Bool)
  var tintColor: UIColor!
  var barTintColor: UIColor?
  func setBackgroundImage(backgroundImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics)
  func backgroundImageForToolbarPosition(topOrBottom: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  func setShadowImage(shadowImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition)
  func shadowImageForToolbarPosition(topOrBottom: UIBarPosition) -> UIImage?
  unowned(unsafe) var delegate: @sil_unmanaged UIToolbarDelegate?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  var barPosition: UIBarPosition { get }
}
protocol UIToolbarDelegate : UIBarPositioningDelegate {
}
enum UITouchPhase : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Began
  case Moved
  case Stationary
  case Ended
  case Cancelled
}
enum UIForceTouchCapability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Unavailable
  case Available
}
enum UITouchType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Direct
  case Indirect
  case Stylus
}
struct UITouchProperties : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Force: UITouchProperties { get }
  static var Azimuth: UITouchProperties { get }
  static var Altitude: UITouchProperties { get }
  static var Location: UITouchProperties { get }
}
class UITouch : NSObject {
  var timestamp: NSTimeInterval { get }
  var phase: UITouchPhase { get }
  var tapCount: Int { get }
  var type: UITouchType { get }
  var majorRadius: CGFloat { get }
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func locationInView(view: UIView?) -> CGPoint
  func previousLocationInView(view: UIView?) -> CGPoint
  func preciseLocationInView(view: UIView?) -> CGPoint
  func precisePreviousLocationInView(view: UIView?) -> CGPoint
  var force: CGFloat { get }
  var maximumPossibleForce: CGFloat { get }
  func azimuthAngleInView(view: UIView?) -> CGFloat
  func azimuthUnitVectorInView(view: UIView?) -> CGVector
  var altitudeAngle: CGFloat { get }
  var estimationUpdateIndex: NSNumber? { get }
  var estimatedProperties: UITouchProperties { get }
  var estimatedPropertiesExpectingUpdates: UITouchProperties { get }
  init()
}
class UITraitCollection : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func containsTraitsInCollection(trait: UITraitCollection?) -> Bool
   init(traitsFromCollections traitCollections: [UITraitCollection])
   init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
   init(displayScale scale: CGFloat)
  var displayScale: CGFloat { get }
   init(horizontalSizeClass: UIUserInterfaceSizeClass)
  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
   init(verticalSizeClass: UIUserInterfaceSizeClass)
  var verticalSizeClass: UIUserInterfaceSizeClass { get }
   init(forceTouchCapability capability: UIForceTouchCapability)
  var forceTouchCapability: UIForceTouchCapability { get }
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
protocol UITraitEnvironment : NSObjectProtocol {
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
}
struct UIUserNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIUserNotificationType { get }
  static var Badge: UIUserNotificationType { get }
  static var Sound: UIUserNotificationType { get }
  static var Alert: UIUserNotificationType { get }
}
enum UIUserNotificationActionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case TextInput
}
enum UIUserNotificationActivationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Foreground
  case Background
}
enum UIUserNotificationActionContext : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Minimal
}
let UIUserNotificationTextInputActionButtonTitleKey: String
let UIUserNotificationActionResponseTypedTextKey: String
class UIUserNotificationSettings : NSObject {
  convenience init(forTypes types: UIUserNotificationType, categories: Set<UIUserNotificationCategory>?)
  var types: UIUserNotificationType { get }
  var categories: Set<UIUserNotificationCategory>? { get }
  init()
}
class UIUserNotificationCategory : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var identifier: String? { get }
  func actionsForContext(context: UIUserNotificationActionContext) -> [UIUserNotificationAction]?
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
class UIMutableUserNotificationCategory : UIUserNotificationCategory {
  var identifier: String?
  func setActions(actions: [UIUserNotificationAction]?, forContext context: UIUserNotificationActionContext)
  init()
  init?(coder aDecoder: NSCoder)
}
class UIUserNotificationAction : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var identifier: String? { get }
  var title: String? { get }
  var behavior: UIUserNotificationActionBehavior { get }
  var parameters: [NSObject : AnyObject] { get }
  var activationMode: UIUserNotificationActivationMode { get }
  var authenticationRequired: Bool { get }
  var destructive: Bool { get }
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
class UIMutableUserNotificationAction : UIUserNotificationAction {
  var identifier: String?
  var title: String?
  var behavior: UIUserNotificationActionBehavior
  var parameters: [NSObject : AnyObject]
  var activationMode: UIUserNotificationActivationMode
  var authenticationRequired: Bool
  var destructive: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
class UIVideoEditorController : UINavigationController {
  class func canEditVideoAtPath(videoPath: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged protocol<UINavigationControllerDelegate, UIVideoEditorControllerDelegate>?
  var videoPath: String
  var videoMaximumDuration: NSTimeInterval
  var videoQuality: UIImagePickerControllerQualityType
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIVideoEditorControllerDelegate : NSObjectProtocol {
  optional func videoEditorController(editor: UIVideoEditorController, didSaveEditedVideoToPath editedVideoPath: String)
  optional func videoEditorController(editor: UIVideoEditorController, didFailWithError error: NSError)
  optional func videoEditorControllerDidCancel(editor: UIVideoEditorController)
}
enum UIViewAnimationCurve : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EaseInOut
  case EaseIn
  case EaseOut
  case Linear
}
enum UIViewContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ScaleToFill
  case ScaleAspectFit
  case ScaleAspectFill
  case Redraw
  case Center
  case Top
  case Bottom
  case Left
  case Right
  case TopLeft
  case TopRight
  case BottomLeft
  case BottomRight
}
enum UIViewAnimationTransition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case FlipFromLeft
  case FlipFromRight
  case CurlUp
  case CurlDown
}
struct UIViewAutoresizing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIViewAutoresizing { get }
  static var FlexibleLeftMargin: UIViewAutoresizing { get }
  static var FlexibleWidth: UIViewAutoresizing { get }
  static var FlexibleRightMargin: UIViewAutoresizing { get }
  static var FlexibleTopMargin: UIViewAutoresizing { get }
  static var FlexibleHeight: UIViewAutoresizing { get }
  static var FlexibleBottomMargin: UIViewAutoresizing { get }
}
struct UIViewAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LayoutSubviews: UIViewAnimationOptions { get }
  static var AllowUserInteraction: UIViewAnimationOptions { get }
  static var BeginFromCurrentState: UIViewAnimationOptions { get }
  static var Repeat: UIViewAnimationOptions { get }
  static var Autoreverse: UIViewAnimationOptions { get }
  static var OverrideInheritedDuration: UIViewAnimationOptions { get }
  static var OverrideInheritedCurve: UIViewAnimationOptions { get }
  static var AllowAnimatedContent: UIViewAnimationOptions { get }
  static var ShowHideTransitionViews: UIViewAnimationOptions { get }
  static var OverrideInheritedOptions: UIViewAnimationOptions { get }
  static var CurveEaseInOut: UIViewAnimationOptions { get }
  static var CurveEaseIn: UIViewAnimationOptions { get }
  static var CurveEaseOut: UIViewAnimationOptions { get }
  static var CurveLinear: UIViewAnimationOptions { get }
  static var TransitionNone: UIViewAnimationOptions { get }
  static var TransitionFlipFromLeft: UIViewAnimationOptions { get }
  static var TransitionFlipFromRight: UIViewAnimationOptions { get }
  static var TransitionCurlUp: UIViewAnimationOptions { get }
  static var TransitionCurlDown: UIViewAnimationOptions { get }
  static var TransitionCrossDissolve: UIViewAnimationOptions { get }
  static var TransitionFlipFromTop: UIViewAnimationOptions { get }
  static var TransitionFlipFromBottom: UIViewAnimationOptions { get }
}
struct UIViewKeyframeAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LayoutSubviews: UIViewKeyframeAnimationOptions { get }
  static var AllowUserInteraction: UIViewKeyframeAnimationOptions { get }
  static var BeginFromCurrentState: UIViewKeyframeAnimationOptions { get }
  static var Repeat: UIViewKeyframeAnimationOptions { get }
  static var Autoreverse: UIViewKeyframeAnimationOptions { get }
  static var OverrideInheritedDuration: UIViewKeyframeAnimationOptions { get }
  static var OverrideInheritedOptions: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeLinear: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeDiscrete: UIViewKeyframeAnimationOptions { get }
  static var CalculationModePaced: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeCubic: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeCubicPaced: UIViewKeyframeAnimationOptions { get }
}
enum UISystemAnimation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Delete
}
enum UIViewTintAdjustmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Normal
  case Dimmed
}
enum UISemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Playback
  case Spatial
  case ForceLeftToRight
  case ForceRightToLeft
}
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
protocol UICoordinateSpace : NSObjectProtocol {
  func convertPoint(point: CGPoint, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  func convertPoint(point: CGPoint, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  func convertRect(rect: CGRect, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  func convertRect(rect: CGRect, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  var bounds: CGRect { get }
}
class UIView : UIResponder, NSCoding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusEnvironment {
  class func layerClass() -> AnyClass
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  var userInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  func canBecomeFocused() -> Bool
  var focused: Bool { get }
  class func userInterfaceLayoutDirectionForSemanticContentAttribute(attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  var semanticContentAttribute: UISemanticContentAttribute
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  class func appearance() -> Self
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  class func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  class func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  var collisionBoundingPath: UIBezierPath { get }
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  func convertPoint(point: CGPoint, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  func convertPoint(point: CGPoint, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  func convertRect(rect: CGRect, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  func convertRect(rect: CGRect, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }
  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()
  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()
  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool
  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
extension UIView : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension UIView {
  var frame: CGRect
  var bounds: CGRect
  var center: CGPoint
  var transform: CGAffineTransform
  var contentScaleFactor: CGFloat
  var multipleTouchEnabled: Bool
  var exclusiveTouch: Bool
  func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView?
  func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool
  func convertPoint(point: CGPoint, toView view: UIView?) -> CGPoint
  func convertPoint(point: CGPoint, fromView view: UIView?) -> CGPoint
  func convertRect(rect: CGRect, toView view: UIView?) -> CGRect
  func convertRect(rect: CGRect, fromView view: UIView?) -> CGRect
  var autoresizesSubviews: Bool
  var autoresizingMask: UIViewAutoresizing
  func sizeThatFits(size: CGSize) -> CGSize
  func sizeToFit()
}
extension UIView {
  var superview: UIView? { get }
  var subviews: [UIView] { get }
  var window: UIWindow? { get }
  func removeFromSuperview()
  func insertSubview(view: UIView, atIndex index: Int)
  func exchangeSubviewAtIndex(index1: Int, withSubviewAtIndex index2: Int)
  func addSubview(view: UIView)
  func insertSubview(view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubviewToFront(view: UIView)
  func sendSubviewToBack(view: UIView)
  func didAddSubview(subview: UIView)
  func willRemoveSubview(subview: UIView)
  func willMoveToSuperview(newSuperview: UIView?)
  func didMoveToSuperview()
  func willMoveToWindow(newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendantOfView(view: UIView) -> Bool
  func viewWithTag(tag: Int) -> UIView?
  func setNeedsLayout()
  func layoutIfNeeded()
  func layoutSubviews()
  var layoutMargins: UIEdgeInsets
  var preservesSuperviewLayoutMargins: Bool
  func layoutMarginsDidChange()
  var layoutMarginsGuide: UILayoutGuide { get }
  /// This content guide provides a layout area that you can use to place text and related content whose width should generally be constrained to a size that is easy for the user to read. This guide provides a centered region that you can place content within to get this behavior for this view.
  var readableContentGuide: UILayoutGuide { get }
}
extension UIView {
  func drawRect(rect: CGRect)
  func setNeedsDisplay()
  func setNeedsDisplayInRect(rect: CGRect)
  var clipsToBounds: Bool
  @NSCopying var backgroundColor: UIColor?
  var alpha: CGFloat
  var opaque: Bool
  var clearsContextBeforeDrawing: Bool
  var hidden: Bool
  var contentMode: UIViewContentMode
  var maskView: UIView?
  var tintColor: UIColor!
  var tintAdjustmentMode: UIViewTintAdjustmentMode
  func tintColorDidChange()
}
extension UIView {
  class func beginAnimations(animationID: String?, context: UnsafeMutablePointer<Void>)
  class func commitAnimations()
  class func setAnimationDelegate(delegate: AnyObject?)
  class func setAnimationWillStartSelector(selector: Selector)
  class func setAnimationDidStopSelector(selector: Selector)
  class func setAnimationDuration(duration: NSTimeInterval)
  class func setAnimationDelay(delay: NSTimeInterval)
  class func setAnimationStartDate(startDate: NSDate)
  class func setAnimationCurve(curve: UIViewAnimationCurve)
  class func setAnimationRepeatCount(repeatCount: Float)
  class func setAnimationRepeatAutoreverses(repeatAutoreverses: Bool)
  class func setAnimationBeginsFromCurrentState(fromCurrentState: Bool)
  class func setAnimationTransition(transition: UIViewAnimationTransition, forView view: UIView, cache: Bool)
  class func setAnimationsEnabled(enabled: Bool)
  class func areAnimationsEnabled() -> Bool
  class func performWithoutAnimation(actionsWithoutAnimation: () -> Void)
  class func inheritedAnimationDuration() -> NSTimeInterval
}
extension UIView {
  class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void, completion: ((Bool) -> Void)?)
  class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void)
  class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  class func transitionWithView(view: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions, animations: (() -> Void)?, completion: ((Bool) -> Void)?)
  class func transitionFromView(fromView: UIView, toView: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions, completion: ((Bool) -> Void)?)
  class func performSystemAnimation(animation: UISystemAnimation, onViews views: [UIView], options: UIViewAnimationOptions, animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)?)
}
extension UIView {
  class func animateKeyframesWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewKeyframeAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  class func addKeyframeWithRelativeStartTime(frameStartTime: Double, relativeDuration frameDuration: Double, animations: () -> Void)
}
extension UIView {
  var gestureRecognizers: [UIGestureRecognizer]?
  func addGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  func removeGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
}
extension UIView {
  func addMotionEffect(effect: UIMotionEffect)
  func removeMotionEffect(effect: UIMotionEffect)
  var motionEffects: [UIMotionEffect]
}
enum UILayoutConstraintAxis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
extension UIView {
  var constraints: [NSLayoutConstraint] { get }
  func addConstraint(constraint: NSLayoutConstraint)
  func addConstraints(constraints: [NSLayoutConstraint])
  func removeConstraint(constraint: NSLayoutConstraint)
  func removeConstraints(constraints: [NSLayoutConstraint])
}
extension UIView {
  func updateConstraintsIfNeeded()
  func updateConstraints()
  func needsUpdateConstraints() -> Bool
  func setNeedsUpdateConstraints()
}
extension UIView {
  var translatesAutoresizingMaskIntoConstraints: Bool
  class func requiresConstraintBasedLayout() -> Bool
}
extension UIView {
  func alignmentRectForFrame(frame: CGRect) -> CGRect
  func frameForAlignmentRect(alignmentRect: CGRect) -> CGRect
  func alignmentRectInsets() -> UIEdgeInsets
  func viewForBaselineLayout() -> UIView
  var viewForFirstBaselineLayout: UIView { get }
  var viewForLastBaselineLayout: UIView { get }
  func intrinsicContentSize() -> CGSize
  func invalidateIntrinsicContentSize()
  func contentHuggingPriorityForAxis(axis: UILayoutConstraintAxis) -> UILayoutPriority
  func setContentHuggingPriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
  func contentCompressionResistancePriorityForAxis(axis: UILayoutConstraintAxis) -> UILayoutPriority
  func setContentCompressionResistancePriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
}
let UIViewNoIntrinsicMetric: CGFloat
let UILayoutFittingCompressedSize: CGSize
let UILayoutFittingExpandedSize: CGSize
extension UIView {
  func systemLayoutSizeFittingSize(targetSize: CGSize) -> CGSize
  func systemLayoutSizeFittingSize(targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
}
extension UIView {
  var layoutGuides: [UILayoutGuide] { get }
  func addLayoutGuide(layoutGuide: UILayoutGuide)
  func removeLayoutGuide(layoutGuide: UILayoutGuide)
}
extension UIView {
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  var leftAnchor: NSLayoutXAxisAnchor { get }
  var rightAnchor: NSLayoutXAxisAnchor { get }
  var topAnchor: NSLayoutYAxisAnchor { get }
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  var widthAnchor: NSLayoutDimension { get }
  var heightAnchor: NSLayoutDimension { get }
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
}
extension UIView {
  func constraintsAffectingLayoutForAxis(axis: UILayoutConstraintAxis) -> [NSLayoutConstraint]
  func hasAmbiguousLayout() -> Bool
  func exerciseAmbiguityInLayout()
}
extension UIView {
  var restorationIdentifier: String?
  func encodeRestorableStateWithCoder(coder: NSCoder)
  func decodeRestorableStateWithCoder(coder: NSCoder)
}
extension UIView {
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
  func resizableSnapshotViewFromRect(rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView
  func drawViewHierarchyInRect(rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CoverVertical
  case FlipHorizontal
  case CrossDissolve
  case PartialCurl
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FullScreen
  case PageSheet
  case FormSheet
  case CurrentContext
  case Custom
  case OverFullScreen
  case OverCurrentContext
  case Popover
  case None
}
protocol UIContentContainer : NSObjectProtocol {
  var preferredContentSize: CGSize { get }
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
}
let UIViewControllerShowDetailTargetDidChangeNotification: String
class UIViewController : UIResponder, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var view: UIView!
  func loadView()
  func loadViewIfNeeded()
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  func isViewLoaded() -> Bool
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  var storyboard: UIStoryboard? { get }
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
  func canPerformUnwindSegueAction(action: Selector, fromViewController: UIViewController, withSender sender: AnyObject) -> Bool
  func allowedChildViewControllersForUnwindingFromSource(source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  func childViewControllerContainingSegueSource(source: UIStoryboardUnwindSegueSource) -> UIViewController?
  func viewControllerForUnwindSegueAction(action: Selector, fromViewController: UIViewController, withSender sender: AnyObject?) -> UIViewController?
  func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(animated: Bool)
  func viewDidAppear(animated: Bool)
  func viewWillDisappear(animated: Bool)
  func viewDidDisappear(animated: Bool)
  func viewWillLayoutSubviews()
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parentViewController: @sil_weak UIViewController? { get }
  var presentedViewController: UIViewController? { get }
  var presentingViewController: UIViewController? { get }
  var definesPresentationContext: Bool
  var providesPresentationContextTransitionStyle: Bool
  func isBeingPresented() -> Bool
  func isBeingDismissed() -> Bool
  func isMovingToParentViewController() -> Bool
  func isMovingFromParentViewController() -> Bool
  func presentViewController(viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
  func dismissViewControllerAnimated(flag: Bool, completion: (() -> Void)?)
  var modalTransitionStyle: UIModalTransitionStyle
  var modalPresentationStyle: UIModalPresentationStyle
  var modalPresentationCapturesStatusBarAppearance: Bool
  func disablesAutomaticKeyboardDismissal() -> Bool
  var edgesForExtendedLayout: UIRectEdge
  var extendedLayoutIncludesOpaqueBars: Bool
  var automaticallyAdjustsScrollViewInsets: Bool
  var preferredContentSize: CGSize
  func preferredStatusBarStyle() -> UIStatusBarStyle
  func prefersStatusBarHidden() -> Bool
  func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation
  func setNeedsStatusBarAppearanceUpdate()
  func targetViewControllerForAction(action: Selector, sender: AnyObject?) -> UIViewController?
  func showViewController(vc: UIViewController, sender: AnyObject?)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }
  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()
  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()
  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool
  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
extension UIViewController {
  class func attemptRotationToDeviceOrientation()
  func shouldAutorotate() -> Bool
  func supportedInterfaceOrientations() -> UIInterfaceOrientationMask
  func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation
  func rotatingHeaderView() -> UIView?
  func rotatingFooterView() -> UIView?
  var interfaceOrientation: UIInterfaceOrientation { get }
  func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval)
  func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation)
  func willAnimateRotationToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval)
}
extension UIViewController {
  var editing: Bool
  func setEditing(editing: Bool, animated: Bool)
  func editButtonItem() -> UIBarButtonItem
}
extension UIViewController {
  var searchDisplayController: UISearchDisplayController? { get }
}
let UIViewControllerHierarchyInconsistencyException: String
extension UIViewController {
  var childViewControllers: [UIViewController] { get }
  func addChildViewController(childController: UIViewController)
  func removeFromParentViewController()
  func transitionFromViewController(fromViewController: UIViewController, toViewController: UIViewController, duration: NSTimeInterval, options: UIViewAnimationOptions, animations: (() -> Void)?, completion: ((Bool) -> Void)?)
  func beginAppearanceTransition(isAppearing: Bool, animated: Bool)
  func endAppearanceTransition()
  func childViewControllerForStatusBarStyle() -> UIViewController?
  func childViewControllerForStatusBarHidden() -> UIViewController?
  func setOverrideTraitCollection(collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  func overrideTraitCollectionForChildViewController(childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  func shouldAutomaticallyForwardRotationMethods() -> Bool
  func shouldAutomaticallyForwardAppearanceMethods() -> Bool
  func willMoveToParentViewController(parent: UIViewController?)
  func didMoveToParentViewController(parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  var restorationIdentifier: String?
  var restorationClass: AnyObject.Type?
  func encodeRestorableStateWithCoder(coder: NSCoder)
  func decodeRestorableStateWithCoder(coder: NSCoder)
  func applicationFinishedRestoringState()
  var restorationParent: UIStateRestoring? { get }
  var objectRestorationClass: AnyObject.Type? { get }
}
extension UIViewController {
  func updateViewConstraints()
}
extension UIViewController {
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  var topLayoutGuide: UILayoutSupport { get }
  var bottomLayoutGuide: UILayoutSupport { get }
}
extension UIViewController {
  func addKeyCommand(keyCommand: UIKeyCommand)
  func removeKeyCommand(keyCommand: UIKeyCommand)
}
extension UIViewController : NSExtensionRequestHandling {
  var extensionContext: NSExtensionContext? { get }
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
extension UIViewController {
  var presentationController: UIPresentationController? { get }
  var popoverPresentationController: UIPopoverPresentationController? { get }
}
protocol UIViewControllerPreviewing : NSObjectProtocol {
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  var delegate: UIViewControllerPreviewingDelegate { get }
  var sourceView: UIView { get }
  var sourceRect: CGRect { get set }
}
protocol UIViewControllerPreviewingDelegate : NSObjectProtocol {
  func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController)
}
extension UIViewController {
  func registerForPreviewingWithDelegate(delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  func unregisterForPreviewingWithContext(previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  func previewActionItems() -> [UIPreviewActionItem]
}
protocol UIPreviewActionItem : NSObjectProtocol {
  var title: String { get }
}
enum UIPreviewActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Selected
  case Destructive
}
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewActionStyle, handler: (UIPreviewAction, UIViewController) -> Void)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  var title: String { get }
}
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewActionStyle, actions: [UIPreviewAction])
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  var title: String { get }
}
protocol UIViewControllerTransitionCoordinatorContext : NSObjectProtocol {
  func isAnimated() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func initiallyInteractive() -> Bool
  func isInteractive() -> Bool
  func isCancelled() -> Bool
  func transitionDuration() -> NSTimeInterval
  func percentComplete() -> CGFloat
  func completionVelocity() -> CGFloat
  func completionCurve() -> UIViewAnimationCurve
  func viewControllerForKey(key: String) -> UIViewController?
  func viewForKey(key: String) -> UIView?
  func containerView() -> UIView
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animateAlongsideTransition(animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  func animateAlongsideTransitionInView(view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  func notifyWhenInteractionEndsUsingBlock(handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
let UITransitionContextFromViewControllerKey: String
let UITransitionContextToViewControllerKey: String
let UITransitionContextFromViewKey: String
let UITransitionContextToViewKey: String
protocol UIViewControllerContextTransitioning : NSObjectProtocol {
  func containerView() -> UIView?
  func isAnimated() -> Bool
  func isInteractive() -> Bool
  func transitionWasCancelled() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func updateInteractiveTransition(percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func completeTransition(didComplete: Bool)
  func viewControllerForKey(key: String) -> UIViewController?
  func viewForKey(key: String) -> UIView?
  func targetTransform() -> CGAffineTransform
  func initialFrameForViewController(vc: UIViewController) -> CGRect
  func finalFrameForViewController(vc: UIViewController) -> CGRect
}
protocol UIViewControllerAnimatedTransitioning : NSObjectProtocol {
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func animationEnded(transitionCompleted: Bool)
}
protocol UIViewControllerInteractiveTransitioning : NSObjectProtocol {
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func completionSpeed() -> CGFloat
  optional func completionCurve() -> UIViewAnimationCurve
}
protocol UIViewControllerTransitioningDelegate : NSObjectProtocol {
  optional func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
class UIPercentDrivenInteractiveTransition : NSObject, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func updateInteractiveTransition(percentComplete: CGFloat)
  func cancelInteractiveTransition()
  func finishInteractiveTransition()
  init()
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
}
enum UIBlurEffectStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ExtraLight
  case Light
  case Dark
}
class UIVisualEffect : NSObject, NSCopying, NSSecureCoding {
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class UIBlurEffect : UIVisualEffect {
   init(style: UIBlurEffectStyle)
  init()
  init?(coder aDecoder: NSCoder)
}
class UIVibrancyEffect : UIVisualEffect {
   init(forBlurEffect blurEffect: UIBlurEffect)
  init()
  init?(coder aDecoder: NSCoder)
}
class UIVisualEffectView : UIView, NSSecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect: UIVisualEffect?)
  init?(coder aDecoder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
  class func supportsSecureCoding() -> Bool
}
enum UIWebViewNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkClicked
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
enum UIWebPaginationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unpaginated
  case LeftToRight
  case TopToBottom
  case BottomToTop
  case RightToLeft
}
enum UIWebPaginationBreakingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Page
  case Column
}
class UIWebView : UIView, NSCoding, UIScrollViewDelegate {
  unowned(unsafe) var delegate: @sil_unmanaged UIWebViewDelegate?
  var scrollView: UIScrollView { get }
  func loadRequest(request: NSURLRequest)
  func loadHTMLString(string: String, baseURL: NSURL?)
  func loadData(data: NSData, MIMEType: String, textEncodingName: String, baseURL: NSURL)
  var request: NSURLRequest? { get }
  func reload()
  func stopLoading()
  func goBack()
  func goForward()
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  var loading: Bool { get }
  func stringByEvaluatingJavaScriptFromString(script: String) -> String?
  var scalesPageToFit: Bool
  var dataDetectorTypes: UIDataDetectorTypes
  var allowsInlineMediaPlayback: Bool
  var mediaPlaybackRequiresUserAction: Bool
  var mediaPlaybackAllowsAirPlay: Bool
  var suppressesIncrementalRendering: Bool
  var keyboardDisplayRequiresUserAction: Bool
  var paginationMode: UIWebPaginationMode
  var paginationBreakingMode: UIWebPaginationBreakingMode
  var pageLength: CGFloat
  var gapBetweenPages: CGFloat
  var pageCount: Int { get }
  var allowsPictureInPictureMediaPlayback: Bool
  var allowsLinkPreview: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func scrollViewDidScroll(scrollView: UIScrollView)
  func scrollViewDidZoom(scrollView: UIScrollView)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
protocol UIWebViewDelegate : NSObjectProtocol {
  optional func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool
  optional func webViewDidStartLoad(webView: UIWebView)
  optional func webViewDidFinishLoad(webView: UIWebView)
  optional func webView(webView: UIWebView, didFailLoadWithError error: NSError?)
}
typealias UIWindowLevel = CGFloat
class UIWindow : UIView {
  var screen: UIScreen
  var windowLevel: UIWindowLevel
  var keyWindow: Bool { get }
  func becomeKeyWindow()
  func resignKeyWindow()
  func makeKeyWindow()
  func makeKeyAndVisible()
  var rootViewController: UIViewController?
  func sendEvent(event: UIEvent)
  func convertPoint(point: CGPoint, toWindow window: UIWindow?) -> CGPoint
  func convertPoint(point: CGPoint, fromWindow window: UIWindow?) -> CGPoint
  func convertRect(rect: CGRect, toWindow window: UIWindow?) -> CGRect
  func convertRect(rect: CGRect, fromWindow window: UIWindow?) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
let UIWindowLevelNormal: UIWindowLevel
let UIWindowLevelAlert: UIWindowLevel
let UIWindowLevelStatusBar: UIWindowLevel
let UIWindowDidBecomeVisibleNotification: String
let UIWindowDidBecomeHiddenNotification: String
let UIWindowDidBecomeKeyNotification: String
let UIWindowDidResignKeyNotification: String
let UIKeyboardWillShowNotification: String
let UIKeyboardDidShowNotification: String
let UIKeyboardWillHideNotification: String
let UIKeyboardDidHideNotification: String
let UIKeyboardFrameBeginUserInfoKey: String
let UIKeyboardFrameEndUserInfoKey: String
let UIKeyboardAnimationDurationUserInfoKey: String
let UIKeyboardAnimationCurveUserInfoKey: String
let UIKeyboardIsLocalUserInfoKey: String
let UIKeyboardWillChangeFrameNotification: String
let UIKeyboardDidChangeFrameNotification: String
