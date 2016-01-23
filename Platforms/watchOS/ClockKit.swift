
class CLKComplication : Object, Copying {
  var family: CLKComplicationFamily { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol CLKComplicationDataSource : ObjectProtocol {
  func getSupportedTimeTravelDirectionsFor(complication: CLKComplication, withHandler handler: (CLKComplicationTimeTravelDirections) -> Void)
  optional func getTimelineStartDateFor(complication: CLKComplication, withHandler handler: (Date?) -> Void)
  optional func getTimelineEndDateFor(complication: CLKComplication, withHandler handler: (Date?) -> Void)
  optional func getPrivacyBehaviorFor(complication: CLKComplication, withHandler handler: (CLKComplicationPrivacyBehavior) -> Void)
  optional func getTimelineAnimationBehaviorFor(complication: CLKComplication, withHandler handler: (CLKComplicationTimelineAnimationBehavior) -> Void)
  func getCurrentTimelineEntryFor(complication: CLKComplication, withHandler handler: (CLKComplicationTimelineEntry?) -> Void)
  optional func getTimelineEntriesFor(complication: CLKComplication, before date: Date, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getTimelineEntriesFor(complication: CLKComplication, after date: Date, limit: Int, withHandler handler: ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getNextRequestedUpdateDateWithHandler(handler: (Date?) -> Void)
  optional func requestedUpdateDidBegin()
  optional func requestedUpdateBudgetExhausted()
  func getPlaceholderTemplateFor(complication: CLKComplication, withHandler handler: (CLKComplicationTemplate?) -> Void)
}
let CLKComplicationServerActiveComplicationsDidChangeNotification: String
class CLKComplicationServer : Object {
  class func sharedInstance() -> Self!
  var activeComplications: [CLKComplication]! { get }
  var earliestTimeTravelDate: Date! { get }
  var latestTimeTravelDate: Date! { get }
  func reloadTimelineFor(complication: CLKComplication!)
  func extendTimelineFor(complication: CLKComplication!)
  init()
}
class CLKComplicationTemplate : Object, Copying {
  @NSCopying var tintColor: UIColor?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class CLKComplicationTemplateModularSmallSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  init()
}
class CLKComplicationTemplateModularSmallSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init()
}
class CLKComplicationTemplateModularSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateModularSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateModularSmallStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  init()
}
class CLKComplicationTemplateModularSmallStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  init()
}
class CLKComplicationTemplateModularSmallColumnsText : CLKComplicationTemplate {
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  var highlightColumn2: Bool
  init()
}
class CLKComplicationTemplateModularLargeStandardBody : CLKComplicationTemplate {
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var body1TextProvider: CLKTextProvider
  @NSCopying var body2TextProvider: CLKTextProvider?
  @NSCopying var headerImageProvider: CLKImageProvider?
  init()
}
class CLKComplicationTemplateModularLargeTallBody : CLKComplicationTemplate {
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var bodyTextProvider: CLKTextProvider
  init()
}
class CLKComplicationTemplateModularLargeTable : CLKComplicationTemplate {
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  @NSCopying var headerImageProvider: CLKImageProvider?
  var column2Alignment: CLKComplicationColumnAlignment
  init()
}
class CLKComplicationTemplateModularLargeColumns : CLKComplicationTemplate {
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  @NSCopying var row3Column1TextProvider: CLKTextProvider
  @NSCopying var row3Column2TextProvider: CLKTextProvider
  @NSCopying var row1ImageProvider: CLKImageProvider?
  @NSCopying var row2ImageProvider: CLKImageProvider?
  @NSCopying var row3ImageProvider: CLKImageProvider?
  var column2Alignment: CLKComplicationColumnAlignment
  init()
}
class CLKComplicationTemplateUtilitarianSmallFlat : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKImageProvider?
  init()
}
class CLKComplicationTemplateUtilitarianSmallSquare : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init()
}
class CLKComplicationTemplateUtilitarianSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateUtilitarianSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateUtilitarianLargeFlat : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKImageProvider?
  init()
}
class CLKComplicationTemplateCircularSmallSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  init()
}
class CLKComplicationTemplateCircularSmallSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init()
}
class CLKComplicationTemplateCircularSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateCircularSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateCircularSmallStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init()
}
class CLKComplicationTemplateCircularSmallStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init()
}
class CLKComplicationTimelineEntry : Object {
  convenience init(date: Date, complicationTemplate: CLKComplicationTemplate)
  convenience init(date: Date, complicationTemplate: CLKComplicationTemplate, timelineAnimationGroup: String?)
  var date: Date
  @NSCopying var complicationTemplate: CLKComplicationTemplate
  var timelineAnimationGroup: String?
  init()
}
enum CLKComplicationFamily : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ModularSmall
  case ModularLarge
  case UtilitarianSmall
  case UtilitarianLarge
  case CircularSmall
}
struct CLKComplicationTimeTravelDirections : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: CLKComplicationTimeTravelDirections { get }
  static var Forward: CLKComplicationTimeTravelDirections { get }
  static var Backward: CLKComplicationTimeTravelDirections { get }
}
enum CLKComplicationPrivacyBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ShowOnLockScreen
  case HideOnLockScreen
}
enum CLKComplicationTimelineAnimationBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Never
  case Grouped
  case Always
}
enum CLKComplicationColumnAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Leading
  case Trailing
  static var Left: CLKComplicationColumnAlignment { get }
  static var Right: CLKComplicationColumnAlignment { get }
}
enum CLKComplicationRingStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Closed
  case Open
}
let CLKLaunchedTimelineEntryDateKey: String
class CLKImageProvider : Object, Copying {
  convenience init(onePieceImage: UIImage)
  convenience init(onePieceImage: UIImage, twoPieceImageBackground: UIImage?, twoPieceImageForeground: UIImage?)
  /// Image to be used in single-color contexts, e.g. single color faces.
  var onePieceImage: UIImage
  /// Tint color, honored in multi-color contexts.
  var tintColor: UIColor?
  /// Background image to be used in two-color contexts, e.g. multicolor modular faces.
  /// If supplied, a twoPieceImageForeground will be required as well.
  var twoPieceImageBackground: UIImage?
  /// Foreground image to be used in two-color contexts, e.g. multicolor modular faces.
  /// Will be tinted white and overlayed on the twoPieceImageBackground.
  /// If supplied, a twoPieceImageBackground will be required as well.
  var twoPieceImageForeground: UIImage?
  /// Text for accessibility.
  var accessibilityLabel: String?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class CLKTextProvider : Object, Copying {
  var tintColor: UIColor
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class CLKSimpleTextProvider : CLKTextProvider {
  convenience init(text: String)
  convenience init(text: String, shortText: String?)
  convenience init(text: String, shortText: String?, accessibilityLabel: String?)
  var text: String
  var shortText: String?
  var accessibilityLabel: String?
  init()
}
class CLKDateTextProvider : CLKTextProvider {
  convenience init(date: Date, units calendarUnits: CalendarUnit)
  convenience init(date: Date, units calendarUnits: CalendarUnit, timeZone: TimeZone?)
  var date: Date
  var calendarUnits: CalendarUnit
  var timeZone: TimeZone?
  init()
}
class CLKTimeTextProvider : CLKTextProvider {
  convenience init(date: Date)
  convenience init(date: Date, timeZone: TimeZone?)
  var date: Date
  var timeZone: TimeZone?
  init()
}
class CLKTimeIntervalTextProvider : CLKTextProvider {
  convenience init(start startDate: Date, end endDate: Date)
  convenience init(start startDate: Date, end endDate: Date, timeZone: TimeZone?)
  var startDate: Date
  var endDate: Date
  var timeZone: TimeZone?
  init()
}
enum CLKRelativeDateStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case Offset
  case Timer
}
class CLKRelativeDateTextProvider : CLKTextProvider {
  convenience init(date: Date, style: CLKRelativeDateStyle, units calendarUnits: CalendarUnit)
  var date: Date
  var relativeDateStyle: CLKRelativeDateStyle
  var calendarUnits: CalendarUnit
  init()
}
