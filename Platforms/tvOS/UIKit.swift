
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
extension AttributedString {
}
extension MutableAttributedString {
}
/// NSDataAsset represents the contents of data entries in your asset catalog.
/// Data assets are not in the same class of stored content as images, so you cannot use a data asset to get image data for an image.
class NSDataAsset : Object, Copying {
  /// Equivalent to -initWithName:name bundle:[NSBundle mainBundle];
  convenience init?(name: String)
  /// Create a data asset with the given name from the given bundle. Returns nil if the asset was not found.
  init?(name: String, bundle: Bundle)
  /// The name used to reference the data asset
  var name: String { get }
  /// The data for this asset, as stored in the asset catalog
  @NSCopying var data: Data { get }
  /// The Uniform Type Identifier for this data object.
  var typeIdentifier: String { get }
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NSLayoutAnchor : Object {
  func constraintEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
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
class NSLayoutConstraint : Object {
  class func constraintsWithVisualFormat(format: String, options opts: NSLayoutFormatOptions = [], metrics: [String : AnyObject]?, views: [String : AnyObject]) -> [NSLayoutConstraint]
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
  var isActive: Bool
  class func activateConstraints(constraints: [NSLayoutConstraint])
  class func deactivateConstraints(constraints: [NSLayoutConstraint])
  init()
}
extension NSLayoutConstraint {
  var identifier: String?
}
protocol UILayoutSupport : ObjectProtocol {
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
class NSLayoutManager : Object, Coding {
  init()
  init?(coder: Coder)
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, at index: Int)
  func removeTextContainerAt(index: Int)
  func textContainerChangedGeometry(container: NSTextContainer)
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: CGFloat
  var usesFontLeading: Bool
  var allowsNonContiguousLayout: Bool
  var hasNonContiguousLayout: Bool { get }
  func invalidateGlyphsForCharacterRange(charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: RangePointer)
  func invalidateLayoutForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: RangePointer)
  func invalidateDisplayForCharacterRange(charRange: NSRange)
  func invalidateDisplayForGlyphRange(glyphRange: NSRange)
  func processEditingFor(textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphsForCharacterRange(charRange: NSRange)
  func ensureGlyphsForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForCharacterRange(charRange: NSRange)
  func ensureLayoutForGlyphRange(glyphRange: NSRange)
  func ensureLayoutFor(container: NSTextContainer)
  func ensureLayoutForBoundingRect(bounds: CGRect, in container: NSTextContainer)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  func cgGlyphAt(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func cgGlyphAt(glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(glyphIndex: Int) -> Bool
  func propertyForGlyphAt(glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAt(glyphIndex: Int) -> Int
  func glyphIndexForCharacterAt(charIndex: Int) -> Int
  func getGlyphsIn(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(fragmentRect: CGRect, forGlyphRange glyphRange: NSRange, usedRect: CGRect)
  func setExtraLineFragmentRect(fragmentRect: CGRect, usedRect: CGRect, textContainer container: NSTextContainer)
  func setLocation(location: CGPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphAt glyphIndex: Int)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphAt glyphIndex: Int)
  func setAttachmentSize(attachmentSize: CGSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(charIndex: UnsafeMutablePointer<Int>, glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: RangePointer) -> NSTextContainer?
  func textContainerForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: RangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectFor(container: NSTextContainer) -> CGRect
  func lineFragmentRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: RangePointer) -> CGRect
  func lineFragmentRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: RangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  func lineFragmentUsedRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: RangePointer) -> CGRect
  func lineFragmentUsedRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: RangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  var extraLineFragmentRect: CGRect { get }
  var extraLineFragmentUsedRect: CGRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAt(glyphIndex: Int) -> CGPoint
  func notShownAttributeForGlyphAt(glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAt(glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAt(glyphIndex: Int) -> CGSize
  func truncatedGlyphRangeInLineFragmentForGlyphAt(glyphIndex: Int) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: RangePointer) -> NSRange
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: RangePointer) -> NSRange
  func glyphRangeFor(container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContaining(glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(glyphRange: NSRange, in container: NSTextContainer) -> CGRect
  func glyphRangeForBoundingRect(bounds: CGRect, in container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(bounds: CGRect, in container: NSTextContainer) -> NSRange
  func glyphIndexFor(point: CGPoint, in container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexFor(point: CGPoint, in container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphFor(point: CGPoint, in container: NSTextContainer) -> CGFloat
  func characterIndexFor(point: CGPoint, in container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAt(charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  func enumerateLineFragmentsForGlyphRange(glyphRange: NSRange, usingBlock block: (CGRect, CGRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateEnclosingRectsForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, in textContainer: NSTextContainer, usingBlock block: (CGRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackgroundForGlyphRange(glyphsToShow: NSRange, at origin: CGPoint)
  func drawGlyphsForGlyphRange(glyphsToShow: NSRange, at origin: CGPoint)
  func showCGGlyphs(glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, matrix textMatrix: CGAffineTransform, attributes: [String : AnyObject] = [:], in graphicsContext: CGContext)
  func fillBackgroundRectArray(rectArray: UnsafePointer<CGRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: UIColor)
  func drawUnderlineForGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func underlineGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func drawStrikethroughForGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func strikethroughGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func encodeWith(aCoder: Coder)
}
protocol NSLayoutManagerDelegate : ObjectProtocol {
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> Int
  optional func layoutManager(layoutManager: NSLayoutManager, lineSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUse action: NSControlCharacterAction, forControlCharacterAt charIndex: Int) -> NSControlCharacterAction
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAt charIndex: Int) -> Bool
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAt charIndex: Int) -> Bool
  optional func layoutManager(layoutManager: NSLayoutManager, boundingBoxForControlGlyphAt glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: CGRect, glyphPosition: CGPoint, characterIndex charIndex: Int) -> CGRect
  optional func layoutManager(layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<CGRect>, lineFragmentUsedRect: UnsafeMutablePointer<CGRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, in textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  optional func layoutManagerDidInvalidateLayout(sender: NSLayoutManager)
  optional func layoutManager(layoutManager: NSLayoutManager, didCompleteLayoutFor textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  optional func layoutManager(layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFrom oldSize: CGSize)
}
var NSControlCharacterZeroAdvancementAction: Int { get }
var NSControlCharacterWhitespaceAction: Int { get }
var NSControlCharacterHorizontalTabAction: Int { get }
var NSControlCharacterLineBreakAction: Int { get }
var NSControlCharacterParagraphBreakAction: Int { get }
var NSControlCharacterContainerBreakAction: Int { get }
extension NSLayoutManager {
  func glyphAt(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func glyphAt(glyphIndex: Int) -> CGGlyph
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
class NSShadow : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
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
protocol NSTextAttachmentContainer : ObjectProtocol {
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  func attachmentBoundsFor(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
class NSTextAttachment : Object, NSTextAttachmentContainer, Coding {
  init(data contentData: Data?, ofType uti: String?)
  @NSCopying var contents: Data?
  var fileType: String?
  var image: UIImage?
  var bounds: CGRect
  var fileWrapper: FileWrapper?
  convenience init()
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  func attachmentBoundsFor(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension AttributedString {
   init(attachment: NSTextAttachment)
}
class NSTextContainer : Object, Coding, NSTextLayoutOrientationProvider {
  init(size: CGSize)
  init?(coder: Coder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)
  var size: CGSize
  var exclusionPaths: [UIBezierPath]
  var lineBreakMode: NSLineBreakMode
  var lineFragmentPadding: CGFloat
  var maximumNumberOfLines: Int
  func lineFragmentRectForProposedRect(proposedRect: CGRect, at characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remaining remainingRect: UnsafeMutablePointer<CGRect>) -> CGRect
  var isSimpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  convenience init()
  func encodeWith(aCoder: Coder)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EditedAttributes: NSTextStorageEditActions { get }
  static var EditedCharacters: NSTextStorageEditActions { get }
}
class NSTextStorage : MutableAttributedString {
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
  func invalidateAttributesIn(range: NSRange)
  func ensureAttributesAreFixedIn(range: NSRange)
  init()
  init?(coder aDecoder: Coder)
  init(url: URL, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(data: Data, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
}
protocol NSTextStorageDelegate : ObjectProtocol {
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}
let NSTextStorageWillProcessEditingNotification: String
let NSTextStorageDidProcessEditingNotification: String
typealias UIAccelerationValue = Double
extension Object {
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
  var accessibilityHeaderElements: [AnyObject]?
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
extension Object {
  class func accessibilityElementCount() -> Int
  func accessibilityElementCount() -> Int
  class func accessibilityElementAt(index: Int) -> AnyObject?
  func accessibilityElementAt(index: Int) -> AnyObject?
  class func indexOfAccessibilityElement(element: AnyObject) -> Int
  func indexOfAccessibilityElement(element: AnyObject) -> Int
  var accessibilityElements: [AnyObject]?
  class func accessibilityElements() -> [AnyObject]?
  class func setAccessibilityElements(accessibilityElements: [AnyObject]?)
}
extension Object {
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
extension Object {
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
  func accessibilityLineNumberFor(point: CGPoint) -> Int
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
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  optional func accessibilityScrollStatusFor(scrollView: UIScrollView) -> String?
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
class UIAccessibilityCustomAction : Object {
  init(name: String, target: AnyObject?, selector: Selector)
  var name: String
  weak var target: @sil_weak AnyObject?
  var selector: Selector
  init()
}
class UIAccessibilityElement : Object, UIAccessibilityIdentification {
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
protocol UIAccessibilityIdentification : ObjectProtocol {
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
enum UIActivityIndicatorViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WhiteLarge
  case White
}
class UIActivityIndicatorView : UIView, Coding {
  init(activityIndicatorStyle style: UIActivityIndicatorViewStyle)
  init(frame: CGRect)
  init(coder: Coder)
  var activityIndicatorViewStyle: UIActivityIndicatorViewStyle
  var hidesWhenStopped: Bool
  var color: UIColor?
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  convenience init()
}
protocol UIActivityItemSource : ObjectProtocol {
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  optional func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  optional func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  optional func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
typealias UIActivityViewControllerCompletionHandler = (String?, Bool) -> Void
typealias UIActivityViewControllerCompletionWithItemsHandler = (String?, Bool, [AnyObject]?, Error?) -> Void
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
class UIAlertAction : Object, Copying {
  convenience init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)? = nil)
  var title: String? { get }
  var style: UIAlertActionStyle { get }
  var isEnabled: Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class UIAlertController : UIViewController {
  convenience init(title: String?, message: String?, preferredStyle: UIAlertControllerStyle)
  func addAction(action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  var preferredAction: UIAlertAction?
  func addTextField(configurationHandler configurationHandler: ((UITextField) -> Void)? = nil)
  var textFields: [UITextField]? { get }
  var title: String?
  var message: String?
  var preferredStyle: UIAlertControllerStyle { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UIAppearanceContainer : ObjectProtocol {
}
protocol UIAppearance : ObjectProtocol {
  static func appearance() -> Self
  static func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  static func appearanceFor(trait: UITraitCollection) -> Self
  static func appearanceFor(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
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
let UIMinimumKeepAliveTimeout: TimeInterval
class UIApplication : UIResponder {
  class func shared() -> UIApplication
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  func beginIgnoringInteractionEvents()
  func endIgnoringInteractionEvents()
  func isIgnoringInteractionEvents() -> Bool
  var isIdleTimerDisabled: Bool
  func open(url: URL) -> Bool
  func canOpen(url: URL) -> Bool
  func send(event: UIEvent)
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(action: Selector, to target: AnyObject?, from sender: AnyObject?, forEvent event: UIEvent?) -> Bool
  var applicationState: UIApplicationState { get }
  var backgroundTimeRemaining: TimeInterval { get }
  func beginBackgroundTask(expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  func beginBackgroundTaskWithName(taskName: String?, expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  func endBackgroundTask(identifier: UIBackgroundTaskIdentifier)
  var isProtectedDataAvailable: Bool { get }
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  var preferredContentSizeCategory: String { get }
  init()
}
extension UIApplication {
  func registerForRemoteNotifications()
  func unregisterForRemoteNotifications()
  func isRegisteredForRemoteNotifications() -> Bool
}
extension UIApplication {
}
extension UIApplication {
}
extension UIApplication {
  func beginReceivingRemoteControlEvents()
  func endReceivingRemoteControlEvents()
}
extension UIApplication {
}
extension UIApplication {
}
extension UIApplication {
  func extendStateRestoration()
  func completeStateRestoration()
  func ignoreSnapshotOnNextApplicationLaunch()
  class func registerObjectForStateRestoration(object: UIStateRestoring, restorationIdentifier: String)
}
protocol UIApplicationDelegate : ObjectProtocol {
  optional func applicationDidFinishLaunching(application: UIApplication)
  optional func application(application: UIApplication, willFinishLaunchingWithOptions launchOptions: [Object : AnyObject]? = [:]) -> Bool
  optional func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [Object : AnyObject]? = [:]) -> Bool
  optional func applicationDidBecomeActive(application: UIApplication)
  optional func applicationWillResignActive(application: UIApplication)
  optional func application(app: UIApplication, open url: URL, options: [String : AnyObject] = [:]) -> Bool
  optional func applicationDidReceiveMemoryWarning(application: UIApplication)
  optional func applicationWillTerminate(application: UIApplication)
  optional func applicationSignificantTimeChange(application: UIApplication)
  optional func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)
  optional func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [Object : AnyObject])
  optional func application(application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: () -> Void)
  optional func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [Object : AnyObject]?, reply: ([Object : AnyObject]?) -> Void)
  optional func applicationShouldRequestHealthAuthorization(application: UIApplication)
  optional func applicationDidEnterBackground(application: UIApplication)
  optional func applicationWillEnterForeground(application: UIApplication)
  optional func applicationProtectedDataWillBecomeUnavailable(application: UIApplication)
  optional func applicationProtectedDataDidBecomeAvailable(application: UIApplication)
  optional var window: UIWindow? { get set }
  optional func application(application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: String) -> Bool
  optional func application(application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [AnyObject], coder: Coder) -> UIViewController?
  optional func application(application: UIApplication, shouldSaveApplicationState coder: Coder) -> Bool
  optional func application(application: UIApplication, shouldRestoreApplicationState coder: Coder) -> Bool
  optional func application(application: UIApplication, willEncodeRestorableStateWith coder: Coder)
  optional func application(application: UIApplication, didDecodeRestorableStateWith coder: Coder)
  optional func application(application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  optional func application(application: UIApplication, continue userActivity: UserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool
  optional func application(application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error)
  optional func application(application: UIApplication, didUpdateUserActivity userActivity: UserActivity)
}
extension UIApplication {
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
let UIApplicationLaunchOptionsURLKey: String
let UIApplicationLaunchOptionsSourceApplicationKey: String
let UIApplicationLaunchOptionsAnnotationKey: String
let UIApplicationProtectedDataWillBecomeUnavailable: String
let UIApplicationProtectedDataDidBecomeAvailable: String
let UIApplicationLaunchOptionsLocationKey: String
let UIApplicationLaunchOptionsBluetoothCentralsKey: String
let UIApplicationLaunchOptionsBluetoothPeripheralsKey: String
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
  convenience init(item item1: UIDynamicItem, attachedTo item2: UIDynamicItem)
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)
  class func slidingAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  class func slidingAttachmentWith(item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  class func limitAttachmentWith(item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self
  class func fixedAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  class func pinAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
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
class UIBarButtonItem : UIBarItem, Coding {
  init()
  init?(coder aDecoder: Coder)
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
  func backgroundImageFor(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics)
  func backgroundImageFor(state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> UIImage?
  var tintColor: UIColor?
  func setBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  func backgroundVerticalPositionAdjustmentFor(barMetrics: UIBarMetrics) -> CGFloat
  func setTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  func titlePositionAdjustmentFor(barMetrics: UIBarMetrics) -> UIOffset
}
class UIBarButtonItemGroup : Object, Coding {
  /// Create a new bar button item group with the given items. When bar button item layout is done, either the group's barButtonItems or its representativeItem is displayed (if it exists).
  init(barButtonItems: [UIBarButtonItem], representativeItem: UIBarButtonItem?)
  init?(coder aDecoder: Coder)
  /// The bar button items assocaited with this group. Changing these items will affect the bar displaying these items without needing to re-set the groups that are in that bar. Any UIBarButtonItems that are already in group will be removed from that group.
  var barButtonItems: [UIBarButtonItem]
  /// In order to display as many items as possible, bars that support UIBarButtonItemGroup may choose to collapse items associated with groups to the representativeItem specified by the group.
  /// A bar will only collapse groups that have a representativeItem set, but may still choose to use an alternate presentation of these items.
  /// A UIBarButtonItem may only be either the representativeItem or a member of the barbuttonItems of a single UIBarButtonItemGroup and may only represent a single group.
  /// If the representativeItem has an action, then that action will be invoked, otherwise the bar will present a standard UI to allow selection of the barButtonItems in the representedItem's group.
  var representativeItem: UIBarButtonItem?
  /// Returns YES if the representativeItem of this group is currently being displayed, rather than its barButtonItems.
  var isDisplayingRepresentativeItem: Bool { get }
  convenience init()
  func encodeWith(aCoder: Coder)
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
protocol UIBarPositioning : ObjectProtocol {
  var barPosition: UIBarPosition { get }
}
protocol UIBarPositioningDelegate : ObjectProtocol {
  optional func positionForBar(bar: UIBarPositioning) -> UIBarPosition
}
class UIBarItem : Object, Coding, UIAppearance {
  init()
  init?(coder aDecoder: Coder)
  var isEnabled: Bool
  var title: String?
  var image: UIImage?
  var imageInsets: UIEdgeInsets
  var tag: Int
  func setTitleTextAttributes(attributes: [String : AnyObject]? = [:], forState state: UIControlState)
  func titleTextAttributesFor(state: UIControlState) -> [String : AnyObject]?
  func encodeWith(aCoder: Coder)
  class func appearance() -> Self
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  class func appearanceFor(trait: UITraitCollection) -> Self
  class func appearanceFor(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
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
class UIButton : UIControl, Coding {
  convenience init(type buttonType: UIButtonType)
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  var tintColor: UIColor!
  var buttonType: UIButtonType { get }
  func setTitle(title: String?, forState state: UIControlState)
  func setTitleColor(color: UIColor?, forState state: UIControlState)
  func setTitleShadowColor(color: UIColor?, forState state: UIControlState)
  func setImage(image: UIImage?, forState state: UIControlState)
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  func setAttributedTitle(title: AttributedString?, forState state: UIControlState)
  func titleFor(state: UIControlState) -> String?
  func titleColorFor(state: UIControlState) -> UIColor?
  func titleShadowColorFor(state: UIControlState) -> UIColor?
  func imageFor(state: UIControlState) -> UIImage?
  func backgroundImageFor(state: UIControlState) -> UIImage?
  func attributedTitleFor(state: UIControlState) -> AttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  var currentAttributedTitle: AttributedString? { get }
  var titleLabel: UILabel? { get }
  var imageView: UIImageView? { get }
  func backgroundRectForBounds(bounds: CGRect) -> CGRect
  func contentRectForBounds(bounds: CGRect) -> CGRect
  func titleRectForContentRect(contentRect: CGRect) -> CGRect
  func imageRectForContentRect(contentRect: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
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
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
  init()
}
protocol UICollectionViewDataSource : ObjectProtocol {
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
  optional func numberOfSectionsIn(collectionView: UICollectionView) -> Int
  optional func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
  optional func collectionView(collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  optional func collectionView(collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath)
  optional func collectionView(collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath)
  optional func collectionView(collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
  optional func collectionView(collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath)
  optional func collectionView(collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  optional func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath)
  optional func collectionView(collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: IndexPath)
  optional func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool
  optional func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?)
  optional func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  optional func collectionView(collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool
  optional func collectionView(collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  optional func collectionView(collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  optional func indexPathForPreferredFocusedViewIn(collectionView: UICollectionView) -> IndexPath?
  optional func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath
  optional func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
}
class UICollectionView : UIScrollView {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  init?(coder aDecoder: Coder)
  var collectionViewLayout: UICollectionViewLayout
  weak var delegate: @sil_weak UICollectionViewDelegate?
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  var backgroundView: UIView?
  func register(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func register(nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func register(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func register(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: IndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: IndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  func indexPathsForSelectedItems() -> [IndexPath]?
  func selectItemAt(indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
  func deselectItemAt(indexPath: IndexPath, animated: Bool)
  func reloadData()
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool)
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil)
  func startInteractiveTransitionTo(layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion? = nil) -> UICollectionViewTransitionLayout
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func numberOfSections() -> Int
  func numberOfItemsInSection(section: Int) -> Int
  func layoutAttributesForItemAt(indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElementOfKind(kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItemAt(point: CGPoint) -> IndexPath?
  func indexPathFor(cell: UICollectionViewCell) -> IndexPath?
  func cellForItemAt(indexPath: IndexPath) -> UICollectionViewCell?
  func visibleCells() -> [UICollectionViewCell]
  func indexPathsForVisibleItems() -> [IndexPath]
  func supplementaryViewForElementKind(elementKind: String, at indexPath: IndexPath) -> UICollectionReusableView
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [UICollectionReusableView]
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> [IndexPath]
  func scrollToItemAt(indexPath: IndexPath, at scrollPosition: UICollectionViewScrollPosition, animated: Bool)
  func insertSections(sections: IndexSet)
  func deleteSections(sections: IndexSet)
  func reloadSections(sections: IndexSet)
  func moveSection(section: Int, toSection newSection: Int)
  func insertItemsAt(indexPaths: [IndexPath])
  func deleteItemsAt(indexPaths: [IndexPath])
  func reloadItemsAt(indexPaths: [IndexPath])
  func moveItemAt(indexPath: IndexPath, to newIndexPath: IndexPath)
  func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  func beginInteractiveMovementForItemAt(indexPath: IndexPath) -> Bool
  func updateInteractiveMovementTargetPosition(targetPosition: CGPoint)
  func endInteractiveMovement()
  func cancelInteractiveMovement()
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
extension IndexPath {
  convenience init(forItem item: Int, inSection section: Int)
  var item: Int { get }
}
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func apply(layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransitionFrom(oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  func didTransitionFrom(oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  func preferredLayoutAttributesFitting(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
class UICollectionViewCell : UICollectionReusableView {
  var contentView: UIView { get }
  var isSelected: Bool
  var isHighlighted: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
class UICollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  init(collectionViewLayout layout: UICollectionViewLayout)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  var collectionView: UICollectionView?
  var clearsSelectionOnViewWillAppear: Bool
  var useLayoutToLayoutNavigationTransitions: Bool
  var collectionViewLayout: UICollectionViewLayout { get }
  var installsStandardGestureForInteractiveMovement: Bool
  convenience init()
  func collectionView(collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath)
  func collectionView(collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath)
  func collectionView(collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
  func collectionView(collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath)
  func collectionView(collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath)
  func collectionView(collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: IndexPath)
  func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool
  func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?)
  func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  func collectionView(collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  func collectionView(collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  func indexPathForPreferredFocusedViewIn(collectionView: UICollectionView) -> IndexPath?
  func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath
  func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  func scrollViewDidScroll(scrollView: UIScrollView)
  func scrollViewDidZoom(scrollView: UIScrollView)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
  func numberOfSectionsIn(collectionView: UICollectionView) -> Int
  func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
  func collectionView(collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool
  func collectionView(collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
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
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
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
  init?(coder aDecoder: Coder)
}
enum UICollectionElementCategory : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Cell
  case SupplementaryView
  case DecorationView
}
class UICollectionViewLayoutAttributes : Object, Copying, UIDynamicItem {
  var frame: CGRect
  var center: CGPoint
  var size: CGSize
  var transform3D: CATransform3D
  var bounds: CGRect
  var transform: CGAffineTransform
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  var indexPath: IndexPath
  var representedElementCategory: UICollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forCellWith indexPath: IndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: IndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: IndexPath)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
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
class UICollectionViewUpdateItem : Object {
  var indexPathBeforeUpdate: IndexPath? { get }
  var indexPathAfterUpdate: IndexPath? { get }
  var updateAction: UICollectionUpdateAction { get }
  init()
}
class UICollectionViewLayoutInvalidationContext : Object {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  func invalidateItemsAt(indexPaths: [IndexPath])
  func invalidateSupplementaryElementsOfKind(elementKind: String, at indexPaths: [IndexPath])
  func invalidateDecorationElementsOfKind(elementKind: String, at indexPaths: [IndexPath])
  var invalidatedItemIndexPaths: [IndexPath]? { get }
  var invalidatedSupplementaryIndexPaths: [String : [IndexPath]]? { get }
  var invalidatedDecorationIndexPaths: [String : [IndexPath]]? { get }
  var contentOffsetAdjustment: CGPoint
  var contentSizeAdjustment: CGSize
  var previousIndexPathsForInteractivelyMovingItems: [IndexPath]? { get }
  var targetIndexPathsForInteractivelyMovingItems: [IndexPath]? { get }
  var interactiveMovementTarget: CGPoint { get }
  init()
}
class UICollectionViewLayout : Object, Coding {
  init()
  init?(coder aDecoder: Coder)
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  func invalidateLayoutWith(context: UICollectionViewLayoutInvalidationContext)
  func register(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(nib: UINib?, forDecorationViewOfKind elementKind: String)
  func encodeWith(aCoder: Coder)
}
extension UICollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepare()
  func layoutAttributesForElementsIn(rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItemAt(indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
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
  func prepareForTransitionTo(newLayout: UICollectionViewLayout)
  func prepareForTransitionFrom(oldLayout: UICollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAt(itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAt(itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, at elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, at elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, at decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, at decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> [IndexPath]
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> [IndexPath]
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> [IndexPath]
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> [IndexPath]
}
extension UICollectionViewLayout {
  func targetIndexPathForInteractivelyMovingItem(previousIndexPath: IndexPath, withPosition position: CGPoint) -> IndexPath
  func layoutAttributesForInteractivelyMovingItemAt(indexPath: IndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  func invalidationContextForInteractivelyMovingItems(targetIndexPaths: [IndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [IndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  func invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths(indexPaths: [IndexPath], previousIndexPaths: [IndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
class UICollectionViewTransitionLayout : UICollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: UICollectionViewLayout { get }
  var nextLayout: UICollectionViewLayout { get }
  init(currentLayout: UICollectionViewLayout, nextLayout newLayout: UICollectionViewLayout)
  init?(coder aDecoder: Coder)
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
protocol UICollisionBehaviorDelegate : ObjectProtocol {
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, withItem item2: UIDynamicItem, at p: CGPoint)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactFor item1: UIDynamicItem, withItem item2: UIDynamicItem)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: Copying?, at p: CGPoint)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: Copying?)
}
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehaviorMode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundaryWith(insets: UIEdgeInsets)
  func addBoundaryWithIdentifier(identifier: Copying, forPath bezierPath: UIBezierPath)
  func addBoundaryWithIdentifier(identifier: Copying, from p1: CGPoint, to p2: CGPoint)
  func boundaryWithIdentifier(identifier: Copying) -> UIBezierPath?
  func removeBoundaryWithIdentifier(identifier: Copying)
  var boundaryIdentifiers: [Copying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
  convenience init()
}
class UIColor : Object, SecureCoding, Copying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(cgColor: CGColor)
  init(patternImage image: UIImage)
  init(ciColor: CIColor)
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
  var ciColor: CIColor { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
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
  var isEnabled: Bool
  var isSelected: Bool
  var isHighlighted: Bool
  var contentVerticalAlignment: UIControlContentVerticalAlignment
  var contentHorizontalAlignment: UIControlContentHorizontalAlignment
  var state: UIControlState { get }
  var isTracking: Bool { get }
  var isTouchInside: Bool { get }
  func beginTrackingWith(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func continueTrackingWith(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func endTrackingWith(touch: UITouch?, withEvent event: UIEvent?)
  func cancelTrackingWith(event: UIEvent?)
  func addTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func removeTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func allTargets() -> Set<Object>
  func allControlEvents() -> UIControlEvents
  func actionsForTarget(target: AnyObject?, forControlEvent controlEvent: UIControlEvents) -> [String]?
  func sendAction(action: Selector, to target: AnyObject?, forEvent event: UIEvent?)
  func sendActionsFor(controlEvents: UIControlEvents)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
enum UIUserInterfaceIdiom : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Phone
  case Pad
  case TV
}
class UIDevice : Object {
  class func current() -> UIDevice
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
  var identifierForVendor: UUID? { get }
  var isProximityMonitoringEnabled: Bool
  var proximityState: Bool { get }
  var isMultitaskingSupported: Bool { get }
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  func playInputClick()
  init()
}
protocol UIInputViewAudioFeedback : ObjectProtocol {
  optional var enableInputClicksWhenVisible: Bool { get }
}
func UI_USER_INTERFACE_IDIOM() -> UIUserInterfaceIdiom
let UIDeviceProximityStateDidChangeNotification: String
extension UIDocument {
}
protocol UIDynamicAnimatorDelegate : ObjectProtocol {
  optional func dynamicAnimatorWillResume(animator: UIDynamicAnimator)
  optional func dynamicAnimatorDidPause(animator: UIDynamicAnimator)
}
class UIDynamicAnimator : Object {
  init(referenceView view: UIView)
  func addBehavior(behavior: UIDynamicBehavior)
  func removeBehavior(behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func itemsIn(rect: CGRect) -> [UIDynamicItem]
  func updateItemUsingCurrentState(item: UIDynamicItem)
  var isRunning: Bool { get }
  func elapsedTime() -> TimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCellAt(indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(decorationViewKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
}
enum UIDynamicItemCollisionBoundsType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Rectangle
  case Ellipse
  case Path
}
protocol UIDynamicItem : ObjectProtocol {
  var center: CGPoint { get set }
  var bounds: CGRect { get }
  var transform: CGAffineTransform { get set }
  optional var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  optional var collisionBoundingPath: UIBezierPath { get }
}
class UIDynamicItemGroup : Object, UIDynamicItem {
  init(items: [UIDynamicItem])
  var items: [UIDynamicItem] { get }
  init()
  var center: CGPoint
  var bounds: CGRect { get }
  var transform: CGAffineTransform
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  var collisionBoundingPath: UIBezierPath { get }
}
class UIDynamicBehavior : Object {
  func addChildBehavior(behavior: UIDynamicBehavior)
  func removeChildBehavior(behavior: UIDynamicBehavior)
  var childBehaviors: [UIDynamicBehavior] { get }
  var action: (() -> Void)?
  func willMoveTo(dynamicAnimator: UIDynamicAnimator?)
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
  var isAnchored: Bool
  var allowsRotation: Bool
  func addLinearVelocity(velocity: CGPoint, forItem item: UIDynamicItem)
  func linearVelocityFor(item: UIDynamicItem) -> CGPoint
  func addAngularVelocity(velocity: CGFloat, forItem item: UIDynamicItem)
  func angularVelocityFor(item: UIDynamicItem) -> CGFloat
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
class UIEvent : Object {
  var type: UIEventType { get }
  var subtype: UIEventSubtype { get }
  var timestamp: TimeInterval { get }
  func allTouches() -> Set<UITouch>?
  func touchesFor(window: UIWindow) -> Set<UITouch>?
  func touchesFor(view: UIView) -> Set<UITouch>?
  func touchesFor(gesture: UIGestureRecognizer) -> Set<UITouch>?
  func coalescedTouchesFor(touch: UITouch) -> [UITouch]?
  func predictedTouchesFor(touch: UITouch) -> [UITouch]?
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
  class func linearGravityFieldWith(direction: CGVector) -> Self
  class func velocityFieldWith(direction: CGVector) -> Self
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> Self
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> Self
  class func springField() -> Self
  class func electricField() -> Self
  class func magneticField() -> Self
  class func fieldWithEvaluationBlock(block: (UIFieldBehavior, CGPoint, CGVector, CGFloat, CGFloat, TimeInterval) -> CGVector) -> Self
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
class UIFocusUpdateContext : Object {
  /// The view that was focused before the update. May be nil if no view was focused, such as when setting initial focus.
  weak var previouslyFocusedView: @sil_weak UIView? { get }
  /// The view that will be focused after the update. May be nil if no view will be focused.
  weak var nextFocusedView: @sil_weak UIView? { get }
  /// The focus heading in which the update is occuring.
  var focusHeading: UIFocusHeading { get }
  init()
}
/// UIFocusEnvironments represent branches of the view hierarchy participating in the focus system.
protocol UIFocusEnvironment : ObjectProtocol {
  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }
  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()
  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()
  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool
  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
/// UIFocusGuides are UILayoutGuide subclasses that participate in the focus system from within their owning view. A UIFocusGuide may be used to expose non-view areas as focusable.
class UIFocusGuide : UILayoutGuide {
  /// If disabled, UIFocusGuides are ignored by the focus engine, but still participate in layout. Modifying this flag allows you to conditionally enable or disable certain focus behaviors. YES by default.
  var isEnabled: Bool
  /// Setting a preferred focused view marks this guide's layoutFrame as focusable, and if focused, redirects focus to its preferred focused view. If nil, this guide is effectively disabled.
  weak var preferredFocusedView: @sil_weak UIView?
  init()
  init?(coder aDecoder: Coder)
}
/// UIFocusAnimationCoordinator is used to coordinate disparate animations that are related to a focus update.
class UIFocusAnimationCoordinator : Object {
  func addCoordinatedAnimations(animations: (() -> Void)?, completion: (() -> Void)? = nil)
  init()
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
class UIGestureRecognizer : Object {
  init(target: AnyObject?, action: Selector)
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?, action: Selector)
  weak var delegate: @sil_weak UIGestureRecognizerDelegate?
  var isEnabled: Bool
  var view: UIView? { get }
  var cancelsTouchesInView: Bool
  var delaysTouchesBegan: Bool
  var delaysTouchesEnded: Bool
  var allowedTouchTypes: [Number]
  var allowedPressTypes: [Number]
  func requireToFail(otherGestureRecognizer: UIGestureRecognizer)
  func locationIn(view: UIView?) -> CGPoint
  func numberOfTouches() -> Int
  func locationOfTouch(touchIndex: Int, in view: UIView?) -> CGPoint
  convenience init()
}
protocol UIGestureRecognizerDelegate : ObjectProtocol {
  optional func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
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
protocol UIGuidedAccessRestrictionDelegate : ObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestrictionWithIdentifier(restrictionIdentifier: String, didChange newRestrictionState: UIGuidedAccessRestrictionState)
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
class UIImage : Object, SecureCoding {
   init?(named name: String)
   init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?)
  init?(contentsOfFile path: String)
  init?(data: Data)
  init?(data: Data, scale: CGFloat)
  init(cgImage: CGImage)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  init(ciImage: CIImage)
  init(ciImage: CIImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  var ciImage: CIImage? { get }
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
  @NSCopying var traitCollection: UITraitCollection { get }
  var imageAsset: UIImageAsset? { get }
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
}
extension CIImage {
  init?(image: UIImage)
  init?(image: UIImage, options: [Object : AnyObject]? = [:])
}
func UIImagePNGRepresentation(image: UIImage) -> Data?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> Data?
class UIImageAsset : Object, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  func imageWith(traitCollection: UITraitCollection) -> UIImage
  func register(image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregisterImageWith(traitCollection: UITraitCollection)
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
class UIImageView : UIView {
  init(image: UIImage?)
  init(image: UIImage?, highlightedImage: UIImage?)
  var image: UIImage?
  var highlightedImage: UIImage?
  var isUserInteractionEnabled: Bool
  var isHighlighted: Bool
  var animationImages: [UIImage]?
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: TimeInterval
  var animationRepeatCount: Int
  var tintColor: UIColor!
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  var adjustsImageWhenAncestorFocused: Bool
  var focusedFrameGuide: UILayoutGuide { get }
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
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
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  func selectionWillChange(textInput: UITextInput?)
  func selectionDidChange(textInput: UITextInput?)
  func textWillChange(textInput: UITextInput?)
  func textDidChange(textInput: UITextInput?)
}
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Compact
  case Regular
}
extension UIColor {
}
extension UIFont {
}
class UILabel : UIView, Coding {
  var text: String?
  var font: UIFont!
  var textColor: UIColor!
  var shadowColor: UIColor?
  var shadowOffset: CGSize
  var textAlignment: NSTextAlignment
  var lineBreakMode: NSLineBreakMode
  @NSCopying var attributedText: AttributedString?
  var highlightedTextColor: UIColor?
  var isHighlighted: Bool
  var isUserInteractionEnabled: Bool
  var isEnabled: Bool
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var baselineAdjustment: UIBaselineAdjustment
  var minimumScaleFactor: CGFloat
  var allowsDefaultTighteningForTruncation: Bool
  func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  func drawTextIn(rect: CGRect)
  var preferredMaxLayoutWidth: CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
class UILayoutGuide : Object, Coding {
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
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class UILongPressGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var minimumPressDuration: CFTimeInterval
  var allowableMovement: CGFloat
  init(target: AnyObject?, action: Selector)
  convenience init()
}
class UIMotionEffect : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  func keyPathsAndRelativeValuesForViewerOffset(viewerOffset: UIOffset) -> [String : AnyObject]?
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
enum UIInterpolatingMotionEffectType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case TiltAlongHorizontalAxis
  case TiltAlongVerticalAxis
}
class UIInterpolatingMotionEffect : UIMotionEffect {
  init(keyPath: String, type: UIInterpolatingMotionEffectType)
  init?(coder aDecoder: Coder)
  var keyPath: String { get }
  var type: UIInterpolatingMotionEffectType { get }
  var minimumRelativeValue: AnyObject?
  var maximumRelativeValue: AnyObject?
  convenience init()
}
class UIMotionEffectGroup : UIMotionEffect {
  var motionEffects: [UIMotionEffect]?
  init()
  init?(coder aDecoder: Coder)
}
class UINavigationBar : UIView, Coding, UIBarPositioning {
  weak var delegate: @sil_weak UINavigationBarDelegate?
  var isTranslucent: Bool
  func push(item: UINavigationItem, animated: Bool)
  func popNavigationItemAnimated(animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(items: [UINavigationItem]?, animated: Bool)
  var tintColor: UIColor!
  var barTintColor: UIColor?
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  func backgroundImageFor(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  func setBackgroundImage(backgroundImage: UIImage?, forBarMetrics barMetrics: UIBarMetrics)
  func backgroundImageFor(barMetrics: UIBarMetrics) -> UIImage?
  var shadowImage: UIImage?
  var titleTextAttributes: [String : AnyObject]?
  func setTitleVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  func titleVerticalPositionAdjustmentFor(barMetrics: UIBarMetrics) -> CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
  var barPosition: UIBarPosition { get }
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  optional func navigationBar(navigationBar: UINavigationBar, shouldPush item: UINavigationItem) -> Bool
  optional func navigationBar(navigationBar: UINavigationBar, didPush item: UINavigationItem)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool
  optional func navigationBar(navigationBar: UINavigationBar, didPop item: UINavigationItem)
}
class UINavigationItem : Object, Coding {
  init(title: String)
  init?(coder: Coder)
  var title: String?
  var titleView: UIView?
  var leftBarButtonItems: [UIBarButtonItem]?
  var rightBarButtonItems: [UIBarButtonItem]?
  func setLeftBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  func setRightBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  func setRightBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  convenience init()
  func encodeWith(aCoder: Coder)
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
  func popTo(viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewControllerAnimated(animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  func setViewControllers(viewControllers: [UIViewController], animated: Bool)
  var isNavigationBarHidden: Bool
  func setNavigationBarHidden(hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
  func showViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UINavigationControllerDelegate : ObjectProtocol {
  optional func navigationController(navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool)
  optional func navigationController(navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool)
  optional func navigationController(navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func navigationController(navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
}
class UINib : Object {
   init(nibName name: String, bundle bundleOrNil: Bundle?)
   init(data: Data, bundle bundleOrNil: Bundle?)
  func instantiateWithOwner(ownerOrNil: AnyObject?, options optionsOrNil: [Object : AnyObject]? = [:]) -> [AnyObject]
  init()
}
let UINibExternalObjects: String
extension Bundle {
  func loadNibNamed(name: String!, owner: AnyObject!, options: [Object : AnyObject]! = [:]) -> [AnyObject]!
}
extension Object {
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
  init?(coder aDecoder: Coder)
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
  init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : AnyObject]? = [:])
  init?(coder: Coder)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewControllerTransitionStyle { get }
  var navigationOrientation: UIPageViewControllerNavigationOrientation { get }
  var spineLocation: UIPageViewControllerSpineLocation { get }
  var isDoubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(viewControllers: [UIViewController]?, direction: UIPageViewControllerNavigationDirection, animated: Bool, completion: ((Bool) -> Void)? = nil)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  convenience init()
}
protocol UIPageViewControllerDelegate : ObjectProtocol {
  optional func pageViewController(pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
  optional func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
}
protocol UIPageViewControllerDataSource : ObjectProtocol {
  func pageViewController(pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
  optional func presentationCountFor(pageViewController: UIPageViewController) -> Int
  optional func presentationIndexFor(pageViewController: UIPageViewController) -> Int
}
class UIPanGestureRecognizer : UIGestureRecognizer {
  func translationIn(view: UIView?) -> CGPoint
  func setTranslation(translation: CGPoint, in view: UIView?)
  func velocityIn(view: UIView?) -> CGPoint
  init(target: AnyObject?, action: Selector)
  convenience init()
}
extension UIPasteboard {
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
  init?(coder aDecoder: Coder)
  convenience init()
  class func arrowBase() -> CGFloat
  class func contentViewInsets() -> UIEdgeInsets
  class func arrowHeight() -> CGFloat
}
class UIPopoverController : Object, UIAppearanceContainer {
  init(contentViewController viewController: UIViewController)
  weak var delegate: @sil_weak UIPopoverControllerDelegate?
  var contentViewController: UIViewController
  func setContentViewController(viewController: UIViewController, animated: Bool)
  var popoverContentSize: CGSize
  func setPopoverContentSize(size: CGSize, animated: Bool)
  var isPopoverVisible: Bool { get }
  var popoverArrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  func presentPopoverFrom(rect: CGRect, in view: UIView, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func presentPopoverFrom(item: UIBarButtonItem, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func dismissPopoverAnimated(animated: Bool)
  @NSCopying var backgroundColor: UIColor?
  var popoverLayoutMargins: UIEdgeInsets
  var popoverBackgroundViewClass: AnyClass?
  init()
}
protocol UIPopoverControllerDelegate : ObjectProtocol {
  optional func popoverControllerShouldDismissPopover(popoverController: UIPopoverController) -> Bool
  optional func popoverControllerDidDismissPopover(popoverController: UIPopoverController)
  optional func popoverController(popoverController: UIPopoverController, willRepositionPopoverTo rect: UnsafeMutablePointer<CGRect>, in view: AutoreleasingUnsafeMutablePointer<UIView?>)
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
  var isModalInPopover: Bool
}
protocol UIAdaptivePresentationControllerDelegate : ObjectProtocol {
  optional func adaptivePresentationStyleFor(controller: UIPresentationController) -> UIModalPresentationStyle
  optional func adaptivePresentationStyleFor(controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle
  optional func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  optional func presentationController(presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator: UIViewControllerTransitionCoordinator?)
}
class UIPresentationController : Object, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController)
  func adaptivePresentationStyle() -> UIModalPresentationStyle
  func adaptivePresentationStyleFor(traitCollection: UITraitCollection) -> UIModalPresentationStyle
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
  func viewWillTransitionTo(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  func willTransitionTo(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }
  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()
  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()
  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool
  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
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
class UIPress : Object {
  var timestamp: TimeInterval { get }
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
  func pressesFor(gesture: UIGestureRecognizer) -> Set<UIPress>
  init()
}
var UIPrintingNotAvailableError: Int { get }
var UIPrintNoContentError: Int { get }
var UIPrintUnknownImageFormatError: Int { get }
var UIPrintJobFailedError: Int { get }
extension UIView {
}
extension UIPrintPaper {
}
typealias UIPrinterPickerCompletionHandler = (UIPrinterPickerController, Bool, Error?) -> Void
enum UIProgressViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
}
class UIProgressView : UIView, Coding {
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init(progressViewStyle style: UIProgressViewStyle)
  var progressViewStyle: UIProgressViewStyle
  var progress: Float
  var progressTintColor: UIColor?
  var trackTintColor: UIColor?
  var progressImage: UIImage?
  var trackImage: UIImage?
  func setProgress(progress: Float, animated: Bool)
  var observedProgress: Progress?
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
  func targetOffsetFromCenterFor(item: UIDynamicItem) -> UIOffset
  func setTargetOffsetFromCenter(o: UIOffset, forItem item: UIDynamicItem)
  var mode: UIPushBehaviorMode { get }
  var active: Bool
  var angle: CGFloat
  var magnitude: CGFloat
  var pushDirection: CGVector
  func setAngle(angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
class UIRegion : Object, Copying, Coding {
  class func infinite() -> Self
  init(radius: CGFloat)
  init(size: CGSize)
  func inverse() -> Self
  func byUnionWith(region: UIRegion) -> Self
  func byDifferenceFrom(region: UIRegion) -> Self
  func byIntersectionWith(region: UIRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class UIResponder : Object {
  func next() -> UIResponder?
  func canBecomeFirstResponder() -> Bool
  func becomeFirstResponder() -> Bool
  func canResignFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func isFirstResponder() -> Bool
  func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?)
  func touchesEstimatedPropertiesUpdated(touches: Set<Object>)
  func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  func pressesChanged(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  func pressesEnded(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  func pressesCancelled(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?)
  func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
  func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?)
  func remoteControlReceivedWith(event: UIEvent?)
  func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool
  func targetForAction(action: Selector, withSender sender: AnyObject?) -> AnyObject?
  var undoManager: UndoManager? { get }
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
class UIKeyCommand : Object, Copying, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  var input: String { get }
  var modifierFlags: UIKeyModifierFlags { get }
  var discoverabilityTitle: String?
   init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
   init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension UIResponder {
  var keyCommands: [UIKeyCommand]? { get }
}
extension Object {
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
  var userActivity: UserActivity?
  func updateUserActivityState(activity: UserActivity)
  func restoreUserActivityState(activity: UserActivity)
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
class UIScreen : Object, UITraitEnvironment {
  class func screens() -> [UIScreen]
  class func main() -> UIScreen
  var bounds: CGRect { get }
  var scale: CGFloat { get }
  var currentMode: UIScreenMode? { get }
  var overscanCompensation: UIScreenOverscanCompensation
  var overscanCompensationInsets: UIEdgeInsets { get }
  var mirrored: UIScreen? { get }
  var coordinateSpace: UICoordinateSpace { get }
  var fixedCoordinateSpace: UICoordinateSpace { get }
  var nativeBounds: CGRect { get }
  var nativeScale: CGFloat { get }
  func displayLinkWithTarget(target: AnyObject, selector sel: Selector) -> CADisplayLink?
  weak var focusedView: @sil_weak UIView? { get }
  var supportsFocus: Bool { get }
  init()
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
}
extension UIScreen {
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
}
class UIScreenMode : Object {
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
class UIScrollView : UIView, Coding {
  var contentOffset: CGPoint
  var contentSize: CGSize
  var contentInset: UIEdgeInsets
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var isDirectionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var isScrollEnabled: Bool
  var showsHorizontalScrollIndicator: Bool
  var showsVerticalScrollIndicator: Bool
  var scrollIndicatorInsets: UIEdgeInsets
  var indicatorStyle: UIScrollViewIndicatorStyle
  var decelerationRate: CGFloat
  func setContentOffset(contentOffset: CGPoint, animated: Bool)
  func scrollRectToVisible(rect: CGRect, animated: Bool)
  func flashScrollIndicators()
  var isTracking: Bool { get }
  var isDragging: Bool { get }
  var isDecelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool
  func touchesShouldCancelInContentView(view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  var zoomScale: CGFloat
  func setZoomScale(scale: CGFloat, animated: Bool)
  func zoomTo(rect: CGRect, animated: Bool)
  var bouncesZoom: Bool
  var isZooming: Bool { get }
  var isZoomBouncing: Bool { get }
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  var directionalPressGestureRecognizer: UIGestureRecognizer { get }
  var keyboardDismissMode: UIScrollViewKeyboardDismissMode
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UIScrollViewDelegate : ObjectProtocol {
  optional func scrollViewDidScroll(scrollView: UIScrollView)
  optional func scrollViewDidZoom(scrollView: UIScrollView)
  optional func scrollViewWillBeginDragging(scrollView: UIScrollView)
  optional func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  optional func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  optional func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  optional func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  optional func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  optional func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  optional func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  optional func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  optional func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  optional func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
enum UISearchBarIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Search
}
enum UISearchBarStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Prominent
  case Minimal
}
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  var tintColor: UIColor!
  var barTintColor: UIColor?
  var searchBarStyle: UISearchBarStyle
  var isTranslucent: Bool
  var scopeButtonTitles: [String]?
  var selectedScopeButtonIndex: Int
  var showsScopeBar: Bool
  var inputAccessoryView: UIView?
  var backgroundImage: UIImage?
  var scopeBarBackgroundImage: UIImage?
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  func backgroundImageFor(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  func setSearchFieldBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  func searchFieldBackgroundImageFor(state: UIControlState) -> UIImage?
  func setImage(iconImage: UIImage?, forSearchBarIcon icon: UISearchBarIcon, state: UIControlState)
  func imageFor(icon: UISearchBarIcon, state: UIControlState) -> UIImage?
  func setScopeBarButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  func scopeBarButtonBackgroundImageFor(state: UIControlState) -> UIImage?
  func setScopeBarButtonDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  func scopeBarButtonDividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState) -> UIImage?
  func setScopeBarButtonTitleTextAttributes(attributes: [String : AnyObject]? = [:], forState state: UIControlState)
  func scopeBarButtonTitleTextAttributesFor(state: UIControlState) -> [String : AnyObject]?
  var searchFieldBackgroundPositionAdjustment: UIOffset
  var searchTextPositionAdjustment: UIOffset
  func setPositionAdjustment(adjustment: UIOffset, forSearchBarIcon icon: UISearchBarIcon)
  func positionAdjustmentFor(icon: UISearchBarIcon) -> UIOffset
  var barPosition: UIBarPosition { get }
  var autocapitalizationType: UITextAutocapitalizationType
  var autocorrectionType: UITextAutocorrectionType
  var spellCheckingType: UITextSpellCheckingType
  var keyboardType: UIKeyboardType
  var keyboardAppearance: UIKeyboardAppearance
  var returnKeyType: UIReturnKeyType
  var enablesReturnKeyAutomatically: Bool
  var isSecureTextEntry: Bool
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  optional func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool
  optional func searchBarTextDidBeginEditing(searchBar: UISearchBar)
  optional func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool
  optional func searchBarTextDidEndEditing(searchBar: UISearchBar)
  optional func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
  optional func searchBar(searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  optional func searchBarSearchButtonClicked(searchBar: UISearchBar)
  optional func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
class UISearchContainerViewController : UIViewController {
  var searchController: UISearchController { get }
  init(searchController: UISearchController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UISearchControllerDelegate : ObjectProtocol {
  optional func willPresent(searchController: UISearchController)
  optional func didPresent(searchController: UISearchController)
  optional func willDismiss(searchController: UISearchController)
  optional func didDismiss(searchController: UISearchController)
  optional func present(searchController: UISearchController)
}
protocol UISearchResultsUpdating : ObjectProtocol {
  func updateSearchResultsFor(searchController: UISearchController)
}
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var isActive: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  func animationControllerForPresentedController(presented: UIViewController, presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  func presentationControllerForPresentedViewController(presented: UIViewController, presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  func animationEnded(transitionCompleted: Bool)
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
class UISegmentedControl : UIControl, Coding {
  init(items: [AnyObject]?)
  var isMomentary: Bool
  var numberOfSegments: Int { get }
  var apportionsSegmentWidthsByContent: Bool
  func insertSegmentWithTitle(title: String?, at segment: Int, animated: Bool)
  func insertSegmentWith(image: UIImage?, at segment: Int, animated: Bool)
  func removeSegmentAt(segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(title: String?, forSegmentAt segment: Int)
  func titleForSegmentAt(segment: Int) -> String?
  func setImage(image: UIImage?, forSegmentAt segment: Int)
  func imageForSegmentAt(segment: Int) -> UIImage?
  func setWidth(width: CGFloat, forSegmentAt segment: Int)
  func widthForSegmentAt(segment: Int) -> CGFloat
  func setContentOffset(offset: CGSize, forSegmentAt segment: Int)
  func contentOffsetForSegmentAt(segment: Int) -> CGSize
  func setEnabled(enabled: Bool, forSegmentAt segment: Int)
  func isEnabledForSegmentAt(segment: Int) -> Bool
  var selectedSegmentIndex: Int
  var tintColor: UIColor!
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  func backgroundImageFor(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  func setDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics)
  func dividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  func setTitleTextAttributes(attributes: [Object : AnyObject]? = [:], forState state: UIControlState)
  func titleTextAttributesFor(state: UIControlState) -> [Object : AnyObject]?
  func setContentPositionAdjustment(adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics)
  func contentPositionAdjustmentForSegmentType(leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics) -> UIOffset
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
class UISnapBehavior : UIDynamicBehavior {
  init(item: UIDynamicItem, snapTo point: CGPoint)
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
  var isCollapsed: Bool { get }
  var preferredDisplayMode: UISplitViewControllerDisplayMode
  var displayMode: UISplitViewControllerDisplayMode { get }
  func displayModeButtonItem() -> UIBarButtonItem
  var preferredPrimaryColumnWidthFraction: CGFloat
  var minimumPrimaryColumnWidth: CGFloat
  var maximumPrimaryColumnWidth: CGFloat
  var primaryColumnWidth: CGFloat { get }
  func show(vc: UIViewController, sender: AnyObject?)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UISplitViewControllerDelegate {
  optional func splitViewController(svc: UISplitViewController, willChangeTo displayMode: UISplitViewControllerDisplayMode)
  optional func targetDisplayModeForActionIn(svc: UISplitViewController) -> UISplitViewControllerDisplayMode
  optional func splitViewController(splitViewController: UISplitViewController, show vc: UIViewController, sender: AnyObject?) -> Bool
  optional func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool
  optional func primaryViewControllerForCollapsing(splitViewController: UISplitViewController) -> UIViewController?
  optional func primaryViewControllerForExpanding(splitViewController: UISplitViewController) -> UIViewController?
  optional func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  optional func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  func collapseSecondaryViewController(secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  func separateSecondaryViewControllerFor(splitViewController: UISplitViewController) -> UIViewController?
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
  func insertArrangedSubview(view: UIView, at stackIndex: Int)
  var axis: UILayoutConstraintAxis
  var distribution: UIStackViewDistribution
  var alignment: UIStackViewAlignment
  var spacing: CGFloat
  var isBaselineRelativeArrangement: Bool
  var isLayoutMarginsRelativeArrangement: Bool
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
let UIStateRestorationViewControllerStoryboardKey: String
let UIApplicationStateRestorationBundleVersionKey: String
let UIApplicationStateRestorationUserInterfaceIdiomKey: String
let UIApplicationStateRestorationTimestampKey: String
let UIApplicationStateRestorationSystemVersionKey: String
protocol UIViewControllerRestoration {
  static func viewControllerWithRestorationIdentifierPath(identifierComponents: [AnyObject], coder: Coder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  func modelIdentifierForElementAt(idx: IndexPath, in view: UIView) -> String?
  func indexPathForElementWithModelIdentifier(identifier: String, in view: UIView) -> IndexPath?
}
protocol UIStateRestoring : ObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: AnyObject.Type? { get }
  optional func encodeRestorableStateWith(coder: Coder)
  optional func decodeRestorableStateWith(coder: Coder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func objectWithRestorationIdentifierPath(identifierComponents: [String], coder: Coder) -> UIStateRestoring?
}
class UIStoryboard : Object {
   init(name: String, bundle storyboardBundleOrNil: Bundle?)
  func instantiateInitialViewController() -> UIViewController?
  func instantiateViewControllerWithIdentifier(identifier: String) -> UIViewController
  init()
}
class UIStoryboardPopoverSegue : UIStoryboardSegue {
  var popoverController: UIPopoverController { get }
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
}
class UIStoryboardSegue : Object {
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
class UIStoryboardUnwindSegueSource : Object {
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
  var direction: UISwipeGestureRecognizerDirection
  init(target: AnyObject?, action: Selector)
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
  var tintColor: UIColor!
  var barTintColor: UIColor?
  var backgroundImage: UIImage?
  var selectionIndicatorImage: UIImage?
  var shadowImage: UIImage?
  var itemWidth: CGFloat
  var itemSpacing: CGFloat
  var isTranslucent: Bool
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UITabBarDelegate : ObjectProtocol {
  optional func tabBar(tabBar: UITabBar, didSelect item: UITabBarItem)
}
class UITabBarController : UIViewController, UITabBarDelegate, Coding {
  var viewControllers: [UIViewController]?
  func setViewControllers(viewControllers: [UIViewController]?, animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  func tabBar(tabBar: UITabBar, didSelect item: UITabBarItem)
}
protocol UITabBarControllerDelegate : ObjectProtocol {
  optional func tabBarController(tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool
  optional func tabBarController(tabBarController: UITabBarController, didSelect viewController: UIViewController)
  optional func tabBarController(tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func tabBarController(tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
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
  init?(coder aDecoder: Coder)
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
let UITableViewAutomaticDimension: CGFloat
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
  init()
}
protocol UITableViewDelegate : ObjectProtocol, UIScrollViewDelegate {
  optional func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  optional func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  optional func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  optional func tableView(tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  optional func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  optional func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  optional func tableView(tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  optional func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  optional func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  optional func tableView(tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  optional func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  optional func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  optional func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  optional func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  optional func tableView(tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  optional func tableView(tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  optional func tableView(tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  optional func tableView(tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  optional func tableView(tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  optional func tableView(tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  optional func tableView(tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  optional func tableView(tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  optional func tableView(tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle
  optional func tableView(tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  optional func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  optional func tableView(tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  optional func tableView(tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  optional func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool
  optional func tableView(tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?)
  optional func tableView(tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  optional func tableView(tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  optional func tableView(tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  optional func indexPathForPreferredFocusedViewIn(tableView: UITableView) -> IndexPath?
}
let UITableViewSelectionDidChangeNotification: String
class UITableView : UIScrollView, Coding {
  init(frame: CGRect, style: UITableViewStyle)
  init?(coder aDecoder: Coder)
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
  func rectForRowAt(indexPath: IndexPath) -> CGRect
  func indexPathForRowAt(point: CGPoint) -> IndexPath?
  func indexPathFor(cell: UITableViewCell) -> IndexPath?
  func indexPathsForRowsIn(rect: CGRect) -> [IndexPath]?
  func cellForRowAt(indexPath: IndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [IndexPath]? { get }
  func headerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  func footerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  func scrollToRowAt(indexPath: IndexPath, at scrollPosition: UITableViewScrollPosition, animated: Bool)
  func scrollToNearestSelectedRowAt(scrollPosition: UITableViewScrollPosition, animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func reloadSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func moveSection(section: Int, toSection newSection: Int)
  func insertRowsAt(indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRowsAt(indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func reloadRowsAt(indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func moveRowAt(indexPath: IndexPath, to newIndexPath: IndexPath)
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  var allowsMultipleSelection: Bool
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: IndexPath? { get }
  var indexPathsForSelectedRows: [IndexPath]? { get }
  func selectRowAt(indexPath: IndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition)
  func deselectRowAt(indexPath: IndexPath, animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  var sectionIndexColor: UIColor?
  var sectionIndexBackgroundColor: UIColor?
  var sectionIndexTrackingBackgroundColor: UIColor?
  var cellLayoutMarginsFollowReadableWidth: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCellWithIdentifier(identifier: String) -> UITableViewCell?
  func dequeueReusableCellWithIdentifier(identifier: String, forIndexPath indexPath: IndexPath) -> UITableViewCell
  func dequeueReusableHeaderFooterViewWithIdentifier(identifier: String) -> UITableViewHeaderFooterView?
  func register(nib: UINib?, forCellReuseIdentifier identifier: String)
  func register(cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  func register(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  func register(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITableViewDataSource : ObjectProtocol {
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  optional func numberOfSectionsIn(tableView: UITableView) -> Int
  optional func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  optional func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  optional func tableView(tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  optional func tableView(tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  optional func tableView(tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
  optional func tableView(tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
extension IndexPath {
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
  case Checkmark
}
struct UITableViewCellStateMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DefaultMask: UITableViewCellStateMask { get }
  static var ShowingEditControlMask: UITableViewCellStateMask { get }
  static var ShowingDeleteConfirmationMask: UITableViewCellStateMask { get }
}
class UITableViewCell : UIView, Coding, UIGestureRecognizerDelegate {
  init(style: UITableViewCellStyle, reuseIdentifier: String?)
  init?(coder aDecoder: Coder)
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
  var isSelected: Bool
  var isHighlighted: Bool
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
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  var focusStyle: UITableViewCellFocusStyle
  func willTransitionToState(state: UITableViewCellStateMask)
  func didTransitionToState(state: UITableViewCellStateMask)
  convenience init(frame: CGRect)
  convenience init()
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
}
extension UITableViewCell {
}
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  var tableView: UITableView!
  var clearsSelectionOnViewWillAppear: Bool
  convenience init()
  func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  func tableView(tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  func tableView(tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  func tableView(tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  func tableView(tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  func tableView(tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  func tableView(tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  func tableView(tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  func tableView(tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  func tableView(tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  func tableView(tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  func tableView(tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  func tableView(tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle
  func tableView(tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  func tableView(tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  func tableView(tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool
  func tableView(tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?)
  func tableView(tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  func tableView(tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  func tableView(tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  func indexPathForPreferredFocusedViewIn(tableView: UITableView) -> IndexPath?
  func scrollViewDidScroll(scrollView: UIScrollView)
  func scrollViewDidZoom(scrollView: UIScrollView)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  func numberOfSectionsIn(tableView: UITableView) -> Int
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  func tableView(tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  func tableView(tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  func tableView(tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
  func tableView(tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
class UITableViewHeaderFooterView : UIView {
  init(reuseIdentifier: String?)
  init?(coder aDecoder: Coder)
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
  init(target: AnyObject?, action: Selector)
  convenience init()
}
class UITextChecker : Object {
  func rangeOfMisspelledWordIn(stringToCheck: String, range: NSRange, startingAt startingOffset: Int, wrap wrapFlag: Bool, language: String) -> NSRange
  func guessesForWordRange(range: NSRange, in string: String, language: String) -> [AnyObject]?
  func completionsForPartialWordRange(range: NSRange, in string: String?, language: String) -> [AnyObject]?
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
class UITextField : UIControl, UITextInput, Coding {
  var text: String?
  @NSCopying var attributedText: AttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextBorderStyle
  var defaultTextAttributes: [String : AnyObject]
  var placeholder: String?
  @NSCopying var attributedPlaceholder: AttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var isEditing: Bool { get }
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
  func drawTextIn(rect: CGRect)
  func drawPlaceholderIn(rect: CGRect)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  var clearsOnInsertion: Bool
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
  func textIn(range: UITextRange) -> String?
  func replace(range: UITextRange, withText text: String)
  @NSCopying var selectedTextRange: UITextRange?
  var markedTextRange: UITextRange? { get }
  var markedTextStyle: [Object : AnyObject]?
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  var beginningOfDocument: UITextPosition { get }
  var endOfDocument: UITextPosition { get }
  func textRangeFrom(fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  func positionFrom(position: UITextPosition, offset: Int) -> UITextPosition?
  func positionFrom(position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  func compare(position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  func offsetFrom(from: UITextPosition, to toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  var tokenizer: UITextInputTokenizer { get }
  func positionWithin(range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  func baseWritingDirectionFor(position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  func firstRectFor(range: UITextRange) -> CGRect
  func caretRectFor(position: UITextPosition) -> CGRect
  func selectionRectsFor(range: UITextRange) -> [AnyObject]
  func closestPositionTo(point: CGPoint) -> UITextPosition?
  func closestPositionTo(point: CGPoint, within range: UITextRange) -> UITextPosition?
  func characterRangeAt(point: CGPoint) -> UITextRange?
  func shouldChangeTextIn(range: UITextRange, replacementText text: String) -> Bool
  func textStylingAt(position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  func positionWithin(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  func characterOffsetOf(position: UITextPosition, within range: UITextRange) -> Int
  var textInputView: UIView { get }
  var selectionAffinity: UITextStorageDirection
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  func dictationRecordingDidEnd()
  func dictationRecognitionFailed()
  func insertDictationResultPlaceholder() -> AnyObject
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  func beginFloatingCursorAt(point: CGPoint)
  func updateFloatingCursorAt(point: CGPoint)
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
  var isSecureTextEntry: Bool
}
extension UIView {
  func endEditing(force: Bool) -> Bool
}
protocol UITextFieldDelegate : ObjectProtocol {
  optional func textFieldShouldBeginEditing(textField: UITextField) -> Bool
  optional func textFieldDidBeginEditing(textField: UITextField)
  optional func textFieldShouldEndEditing(textField: UITextField) -> Bool
  optional func textFieldDidEndEditing(textField: UITextField)
  optional func textField(textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
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
class UIDictationPhrase : Object {
  var text: String { get }
  var alternativeInterpretations: [String]? { get }
  init()
}
protocol UITextInput : UIKeyInput {
  func textIn(range: UITextRange) -> String?
  func replace(range: UITextRange, withText text: String)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  var markedTextRange: UITextRange? { get }
  var markedTextStyle: [Object : AnyObject]? { get set }
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  var beginningOfDocument: UITextPosition { get }
  var endOfDocument: UITextPosition { get }
  func textRangeFrom(fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  func positionFrom(position: UITextPosition, offset: Int) -> UITextPosition?
  func positionFrom(position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  func compare(position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  func offsetFrom(from: UITextPosition, to toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
  var tokenizer: UITextInputTokenizer { get }
  func positionWithin(range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  func baseWritingDirectionFor(position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  func firstRectFor(range: UITextRange) -> CGRect
  func caretRectFor(position: UITextPosition) -> CGRect
  func selectionRectsFor(range: UITextRange) -> [AnyObject]
  func closestPositionTo(point: CGPoint) -> UITextPosition?
  func closestPositionTo(point: CGPoint, within range: UITextRange) -> UITextPosition?
  func characterRangeAt(point: CGPoint) -> UITextRange?
  optional func shouldChangeTextIn(range: UITextRange, replacementText text: String) -> Bool
  optional func textStylingAt(position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  optional func positionWithin(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  optional func characterOffsetOf(position: UITextPosition, within range: UITextRange) -> Int
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  optional func insertDictationResult(dictationResult: [UIDictationPhrase])
  optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional func insertDictationResultPlaceholder() -> AnyObject
  optional func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  optional func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  optional func beginFloatingCursorAt(point: CGPoint)
  optional func updateFloatingCursorAt(point: CGPoint)
  optional func endFloatingCursor()
}
class UITextPosition : Object {
  init()
}
class UITextRange : Object {
  var isEmpty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
  init()
}
class UITextSelectionRect : Object {
  var rect: CGRect { get }
  var writingDirection: UITextWritingDirection { get }
  var containsStart: Bool { get }
  var containsEnd: Bool { get }
  var isVertical: Bool { get }
  init()
}
protocol UITextInputDelegate : ObjectProtocol {
  func selectionWillChange(textInput: UITextInput?)
  func selectionDidChange(textInput: UITextInput?)
  func textWillChange(textInput: UITextInput?)
  func textDidChange(textInput: UITextInput?)
}
protocol UITextInputTokenizer : ObjectProtocol {
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  func positionFrom(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
class UITextInputStringTokenizer : Object, UITextInputTokenizer {
  init(textInput: UIResponder)
  init()
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  func positionFrom(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
class UITextInputMode : Object, SecureCoding {
  var primaryLanguage: String? { get }
  class func activeInputModes() -> [String]
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
protocol UITextInputTraits : ObjectProtocol {
  optional var autocapitalizationType: UITextAutocapitalizationType { get set }
  optional var autocorrectionType: UITextAutocorrectionType { get set }
  optional var spellCheckingType: UITextSpellCheckingType { get set }
  optional var keyboardType: UIKeyboardType { get set }
  optional var keyboardAppearance: UIKeyboardAppearance { get set }
  optional var returnKeyType: UIReturnKeyType { get set }
  optional var enablesReturnKeyAutomatically: Bool { get set }
  optional var isSecureTextEntry: Bool { get set }
}
protocol UITextViewDelegate : ObjectProtocol, UIScrollViewDelegate {
  optional func textViewShouldBeginEditing(textView: UITextView) -> Bool
  optional func textViewShouldEndEditing(textView: UITextView) -> Bool
  optional func textViewDidBeginEditing(textView: UITextView)
  optional func textViewDidEndEditing(textView: UITextView)
  optional func textView(textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  optional func textViewDidChange(textView: UITextView)
  optional func textViewDidChangeSelection(textView: UITextView)
  optional func textView(textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool
  optional func textView(textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
}
class UITextView : UIScrollView, UITextInput {
  weak var delegate: @sil_weak UITextViewDelegate?
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  var isSelectable: Bool
  var allowsEditingTextAttributes: Bool
  @NSCopying var attributedText: AttributedString!
  var typingAttributes: [String : AnyObject]
  func scrollRangeToVisible(range: NSRange)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  var clearsOnInsertion: Bool
  init(frame: CGRect, textContainer: NSTextContainer?)
  init?(coder aDecoder: Coder)
  var textContainer: NSTextContainer { get }
  var textContainerInset: UIEdgeInsets
  var layoutManager: NSLayoutManager { get }
  var textStorage: NSTextStorage { get }
  var linkTextAttributes: [String : AnyObject]!
  convenience init(frame: CGRect)
  convenience init()
  func textIn(range: UITextRange) -> String?
  func replace(range: UITextRange, withText text: String)
  @NSCopying var selectedTextRange: UITextRange?
  var markedTextRange: UITextRange? { get }
  var markedTextStyle: [Object : AnyObject]?
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  var beginningOfDocument: UITextPosition { get }
  var endOfDocument: UITextPosition { get }
  func textRangeFrom(fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  func positionFrom(position: UITextPosition, offset: Int) -> UITextPosition?
  func positionFrom(position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  func compare(position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  func offsetFrom(from: UITextPosition, to toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  var tokenizer: UITextInputTokenizer { get }
  func positionWithin(range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  func baseWritingDirectionFor(position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  func firstRectFor(range: UITextRange) -> CGRect
  func caretRectFor(position: UITextPosition) -> CGRect
  func selectionRectsFor(range: UITextRange) -> [AnyObject]
  func closestPositionTo(point: CGPoint) -> UITextPosition?
  func closestPositionTo(point: CGPoint, within range: UITextRange) -> UITextPosition?
  func characterRangeAt(point: CGPoint) -> UITextRange?
  func shouldChangeTextIn(range: UITextRange, replacementText text: String) -> Bool
  func textStylingAt(position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  func positionWithin(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  func characterOffsetOf(position: UITextPosition, within range: UITextRange) -> Int
  var textInputView: UIView { get }
  var selectionAffinity: UITextStorageDirection
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  func dictationRecordingDidEnd()
  func dictationRecognitionFailed()
  func insertDictationResultPlaceholder() -> AnyObject
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  func beginFloatingCursorAt(point: CGPoint)
  func updateFloatingCursorAt(point: CGPoint)
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
  var isSecureTextEntry: Bool
}
let UITextViewTextDidBeginEditingNotification: String
let UITextViewTextDidChangeNotification: String
let UITextViewTextDidEndEditingNotification: String
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
class UITouch : Object {
  var timestamp: TimeInterval { get }
  var phase: UITouchPhase { get }
  var tapCount: Int { get }
  var type: UITouchType { get }
  var majorRadius: CGFloat { get }
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func locationIn(view: UIView?) -> CGPoint
  func previousLocationIn(view: UIView?) -> CGPoint
  func preciseLocationIn(view: UIView?) -> CGPoint
  func precisePreviousLocationIn(view: UIView?) -> CGPoint
  var force: CGFloat { get }
  var maximumPossibleForce: CGFloat { get }
  func azimuthAngleIn(view: UIView?) -> CGFloat
  func azimuthUnitVectorIn(view: UIView?) -> CGVector
  var altitudeAngle: CGFloat { get }
  var estimationUpdateIndex: Number? { get }
  var estimatedProperties: UITouchProperties { get }
  var estimatedPropertiesExpectingUpdates: UITouchProperties { get }
  init()
}
class UITraitCollection : Object, Copying, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  func containsTraitsIn(trait: UITraitCollection?) -> Bool
   init(traitsFrom traitCollections: [UITraitCollection])
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
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
protocol UITraitEnvironment : ObjectProtocol {
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
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
protocol UICoordinateSpace : ObjectProtocol {
  func convert(point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  func convert(point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  func convert(rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  func convert(rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  var bounds: CGRect { get }
}
class UIView : UIResponder, Coding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusEnvironment {
  class func layerClass() -> AnyClass
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  var isUserInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  func canBecomeFocused() -> Bool
  var isFocused: Bool { get }
  class func userInterfaceLayoutDirectionFor(attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  var semanticContentAttribute: UISemanticContentAttribute
  convenience init()
  func encodeWith(aCoder: Coder)
  class func appearance() -> Self
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  class func appearanceFor(trait: UITraitCollection) -> Self
  class func appearanceFor(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  var collisionBoundingPath: UIBezierPath { get }
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  func convert(point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  func convert(point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  func convert(rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  func convert(rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }
  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()
  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()
  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool
  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
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
  func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView?
  func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool
  func convert(point: CGPoint, to view: UIView?) -> CGPoint
  func convert(point: CGPoint, from view: UIView?) -> CGPoint
  func convert(rect: CGRect, to view: UIView?) -> CGRect
  func convert(rect: CGRect, from view: UIView?) -> CGRect
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
  func insertSubview(view: UIView, at index: Int)
  func exchangeSubviewAt(index1: Int, withSubviewAt index2: Int)
  func addSubview(view: UIView)
  func insertSubview(view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubviewToFront(view: UIView)
  func sendSubviewToBack(view: UIView)
  func didAddSubview(subview: UIView)
  func willRemoveSubview(subview: UIView)
  func willMoveToSuperview(newSuperview: UIView?)
  func didMoveToSuperview()
  func willMoveTo(newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendantOf(view: UIView) -> Bool
  func withTag(tag: Int) -> UIView?
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
  func draw(rect: CGRect)
  func setNeedsDisplay()
  func setNeedsDisplayIn(rect: CGRect)
  var clipsToBounds: Bool
  @NSCopying var backgroundColor: UIColor?
  var alpha: CGFloat
  var isOpaque: Bool
  var clearsContextBeforeDrawing: Bool
  var isHidden: Bool
  var contentMode: UIViewContentMode
  var mask: UIView?
  var tintColor: UIColor!
  var tintAdjustmentMode: UIViewTintAdjustmentMode
  func tintColorDidChange()
}
extension UIView {
  class func beginAnimations(animationID: String?, context: UnsafeMutablePointer<Void>)
  class func commitAnimations()
  class func setAnimationDelegate(delegate: AnyObject?)
  class func setAnimationWillStart(selector: Selector)
  class func setAnimationDidStop(selector: Selector)
  class func setAnimationDuration(duration: TimeInterval)
  class func setAnimationDelay(delay: TimeInterval)
  class func setAnimationStart(startDate: Date)
  class func setAnimationCurve(curve: UIViewAnimationCurve)
  class func setAnimationRepeatCount(repeatCount: Float)
  class func setAnimationRepeatAutoreverses(repeatAutoreverses: Bool)
  class func setAnimationBeginsFromCurrentState(fromCurrentState: Bool)
  class func setAnimationTransition(transition: UIViewAnimationTransition, forView view: UIView, cache: Bool)
  class func setAnimationsEnabled(enabled: Bool)
  class func areAnimationsEnabled() -> Bool
  class func performWithoutAnimation(actionsWithoutAnimation: () -> Void)
  class func inheritedAnimationDuration() -> TimeInterval
}
extension UIView {
  class func animateWithDuration(duration: TimeInterval, delay: TimeInterval, options: UIViewAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  class func animateWithDuration(duration: TimeInterval, animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  class func animateWithDuration(duration: TimeInterval, animations: () -> Void)
  class func animateWithDuration(duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  class func transitionWith(view: UIView, duration: TimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  class func transitionFrom(fromView: UIView, to toView: UIView, duration: TimeInterval, options: UIViewAnimationOptions = [], completion: ((Bool) -> Void)? = nil)
  class func perform(animation: UISystemAnimation, on views: [UIView], options: UIViewAnimationOptions = [], animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
}
extension UIView {
  class func animateKeyframesWithDuration(duration: TimeInterval, delay: TimeInterval, options: UIViewKeyframeAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
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
  var forFirstBaselineLayout: UIView { get }
  var forLastBaselineLayout: UIView { get }
  func intrinsicContentSize() -> CGSize
  func invalidateIntrinsicContentSize()
  func contentHuggingPriorityFor(axis: UILayoutConstraintAxis) -> UILayoutPriority
  func setContentHuggingPriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
  func contentCompressionResistancePriorityFor(axis: UILayoutConstraintAxis) -> UILayoutPriority
  func setContentCompressionResistancePriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
}
let UIViewNoIntrinsicMetric: CGFloat
let UILayoutFittingCompressedSize: CGSize
let UILayoutFittingExpandedSize: CGSize
extension UIView {
  func systemLayoutSizeFitting(targetSize: CGSize) -> CGSize
  func systemLayoutSizeFitting(targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
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
  func constraintsAffectingLayoutFor(axis: UILayoutConstraintAxis) -> [NSLayoutConstraint]
  func hasAmbiguousLayout() -> Bool
  func exerciseAmbiguityInLayout()
}
extension UIView {
  var restorationIdentifier: String?
  func encodeRestorableStateWith(coder: Coder)
  func decodeRestorableStateWith(coder: Coder)
}
extension UIView {
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
  func resizableSnapshotViewFrom(rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView
  func drawHierarchyIn(rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CoverVertical
  case CrossDissolve
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FullScreen
  case CurrentContext
  case Custom
  case OverFullScreen
  case OverCurrentContext
  case None
}
protocol UIContentContainer : ObjectProtocol {
  var preferredContentSize: CGSize { get }
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  func viewWillTransitionTo(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  func willTransitionTo(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
}
let UIViewControllerShowDetailTargetDidChangeNotification: String
class UIViewController : UIResponder, Coding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  var view: UIView!
  func loadView()
  func loadViewIfNeeded()
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  func isViewLoaded() -> Bool
  var nibName: String? { get }
  var nibBundle: Bundle? { get }
  var storyboard: UIStoryboard? { get }
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  func prepareFor(segue: UIStoryboardSegue, sender: AnyObject?)
  func canPerformUnwindSegueAction(action: Selector, from fromViewController: UIViewController, withSender sender: AnyObject) -> Bool
  func allowedChildViewControllersForUnwindingFrom(source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  func childViewControllerContaining(source: UIStoryboardUnwindSegueSource) -> UIViewController?
  func forUnwindSegueAction(action: Selector, from fromViewController: UIViewController, withSender sender: AnyObject?) -> UIViewController?
  func unwindFor(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  func segueForUnwindingTo(toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(animated: Bool)
  func viewDidAppear(animated: Bool)
  func viewWillDisappear(animated: Bool)
  func viewDidDisappear(animated: Bool)
  func viewWillLayoutSubviews()
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parent: @sil_weak UIViewController? { get }
  var presented: UIViewController? { get }
  var presenting: UIViewController? { get }
  var definesPresentationContext: Bool
  var providesPresentationContextTransitionStyle: Bool
  func isBeingPresented() -> Bool
  func isBeingDismissed() -> Bool
  func isMovingToParentViewController() -> Bool
  func isMovingFromParentViewController() -> Bool
  func present(viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
  func dismissAnimated(flag: Bool, completion: (() -> Void)? = nil)
  var modalTransitionStyle: UIModalTransitionStyle
  var modalPresentationStyle: UIModalPresentationStyle
  func disablesAutomaticKeyboardDismissal() -> Bool
  var edgesForExtendedLayout: UIRectEdge
  var extendedLayoutIncludesOpaqueBars: Bool
  var automaticallyAdjustsScrollViewInsets: Bool
  var preferredContentSize: CGSize
  func targetViewControllerForAction(action: Selector, sender: AnyObject?) -> UIViewController?
  func show(vc: UIViewController, sender: AnyObject?)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  convenience init()
  func encodeWith(aCoder: Coder)
  var traitCollection: UITraitCollection { get }
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  func viewWillTransitionTo(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  func willTransitionTo(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }
  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()
  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()
  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool
  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
extension UIViewController {
}
extension UIViewController {
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  func editButtonItem() -> UIBarButtonItem
}
extension UIViewController {
}
let UIViewControllerHierarchyInconsistencyException: String
extension UIViewController {
  var childViewControllers: [UIViewController] { get }
  func addChildViewController(childController: UIViewController)
  func removeFromParentViewController()
  func transitionFrom(fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  func beginAppearanceTransition(isAppearing: Bool, animated: Bool)
  func endAppearanceTransition()
  func setOverrideTraitCollection(collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  func overrideTraitCollectionForChildViewController(childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  func shouldAutomaticallyForwardAppearanceMethods() -> Bool
  func willMoveToParentViewController(parent: UIViewController?)
  func didMoveToParentViewController(parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  var restorationIdentifier: String?
  var restorationClass: AnyObject.Type?
  func encodeRestorableStateWith(coder: Coder)
  func decodeRestorableStateWith(coder: Coder)
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
extension UIViewController : ExtensionRequestHandling {
  var extensionContext: ExtensionContext? { get }
  func beginRequestWith(context: ExtensionContext)
}
extension UIViewController {
  var presentationController: UIPresentationController? { get }
  var popoverPresentationController: UIPopoverPresentationController? { get }
}
protocol UIViewControllerPreviewing : ObjectProtocol {
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  var delegate: UIViewControllerPreviewingDelegate { get }
  var sourceView: UIView { get }
  var sourceRect: CGRect { get set }
}
protocol UIViewControllerPreviewingDelegate : ObjectProtocol {
  func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  func previewingContext(previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController)
}
extension UIViewController {
  func registerForPreviewingWith(delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  func unregisterForPreviewingWithContext(previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  func previewActionItems() -> [UIPreviewActionItem]
}
protocol UIPreviewActionItem : ObjectProtocol {
  var title: String { get }
}
enum UIPreviewActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Selected
  case Destructive
}
class UIPreviewAction : Object, Copying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewActionStyle, handler: (UIPreviewAction, UIViewController) -> Void)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  var title: String { get }
}
class UIPreviewActionGroup : Object, Copying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewActionStyle, actions: [UIPreviewAction])
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  var title: String { get }
}
protocol UIViewControllerTransitionCoordinatorContext : ObjectProtocol {
  func isAnimated() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func initiallyInteractive() -> Bool
  func isInteractive() -> Bool
  func isCancelled() -> Bool
  func transitionDuration() -> TimeInterval
  func percentComplete() -> CGFloat
  func completionVelocity() -> CGFloat
  func completionCurve() -> UIViewAnimationCurve
  func viewControllerForKey(key: String) -> UIViewController?
  func viewForKey(key: String) -> UIView?
  func containerView() -> UIView
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animateAlongsideTransition(animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  func animateAlongsideTransitionIn(view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  func notifyWhenInteractionEndsUsing(handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
let UITransitionContextFromViewControllerKey: String
let UITransitionContextToViewControllerKey: String
let UITransitionContextFromViewKey: String
let UITransitionContextToViewKey: String
protocol UIViewControllerContextTransitioning : ObjectProtocol {
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
  func initialFrameFor(vc: UIViewController) -> CGRect
  func finalFrameFor(vc: UIViewController) -> CGRect
}
protocol UIViewControllerAnimatedTransitioning : ObjectProtocol {
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func animationEnded(transitionCompleted: Bool)
}
protocol UIViewControllerInteractiveTransitioning : ObjectProtocol {
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func completionSpeed() -> CGFloat
  optional func completionCurve() -> UIViewAnimationCurve
}
protocol UIViewControllerTransitioningDelegate : ObjectProtocol {
  optional func animationControllerForPresentedController(presented: UIViewController, presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func presentationControllerForPresentedViewController(presented: UIViewController, presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
class UIPercentDrivenInteractiveTransition : Object, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func updateInteractiveTransition(percentComplete: CGFloat)
  func cancel()
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
class UIVisualEffect : Object, Copying, SecureCoding {
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class UIBlurEffect : UIVisualEffect {
   init(style: UIBlurEffectStyle)
  init()
  init?(coder aDecoder: Coder)
}
class UIVibrancyEffect : UIVisualEffect {
   init(forBlurEffect blurEffect: UIBlurEffect)
  init()
  init?(coder aDecoder: Coder)
}
class UIVisualEffectView : UIView, SecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect: UIVisualEffect?)
  init?(coder aDecoder: Coder)
  convenience init(frame: CGRect)
  convenience init()
  class func supportsSecureCoding() -> Bool
}
typealias UIWindowLevel = CGFloat
class UIWindow : UIView {
  var screen: UIScreen
  var windowLevel: UIWindowLevel
  var isKeyWindow: Bool { get }
  func becomeKeyWindow()
  func resignKeyWindow()
  func makeKeyWindow()
  func makeKeyAndVisible()
  var rootViewController: UIViewController?
  func send(event: UIEvent)
  func convert(point: CGPoint, to window: UIWindow?) -> CGPoint
  func convert(point: CGPoint, from window: UIWindow?) -> CGPoint
  func convert(rect: CGRect, to window: UIWindow?) -> CGRect
  func convert(rect: CGRect, from window: UIWindow?) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
let UIWindowLevelNormal: UIWindowLevel
let UIWindowLevelAlert: UIWindowLevel
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
