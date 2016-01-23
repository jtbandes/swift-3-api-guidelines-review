
var fileNoSuchFileError: Int { get }
var fileLockingError: Int { get }
var fileReadUnknownError: Int { get }
var fileReadNoPermissionError: Int { get }
var fileReadInvalidFileNameError: Int { get }
var fileReadCorruptFileError: Int { get }
var fileReadNoSuchFileError: Int { get }
var fileReadInapplicableStringEncodingError: Int { get }
var fileReadUnsupportedSchemeError: Int { get }
var fileReadTooLargeError: Int { get }
var fileReadUnknownStringEncodingError: Int { get }
var fileWriteUnknownError: Int { get }
var fileWriteNoPermissionError: Int { get }
var fileWriteInvalidFileNameError: Int { get }
var fileWriteFileExistsError: Int { get }
var fileWriteInapplicableStringEncodingError: Int { get }
var fileWriteUnsupportedSchemeError: Int { get }
var fileWriteOutOfSpaceError: Int { get }
var fileWriteVolumeReadOnlyError: Int { get }
var keyValueValidationError: Int { get }
var formattingError: Int { get }
var userCancelledError: Int { get }
var featureUnsupportedError: Int { get }
var executableNotLoadableError: Int { get }
var executableArchitectureMismatchError: Int { get }
var executableRuntimeMismatchError: Int { get }
var executableLoadError: Int { get }
var executableLinkError: Int { get }
var fileErrorMinimum: Int { get }
var fileErrorMaximum: Int { get }
var validationErrorMinimum: Int { get }
var validationErrorMaximum: Int { get }
var executableErrorMinimum: Int { get }
var executableErrorMaximum: Int { get }
var formattingErrorMinimum: Int { get }
var formattingErrorMaximum: Int { get }
var propertyListReadCorruptError: Int { get }
var propertyListReadUnknownVersionError: Int { get }
var propertyListReadStreamError: Int { get }
var propertyListWriteStreamError: Int { get }
var propertyListWriteInvalidError: Int { get }
var propertyListErrorMinimum: Int { get }
var propertyListErrorMaximum: Int { get }
var XPCConnectionInterrupted: Int { get }
var XPCConnectionInvalid: Int { get }
var XPCConnectionReplyInvalid: Int { get }
var XPCConnectionErrorMinimum: Int { get }
var XPCConnectionErrorMaximum: Int { get }
var ubiquitousFileUnavailableError: Int { get }
var ubiquitousFileNotUploadedDueToQuotaError: Int { get }
var ubiquitousFileUbiquityServerNotAvailable: Int { get }
var ubiquitousFileErrorMinimum: Int { get }
var ubiquitousFileErrorMaximum: Int { get }
var userActivityHandoffFailedError: Int { get }
var userActivityConnectionUnavailableError: Int { get }
var userActivityRemoteApplicationTimedOutError: Int { get }
var userActivityHandoffUserInfoTooLargeError: Int { get }
var userActivityErrorMinimum: Int { get }
var userActivityErrorMaximum: Int { get }
var coderReadCorruptError: Int { get }
var coderValueNotFoundError: Int { get }
var coderErrorMinimum: Int { get }
var coderErrorMaximum: Int { get }
var bundleErrorMinimum: Int { get }
var bundleErrorMaximum: Int { get }
var bundleOnDemandResourceOutOfSpaceError: Int { get }
var bundleOnDemandResourceExceededMaximumSizeError: Int { get }
var bundleOnDemandResourceInvalidTagError: Int { get }
class NSArray : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectAt(index: Int) -> AnyObject
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
extension NSArray : ArrayLiteralConvertible {
  /// Create an instance initialized with `elements`.
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension NSArray : SequenceType {
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  final func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension NSArray {
  convenience init(objects elements: AnyObject...)
}
extension NSArray {
  /// Initializes a newly allocated array by placing in it the objects
  /// contained in a given array.
  ///
  /// - Returns: An array initialized to contain the objects in
  ///    `anArray``. The returned object might be different than the
  ///    original receiver.
  ///
  /// Discussion: After an immutable array has been initialized in
  /// this way, it cannot be modified.
  @objc(_swiftInitWithArray_NSArray:) convenience init(array anArray: NSArray)
}
extension NSArray : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSArray {
  func adding(anObject: AnyObject) -> [AnyObject]
  func addingObjectsFrom(otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoinedBy(separator: String) -> String
  func contains(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommonWith(otherArray: [AnyObject]) -> AnyObject?
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func indexOf(anObject: AnyObject) -> Int
  func indexOf(anObject: AnyObject, in range: NSRange) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject, in range: NSRange) -> Int
  func isEqualTo(otherArray: [AnyObject]) -> Bool
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> Enumerator
  func reverseObjectEnumerator() -> Enumerator
  @NSCopying var sortedArrayHint: Data { get }
  func sortedArrayUsing(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArrayUsing(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>, hint: Data?) -> [AnyObject]
  func sortedArrayUsing(comparator: Selector) -> [AnyObject]
  func subarrayWith(range: NSRange) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func objectsAt(indexes: IndexSet) -> [AnyObject]
  subscript (idx: Int) -> AnyObject { get }
  func enumerateObjectsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjects(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func sortedArrayUsingComparator(cmptr: Comparator) -> [AnyObject]
  func sortedArray(options opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  func indexOf(obj: AnyObject, inSortedRange r: NSRange, options opts: BinarySearchingOptions = [], usingComparator cmp: Comparator) -> Int
}
struct BinarySearchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FirstEqual: BinarySearchingOptions { get }
  static var LastEqual: BinarySearchingOptions { get }
  static var InsertionIndex: BinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
extension NSArray {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
class MutableArray : NSArray {
  func add(anObject: AnyObject)
  func insert(anObject: AnyObject, at index: Int)
  func removeLastObject()
  func removeObjectAt(index: Int)
  func replaceObjectAt(index: Int, withObject anObject: AnyObject)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
}
extension MutableArray {
  func addObjectsFrom(otherArray: [AnyObject])
  func exchangeObjectAt(idx1: Int, withObjectAt idx2: Int)
  func removeAllObjects()
  func remove(anObject: AnyObject, in range: NSRange)
  func remove(anObject: AnyObject)
  func removeObjectIdenticalTo(anObject: AnyObject, in range: NSRange)
  func removeObjectIdenticalTo(anObject: AnyObject)
  func removeObjectsFromIndices(indices: UnsafeMutablePointer<Int>, numIndices cnt: Int)
  func removeObjectsIn(otherArray: [AnyObject])
  func removeObjectsIn(range: NSRange)
  func replaceObjectsIn(range: NSRange, withObjectsFrom otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjectsIn(range: NSRange, withObjectsFrom otherArray: [AnyObject])
  func setArray(otherArray: [AnyObject])
  func sortUsing(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  func sortUsing(comparator: Selector)
  func insert(objects: [AnyObject], at indexes: IndexSet)
  func removeObjectsAt(indexes: IndexSet)
  func replaceObjectsAt(indexes: IndexSet, withObjects objects: [AnyObject])
  subscript (idx: Int) -> AnyObject
  func sortUsingComparator(cmptr: Comparator)
  func sort(options opts: SortOptions = [], usingComparator cmptr: Comparator)
}
extension MutableArray {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
class AttributedString : Object, Copying, MutableCopying, SecureCoding {
  var string: String { get }
  func attributesAt(location: Int, effectiveRange range: RangePointer) -> [String : AnyObject]
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension AttributedString {
  var length: Int { get }
  func attribute(attrName: String, at location: Int, effectiveRange range: RangePointer) -> AnyObject?
  func attributedSubstringFrom(range: NSRange) -> AttributedString
  func attributesAt(location: Int, longestEffectiveRange range: RangePointer, in rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, at location: Int, longestEffectiveRange range: RangePointer, in rangeLimit: NSRange) -> AnyObject?
  func isEqualTo(other: AttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
  func enumerateAttributesIn(enumerationRange: NSRange, options opts: AttributedStringEnumerationOptions = [], usingBlock block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateAttribute(attrName: String, in enumerationRange: NSRange, options opts: AttributedStringEnumerationOptions = [], usingBlock block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct AttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Reverse: AttributedStringEnumerationOptions { get }
  static var LongestEffectiveRangeNotRequired: AttributedStringEnumerationOptions { get }
}
class MutableAttributedString : AttributedString {
  func replaceCharactersIn(range: NSRange, withString str: String)
  func setAttributes(attrs: [String : AnyObject]? = [:], range: NSRange)
  init()
  init?(coder aDecoder: Coder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
}
extension MutableAttributedString {
  var mutableString: MutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject] = [:], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharactersIn(range: NSRange, withAttributedString attrString: AttributedString)
  func insert(attrString: AttributedString, at loc: Int)
  func append(attrString: AttributedString)
  func deleteCharactersIn(range: NSRange)
  func setAttributedString(attrString: AttributedString)
  func beginEditing()
  func endEditing()
}
class Bundle : Object {
  class func main() -> Bundle
  init?(path: String)
  convenience init?(url: URL)
   init(forClass aClass: AnyClass)
   init?(identifier: String)
  class func allBundles() -> [Bundle]
  class func allFrameworks() -> [Bundle]
  func load() -> Bool
  var isLoaded: Bool { get }
  func unload() -> Bool
  func preflight() throws
  func loadAndReturnError() throws
  @NSCopying var bundleURL: URL { get }
  @NSCopying var resourceURL: URL? { get }
  @NSCopying var executableURL: URL? { get }
  func urlForAuxiliaryExecutable(executableName: String) -> URL?
  @NSCopying var privateFrameworksURL: URL? { get }
  @NSCopying var sharedFrameworksURL: URL? { get }
  @NSCopying var sharedSupportURL: URL? { get }
  @NSCopying var builtInPlugInsURL: URL? { get }
  @NSCopying var appStoreReceiptURL: URL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func pathForAuxiliaryExecutable(executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  class func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: URL) -> URL?
  class func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: URL) -> [URL]?
  func urlForResource(name: String?, withExtension ext: String?) -> URL?
  func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?) -> URL?
  func urlForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> URL?
  func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?) -> [URL]?
  func urLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [URL]?
  class func pathForResource(name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func pathsForResourcesOfType(ext: String?, inDirectory bundlePath: String) -> [String]
  func pathForResource(name: String?, ofType ext: String?) -> String?
  func pathForResource(name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func pathForResource(name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func pathsForResourcesOfType(ext: String?, inDirectory subpath: String?) -> [String]
  func pathsForResourcesOfType(ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedStringForKey(key: String, value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : AnyObject]? { get }
  var localizedInfoDictionary: [String : AnyObject]? { get }
  func objectForInfoDictionaryKey(key: String) -> AnyObject?
  func classNamed(className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizationsFrom(localizationsArray: [String]) -> [String]
  class func preferredLocalizationsFrom(localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  var executableArchitectures: [Number]? { get }
  convenience init()
}
var bundleExecutableArchitectureI386: Int { get }
var bundleExecutableArchitecturePPC: Int { get }
var bundleExecutableArchitectureX86_64: Int { get }
var bundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  func variantFittingPresentationWidth(width: Int) -> String
}
let bundleDidLoadNotification: String
let loadedClasses: String
class BundleResourceRequest : Object, ProgressReporting {
  convenience init(tags: Set<String>)
  init(tags: Set<String>, bundle: Bundle)
  var loadingPriority: Double
  var tags: Set<String> { get }
  var bundle: Bundle { get }
  func beginAccessingResourcesWithCompletionHandler(completionHandler: (Error?) -> Void)
  func conditionallyBeginAccessingResourcesWithCompletionHandler(completionHandler: (Bool) -> Void)
  func endAccessingResources()
  var progress: Progress { get }
}
extension Bundle {
  func setPreservationPriority(priority: Double, forTags tags: Set<String>)
  func preservationPriorityForTag(tag: String) -> Double
}
let bundleResourceRequestLowDiskSpaceNotification: String
let bundleResourceRequestLoadingPriorityUrgent: Double
struct ByteCountFormatterUnits : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UseDefault: ByteCountFormatterUnits { get }
  static var UseBytes: ByteCountFormatterUnits { get }
  static var UseKB: ByteCountFormatterUnits { get }
  static var UseMB: ByteCountFormatterUnits { get }
  static var UseGB: ByteCountFormatterUnits { get }
  static var UseTB: ByteCountFormatterUnits { get }
  static var UsePB: ByteCountFormatterUnits { get }
  static var UseEB: ByteCountFormatterUnits { get }
  static var UseZB: ByteCountFormatterUnits { get }
  static var UseYBOrHigher: ByteCountFormatterUnits { get }
  static var UseAll: ByteCountFormatterUnits { get }
}
enum ByteCountFormatterCountStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case File
  case Memory
  case Decimal
  case Binary
}
class ByteCountFormatter : Formatter {
  class func stringFromByteCount(byteCount: Int64, countStyle: ByteCountFormatterCountStyle) -> String
  func stringFromByteCount(byteCount: Int64) -> String
  var allowedUnits: ByteCountFormatterUnits
  var countStyle: ByteCountFormatterCountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var isAdaptive: Bool
  var zeroPadsFractionDigits: Bool
  var formattingContext: FormattingContext
  init()
  init?(coder aDecoder: Coder)
}
var _UnknownByteOrder: Int { get }
var _LittleEndian: Int { get }
var _BigEndian: Int { get }
func hostByteOrder() -> Int
func swapShort(inv: UInt16) -> UInt16
func swapInt(inv: UInt32) -> UInt32
func swapLong(inv: UInt) -> UInt
func swapLongLong(inv: UInt64) -> UInt64
func swapBigShortToHost(x: UInt16) -> UInt16
func swapBigIntToHost(x: UInt32) -> UInt32
func swapBigLongToHost(x: UInt) -> UInt
func swapBigLongLongToHost(x: UInt64) -> UInt64
func swapHostShortToBig(x: UInt16) -> UInt16
func swapHostIntToBig(x: UInt32) -> UInt32
func swapHostLongToBig(x: UInt) -> UInt
func swapHostLongLongToBig(x: UInt64) -> UInt64
func swapLittleShortToHost(x: UInt16) -> UInt16
func swapLittleIntToHost(x: UInt32) -> UInt32
func swapLittleLongToHost(x: UInt) -> UInt
func swapLittleLongLongToHost(x: UInt64) -> UInt64
func swapHostShortToLittle(x: UInt16) -> UInt16
func swapHostIntToLittle(x: UInt32) -> UInt32
func swapHostLongToLittle(x: UInt) -> UInt
func swapHostLongLongToLittle(x: UInt64) -> UInt64
struct SwappedFloat {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct SwappedDouble {
  var v: UInt64
  init()
  init(v: UInt64)
}
func convertHostFloatToSwapped(x: Float) -> SwappedFloat
func convertSwappedFloatToHost(x: SwappedFloat) -> Float
func convertHostDoubleToSwapped(x: Double) -> SwappedDouble
func convertSwappedDoubleToHost(x: SwappedDouble) -> Double
func swapFloat(x: SwappedFloat) -> SwappedFloat
func swapDouble(x: SwappedDouble) -> SwappedDouble
func swapBigDoubleToHost(x: SwappedDouble) -> Double
func swapBigFloatToHost(x: SwappedFloat) -> Float
func swapHostDoubleToBig(x: Double) -> SwappedDouble
func swapHostFloatToBig(x: Float) -> SwappedFloat
func swapLittleDoubleToHost(x: SwappedDouble) -> Double
func swapLittleFloatToHost(x: SwappedFloat) -> Float
func swapHostDoubleToLittle(x: Double) -> SwappedDouble
func swapHostFloatToLittle(x: Float) -> SwappedFloat
class Cache : Object {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged CacheDelegate?
  func objectFor(key: AnyObject) -> AnyObject?
  func setObject(obj: AnyObject, forKey key: AnyObject)
  func setObject(obj: AnyObject, forKey key: AnyObject, cost g: Int)
  func removeObjectFor(key: AnyObject)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
  init()
}
protocol CacheDelegate : ObjectProtocol {
  optional func cache(cache: Cache, willEvictObject obj: AnyObject)
}
let calendarIdentifierGregorian: String
let calendarIdentifierBuddhist: String
let calendarIdentifierChinese: String
let calendarIdentifierCoptic: String
let calendarIdentifierEthiopicAmeteMihret: String
let calendarIdentifierEthiopicAmeteAlem: String
let calendarIdentifierHebrew: String
let calendarIdentifierISO8601: String
let calendarIdentifierIndian: String
let calendarIdentifierIslamic: String
let calendarIdentifierIslamicCivil: String
let calendarIdentifierJapanese: String
let calendarIdentifierPersian: String
let calendarIdentifierRepublicOfChina: String
let calendarIdentifierIslamicTabular: String
let calendarIdentifierIslamicUmmAlQura: String
struct CalendarUnit : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Era: CalendarUnit { get }
  static var Year: CalendarUnit { get }
  static var Month: CalendarUnit { get }
  static var Day: CalendarUnit { get }
  static var Hour: CalendarUnit { get }
  static var Minute: CalendarUnit { get }
  static var Second: CalendarUnit { get }
  static var Weekday: CalendarUnit { get }
  static var WeekdayOrdinal: CalendarUnit { get }
  static var Quarter: CalendarUnit { get }
  static var WeekOfMonth: CalendarUnit { get }
  static var WeekOfYear: CalendarUnit { get }
  static var YearForWeekOfYear: CalendarUnit { get }
  static var Nanosecond: CalendarUnit { get }
  static var Calendar: CalendarUnit { get }
  static var TimeZone: CalendarUnit { get }
  static var eraCalendarUnit: CalendarUnit { get }
  static var yearCalendarUnit: CalendarUnit { get }
  static var monthCalendarUnit: CalendarUnit { get }
  static var dayCalendarUnit: CalendarUnit { get }
  static var hourCalendarUnit: CalendarUnit { get }
  static var minuteCalendarUnit: CalendarUnit { get }
  static var secondCalendarUnit: CalendarUnit { get }
  static var weekCalendarUnit: CalendarUnit { get }
  static var weekdayCalendarUnit: CalendarUnit { get }
  static var weekdayOrdinalCalendarUnit: CalendarUnit { get }
  static var quarterCalendarUnit: CalendarUnit { get }
  static var weekOfMonthCalendarUnit: CalendarUnit { get }
  static var weekOfYearCalendarUnit: CalendarUnit { get }
  static var yearForWeekOfYearCalendarUnit: CalendarUnit { get }
  static var calendarCalendarUnit: CalendarUnit { get }
  static var timeZoneCalendarUnit: CalendarUnit { get }
}
struct CalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: CalendarOptions { get }
  static var MatchStrictly: CalendarOptions { get }
  static var SearchBackwards: CalendarOptions { get }
  static var MatchPreviousTimePreservingSmallerUnits: CalendarOptions { get }
  static var MatchNextTimePreservingSmallerUnits: CalendarOptions { get }
  static var MatchNextTime: CalendarOptions { get }
  static var MatchFirst: CalendarOptions { get }
  static var MatchLast: CalendarOptions { get }
}
var wrapCalendarComponents: Int { get }
class Calendar : Object, Copying, SecureCoding {
  class func current() -> Calendar
  class func autoupdatingCurrent() -> Calendar
   init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: Locale?
  @NSCopying var timeZone: TimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  var eraSymbols: [String] { get }
  var longEraSymbols: [String] { get }
  var monthSymbols: [String] { get }
  var shortMonthSymbols: [String] { get }
  var veryShortMonthSymbols: [String] { get }
  var standaloneMonthSymbols: [String] { get }
  var shortStandaloneMonthSymbols: [String] { get }
  var veryShortStandaloneMonthSymbols: [String] { get }
  var weekdaySymbols: [String] { get }
  var shortWeekdaySymbols: [String] { get }
  var veryShortWeekdaySymbols: [String] { get }
  var standaloneWeekdaySymbols: [String] { get }
  var shortStandaloneWeekdaySymbols: [String] { get }
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  var quarterSymbols: [String] { get }
  var shortQuarterSymbols: [String] { get }
  var standaloneQuarterSymbols: [String] { get }
  var shortStandaloneQuarterSymbols: [String] { get }
  var amSymbol: String { get }
  var pmSymbol: String { get }
  func minimumRangeOf(unit: CalendarUnit) -> NSRange
  func maximumRangeOf(unit: CalendarUnit) -> NSRange
  func rangeOf(smaller: CalendarUnit, in larger: CalendarUnit, forDate date: Date) -> NSRange
  func ordinalityOf(smaller: CalendarUnit, in larger: CalendarUnit, forDate date: Date) -> Int
  func rangeOf(unit: CalendarUnit, start datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, forDate date: Date) -> Bool
  func dateFrom(comps: DateComponents) -> Date?
  func components(unitFlags: CalendarUnit, from date: Date) -> DateComponents
  func dateByAdding(comps: DateComponents, to date: Date, options opts: CalendarOptions = []) -> Date?
  func components(unitFlags: CalendarUnit, from startingDate: Date, to resultDate: Date, options opts: CalendarOptions = []) -> DateComponents
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  func component(unit: CalendarUnit, from date: Date) -> Int
  func dateWithEra(eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  func dateWithEra(eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  func startOfDayFor(date: Date) -> Date
  func componentsIn(timezone: TimeZone, from date: Date) -> DateComponents
  func compare(date1: Date, to date2: Date, toUnitGranularity unit: CalendarUnit) -> ComparisonResult
  func isDate(date1: Date, equalTo date2: Date, toUnitGranularity unit: CalendarUnit) -> Bool
  func isDate(date1: Date, inSameDayAs date2: Date) -> Bool
  func isDateInToday(date: Date) -> Bool
  func isDateInYesterday(date: Date) -> Bool
  func isDateInTomorrow(date: Date) -> Bool
  func isDateInWeekend(date: Date) -> Bool
  func rangeOfWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, containing date: Date) -> Bool
  func nextWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, options: CalendarOptions = [], after date: Date) -> Bool
  func components(unitFlags: CalendarUnit, from startingDateComp: DateComponents, to resultDateComp: DateComponents, options: CalendarOptions = []) -> DateComponents
  func dateByAdding(unit: CalendarUnit, value: Int, to date: Date, options: CalendarOptions = []) -> Date?
  func enumerateDatesStartingAfter(start: Date, matching comps: DateComponents, options opts: CalendarOptions = [], usingBlock block: (Date?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  func nextDateAfter(date: Date, matching comps: DateComponents, options: CalendarOptions = []) -> Date?
  func nextDateAfter(date: Date, matching unit: CalendarUnit, value: Int, options: CalendarOptions = []) -> Date?
  func nextDateAfter(date: Date, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: CalendarOptions = []) -> Date?
  func dateBySettingUnit(unit: CalendarUnit, value v: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  func dateBySettingHour(h: Int, minute m: Int, second s: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  func date(date: Date, matchesComponents components: DateComponents) -> Bool
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let calendarDayChangedNotification: String
var dateComponentUndefined: Int { get }
var undefinedDateComponent: Int { get }
class DateComponents : Object, Copying, SecureCoding {
  @NSCopying var calendar: Calendar?
  @NSCopying var timeZone: TimeZone?
  var era: Int
  var year: Int
  var month: Int
  var day: Int
  var hour: Int
  var minute: Int
  var second: Int
  var nanosecond: Int
  var weekday: Int
  var weekdayOrdinal: Int
  var quarter: Int
  var weekOfMonth: Int
  var weekOfYear: Int
  var yearForWeekOfYear: Int
  var isLeapMonth: Bool
  @NSCopying var date: Date? { get }
  func week() -> Int
  func setWeek(v: Int)
  func setValue(value: Int, forComponent unit: CalendarUnit)
  func valueForComponent(unit: CalendarUnit) -> Int
  var isValidDate: Bool { get }
  func isValidDateIn(calendar: Calendar) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
var openStepUnicodeReservedBase: Int { get }
class CharacterSet : Object, Copying, MutableCopying, Coding {
  class func control() -> CharacterSet
  class func whitespace() -> CharacterSet
  class func whitespaceAndNewline() -> CharacterSet
  class func decimalDigit() -> CharacterSet
  class func letter() -> CharacterSet
  class func lowercaseLetter() -> CharacterSet
  class func uppercaseLetter() -> CharacterSet
  class func nonBase() -> CharacterSet
  class func alphanumeric() -> CharacterSet
  class func decomposable() -> CharacterSet
  class func illegal() -> CharacterSet
  class func punctuation() -> CharacterSet
  class func capitalizedLetter() -> CharacterSet
  class func symbol() -> CharacterSet
  class func newline() -> CharacterSet
   init(range aRange: NSRange)
   init(charactersIn aString: String)
   init(bitmapRepresentation data: Data)
   init?(contentsOfFile fName: String)
  init(coder aDecoder: Coder)
  func characterIsMember(aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: Data { get }
  @NSCopying var inverted: CharacterSet { get }
  func longCharacterIsMember(theLongChar: UTF32Char) -> Bool
  func isSupersetOf(theOtherSet: CharacterSet) -> Bool
  func hasMemberInPlane(thePlane: UInt8) -> Bool
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
class MutableCharacterSet : CharacterSet, Copying, MutableCopying {
  func addCharactersIn(aRange: NSRange)
  func removeCharactersIn(aRange: NSRange)
  func addCharactersIn(aString: String)
  func removeCharactersIn(aString: String)
  func formUnionWith(otherSet: CharacterSet)
  func formIntersectionWith(otherSet: CharacterSet)
  func invert()
  class func control() -> MutableCharacterSet
  class func whitespace() -> MutableCharacterSet
  class func whitespaceAndNewline() -> MutableCharacterSet
  class func decimalDigit() -> MutableCharacterSet
  class func letter() -> MutableCharacterSet
  class func lowercaseLetter() -> MutableCharacterSet
  class func uppercaseLetter() -> MutableCharacterSet
  class func nonBase() -> MutableCharacterSet
  class func alphanumeric() -> MutableCharacterSet
  class func decomposable() -> MutableCharacterSet
  class func illegal() -> MutableCharacterSet
  class func punctuation() -> MutableCharacterSet
  class func capitalizedLetter() -> MutableCharacterSet
  class func symbol() -> MutableCharacterSet
  class func newline() -> MutableCharacterSet
   init(range aRange: NSRange)
   init(charactersIn aString: String)
   init(bitmapRepresentation data: Data)
   init?(contentsOfFile fName: String)
  init(coder aDecoder: Coder)
  convenience init()
}
class Coder : Object {
  func encodeValueOfObjCType(type: UnsafePointer<Int8>, at addr: UnsafePointer<Void>)
  func encodeDataObject(data: Data)
  func decodeValueOfObjCType(type: UnsafePointer<Int8>, at data: UnsafeMutablePointer<Void>)
  func decodeDataObject() -> Data?
  func versionForClassName(className: String) -> Int
  init()
}
extension Coder {
  @warn_unused_result
  func decodeObjectOfClass<DecodedObjectType : Coding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType?
  @warn_unused_result
  @nonobjc func decodeObjectOfClasses(classes: NSSet?, forKey key: String) -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObject() throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectForKey(key: String) throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectOfClass<DecodedObjectType : Coding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType?
  @warn_unused_result
  func decodeTopLevelObjectOfClasses(classes: NSSet?, forKey key: String) throws -> AnyObject?
}
extension Coder {
  func encode(object: AnyObject?)
  func encodeRootObject(rootObject: AnyObject)
  func encodeBycopyObject(anObject: AnyObject?)
  func encodeByrefObject(anObject: AnyObject?)
  func encodeConditionalObject(object: AnyObject?)
  func encodeArrayOfObjCType(type: UnsafePointer<Int8>, count: Int, at array: UnsafePointer<Void>)
  func encodeBytes(byteaddr: UnsafePointer<Void>, length: Int)
  func decodeObject() -> AnyObject?
  func decodeArrayOfObjCType(itemType: UnsafePointer<Int8>, count: Int, at array: UnsafeMutablePointer<Void>)
  func decodeBytesWithReturnedLength(lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Void>
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encode(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encode(boolv: Bool, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int64, forKey key: String)
  func encode(realv: Float, forKey key: String)
  func encode(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  func containsValueForKey(key: String) -> Bool
  func decodeObjectForKey(key: String) -> AnyObject?
  func decodeBoolForKey(key: String) -> Bool
  func decodeIntForKey(key: String) -> Int32
  func decodeInt32ForKey(key: String) -> Int32
  func decodeInt64ForKey(key: String) -> Int64
  func decodeFloatForKey(key: String) -> Float
  func decodeDoubleForKey(key: String) -> Double
  func decodeBytesForKey(key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  func encode(intv: Int, forKey key: String)
  func decodeIntegerForKey(key: String) -> Int
  var requiresSecureCoding: Bool { get }
  func __decodeObjectOfClasses(classes: Set<Object>?, forKey key: String) -> AnyObject?
  func decodePropertyListForKey(key: String) -> AnyObject?
  var allowedClasses: Set<Object>? { get }
  func failWithError(error: Error)
}
struct ComparisonPredicateOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitivePredicateOption: ComparisonPredicateOptions { get }
  static var DiacriticInsensitivePredicateOption: ComparisonPredicateOptions { get }
  static var NormalizedPredicateOption: ComparisonPredicateOptions { get }
}
enum ComparisonPredicateModifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DirectPredicateModifier
  case AllPredicateModifier
  case AnyPredicateModifier
}
enum PredicateOperatorType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LessThanPredicateOperatorType
  case LessThanOrEqualToPredicateOperatorType
  case GreaterThanPredicateOperatorType
  case GreaterThanOrEqualToPredicateOperatorType
  case EqualToPredicateOperatorType
  case NotEqualToPredicateOperatorType
  case MatchesPredicateOperatorType
  case LikePredicateOperatorType
  case BeginsWithPredicateOperatorType
  case EndsWithPredicateOperatorType
  case InPredicateOperatorType
  case CustomSelectorPredicateOperatorType
  case ContainsPredicateOperatorType
  case BetweenPredicateOperatorType
}
class ComparisonPredicate : Predicate {
  init(leftExpression lhs: Expression, rightExpression rhs: Expression, modifier: ComparisonPredicateModifier, type: PredicateOperatorType, options: ComparisonPredicateOptions = [])
  init(leftExpression lhs: Expression, rightExpression rhs: Expression, customSelector selector: Selector)
  init?(coder: Coder)
  var predicateOperatorType: PredicateOperatorType { get }
  var comparisonPredicateModifier: ComparisonPredicateModifier { get }
  var leftExpression: Expression { get }
  var rightExpression: Expression { get }
  var customSelector: Selector { get }
  var options: ComparisonPredicateOptions { get }
  convenience init()
}
enum CompoundPredicateType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotPredicateType
  case AndPredicateType
  case OrPredicateType
}
class CompoundPredicate : Predicate {
  init(type: CompoundPredicateType, subpredicates: [Predicate])
  init?(coder: Coder)
  var compoundPredicateType: CompoundPredicateType { get }
  var subpredicates: [AnyObject] { get }
   init(andPredicateWithSubpredicates subpredicates: [Predicate])
   init(orPredicateWithSubpredicates subpredicates: [Predicate])
   init(notPredicateWithSubpredicate predicate: Predicate)
  convenience init()
}
struct DataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataReadingMappedIfSafe: DataReadingOptions { get }
  static var DataReadingUncached: DataReadingOptions { get }
  static var DataReadingMappedAlways: DataReadingOptions { get }
  static var DataReadingMapped: DataReadingOptions { get }
  static var MappedRead: DataReadingOptions { get }
  static var UncachedRead: DataReadingOptions { get }
}
struct DataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: DataWritingOptions { get }
  static var DataWritingWithoutOverwriting: DataWritingOptions { get }
  static var DataWritingFileProtectionNone: DataWritingOptions { get }
  static var DataWritingFileProtectionComplete: DataWritingOptions { get }
  static var DataWritingFileProtectionCompleteUnlessOpen: DataWritingOptions { get }
  static var DataWritingFileProtectionCompleteUntilFirstUserAuthentication: DataWritingOptions { get }
  static var DataWritingFileProtectionMask: DataWritingOptions { get }
  static var AtomicWrite: DataWritingOptions { get }
}
struct DataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Backwards: DataSearchOptions { get }
  static var Anchored: DataSearchOptions { get }
}
struct DataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: DataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: DataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: DataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: DataBase64EncodingOptions { get }
}
struct DataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var IgnoreUnknownCharacters: DataBase64DecodingOptions { get }
}
class Data : Object, Copying, MutableCopying, SecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Data {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqualTo(other: Data) -> Bool
  func subdataWith(range: NSRange) -> Data
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func writeToFile(path: String, options writeOptionsMask: DataWritingOptions = []) throws
  func writeTo(url: URL, options writeOptionsMask: DataWritingOptions = []) throws
  func rangeOf(dataToFind: Data, options mask: DataSearchOptions = [], range searchRange: NSRange) -> NSRange
  func enumerateByteRangesUsing(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension Data {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
}
extension Data {
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  func base64EncodedString(options options: DataBase64EncodingOptions = []) -> String
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  func base64EncodedData(options options: DataBase64EncodingOptions = []) -> Data
}
extension Data {
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  class func dataWithContentsOfMappedFile(path: String) -> AnyObject?
  init?(contentsOfMappedFile path: String)
  init?(base64Encoding base64String: String)
  func base64Encoding() -> String
}
class MutableData : Data {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: Coder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  init?(contentsOfMappedFile path: String)
  init?(base64Encoding base64String: String)
}
extension MutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func append(other: Data)
  func increaseLengthBy(extraLength: Int)
  func replaceBytesIn(range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesIn(range: NSRange)
  func setData(data: Data)
  func replaceBytesIn(range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension MutableData {
  init?(capacity: Int)
  init?(length: Int)
}
class PurgeableData : MutableData, DiscardableContent {
  init()
  init?(coder aDecoder: Coder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  init?(contentsOfMappedFile path: String)
  init?(base64Encoding base64String: String)
  init?(capacity: Int)
  init?(length: Int)
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
let systemClockDidChangeNotification: String
typealias TimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class Date : Object, Copying, SecureCoding {
  var timeIntervalSinceReferenceDate: TimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: TimeInterval)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension Date : _Reflectable {
  func _getMirror() -> _MirrorType
}
extension Date {
  func timeIntervalSince(anotherDate: Date) -> TimeInterval
  var timeIntervalSinceNow: TimeInterval { get }
  var timeIntervalSince1970: TimeInterval { get }
  func addTimeInterval(seconds: TimeInterval) -> AnyObject
  func addingTimeInterval(ti: TimeInterval) -> Self
  func earlierDate(anotherDate: Date) -> Date
  func laterDate(anotherDate: Date) -> Date
  func compare(other: Date) -> ComparisonResult
  func isEqualTo(otherDate: Date) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> TimeInterval
}
extension Date {
  class func distantFuture() -> Date
  class func distantPast() -> Date
  convenience init(timeIntervalSinceNow secs: TimeInterval)
  convenience init(timeIntervalSince1970 secs: TimeInterval)
  convenience init(timeInterval secsToBeAdded: TimeInterval, since date: Date)
}
enum DateComponentsFormatterUnitsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Positional
  case Abbreviated
  case Short
  case Full
  case SpellOut
}
struct DateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: DateComponentsFormatterZeroFormattingBehavior { get }
  static var Default: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropLeading: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropMiddle: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropTrailing: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropAll: DateComponentsFormatterZeroFormattingBehavior { get }
  static var Pad: DateComponentsFormatterZeroFormattingBehavior { get }
}
class DateComponentsFormatter : Formatter {
  func stringForObjectValue(obj: AnyObject) -> String?
  func stringFrom(components: DateComponents) -> String?
  func stringFrom(startDate: Date, to endDate: Date) -> String?
  func stringFromTimeInterval(ti: TimeInterval) -> String?
  class func localizedStringFrom(components: DateComponents, unitsStyle: DateComponentsFormatterUnitsStyle) -> String?
  var unitsStyle: DateComponentsFormatterUnitsStyle
  var allowedUnits: CalendarUnit
  var zeroFormattingBehavior: DateComponentsFormatterZeroFormattingBehavior
  @NSCopying var calendar: Calendar?
  var allowsFractionalUnits: Bool
  var maximumUnitCount: Int
  var collapsesLargestUnit: Bool
  var includesApproximationPhrase: Bool
  var includesTimeRemainingPhrase: Bool
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
class DateFormatter : Formatter {
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(date: Date) -> String
  func dateFrom(string: String) -> Date?
  class func localizedStringFrom(date: Date, dateStyle dstyle: DateFormatterStyle, time tstyle: DateFormatterStyle) -> String
  class func dateFormatFromTemplate(tmplate: String, options opts: Int, locale: Locale?) -> String?
  class func defaultFormatterBehavior() -> DateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: DateFormatterBehavior)
  func setLocalizedDateFormatFromTemplate(dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: DateFormatterStyle
  var timeStyle: DateFormatterStyle
  @NSCopying var locale: Locale!
  var generatesCalendarDates: Bool
  var formatterBehavior: DateFormatterBehavior
  @NSCopying var timeZone: TimeZone!
  @NSCopying var calendar: Calendar!
  var isLenient: Bool
  @NSCopying var twoDigitStartDate: Date?
  @NSCopying var defaultDate: Date?
  var eraSymbols: [String]!
  var monthSymbols: [String]!
  var shortMonthSymbols: [String]!
  var weekdaySymbols: [String]!
  var shortWeekdaySymbols: [String]!
  var amSymbol: String!
  var pmSymbol: String!
  var longEraSymbols: [String]!
  var veryShortMonthSymbols: [String]!
  var standaloneMonthSymbols: [String]!
  var shortStandaloneMonthSymbols: [String]!
  var veryShortStandaloneMonthSymbols: [String]!
  var veryShortWeekdaySymbols: [String]!
  var standaloneWeekdaySymbols: [String]!
  var shortStandaloneWeekdaySymbols: [String]!
  var veryShortStandaloneWeekdaySymbols: [String]!
  var quarterSymbols: [String]!
  var shortQuarterSymbols: [String]!
  var standaloneQuarterSymbols: [String]!
  var shortStandaloneQuarterSymbols: [String]!
  @NSCopying var gregorianStartDate: Date?
  var doesRelativeDateFormatting: Bool
  init()
  init?(coder aDecoder: Coder)
}
enum DateFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
enum DateFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_4
}
enum DateIntervalFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
class DateIntervalFormatter : Formatter {
  @NSCopying var locale: Locale!
  @NSCopying var calendar: Calendar!
  @NSCopying var timeZone: TimeZone!
  var dateTemplate: String!
  var dateStyle: DateIntervalFormatterStyle
  var timeStyle: DateIntervalFormatterStyle
  func stringFrom(fromDate: Date, to toDate: Date) -> String
  init()
  init?(coder aDecoder: Coder)
}
enum RoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundPlain
  case RoundDown
  case RoundUp
  case RoundBankers
}
enum CalculationError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoError
  case LossOfPrecision
  case Underflow
  case Overflow
  case DivideByZero
}
var NSDecimalMaxSize: Int32 { get }
var NSDecimalNoScale: Int32 { get }
struct Decimal {
  var _exponent: Int32
  var _length: UInt32
  var _isNegative: UInt32
  var _isCompact: UInt32
  var _reserved: UInt32
  var _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(_exponent: Int32, _length: UInt32, _isNegative: UInt32, _isCompact: UInt32, _reserved: UInt32, _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
}
func decimalIsNotANumber(dcm: UnsafePointer<Decimal>) -> Bool
func decimalCopy(destination: UnsafeMutablePointer<Decimal>, _ source: UnsafePointer<Decimal>)
func decimalCompact(number: UnsafeMutablePointer<Decimal>)
func decimalCompare(leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>) -> ComparisonResult
func decimalRound(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ scale: Int, _ roundingMode: RoundingMode)
func decimalNormalize(number1: UnsafeMutablePointer<Decimal>, _ number2: UnsafeMutablePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalAdd(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalSubtract(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalMultiply(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalDivide(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalPower(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ power: Int, _ roundingMode: RoundingMode) -> CalculationError
func decimalMultiplyByPowerOf10(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ power: Int16, _ roundingMode: RoundingMode) -> CalculationError
func decimalString(dcm: UnsafePointer<Decimal>, _ locale: AnyObject?) -> String
let decimalNumberExactnessException: String
let decimalNumberOverflowException: String
let decimalNumberUnderflowException: String
let decimalNumberDivideByZeroException: String
protocol DecimalNumberBehaviors {
  func roundingMode() -> RoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: CalculationError, leftOperand: DecimalNumber, rightOperand: DecimalNumber?) -> DecimalNumber?
}
class DecimalNumber : Number {
  convenience init(mantissa: UInt64, exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: Decimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale: AnyObject?)
  func descriptionWithLocale(locale: AnyObject?) -> String
  var decimalValue: Decimal { get }
  class func zero() -> DecimalNumber
  class func one() -> DecimalNumber
  class func minimum() -> DecimalNumber
  class func maximum() -> DecimalNumber
  class func notA() -> DecimalNumber
  func adding(decimalNumber: DecimalNumber) -> DecimalNumber
  func adding(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func subtracting(decimalNumber: DecimalNumber) -> DecimalNumber
  func subtracting(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func multiplyingBy(decimalNumber: DecimalNumber) -> DecimalNumber
  func multiplyingBy(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func dividingBy(decimalNumber: DecimalNumber) -> DecimalNumber
  func dividingBy(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func raisingToPower(power: Int) -> DecimalNumber
  func raisingToPower(power: Int, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func multiplyingByPowerOf10(power: Int16) -> DecimalNumber
  func multiplyingByPowerOf10(power: Int16, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func byRoundingAccordingToBehavior(behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func compare(decimalNumber: Number) -> ComparisonResult
  class func setDefaultBehavior(behavior: DecimalNumberBehaviors)
  class func defaultBehavior() -> DecimalNumberBehaviors
  var objCType: UnsafePointer<Int8> { get }
  var doubleValue: Double { get }
  init?(coder aDecoder: Coder)
  convenience init(char value: Int8)
  convenience init(unsignedChar value: UInt8)
  convenience init(short value: Int16)
  convenience init(unsignedShort value: UInt16)
  convenience init(int value: Int32)
  convenience init(unsignedInt value: UInt32)
  convenience init(long value: Int)
  convenience init(unsignedLong value: UInt)
  convenience init(longLong value: Int64)
  convenience init(unsignedLongLong value: UInt64)
  convenience init(float value: Float)
  convenience init(double value: Double)
  convenience init(bool value: Bool)
  convenience init(integer value: Int)
  convenience init(unsignedInteger value: UInt)
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}
class DecimalNumberHandler : Object, DecimalNumberBehaviors, Coding {
  class func defaultDecimalNumberHandler() -> DecimalNumberHandler
  init(roundingMode: RoundingMode, scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
  convenience init()
  func roundingMode() -> RoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: CalculationError, leftOperand: DecimalNumber, rightOperand: DecimalNumber?) -> DecimalNumber?
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Number {
  var decimalValue: Decimal { get }
}
extension Scanner {
  func scanDecimal(dcm: UnsafeMutablePointer<Decimal>) -> Bool
}
class NSDictionary : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectFor(aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> Enumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<Copying?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
extension NSDictionary : DictionaryLiteralConvertible {
  required convenience init(dictionaryLiteral elements: (Copying, AnyObject)...)
  typealias Key = Copying
  typealias Value = AnyObject
}
extension NSDictionary : SequenceType {
  final class Generator : GeneratorType {
    var _fastGenerator: NSFastGenerator
    var _dictionary: NSDictionary { get }
    func next() -> (key: AnyObject, value: AnyObject)?
    init(_ _dict: NSDictionary)
    typealias Element = (key: AnyObject, value: AnyObject)
  }
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSDictionary.Generator
  typealias SubSequence = AnySequence<(key: AnyObject, value: AnyObject)>
}
extension NSDictionary {
  /// Initializes a newly allocated dictionary and adds to it objects from
  /// another given dictionary.
  ///
  /// - Returns: An initialized dictionary—which might be different
  ///   than the original receiver—containing the keys and values
  ///   found in `otherDictionary`.
  @objc(_swiftInitWithDictionary_NSDictionary:) convenience init(dictionary otherDictionary: NSDictionary)
}
extension NSDictionary : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSDictionary {
  var allKeys: [AnyObject] { get }
  func allKeysFor(anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var description: String { get }
  var descriptionInStringsFileFormat: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func isEqualTo(otherDictionary: [Object : AnyObject]) -> Bool
  func objectEnumerator() -> Enumerator
  func objectsFor(keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func keysSortedByValueUsing(comparator: Selector) -> [AnyObject]
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  subscript (key: Copying) -> AnyObject? { get }
  func enumerateKeysAndObjectsUsing(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateKeysAndObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  func keysSortedByValueUsingComparator(cmptr: Comparator) -> [AnyObject]
  func keysSortedByValue(options opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  func keysOfEntriesPassingTest(predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
  func keysOfEntries(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
}
extension NSDictionary {
  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getObjects:andKeys:count:
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
extension NSDictionary {
  convenience init(object: AnyObject, forKey key: Copying)
  convenience init(dictionary otherDictionary: [Object : AnyObject])
  convenience init(dictionary otherDictionary: [Object : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [Copying])
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
class MutableDictionary : NSDictionary {
  func removeObjectFor(aKey: AnyObject)
  func setObject(anObject: AnyObject, forKey aKey: Copying)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<Copying?>, count cnt: Int)
  convenience init(object: AnyObject, forKey key: Copying)
  convenience init(dictionary otherDictionary: [Object : AnyObject])
  convenience init(dictionary otherDictionary: [Object : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [Copying])
}
extension MutableDictionary {
  func addEntriesFrom(otherDictionary: [Object : AnyObject])
  func removeAllObjects()
  func removeObjectsFor(keyArray: [AnyObject])
  func setDictionary(otherDictionary: [Object : AnyObject])
  subscript (key: Copying) -> AnyObject?
}
extension MutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
extension NSDictionary {
  class func sharedKeySetForKeys(keys: [Copying]) -> AnyObject
}
extension MutableDictionary {
   init(sharedKeySet keyset: AnyObject)
}
enum EnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Joule
  case Kilojoule
  case Calorie
  case Kilocalorie
}
class EnergyFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForFoodEnergyUse: Bool
  func stringFromValue(value: Double, unit: EnergyFormatterUnit) -> String
  func stringFromJoules(numberInJoules: Double) -> String
  func unitStringFromValue(value: Double, unit: EnergyFormatterUnit) -> String
  func unitStringFromJoules(numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<EnergyFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
struct FastEnumerationState {
  var state: UInt
  var itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>
  var mutationsPtr: UnsafeMutablePointer<UInt>
  var extra: (UInt, UInt, UInt, UInt, UInt)
  init()
  init(state: UInt, itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>, mutationsPtr: UnsafeMutablePointer<UInt>, extra: (UInt, UInt, UInt, UInt, UInt))
}
protocol FastEnumeration {
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class Enumerator : Object, FastEnumeration {
  func nextObject() -> AnyObject?
  init()
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
extension Enumerator : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension Enumerator {
  var allObjects: [AnyObject] { get }
}
let cocoaErrorDomain: String
let POSIXErrorDomain: String
let OSStatusErrorDomain: String
let machErrorDomain: String
let underlyingErrorKey: String
let localizedDescriptionKey: String
let localizedFailureReasonErrorKey: String
let localizedRecoverySuggestionErrorKey: String
let localizedRecoveryOptionsErrorKey: String
let recoveryAttempterErrorKey: String
let helpAnchorErrorKey: String
let stringEncodingErrorKey: String
let URLErrorKey: String
let filePathErrorKey: String
class Error : Object, Copying, SecureCoding {
  init(domain: String, code: Int, userInfo dict: [Object : AnyObject]? = [:])
  var domain: String { get }
  var code: Int { get }
  var userInfo: [Object : AnyObject] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: AnyObject? { get }
  var helpAnchor: String? { get }
  class func setUserInfoValueProviderForDomain(errorDomain: String, provider: ((Error, String) -> AnyObject?)? = nil)
  class func userInfoValueProviderForDomain(errorDomain: String) -> ((Error, String) -> AnyObject?)?
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Error : ErrorType {
  var _domain: String { get }
  var _code: Int { get }
}
extension Object {
  class func attemptRecoveryFromError(error: Error, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func attemptRecoveryFromError(error: Error, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  class func attemptRecoveryFromError(error: Error, optionIndex recoveryOptionIndex: Int) -> Bool
  func attemptRecoveryFromError(error: Error, optionIndex recoveryOptionIndex: Int) -> Bool
}
let genericException: String
let rangeException: String
let invalidArgumentException: String
let internalInconsistencyException: String
let mallocException: String
let objectInaccessibleException: String
let objectNotAvailableException: String
let destinationInvalidException: String
let portTimeoutException: String
let invalidSendPortException: String
let invalidReceivePortException: String
let portSendException: String
let portReceiveException: String
let oldStyleException: String
class Exception : Object, Copying, Coding {
  init(name aName: String, reason aReason: String?, userInfo aUserInfo: [Object : AnyObject]? = [:])
  var name: String { get }
  var reason: String? { get }
  var userInfo: [Object : AnyObject]? { get }
  var callStackReturnAddresses: [Number] { get }
  var callStackSymbols: [String] { get }
  func raise()
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Exception {
  class func raise(name: String, format: String, arguments argList: CVaListPointer)
}
typealias UncaughtExceptionHandler = (Exception) -> Void
func getUncaughtExceptionHandler() -> (@convention(c) (Exception) -> Void)?
func setUncaughtExceptionHandler(_: (@convention(c) (Exception) -> Void)?)
let assertionHandlerKey: String
class AssertionHandler : Object {
  class func current() -> AssertionHandler
  init()
}
enum ExpressionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ConstantValueExpressionType
  case EvaluatedObjectExpressionType
  case VariableExpressionType
  case KeyPathExpressionType
  case FunctionExpressionType
  case UnionSetExpressionType
  case IntersectSetExpressionType
  case MinusSetExpressionType
  case SubqueryExpressionType
  case AggregateExpressionType
  case AnyKeyExpressionType
  case BlockExpressionType
  case ConditionalExpressionType
}
class Expression : Object, SecureCoding, Copying {
   init(format expressionFormat: String, argumentArray arguments: [AnyObject])
   init(format expressionFormat: String, arguments argList: CVaListPointer)
   init(forConstantValue obj: AnyObject?)
  class func forEvaluatedObject() -> Expression
   init(forVariable string: String)
   init(forKeyPath keyPath: String)
   init(forFunction name: String, arguments parameters: [AnyObject])
   init(forAggregate subexpressions: [AnyObject])
   init(forUnionSet left: Expression, with right: Expression)
   init(forIntersectSet left: Expression, with right: Expression)
   init(forMinusSet left: Expression, with right: Expression)
   init(forSubquery expression: Expression, usingIteratorVariable variable: String, predicate: AnyObject)
   init(forFunction target: Expression, selectorName name: String, arguments parameters: [AnyObject]?)
  class func forAnyKey() -> Expression
   init(forBlock block: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject, arguments: [Expression]?)
   init(forConditional predicate: Predicate, trueExpression: Expression, falseExpression: Expression)
  init(expressionType type: ExpressionType)
  init?(coder: Coder)
  var expressionType: ExpressionType { get }
  var constantValue: AnyObject { get }
  var keyPath: String { get }
  var function: String { get }
  var variable: String { get }
  @NSCopying var operand: Expression { get }
  var arguments: [Expression]? { get }
  var collection: AnyObject { get }
  @NSCopying var predicate: Predicate { get }
  @NSCopying var left: Expression { get }
  @NSCopying var right: Expression { get }
  @NSCopying var trueExpression: Expression { get }
  @NSCopying var falseExpression: Expression { get }
  var expressionBlock: (AnyObject?, [AnyObject], MutableDictionary?) -> AnyObject { get }
  func expressionValueWith(object: AnyObject?, context: MutableDictionary?) -> AnyObject
  func allowEvaluation()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension Expression {
  convenience init(format expressionFormat: String, _ args: CVarArgType...)
}
struct _expressionFlags {
  var _evaluationBlocked: UInt32
  var _reservedExpressionFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedExpressionFlags: UInt32)
}
class ExtensionContext : Object {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(error: Error)
  func open(URL: URL, completionHandler: ((Bool) -> Void)? = nil)
  init()
}
let extensionItemsAndErrorsKey: String
let extensionHostWillEnterForegroundNotification: String
let extensionHostDidEnterBackgroundNotification: String
let extensionHostWillResignActiveNotification: String
let extensionHostDidBecomeActiveNotification: String
class ExtensionItem : Object, Copying, SecureCoding {
  @NSCopying var attributedTitle: AttributedString?
  @NSCopying var attributedContentText: AttributedString?
  var attachments: [AnyObject]?
  var userInfo: [Object : AnyObject]?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let extensionItemAttributedTitleKey: String
let extensionItemAttributedContentTextKey: String
let extensionItemAttachmentsKey: String
protocol ExtensionRequestHandling : ObjectProtocol {
  func beginRequestWith(context: ExtensionContext)
}
struct FileCoordinatorReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutChanges: FileCoordinatorReadingOptions { get }
  static var ResolvesSymbolicLink: FileCoordinatorReadingOptions { get }
  static var ImmediatelyAvailableMetadataOnly: FileCoordinatorReadingOptions { get }
  static var ForUploading: FileCoordinatorReadingOptions { get }
}
struct FileCoordinatorWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ForDeleting: FileCoordinatorWritingOptions { get }
  static var ForMoving: FileCoordinatorWritingOptions { get }
  static var ForMerging: FileCoordinatorWritingOptions { get }
  static var ForReplacing: FileCoordinatorWritingOptions { get }
  static var ContentIndependentMetadataOnly: FileCoordinatorWritingOptions { get }
}
class FileAccessIntent : Object {
  class func readingIntentWith(url: URL, options: FileCoordinatorReadingOptions = []) -> Self
  class func writingIntentWith(url: URL, options: FileCoordinatorWritingOptions = []) -> Self
  @NSCopying var url: URL { get }
  init()
}
class FileCoordinator : Object {
  class func addFilePresenter(filePresenter: FilePresenter)
  class func removeFilePresenter(filePresenter: FilePresenter)
  class func filePresenters() -> [FilePresenter]
  init(filePresenter filePresenterOrNil: FilePresenter?)
  var purposeIdentifier: String
  func coordinateAccessWith(intents: [FileAccessIntent], queue: OperationQueue, byAccessor accessor: (Error?) -> Void)
  func coordinateReadingItemAt(url: URL, options: FileCoordinatorReadingOptions = [], error outError: ErrorPointer, byAccessor reader: (URL) -> Void)
  func coordinateWritingItemAt(url: URL, options: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor writer: (URL) -> Void)
  func coordinateReadingItemAt(readingURL: URL, options readingOptions: FileCoordinatorReadingOptions = [], writingItemAt writingURL: URL, options writingOptions: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor readerWriter: (URL, URL) -> Void)
  func coordinateWritingItemAt(url1: URL, options options1: FileCoordinatorWritingOptions = [], writingItemAt url2: URL, options options2: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor writer: (URL, URL) -> Void)
  func prepareForReadingItemsAtURLs(readingURLs: [URL], options readingOptions: FileCoordinatorReadingOptions = [], writingItemsAtURLs writingURLs: [URL], options writingOptions: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor batchAccessor: (() -> Void) -> Void)
  func itemAt(oldURL: URL, willMoveTo newURL: URL)
  func itemAt(oldURL: URL, didMoveTo newURL: URL)
  func cancel()
  convenience init()
}
class FileHandle : Object, SecureCoding {
  @NSCopying var availableData: Data { get }
  func readDataToEndOfFile() -> Data
  func readDataOfLength(length: Int) -> Data
  func write(data: Data)
  var offsetInFile: UInt64 { get }
  func seekToEndOfFile() -> UInt64
  func seekToFileOffset(offset: UInt64)
  func truncateFileAtOffset(offset: UInt64)
  func synchronizeFile()
  func closeFile()
  init(fileDescriptor fd: Int32, closeOnDealloc closeopt: Bool)
  init?(coder: Coder)
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension FileHandle {
  class func withStandardInput() -> FileHandle
  class func withStandardOutput() -> FileHandle
  class func withStandardError() -> FileHandle
  class func withNullDevice() -> FileHandle
  convenience init?(forReadingAtPath path: String)
  convenience init?(forWritingAtPath path: String)
  convenience init?(forUpdatingAtPath path: String)
  convenience init(forReadingFrom url: URL) throws
  convenience init(forWritingTo url: URL) throws
  convenience init(forUpdatingURL url: URL) throws
}
let fileHandleOperationException: String
let fileHandleReadCompletionNotification: String
let fileHandleReadToEndOfFileCompletionNotification: String
let fileHandleConnectionAcceptedNotification: String
let fileHandleDataAvailableNotification: String
let fileHandleNotificationDataItem: String
let fileHandleNotificationFileHandleItem: String
let fileHandleNotificationMonitorModes: String
extension FileHandle {
  func readInBackgroundAndNotifyForModes(modes: [String]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotifyForModes(modes: [String]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotifyForModes(modes: [String]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotifyForModes(modes: [String]?)
  func waitForDataInBackgroundAndNotify()
  var readabilityHandler: ((FileHandle) -> Void)?
  var writeabilityHandler: ((FileHandle) -> Void)?
}
extension FileHandle {
  convenience init(fileDescriptor fd: Int32)
  var fileDescriptor: Int32 { get }
}
class Pipe : Object {
  var fileHandleForReading: FileHandle { get }
  var fileHandleForWriting: FileHandle { get }
  init()
}
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
struct VolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: VolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: VolumeEnumerationOptions { get }
}
struct DirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: DirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: DirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: DirectoryEnumerationOptions { get }
}
struct FileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: FileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: FileManagerItemReplacementOptions { get }
}
enum URLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
let ubiquityIdentityDidChangeNotification: String
class FileManager : Object {
  class func defaultManager() -> FileManager
  func mountedVolumeURLsIncludingResourceValuesForKeys(propertyKeys: [String]?, options: VolumeEnumerationOptions = []) -> [URL]?
  func contentsOfDirectoryAt(url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = []) throws -> [URL]
  func urLsFor(directory: SearchPathDirectory, inDomains domainMask: SearchPathDomainMask) -> [URL]
  func urlFor(directory: SearchPathDirectory, inDomain domain: SearchPathDomainMask, appropriateFor url: URL?, create shouldCreate: Bool) throws -> URL
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, ofDirectoryAt directoryURL: URL, toItemAt otherURL: URL) throws
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, of directory: SearchPathDirectory, inDomain domainMask: SearchPathDomainMask, toItemAt url: URL) throws
  func createDirectoryAt(url: URL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  func createSymbolicLinkAt(url: URL, withDestinationURL destURL: URL) throws
  unowned(unsafe) var delegate: @sil_unmanaged FileManagerDelegate?
  func setAttributes(attributes: [String : AnyObject] = [:], ofItemAtPath path: String) throws
  func createDirectoryAtPath(path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  func contentsOfDirectoryAtPath(path: String) throws -> [String]
  func subpathsOfDirectoryAtPath(path: String) throws -> [String]
  func attributesOfItemAtPath(path: String) throws -> [String : AnyObject]
  func attributesOfFileSystemForPath(path: String) throws -> [String : AnyObject]
  func createSymbolicLinkAtPath(path: String, withDestinationPath destPath: String) throws
  func destinationOfSymbolicLinkAtPath(path: String) throws -> String
  func copyItemAtPath(srcPath: String, toPath dstPath: String) throws
  func moveItemAtPath(srcPath: String, toPath dstPath: String) throws
  func linkItemAtPath(srcPath: String, toPath dstPath: String) throws
  func removeItemAtPath(path: String) throws
  func copyItemAt(srcURL: URL, to dstURL: URL) throws
  func moveItemAt(srcURL: URL, to dstURL: URL) throws
  func linkItemAt(srcURL: URL, to dstURL: URL) throws
  func removeItemAt(URL: URL) throws
  func fileAttributesAtPath(path: String, traverseLink yorn: Bool) -> [Object : AnyObject]?
  func changeFileAttributes(attributes: [Object : AnyObject] = [:], atPath path: String) -> Bool
  func directoryContentsAtPath(path: String) -> [AnyObject]?
  func fileSystemAttributesAtPath(path: String) -> [Object : AnyObject]?
  func pathContentOfSymbolicLinkAtPath(path: String) -> String?
  func createSymbolicLinkAtPath(path: String, pathContent otherpath: String) -> Bool
  func createDirectoryAtPath(path: String, attributes: [Object : AnyObject] = [:]) -> Bool
  var currentDirectoryPath: String { get }
  func changeCurrentDirectoryPath(path: String) -> Bool
  func fileExistsAtPath(path: String) -> Bool
  func fileExistsAtPath(path: String, isDirectory: UnsafeMutablePointer<ObjCBool>) -> Bool
  func isReadableFileAtPath(path: String) -> Bool
  func isWritableFileAtPath(path: String) -> Bool
  func isExecutableFileAtPath(path: String) -> Bool
  func isDeletableFileAtPath(path: String) -> Bool
  func contentsEqualAtPath(path1: String, andPath path2: String) -> Bool
  func displayNameAtPath(path: String) -> String
  func componentsToDisplayForPath(path: String) -> [String]?
  func enumeratorAtPath(path: String) -> DirectoryEnumerator?
  func enumeratorAt(url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> DirectoryEnumerator?
  func subpathsAtPath(path: String) -> [String]?
  func contentsAtPath(path: String) -> Data?
  func createFileAtPath(path: String, contents data: Data?, attributes attr: [String : AnyObject]? = [:]) -> Bool
  func fileSystemRepresentationWithPath(path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(str: UnsafePointer<Int8>, length len: Int) -> String
  func replaceItemAt(originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String?, options: FileManagerItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<URL?>) throws
  func setUbiquitous(flag: Bool, itemAt url: URL, destinationURL: URL) throws
  func isUbiquitousItemAt(url: URL) -> Bool
  func startDownloadingUbiquitousItemAt(url: URL) throws
  func evictUbiquitousItemAt(url: URL) throws
  func urlForUbiquityContainerIdentifier(containerIdentifier: String?) -> URL?
  func urlForPublishingUbiquitousItemAt(url: URL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<Date?>) throws -> URL
  @NSCopying var ubiquityIdentityToken: protocol<Coding, Copying, ObjectProtocol>? { get }
  func containerURLForSecurityApplicationGroupIdentifier(groupIdentifier: String) -> URL?
  init()
}
extension Object {
  class func fileManager(fm: FileManager, shouldProceedAfterError errorInfo: [Object : AnyObject]) -> Bool
  func fileManager(fm: FileManager, shouldProceedAfterError errorInfo: [Object : AnyObject]) -> Bool
  class func fileManager(fm: FileManager, willProcessPath path: String)
  func fileManager(fm: FileManager, willProcessPath path: String)
}
protocol FileManagerDelegate : ObjectProtocol {
  optional func fileManager(fileManager: FileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: FileManager, shouldCopyItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: FileManager, shouldMoveItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: FileManager, shouldLinkItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAtPath path: String) -> Bool
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAt URL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAtPath path: String) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAt URL: URL) -> Bool
}
class DirectoryEnumerator : Enumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  var level: Int { get }
  func skipDescendants()
  init()
}
let fileType: String
let fileTypeDirectory: String
let fileTypeRegular: String
let fileTypeSymbolicLink: String
let fileTypeSocket: String
let fileTypeCharacterSpecial: String
let fileTypeBlockSpecial: String
let fileTypeUnknown: String
let fileSize: String
let fileModificationDate: String
let fileReferenceCount: String
let fileDeviceIdentifier: String
let fileOwnerAccountName: String
let fileGroupOwnerAccountName: String
let filePosixPermissions: String
let fileSystemNumber: String
let fileSystemFileNumber: String
let fileExtensionHidden: String
let fileHFSCreatorCode: String
let fileHFSTypeCode: String
let fileImmutable: String
let fileAppendOnly: String
let fileCreationDate: String
let fileOwnerAccountID: String
let fileGroupOwnerAccountID: String
let fileBusy: String
let fileProtectionKey: String
let fileProtectionNone: String
let fileProtectionComplete: String
let fileProtectionCompleteUnlessOpen: String
let fileProtectionCompleteUntilFirstUserAuthentication: String
let fileSystemSize: String
let fileSystemFreeSize: String
let fileSystemNodes: String
let fileSystemFreeNodes: String
extension NSDictionary {
  func fileSize() -> UInt64
  func fileModificationDate() -> Date?
  func fileType() -> String?
  func filePosixPermissions() -> Int
  func fileOwnerAccountName() -> String?
  func fileGroupOwnerAccountName() -> String?
  func fileSystemNumber() -> Int
  func fileSystemFileNumber() -> Int
  func fileExtensionHidden() -> Bool
  func fileHFSCreatorCode() -> OSType
  func fileHFSTypeCode() -> OSType
  func fileIsImmutable() -> Bool
  func fileIsAppendOnly() -> Bool
  func fileCreationDate() -> Date?
  func fileOwnerAccountID() -> Number?
  func fileGroupOwnerAccountID() -> Number?
}
protocol FilePresenter : ObjectProtocol {
  @NSCopying var presentedItemURL: URL? { get }
  var presentedItemOperationQueue: OperationQueue { get }
  optional func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(completionHandler: (Error?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (Error?) -> Void)
  optional func presentedItemDidMoveTo(newURL: URL)
  optional func presentedItemDidChange()
  optional func presentedItemDidGainVersion(version: FileVersion)
  optional func presentedItemDidLose(version: FileVersion)
  optional func presentedItemDidResolveConflictVersion(version: FileVersion)
  optional func accommodatePresentedSubitemDeletionAt(url: URL, completionHandler: (Error?) -> Void)
  optional func presentedSubitemDidAppearAt(url: URL)
  optional func presentedSubitemAt(oldURL: URL, didMoveTo newURL: URL)
  optional func presentedSubitemDidChangeAt(url: URL)
  optional func presentedSubitemAt(url: URL, didGainVersion version: FileVersion)
  optional func presentedSubitemAt(url: URL, didLose version: FileVersion)
  optional func presentedSubitemAt(url: URL, didResolveConflictVersion version: FileVersion)
}
struct FileVersionAddingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: FileVersionAddingOptions { get }
}
struct FileVersionReplacingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: FileVersionReplacingOptions { get }
}
class FileVersion : Object {
  class func currentVersionOfItemAt(url: URL) -> FileVersion?
  class func otherVersionsOfItemAt(url: URL) -> [FileVersion]?
  class func unresolvedConflictVersionsOfItemAt(url: URL) -> [FileVersion]?
  class func getNonlocalVersionsOfItemAt(url: URL, completionHandler: ([FileVersion]?, Error?) -> Void)
   init?(ofItemAt url: URL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @NSCopying var url: URL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: Date? { get }
  var persistentIdentifier: Coding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  var hasLocalContents: Bool { get }
  var hasThumbnail: Bool { get }
  func replaceItemAt(url: URL, options: FileVersionReplacingOptions = []) throws -> URL
  func remove() throws
  class func removeOtherVersionsOfItemAt(url: URL) throws
  init()
}
struct FileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immediate: FileWrapperReadingOptions { get }
  static var WithoutMapping: FileWrapperReadingOptions { get }
}
struct FileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Atomic: FileWrapperWritingOptions { get }
  static var WithNameUpdating: FileWrapperWritingOptions { get }
}
class FileWrapper : Object, Coding {
  init(url: URL, options: FileWrapperReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : FileWrapper])
  init(regularFileWithContents contents: Data)
  init(symbolicLinkWithDestinationURL url: URL)
  init?(serializedRepresentation serializeRepresentation: Data)
  init?(coder inCoder: Coder)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  func matchesContentsOf(url: URL) -> Bool
  func readFrom(url: URL, options: FileWrapperReadingOptions = []) throws
  func writeTo(url: URL, options: FileWrapperWritingOptions = [], originalContentsURL: URL?) throws
  @NSCopying var serializedRepresentation: Data? { get }
  func add(child: FileWrapper) -> String
  func addRegularFileWithContents(data: Data, preferredFilename fileName: String) -> String
  func remove(child: FileWrapper)
  var fileWrappers: [String : FileWrapper]? { get }
  func keyFor(child: FileWrapper) -> String?
  @NSCopying var regularFileContents: Data? { get }
  @NSCopying var symbolicLinkDestinationURL: URL? { get }
  convenience init()
  func encodeWith(aCoder: Coder)
}
enum FormattingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Dynamic
  case Standalone
  case ListItem
  case BeginningOfSentence
  case MiddleOfSentence
}
enum FormattingUnitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Short
  case Medium
  case Long
}
class Formatter : Object, Copying, Coding {
  func stringForObjectValue(obj: AnyObject) -> String?
  func attributedStringForObjectValue(obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]? = [:]) -> AttributedString?
  func editingStringForObjectValue(obj: AnyObject) -> String?
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialString: String, newEditing newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: RangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let HTTPCookieName: String
let HTTPCookieValue: String
let HTTPCookieOriginURL: String
let HTTPCookieVersion: String
let HTTPCookieDomain: String
let HTTPCookiePath: String
let HTTPCookieSecure: String
let HTTPCookieExpires: String
let HTTPCookieComment: String
let HTTPCookieCommentURL: String
let HTTPCookieDiscard: String
let HTTPCookieMaximumAge: String
let HTTPCookiePort: String
class HTTPCookie : Object {
  init?(properties: [String : AnyObject])
  class func requestHeaderFieldsWith(cookies: [HTTPCookie]) -> [String : String]
  class func cookiesWithResponseHeaderFields(headerFields: [String : String], forURL URL: URL) -> [HTTPCookie]
  var properties: [String : AnyObject]? { get }
  var version: Int { get }
  var name: String { get }
  var value: String { get }
  @NSCopying var expiresDate: Date? { get }
  var isSessionOnly: Bool { get }
  var domain: String { get }
  var path: String { get }
  var isSecure: Bool { get }
  var isHTTPOnly: Bool { get }
  var comment: String? { get }
  @NSCopying var commentURL: URL? { get }
  var portList: [Number]? { get }
  init()
}
enum HTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Always
  case Never
  case OnlyFromMainDocumentDomain
}
class HTTPCookieStorage : Object {
  class func shared() -> HTTPCookieStorage
  class func sharedCookieStorageForGroupContainerIdentifier(identifier: String) -> HTTPCookieStorage
  var cookies: [HTTPCookie]? { get }
  func setCookie(cookie: HTTPCookie)
  func deleteCookie(cookie: HTTPCookie)
  func removeCookiesSince(date: Date)
  func cookiesFor(URL: URL) -> [HTTPCookie]?
  func setCookies(cookies: [HTTPCookie], forURL URL: URL?, mainDocumentURL: URL?)
  var cookieAcceptPolicy: HTTPCookieAcceptPolicy
  func sortedCookiesUsing(sortOrder: [SortDescriptor]) -> [HTTPCookie]
  init()
}
extension HTTPCookieStorage {
  func storeCookies(cookies: [HTTPCookie], forTask task: URLSessionTask)
  func getCookiesFor(task: URLSessionTask, completionHandler: ([HTTPCookie]?) -> Void)
}
let HTTPCookieManagerAcceptPolicyChangedNotification: String
let HTTPCookieManagerCookiesChangedNotification: String
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
let hashTableStrongMemory: PointerFunctionsOptions
let hashTableCopyIn: PointerFunctionsOptions
let hashTableObjectPointerPersonality: PointerFunctionsOptions
let hashTableWeakMemory: PointerFunctionsOptions
typealias HashTableOptions = Int
class HashTable : Object, Copying, Coding, FastEnumeration {
  init(options: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: PointerFunctions, capacity initialCapacity: Int)
   init(options: PointerFunctionsOptions = [])
  class func weakObjects() -> HashTable
  @NSCopying var pointerFunctions: PointerFunctions { get }
  var count: Int { get }
  func member(object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> Enumerator
  func add(object: AnyObject?)
  func remove(object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func contains(anObject: AnyObject?) -> Bool
  func intersectsHashTable(other: HashTable) -> Bool
  func isEqualTo(other: HashTable) -> Bool
  func isSubsetOf(other: HashTable) -> Bool
  func intersectHashTable(other: HashTable)
  func unionHashTable(other: HashTable)
  func minusHashTable(other: HashTable)
  var setRepresentation: Set<Object> { get }
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class IndexPath : Object, Copying, SecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func adding(index: Int) -> IndexPath
  func removingLastIndex() -> IndexPath
  func indexAtPosition(position: Int) -> Int
  var length: Int { get }
  func getIndexes(indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(otherObject: IndexPath) -> ComparisonResult
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension IndexPath {
  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getIndexes:range: instead. 
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
class IndexSet : Object, Copying, MutableCopying, SecureCoding {
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  func isEqualTo(indexSet: IndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqualTo(value: Int) -> Int
  func indexLessThanOrEqualTo(value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: RangePointer) -> Int
  func countOfIndexesIn(range: NSRange) -> Int
  func contains(value: Int) -> Bool
  func containsIn(range: NSRange) -> Bool
  func contains(indexSet: IndexSet) -> Bool
  func intersectsIndexesIn(range: NSRange) -> Bool
  func enumerateUsing(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerate(options opts: EnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateIn(range: NSRange, options opts: EnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func index(options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexIn(range: NSRange, options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexes(options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesIn(range: NSRange, options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func enumerateRangesUsing(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateRanges(options opts: EnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateRangesIn(range: NSRange, options opts: EnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension IndexSet : SequenceType {
  func generate() -> NSIndexSetGenerator
  typealias Generator = NSIndexSetGenerator
  typealias SubSequence = AnySequence<Element>
}
class MutableIndexSet : IndexSet {
  func add(indexSet: IndexSet)
  func remove(indexSet: IndexSet)
  func removeAllIndexes()
  func add(value: Int)
  func remove(value: Int)
  func addIn(range: NSRange)
  func removeIn(range: NSRange)
  func shiftIndexesStartingAt(index: Int, by delta: Int)
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: Coder)
}
typealias ItemProviderCompletionHandler = (SecureCoding?, Error!) -> Void
typealias ItemProviderLoadHandler = (ItemProviderCompletionHandler!, AnyClass!, [Object : AnyObject]!) -> Void
class ItemProvider : Object, Copying {
  init(item: SecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: URL!)
  func registerItemForTypeIdentifier(typeIdentifier: String, loadHandler: ItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingToTypeIdentifier(typeIdentifier: String) -> Bool
  func loadItemForTypeIdentifier(typeIdentifier: String, options: [Object : AnyObject]? = [:], completionHandler: ItemProviderCompletionHandler? = nil)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
let itemProviderPreferredImageSizeKey: String
extension ItemProvider {
  var previewImageHandler: ItemProviderLoadHandler?
  func loadPreviewImage(options options: [Object : AnyObject]! = [:], completionHandler: ItemProviderCompletionHandler!)
}
let extensionJavaScriptPreprocessingResultsKey: String
let extensionJavaScriptFinalizeArgumentKey: String
let itemProviderErrorDomain: String
enum ItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  case UnavailableCoercionError
}
struct JSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MutableContainers: JSONReadingOptions { get }
  static var MutableLeaves: JSONReadingOptions { get }
  static var AllowFragments: JSONReadingOptions { get }
}
struct JSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrettyPrinted: JSONWritingOptions { get }
}
class JSONSerialization : Object {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func dataWithJSONObject(obj: AnyObject, options opt: JSONWritingOptions = []) throws -> Data
  class func jsonObjectWith(data: Data, options opt: JSONReadingOptions = []) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, to stream: OutputStream, options opt: JSONWritingOptions = [], error: ErrorPointer) -> Int
  class func jsonObjectWith(stream: InputStream, options opt: JSONReadingOptions = []) throws -> AnyObject
  init()
}
let undefinedKeyException: String
let averageKeyValueOperator: String
let countKeyValueOperator: String
let distinctUnionOfArraysKeyValueOperator: String
let distinctUnionOfObjectsKeyValueOperator: String
let distinctUnionOfSetsKeyValueOperator: String
let maximumKeyValueOperator: String
let minimumKeyValueOperator: String
let sumKeyValueOperator: String
let unionOfArraysKeyValueOperator: String
let unionOfObjectsKeyValueOperator: String
let unionOfSetsKeyValueOperator: String
extension Object {
  class func accessInstanceVariablesDirectly() -> Bool
  class func valueForKey(key: String) -> AnyObject?
  func valueForKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValueForKey(key: String) -> MutableArray
  func mutableArrayValueForKey(key: String) -> MutableArray
  class func mutableOrderedSetValueForKey(key: String) -> MutableOrderedSet
  func mutableOrderedSetValueForKey(key: String) -> MutableOrderedSet
  class func mutableSetValueForKey(key: String) -> MutableSet
  func mutableSetValueForKey(key: String) -> MutableSet
  class func valueForKeyPath(keyPath: String) -> AnyObject?
  func valueForKeyPath(keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValueForKeyPath(keyPath: String) -> MutableArray
  func mutableArrayValueForKeyPath(keyPath: String) -> MutableArray
  class func mutableOrderedSetValueForKeyPath(keyPath: String) -> MutableOrderedSet
  func mutableOrderedSetValueForKeyPath(keyPath: String) -> MutableOrderedSet
  class func mutableSetValueForKeyPath(keyPath: String) -> MutableSet
  func mutableSetValueForKeyPath(keyPath: String) -> MutableSet
  class func valueForUndefinedKey(key: String) -> AnyObject?
  func valueForUndefinedKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forUndefinedKey key: String)
  func setValue(value: AnyObject?, forUndefinedKey key: String)
  class func setNilValueForKey(key: String)
  func setNilValueForKey(key: String)
  class func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  class func setValuesForKeysWith(keyedValues: [String : AnyObject])
  func setValuesForKeysWith(keyedValues: [String : AnyObject])
}
extension NSArray {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSDictionary {
  func valueForKey(key: String) -> AnyObject?
}
extension MutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension OrderedSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
struct KeyValueObservingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var New: KeyValueObservingOptions { get }
  static var Old: KeyValueObservingOptions { get }
  static var Initial: KeyValueObservingOptions { get }
  static var Prior: KeyValueObservingOptions { get }
}
enum KeyValueChange : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Setting
  case Insertion
  case Removal
  case Replacement
}
enum KeyValueSetMutationKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnionSetMutation
  case MinusSetMutation
  case IntersectSetMutation
  case SetSetMutation
}
let keyValueChangeKindKey: String
let keyValueChangeNewKey: String
let keyValueChangeOldKey: String
let keyValueChangeIndexesKey: String
let keyValueChangeNotificationIsPriorKey: String
extension Object {
  class func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
}
extension Object {
  class func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: Object, forKeyPath keyPath: String)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(observer: Object, toObjectsAt indexes: IndexSet, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, fromObjectsAt indexes: IndexSet, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, fromObjectsAt indexes: IndexSet, forKeyPath keyPath: String)
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension OrderedSet {
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension NSSet {
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension Object {
  class func willChangeValueForKey(key: String)
  func willChangeValueForKey(key: String)
  class func didChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  class func willChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func willChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func didChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func didChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func willChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  func willChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  class func didChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  func didChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
}
extension Object {
  class func keyPathsForValuesAffectingValueForKey(key: String) -> Set<String>
  class func automaticallyNotifiesObserversForKey(key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(observationInfo: UnsafeMutablePointer<Void>)
}
let invalidArchiveOperationException: String
let invalidUnarchiveOperationException: String
let keyedArchiveRootObjectKey: String
class KeyedArchiver : Coder {
  class func archivedDataWithRootObject(rootObject: AnyObject) -> Data
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWith data: MutableData)
  unowned(unsafe) var delegate: @sil_unmanaged KeyedArchiverDelegate?
  var outputFormat: PropertyListFormat
  func finishEncoding()
  class func setClassName(codedName: String?, forClass cls: AnyClass)
  func setClassName(codedName: String?, forClass cls: AnyClass)
  class func classNameFor(cls: AnyClass) -> String?
  func classNameFor(cls: AnyClass) -> String?
  func encode(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encode(boolv: Bool, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int64, forKey key: String)
  func encode(realv: Float, forKey key: String)
  func encode(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  var requiresSecureCoding: Bool
  init()
}
class KeyedUnarchiver : Coder {
  class func unarchiveObjectWith(data: Data) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  init(forReadingWith data: Data)
  unowned(unsafe) var delegate: @sil_unmanaged KeyedUnarchiverDelegate?
  func finishDecoding()
  class func setClass(cls: AnyClass?, forClassName codedName: String)
  func setClass(cls: AnyClass?, forClassName codedName: String)
  class func classForClassName(codedName: String) -> AnyClass?
  func classForClassName(codedName: String) -> AnyClass?
  func containsValueForKey(key: String) -> Bool
  func decodeObjectForKey(key: String) -> AnyObject?
  func decodeBoolForKey(key: String) -> Bool
  func decodeIntForKey(key: String) -> Int32
  func decodeInt32ForKey(key: String) -> Int32
  func decodeInt64ForKey(key: String) -> Int64
  func decodeFloatForKey(key: String) -> Float
  func decodeDoubleForKey(key: String) -> Double
  func decodeBytesForKey(key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  var requiresSecureCoding: Bool
  init()
}
extension KeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(data: Data) throws -> AnyObject?
}
protocol KeyedArchiverDelegate : ObjectProtocol {
  optional func archiver(archiver: KeyedArchiver, willEncode object: AnyObject) -> AnyObject?
  optional func archiver(archiver: KeyedArchiver, didEncode object: AnyObject?)
  optional func archiver(archiver: KeyedArchiver, willReplace object: AnyObject?, withObject newObject: AnyObject?)
  optional func archiverWillFinish(archiver: KeyedArchiver)
  optional func archiverDidFinish(archiver: KeyedArchiver)
}
protocol KeyedUnarchiverDelegate : ObjectProtocol {
  optional func unarchiver(unarchiver: KeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(unarchiver: KeyedUnarchiver, didDecode object: AnyObject?) -> AnyObject?
  optional func unarchiver(unarchiver: KeyedUnarchiver, willReplace object: AnyObject, withObject newObject: AnyObject)
  optional func unarchiverWillFinish(unarchiver: KeyedUnarchiver)
  optional func unarchiverDidFinish(unarchiver: KeyedUnarchiver)
}
extension Object {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObjectFor(archiver: KeyedArchiver) -> AnyObject?
  func replacementObjectFor(archiver: KeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension Object {
  class func classForKeyedUnarchiver() -> AnyClass
}
enum LengthFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Millimeter
  case Centimeter
  case Meter
  case Kilometer
  case Inch
  case Foot
  case Yard
  case Mile
}
class LengthFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForPersonHeightUse: Bool
  func stringFromValue(value: Double, unit: LengthFormatterUnit) -> String
  func stringFromMeters(numberInMeters: Double) -> String
  func unitStringFromValue(value: Double, unit: LengthFormatterUnit) -> String
  func unitStringFromMeters(numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<LengthFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
let linguisticTagSchemeTokenType: String
let linguisticTagSchemeLexicalClass: String
let linguisticTagSchemeNameType: String
let linguisticTagSchemeNameTypeOrLexicalClass: String
let linguisticTagSchemeLemma: String
let linguisticTagSchemeLanguage: String
let linguisticTagSchemeScript: String
let linguisticTagWord: String
let linguisticTagPunctuation: String
let linguisticTagWhitespace: String
let linguisticTagOther: String
let linguisticTagNoun: String
let linguisticTagVerb: String
let linguisticTagAdjective: String
let linguisticTagAdverb: String
let linguisticTagPronoun: String
let linguisticTagDeterminer: String
let linguisticTagParticle: String
let linguisticTagPreposition: String
let linguisticTagNumber: String
let linguisticTagConjunction: String
let linguisticTagInterjection: String
let linguisticTagClassifier: String
let linguisticTagIdiom: String
let linguisticTagOtherWord: String
let linguisticTagSentenceTerminator: String
let linguisticTagOpenQuote: String
let linguisticTagCloseQuote: String
let linguisticTagOpenParenthesis: String
let linguisticTagCloseParenthesis: String
let linguisticTagWordJoiner: String
let linguisticTagDash: String
let linguisticTagOtherPunctuation: String
let linguisticTagParagraphBreak: String
let linguisticTagOtherWhitespace: String
let linguisticTagPersonalName: String
let linguisticTagPlaceName: String
let linguisticTagOrganizationName: String
struct LinguisticTaggerOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var OmitWords: LinguisticTaggerOptions { get }
  static var OmitPunctuation: LinguisticTaggerOptions { get }
  static var OmitWhitespace: LinguisticTaggerOptions { get }
  static var OmitOther: LinguisticTaggerOptions { get }
  static var JoinNames: LinguisticTaggerOptions { get }
}
class LinguisticTagger : Object {
  init(tagSchemes: [String], options opts: Int)
  var tagSchemes: [String] { get }
  var string: String?
  class func availableTagSchemesForLanguage(language: String) -> [String]
  func setOrthography(orthography: Orthography?, range: NSRange)
  func orthographyAt(charIndex: Int, effectiveRange: RangePointer) -> Orthography?
  func stringEditedIn(newRange: NSRange, changeInLength delta: Int)
  func enumerateTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func sentenceRangeFor(range: NSRange) -> NSRange
  func tagAt(charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer) -> String?
  func tagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  func possibleTagsAt(charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  func linguisticTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  func enumerateLinguisticTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
class Locale : Object, Copying, SecureCoding {
  func objectForKey(key: AnyObject) -> AnyObject?
  func displayNameForKey(key: AnyObject, value: AnyObject) -> String?
  init(localeIdentifier string: String)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension Locale {
  var localeIdentifier: String { get }
}
extension Locale {
  class func autoupdatingCurrent() -> Locale
  class func current() -> Locale
  class func system() -> Locale
}
extension Locale {
  class func availableLocaleIdentifiers() -> [String]
  class func isoLanguageCodes() -> [String]
  class func isoCountryCodes() -> [String]
  class func isoCurrencyCodes() -> [String]
  class func commonISOCurrencyCodes() -> [String]
  class func preferredLanguages() -> [String]
  class func componentsFromLocaleIdentifier(string: String) -> [String : String]
  class func localeIdentifierFromComponents(dict: [String : String]) -> String
  class func canonicalLocaleIdentifierFrom(string: String) -> String
  class func canonicalLanguageIdentifierFrom(string: String) -> String
  class func localeIdentifierFromWindowsLocaleCode(lcid: UInt32) -> String?
  class func windowsLocaleCodeFromLocaleIdentifier(localeIdentifier: String) -> UInt32
  class func characterDirectionForLanguage(isoLangCode: String) -> LocaleLanguageDirection
  class func lineDirectionForLanguage(isoLangCode: String) -> LocaleLanguageDirection
}
enum LocaleLanguageDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case LeftToRight
  case RightToLeft
  case TopToBottom
  case BottomToTop
}
let currentLocaleDidChangeNotification: String
let localeIdentifier: String
let localeLanguageCode: String
let localeCountryCode: String
let localeScriptCode: String
let localeVariantCode: String
let localeExemplarCharacterSet: String
let localeCalendar: String
let localeCollationIdentifier: String
let localeUsesMetricSystem: String
let localeMeasurementSystem: String
let localeDecimalSeparator: String
let localeGroupingSeparator: String
let localeCurrencySymbol: String
let localeCurrencyCode: String
let localeCollatorIdentifier: String
let localeQuotationBeginDelimiterKey: String
let localeQuotationEndDelimiterKey: String
let localeAlternateQuotationBeginDelimiterKey: String
let localeAlternateQuotationEndDelimiterKey: String
let gregorianCalendar: String
let buddhistCalendar: String
let chineseCalendar: String
let hebrewCalendar: String
let islamicCalendar: String
let islamicCivilCalendar: String
let japaneseCalendar: String
let republicOfChinaCalendar: String
let persianCalendar: String
let indianCalendar: String
let ISO8601Calendar: String
protocol Locking {
  func lock()
  func unlock()
}
class Lock : Object, Locking {
  func tryLock() -> Bool
  func lockBefore(limit: Date) -> Bool
  var name: String?
  init()
  func lock()
  func unlock()
}
class ConditionLock : Object, Locking {
  init(condition: Int)
  var condition: Int { get }
  func lockWhenCondition(condition: Int)
  func tryLock() -> Bool
  func tryWhenCondition(condition: Int) -> Bool
  func unlockWithCondition(condition: Int)
  func lockBefore(limit: Date) -> Bool
  func lockWhenCondition(condition: Int, before limit: Date) -> Bool
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class RecursiveLock : Object, Locking {
  func tryLock() -> Bool
  func lockBefore(limit: Date) -> Bool
  var name: String?
  init()
  func lock()
  func unlock()
}
class Condition : Object, Locking {
  func wait()
  func waitUntil(limit: Date) -> Bool
  func signal()
  func broadcast()
  var name: String?
  init()
  func lock()
  func unlock()
}
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
let mapTableStrongMemory: PointerFunctionsOptions
let mapTableCopyIn: PointerFunctionsOptions
let mapTableObjectPointerPersonality: PointerFunctionsOptions
let mapTableWeakMemory: PointerFunctionsOptions
typealias MapTableOptions = Int
class MapTable : Object, Copying, Coding, FastEnumeration {
  init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: PointerFunctions, valuePointerFunctions valueFunctions: PointerFunctions, capacity initialCapacity: Int)
   init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [])
  class func strongToStrongObjects() -> MapTable
  class func weakToStrongObjects() -> MapTable
  class func strongToWeakObjects() -> MapTable
  class func weakToWeakObjects() -> MapTable
  @NSCopying var keyPointerFunctions: PointerFunctions { get }
  @NSCopying var valuePointerFunctions: PointerFunctions { get }
  func objectFor(aKey: AnyObject?) -> AnyObject?
  func removeObjectFor(aKey: AnyObject?)
  func setObject(anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> Enumerator
  func objectEnumerator() -> Enumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [Object : AnyObject]
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
enum MassFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Gram
  case Kilogram
  case Ounce
  case Pound
  case Stone
}
class MassFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForPersonMassUse: Bool
  func stringFromValue(value: Double, unit: MassFormatterUnit) -> String
  func stringFromKilograms(numberInKilograms: Double) -> String
  func unitStringFromValue(value: Double, unit: MassFormatterUnit) -> String
  func unitStringFromKilograms(numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<MassFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
class MetadataQuery : Object {
  unowned(unsafe) var delegate: @sil_unmanaged MetadataQueryDelegate?
  @NSCopying var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: TimeInterval
  var searchScopes: [AnyObject]
  var searchItems: [AnyObject]?
  var operationQueue: OperationQueue?
  func start() -> Bool
  func stop()
  var isStarted: Bool { get }
  var isGathering: Bool { get }
  var isStopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func resultAt(idx: Int) -> AnyObject
  func enumerateResultsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateResults(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(result: AnyObject) -> Int
  var valueLists: [String : [MetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [MetadataQueryResultGroup] { get }
  func valueOfAttribute(attrName: String, forResultAt idx: Int) -> AnyObject?
  init()
}
protocol MetadataQueryDelegate : ObjectProtocol {
  optional func metadataQuery(query: MetadataQuery, replacementObjectForResultObject result: MetadataItem) -> AnyObject
  optional func metadataQuery(query: MetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
let metadataQueryDidStartGatheringNotification: String
let metadataQueryGatheringProgressNotification: String
let metadataQueryDidFinishGatheringNotification: String
let metadataQueryDidUpdateNotification: String
let metadataQueryUpdateAddedItemsKey: String
let metadataQueryUpdateChangedItemsKey: String
let metadataQueryUpdateRemovedItemsKey: String
let metadataQueryResultContentRelevanceAttribute: String
let metadataQueryUbiquitousDocumentsScope: String
let metadataQueryUbiquitousDataScope: String
let metadataQueryAccessibleUbiquitousExternalDocumentsScope: String
class MetadataItem : Object {
  func valueForAttribute(key: String) -> AnyObject?
  func valuesForAttributes(keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
class MetadataQueryAttributeValueTuple : Object {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
class MetadataQueryResultGroup : Object {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [MetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAt(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
let metadataItemFSNameKey: String
let metadataItemDisplayNameKey: String
let metadataItemURLKey: String
let metadataItemPathKey: String
let metadataItemFSSizeKey: String
let metadataItemFSCreationDateKey: String
let metadataItemFSContentChangeDateKey: String
let metadataItemContentTypeKey: String
let metadataItemContentTypeTreeKey: String
let metadataItemIsUbiquitousKey: String
let metadataUbiquitousItemHasUnresolvedConflictsKey: String
let metadataUbiquitousItemIsDownloadedKey: String
let metadataUbiquitousItemDownloadingStatusKey: String
let metadataUbiquitousItemDownloadingStatusNotDownloaded: String
let metadataUbiquitousItemDownloadingStatusDownloaded: String
let metadataUbiquitousItemDownloadingStatusCurrent: String
let metadataUbiquitousItemIsDownloadingKey: String
let metadataUbiquitousItemIsUploadedKey: String
let metadataUbiquitousItemIsUploadingKey: String
let metadataUbiquitousItemPercentDownloadedKey: String
let metadataUbiquitousItemPercentUploadedKey: String
let metadataUbiquitousItemDownloadingErrorKey: String
let metadataUbiquitousItemUploadingErrorKey: String
let metadataUbiquitousItemDownloadRequestedKey: String
let metadataUbiquitousItemIsExternalDocumentKey: String
let metadataUbiquitousItemContainerDisplayNameKey: String
let metadataUbiquitousItemURLInLocalContainerKey: String
let netServicesErrorCode: String
let netServicesErrorDomain: String
enum NetServicesError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case CollisionError
  case NotFoundError
  case ActivityInProgress
  case BadArgumentError
  case CancelledError
  case InvalidError
  case TimeoutError
}
struct NetServiceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoAutoRename: NetServiceOptions { get }
  static var ListenForConnections: NetServiceOptions { get }
}
class Notification : Object, Copying, Coding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [Object : AnyObject]? { get }
  init(name: String, object: AnyObject?, userInfo: [Object : AnyObject]? = [:])
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
extension Notification {
  convenience init(name aName: String, object anObject: AnyObject?)
  convenience init()
}
class NotificationCenter : Object {
  class func defaultCenter() -> NotificationCenter
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func post(notification: Notification)
  func postNotificationName(aName: String, object anObject: AnyObject?)
  func postNotificationName(aName: String, object anObject: AnyObject?, userInfo aUserInfo: [Object : AnyObject]? = [:])
  func removeObserver(observer: AnyObject)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  func addObserverForName(name: String?, object obj: AnyObject?, queue: OperationQueue?, usingBlock block: (Notification) -> Void) -> ObjectProtocol
  init()
}
enum PostingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PostWhenIdle
  case PostASAP
  case PostNow
}
struct NotificationCoalescing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoCoalescing: NotificationCoalescing { get }
  static var CoalescingOnName: NotificationCoalescing { get }
  static var CoalescingOnSender: NotificationCoalescing { get }
}
class NotificationQueue : Object {
  class func defaultQueue() -> NotificationQueue
  init(notificationCenter: NotificationCenter)
  func enqueueNotification(notification: Notification, postingStyle: PostingStyle)
  func enqueueNotification(notification: Notification, postingStyle: PostingStyle, coalesceMask: NotificationCoalescing, forModes modes: [String]?)
  func dequeueNotificationsMatching(notification: Notification, coalesceMask: Int)
  convenience init()
}
class Null : Object, Copying, SecureCoding {
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
enum NumberFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_4
}
class NumberFormatter : Formatter {
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(number: Number) -> String?
  func numberFrom(string: String) -> Number?
  class func localizedStringFrom(num: Number, number nstyle: NumberFormatterStyle) -> String
  class func defaultFormatterBehavior() -> NumberFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NumberFormatterBehavior)
  var numberStyle: NumberFormatterStyle
  @NSCopying var locale: Locale!
  var generatesDecimalNumbers: Bool
  var formatterBehavior: NumberFormatterBehavior
  var negativeFormat: String!
  var textAttributesForNegativeValues: [String : AnyObject]?
  var positiveFormat: String!
  var textAttributesForPositiveValues: [String : AnyObject]?
  var allowsFloats: Bool
  var decimalSeparator: String!
  var alwaysShowsDecimalSeparator: Bool
  var currencyDecimalSeparator: String!
  var usesGroupingSeparator: Bool
  var groupingSeparator: String!
  var zeroSymbol: String?
  var textAttributesForZero: [String : AnyObject]?
  var nilSymbol: String
  var textAttributesForNil: [String : AnyObject]?
  var notANumberSymbol: String!
  var textAttributesForNotANumber: [String : AnyObject]?
  var positiveInfinitySymbol: String
  var textAttributesForPositiveInfinity: [String : AnyObject]?
  var negativeInfinitySymbol: String
  var textAttributesForNegativeInfinity: [String : AnyObject]?
  var positivePrefix: String!
  var positiveSuffix: String!
  var negativePrefix: String!
  var negativeSuffix: String!
  var currencyCode: String!
  var currencySymbol: String!
  var internationalCurrencySymbol: String!
  var percentSymbol: String!
  var perMillSymbol: String!
  var minusSign: String!
  var plusSign: String!
  var exponentSymbol: String!
  var groupingSize: Int
  var secondaryGroupingSize: Int
  @NSCopying var multiplier: Number?
  var formatWidth: Int
  var paddingCharacter: String!
  var paddingPosition: NumberFormatterPadPosition
  var roundingMode: NumberFormatterRoundingMode
  @NSCopying var roundingIncrement: Number!
  var minimumIntegerDigits: Int
  var maximumIntegerDigits: Int
  var minimumFractionDigits: Int
  var maximumFractionDigits: Int
  @NSCopying var minimum: Number?
  @NSCopying var maximum: Number?
  var currencyGroupingSeparator: String!
  var isLenient: Bool
  var usesSignificantDigits: Bool
  var minimumSignificantDigits: Int
  var maximumSignificantDigits: Int
  var isPartialStringValidationEnabled: Bool
  init()
  init?(coder aDecoder: Coder)
}
enum NumberFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case DecimalStyle
  case CurrencyStyle
  case PercentStyle
  case ScientificStyle
  case SpellOutStyle
  case OrdinalStyle
  case CurrencyISOCodeStyle
  case CurrencyPluralStyle
  case CurrencyAccountingStyle
}
enum NumberFormatterPadPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BeforePrefix
  case AfterPrefix
  case BeforeSuffix
  case AfterSuffix
}
enum NumberFormatterRoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundCeiling
  case RoundFloor
  case RoundDown
  case RoundUp
  case RoundHalfEven
  case RoundHalfDown
  case RoundHalfUp
}
var foundationVersionNumber: Double
var NSFoundationVersionNumber10_0: Double { get }
var NSFoundationVersionNumber10_1: Double { get }
var NSFoundationVersionNumber10_1_1: Double { get }
var NSFoundationVersionNumber10_1_2: Double { get }
var NSFoundationVersionNumber10_1_3: Double { get }
var NSFoundationVersionNumber10_1_4: Double { get }
var NSFoundationVersionNumber10_2: Double { get }
var NSFoundationVersionNumber10_2_1: Double { get }
var NSFoundationVersionNumber10_2_2: Double { get }
var NSFoundationVersionNumber10_2_3: Double { get }
var NSFoundationVersionNumber10_2_4: Double { get }
var NSFoundationVersionNumber10_2_5: Double { get }
var NSFoundationVersionNumber10_2_6: Double { get }
var NSFoundationVersionNumber10_2_7: Double { get }
var NSFoundationVersionNumber10_2_8: Double { get }
var NSFoundationVersionNumber10_3: Double { get }
var NSFoundationVersionNumber10_3_1: Double { get }
var NSFoundationVersionNumber10_3_2: Double { get }
var NSFoundationVersionNumber10_3_3: Double { get }
var NSFoundationVersionNumber10_3_4: Double { get }
var NSFoundationVersionNumber10_3_5: Double { get }
var NSFoundationVersionNumber10_3_6: Double { get }
var NSFoundationVersionNumber10_3_7: Double { get }
var NSFoundationVersionNumber10_3_8: Double { get }
var NSFoundationVersionNumber10_3_9: Double { get }
var NSFoundationVersionNumber10_4: Double { get }
var NSFoundationVersionNumber10_4_1: Double { get }
var NSFoundationVersionNumber10_4_2: Double { get }
var NSFoundationVersionNumber10_4_3: Double { get }
var NSFoundationVersionNumber10_4_4_Intel: Double { get }
var NSFoundationVersionNumber10_4_4_PowerPC: Double { get }
var NSFoundationVersionNumber10_4_5: Double { get }
var NSFoundationVersionNumber10_4_6: Double { get }
var NSFoundationVersionNumber10_4_7: Double { get }
var NSFoundationVersionNumber10_4_8: Double { get }
var NSFoundationVersionNumber10_4_9: Double { get }
var NSFoundationVersionNumber10_4_10: Double { get }
var NSFoundationVersionNumber10_4_11: Double { get }
var NSFoundationVersionNumber10_5: Double { get }
var NSFoundationVersionNumber10_5_1: Double { get }
var NSFoundationVersionNumber10_5_2: Double { get }
var NSFoundationVersionNumber10_5_3: Double { get }
var NSFoundationVersionNumber10_5_4: Double { get }
var NSFoundationVersionNumber10_5_5: Double { get }
var NSFoundationVersionNumber10_5_6: Double { get }
var NSFoundationVersionNumber10_5_7: Double { get }
var NSFoundationVersionNumber10_5_8: Double { get }
var NSFoundationVersionNumber10_6: Double { get }
var NSFoundationVersionNumber10_6_1: Double { get }
var NSFoundationVersionNumber10_6_2: Double { get }
var NSFoundationVersionNumber10_6_3: Double { get }
var NSFoundationVersionNumber10_6_4: Double { get }
var NSFoundationVersionNumber10_6_5: Double { get }
var NSFoundationVersionNumber10_6_6: Double { get }
var NSFoundationVersionNumber10_6_7: Double { get }
var NSFoundationVersionNumber10_6_8: Double { get }
var NSFoundationVersionNumber10_7: Double { get }
var NSFoundationVersionNumber10_7_1: Double { get }
var NSFoundationVersionNumber10_7_2: Double { get }
var NSFoundationVersionNumber10_7_3: Double { get }
var NSFoundationVersionNumber10_7_4: Double { get }
var NSFoundationVersionNumber10_8: Double { get }
var NSFoundationVersionNumber10_8_1: Double { get }
var NSFoundationVersionNumber10_8_2: Double { get }
var NSFoundationVersionNumber10_8_3: Double { get }
var NSFoundationVersionNumber10_8_4: Double { get }
var NSFoundationVersionNumber10_9: Int32 { get }
var NSFoundationVersionNumber10_9_1: Int32 { get }
var NSFoundationVersionNumber10_9_2: Double { get }
var NSFoundationVersionNumber10_10: Double { get }
var NSFoundationVersionNumber10_10_1: Double { get }
var NSFoundationVersionNumber10_10_2: Double { get }
var NSFoundationVersionNumber10_10_3: Double { get }
var NSFoundationVersionNumber_iPhoneOS_2_0: Double { get }
var NSFoundationVersionNumber_iPhoneOS_2_1: Double { get }
var NSFoundationVersionNumber_iPhoneOS_2_2: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_0: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_1: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_2: Double { get }
var NSFoundationVersionNumber_iOS_4_0: Double { get }
var NSFoundationVersionNumber_iOS_4_1: Double { get }
var NSFoundationVersionNumber_iOS_4_2: Double { get }
var NSFoundationVersionNumber_iOS_4_3: Double { get }
var NSFoundationVersionNumber_iOS_5_0: Double { get }
var NSFoundationVersionNumber_iOS_5_1: Double { get }
var NSFoundationVersionNumber_iOS_6_0: Double { get }
var NSFoundationVersionNumber_iOS_6_1: Double { get }
var NSFoundationVersionNumber_iOS_7_0: Double { get }
var NSFoundationVersionNumber_iOS_7_1: Double { get }
var NSFoundationVersionNumber_iOS_8_0: Double { get }
var NSFoundationVersionNumber_iOS_8_1: Double { get }
var NSFoundationVersionNumber_iOS_8_2: Double { get }
var NSFoundationVersionNumber_iOS_8_3: Double { get }
func stringFromSelector(aSelector: Selector) -> String
func selectorFromString(aSelectorName: String) -> Selector
func stringFromClass(aClass: AnyClass) -> String
func classFromString(aClassName: String) -> AnyClass?
func stringFromProtocol(proto: Protocol) -> String
func protocolFromString(namestr: String) -> Protocol?
func getSizeAndAlignment(typePtr: UnsafePointer<Int8>, _ sizep: UnsafeMutablePointer<Int>, _ alignp: UnsafeMutablePointer<Int>) -> UnsafePointer<Int8>
func logv(format: String, _ args: CVaListPointer)
enum ComparisonResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OrderedAscending
  case OrderedSame
  case OrderedDescending
}
typealias Comparator = (AnyObject, AnyObject) -> ComparisonResult
struct EnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: EnumerationOptions { get }
  static var Reverse: EnumerationOptions { get }
}
struct SortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: SortOptions { get }
  static var Stable: SortOptions { get }
}
enum QualityOfService : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserInteractive
  case UserInitiated
  case Utility
  case Background
  case Default
}
let notFound: Int
protocol Copying {
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol MutableCopying {
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
protocol Coding {
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SecureCoding : Coding {
  static func supportsSecureCoding() -> Bool
}
extension Object {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObjectFor(aCoder: Coder) -> AnyObject?
  func replacementObjectFor(aCoder: Coder) -> AnyObject?
  class func awakeAfterUsing(aDecoder: Coder) -> AnyObject?
  func awakeAfterUsing(aDecoder: Coder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
protocol DiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension Object {
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> AnyObject?
class Operation : Object {
  func start()
  func main()
  var isCancelled: Bool { get }
  func cancel()
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isConcurrent: Bool { get }
  var isAsynchronous: Bool { get }
  var isReady: Bool { get }
  func addDependency(op: Operation)
  func removeDependency(op: Operation)
  var dependencies: [Operation] { get }
  var queuePriority: OperationQueuePriority
  var completionBlock: (() -> Void)?
  func waitUntilFinished()
  var threadPriority: Double
  var qualityOfService: QualityOfService
  var name: String?
  init()
}
enum OperationQueuePriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case VeryLow
  case Low
  case Normal
  case High
  case VeryHigh
}
class BlockOperation : Operation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
let invocationOperationVoidResultException: String
let invocationOperationCancelledException: String
let operationQueueDefaultMaxConcurrentOperationCount: Int
class OperationQueue : Object {
  func addOperation(op: Operation)
  func addOperations(ops: [Operation], waitUntilFinished wait: Bool)
  func addOperationWith(block: () -> Void)
  var operations: [Operation] { get }
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  var name: String?
  var qualityOfService: QualityOfService
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  class func current() -> OperationQueue?
  class func main() -> OperationQueue
  init()
}
class OrderedSet : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectAt(idx: Int) -> AnyObject
  func indexOf(object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
extension OrderedSet : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension OrderedSet {
  convenience init(objects elements: AnyObject...)
}
extension OrderedSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension OrderedSet {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func objectsAt(indexes: IndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqualTo(other: OrderedSet) -> Bool
  func contains(object: AnyObject) -> Bool
  func intersectsOrderedSet(other: OrderedSet) -> Bool
  func intersectsSet(set: Set<Object>) -> Bool
  func isSubsetOf(other: OrderedSet) -> Bool
  func isSubsetOf(set: Set<Object>) -> Bool
  subscript (idx: Int) -> AnyObject { get }
  func objectEnumerator() -> Enumerator
  func reverseObjectEnumerator() -> Enumerator
  @NSCopying var reversed: OrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<Object> { get }
  func enumerateObjectsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObject(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjects(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexesOfObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexOf(object: AnyObject, inSortedRange range: NSRange, options opts: BinarySearchingOptions = [], usingComparator cmp: Comparator) -> Int
  func sortedArrayUsingComparator(cmptr: Comparator) -> [AnyObject]
  func sortedArray(options opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
}
extension OrderedSet {
  convenience init(object: AnyObject)
  convenience init(orderedSet set: OrderedSet)
  convenience init(orderedSet set: OrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: OrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
class MutableOrderedSet : OrderedSet {
  func insert(object: AnyObject, at idx: Int)
  func removeObjectAt(idx: Int)
  func replaceObjectAt(idx: Int, withObject object: AnyObject)
  init?(coder aDecoder: Coder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(orderedSet set: OrderedSet)
  convenience init(orderedSet set: OrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: OrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
extension MutableOrderedSet {
  func add(object: AnyObject)
  func addObjects(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjectsFrom(array: [AnyObject])
  func exchangeObjectAt(idx1: Int, withObjectAt idx2: Int)
  func moveObjectsAt(indexes: IndexSet, to idx: Int)
  func insert(objects: [AnyObject], at indexes: IndexSet)
  func setObject(obj: AnyObject, at idx: Int)
  subscript (idx: Int) -> AnyObject
  func replaceObjectsIn(range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjectsAt(indexes: IndexSet, withObjects objects: [AnyObject])
  func removeObjectsIn(range: NSRange)
  func removeObjectsAt(indexes: IndexSet)
  func removeAllObjects()
  func remove(object: AnyObject)
  func removeObjectsIn(array: [AnyObject])
  func intersectOrderedSet(other: OrderedSet)
  func minusOrderedSet(other: OrderedSet)
  func unionOrderedSet(other: OrderedSet)
  func intersectSet(other: Set<Object>)
  func minusSet(other: Set<Object>)
  func unionSet(other: Set<Object>)
  func sortUsingComparator(cmptr: Comparator)
  func sort(options opts: SortOptions = [], usingComparator cmptr: Comparator)
  func sortRange(range: NSRange, options opts: SortOptions = [], usingComparator cmptr: Comparator)
}
extension MutableOrderedSet {
}
class Orthography : Object, Copying, Coding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: Coder)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
extension Orthography {
  func languagesForScript(script: String) -> [String]?
  func dominantLanguageForScript(script: String) -> String?
  var dominantLanguage: String { get }
  var allScripts: [String] { get }
  var allLanguages: [String] { get }
}
extension Orthography {
}
extension NSString {
  class func pathWithComponents(components: [String]) -> String
  var pathComponents: [String] { get }
  var isAbsolutePath: Bool { get }
  var lastPathComponent: String { get }
  var deletingLastPathComponent: String { get }
  func appendingPathComponent(str: String) -> String
  var pathExtension: String { get }
  var deletingPathExtension: String { get }
  func appendingPathExtension(str: String) -> String?
  var abbreviatingWithTildeInPath: String { get }
  var expandingTildeInPath: String { get }
  var standardizingPath: String { get }
  var resolvingSymlinksInPath: String { get }
  func stringsByAppendingPaths(paths: [String]) -> [String]
  func completePathInto(outputName: AutoreleasingUnsafeMutablePointer<NSString?>, caseSensitive flag: Bool, matchesInto outputArray: AutoreleasingUnsafeMutablePointer<NSArray?>, filterTypes: [String]?) -> Int
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  func getFileSystemRepresentation(cname: UnsafeMutablePointer<Int8>, maxLength max: Int) -> Bool
}
extension NSArray {
  func pathsMatchingExtensions(filterTypes: [String]) -> [String]
}
func userName() -> String
func fullUserName() -> String
func homeDirectory() -> String
func homeDirectoryForUser(userName: String?) -> String?
func temporaryDirectory() -> String
func openStepRootDirectory() -> String
enum SearchPathDirectory : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ApplicationDirectory
  case DemoApplicationDirectory
  case DeveloperApplicationDirectory
  case AdminApplicationDirectory
  case LibraryDirectory
  case DeveloperDirectory
  case UserDirectory
  case DocumentationDirectory
  case DocumentDirectory
  case CoreServiceDirectory
  case AutosavedInformationDirectory
  case DesktopDirectory
  case CachesDirectory
  case ApplicationSupportDirectory
  case DownloadsDirectory
  case InputMethodsDirectory
  case MoviesDirectory
  case MusicDirectory
  case PicturesDirectory
  case PrinterDescriptionDirectory
  case SharedPublicDirectory
  case PreferencePanesDirectory
  case ItemReplacementDirectory
  case AllApplicationsDirectory
  case AllLibrariesDirectory
}
struct SearchPathDomainMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UserDomainMask: SearchPathDomainMask { get }
  static var LocalDomainMask: SearchPathDomainMask { get }
  static var NetworkDomainMask: SearchPathDomainMask { get }
  static var SystemDomainMask: SearchPathDomainMask { get }
  static var AllDomainsMask: SearchPathDomainMask { get }
}
func searchPathForDirectoriesInDomains(directory: SearchPathDirectory, _ domainMask: SearchPathDomainMask, _ expandTilde: Bool) -> [String]
class PersonNameComponents : Object, Copying, SecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: PersonNameComponents?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
enum PersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
struct PersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: PersonNameComponentsFormatterOptions { get }
}
class PersonNameComponentsFormatter : Formatter {
  var style: PersonNameComponentsFormatterStyle
  var isPhonetic: Bool
  class func localizedStringFrom(components: PersonNameComponents, style nameFormatStyle: PersonNameComponentsFormatterStyle, options nameOptions: PersonNameComponentsFormatterOptions = []) -> String
  func stringFrom(components: PersonNameComponents) -> String
  func annotatedStringFrom(components: PersonNameComponents) -> AttributedString
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
let personNameComponentKey: String
let personNameComponentGivenName: String
let personNameComponentFamilyName: String
let personNameComponentMiddleName: String
let personNameComponentPrefix: String
let personNameComponentSuffix: String
let personNameComponentNickname: String
let personNameComponentDelimiter: String
class PointerArray : Object, FastEnumeration, Copying, Coding {
  init(options: PointerFunctionsOptions = [])
  init(pointerFunctions functions: PointerFunctions)
  @NSCopying var pointerFunctions: PointerFunctions { get }
  func pointerAt(index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(pointer: UnsafeMutablePointer<Void>)
  func removePointerAt(index: Int)
  func insertPointer(item: UnsafeMutablePointer<Void>, at index: Int)
  func replacePointerAt(index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  convenience init()
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension PointerArray {
  class func strongObjects() -> PointerArray
  class func weakObjects() -> PointerArray
  var allObjects: [AnyObject] { get }
}
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct PointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var StrongMemory: PointerFunctionsOptions { get }
  static var OpaqueMemory: PointerFunctionsOptions { get }
  static var MallocMemory: PointerFunctionsOptions { get }
  static var MachVirtualMemory: PointerFunctionsOptions { get }
  static var WeakMemory: PointerFunctionsOptions { get }
  static var ObjectPersonality: PointerFunctionsOptions { get }
  static var OpaquePersonality: PointerFunctionsOptions { get }
  static var ObjectPointerPersonality: PointerFunctionsOptions { get }
  static var CStringPersonality: PointerFunctionsOptions { get }
  static var StructPersonality: PointerFunctionsOptions { get }
  static var IntegerPersonality: PointerFunctionsOptions { get }
  static var CopyIn: PointerFunctionsOptions { get }
}
class PointerFunctions : Object, Copying {
  init(options: PointerFunctionsOptions = [])
  var hashFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Int)?
  var isEqualFunction: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> ObjCBool)?
  var sizeFunction: (@convention(c) (UnsafePointer<Void>) -> Int)?
  var descriptionFunction: (@convention(c) (UnsafePointer<Void>) -> String?)?
  var relinquishFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Void)?
  var acquireFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?, ObjCBool) -> UnsafeMutablePointer<Void>)?
  var usesStrongWriteBarrier: Bool
  var usesWeakReadAndWriteBarriers: Bool
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias SocketNativeHandle = Int32
let portDidBecomeInvalidNotification: String
class Port : Object, Copying, Coding {
  func invalidate()
  var isValid: Bool { get }
  func setDelegate(anObject: PortDelegate?)
  func delegate() -> PortDelegate?
  func scheduleIn(runLoop: RunLoop, forMode mode: String)
  func removeFrom(runLoop: RunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func sendBefore(limitDate: Date, components: MutableArray?, from receivePort: Port?, reserved headerSpaceReserved: Int) -> Bool
  func sendBefore(limitDate: Date, msgid msgID: Int, components: MutableArray?, from receivePort: Port?, reserved headerSpaceReserved: Int) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol PortDelegate : ObjectProtocol {
}
class MachPort : Port {
  class func portWithMachPort(machPort: UInt32) -> Port
  init(machPort: UInt32)
  func setDelegate(anObject: MachPortDelegate?)
  func delegate() -> MachPortDelegate?
  class func portWithMachPort(machPort: UInt32, options f: MachPortOptions = []) -> Port
  init(machPort: UInt32, options f: MachPortOptions = [])
  var machPort: UInt32 { get }
  func scheduleIn(runLoop: RunLoop, forMode mode: String)
  func removeFrom(runLoop: RunLoop, forMode mode: String)
  convenience init()
  init?(coder aDecoder: Coder)
}
struct MachPortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeallocateNone: MachPortOptions { get }
  static var DeallocateSendRight: MachPortOptions { get }
  static var DeallocateReceiveRight: MachPortOptions { get }
}
protocol MachPortDelegate : PortDelegate {
  optional func handleMachMessage(msg: UnsafeMutablePointer<Void>)
}
class MessagePort : Port {
  init()
  init?(coder aDecoder: Coder)
}
class Predicate : Object, SecureCoding, Copying {
   init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
   init(format predicateFormat: String, arguments argList: CVaListPointer)
   init(value: Bool)
   init(block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func withSubstitutionVariables(variables: [String : AnyObject]) -> Self
  func evaluateWith(object: AnyObject?) -> Bool
  func evaluateWith(object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  func allowEvaluation()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension Predicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArrayUsing(predicate: Predicate) -> [AnyObject]
}
extension MutableArray {
  func filterUsing(predicate: Predicate)
}
extension NSSet {
  func filteredSetUsing(predicate: Predicate) -> Set<Object>
}
extension MutableSet {
  func filterUsing(predicate: Predicate)
}
extension OrderedSet {
  func filteredOrderedSetUsing(p: Predicate) -> OrderedSet
}
extension MutableOrderedSet {
  func filterUsing(p: Predicate)
}
var windowsNTOperatingSystem: Int { get }
var windows95OperatingSystem: Int { get }
var solarisOperatingSystem: Int { get }
var HPUXOperatingSystem: Int { get }
var MACHOperatingSystem: Int { get }
var sunOSOperatingSystem: Int { get }
var OSF1OperatingSystem: Int { get }
struct OperatingSystemVersion {
  var majorVersion: Int
  var minorVersion: Int
  var patchVersion: Int
  init()
  init(majorVersion: Int, minorVersion: Int, patchVersion: Int)
}
class ProcessInfo : Object {
  class func processInfo() -> ProcessInfo
  var environment: [String : String] { get }
  var arguments: [String] { get }
  var hostName: String { get }
  var processName: String
  var processIdentifier: Int32 { get }
  var globallyUniqueString: String { get }
  func operatingSystem() -> Int
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  var operatingSystemVersion: OperatingSystemVersion { get }
  var processorCount: Int { get }
  var activeProcessorCount: Int { get }
  var physicalMemory: UInt64 { get }
  func isOperatingSystemAtLeastVersion(version: OperatingSystemVersion) -> Bool
  var systemUptime: TimeInterval { get }
  init()
}
struct ActivityOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var IdleDisplaySleepDisabled: ActivityOptions { get }
  static var IdleSystemSleepDisabled: ActivityOptions { get }
  static var SuddenTerminationDisabled: ActivityOptions { get }
  static var AutomaticTerminationDisabled: ActivityOptions { get }
  static var UserInitiated: ActivityOptions { get }
  static var UserInitiatedAllowingIdleSystemSleep: ActivityOptions { get }
  static var Background: ActivityOptions { get }
  static var LatencyCritical: ActivityOptions { get }
}
extension ProcessInfo {
  func beginActivity(options options: ActivityOptions = [], reason: String) -> ObjectProtocol
  func endActivity(activity: ObjectProtocol)
  func performActivity(options options: ActivityOptions = [], reason: String, usingBlock block: () -> Void)
  func performExpiringActivityWithReason(reason: String, usingBlock block: (Bool) -> Void)
}
extension ProcessInfo {
}
extension ProcessInfo {
  var isLowPowerModeEnabled: Bool { get }
}
let processInfoPowerStateDidChangeNotification: String
class Progress : Object {
  class func current() -> Progress?
   init(totalUnitCount unitCount: Int64)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> Progress
   init(totalUnitCount unitCount: Int64, parent: Progress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: Progress?, userInfo userInfoOrNil: [Object : AnyObject]? = [:])
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  func addChild(child: Progress, withPendingUnitCount inUnitCount: Int64)
  var totalUnitCount: Int64
  var completedUnitCount: Int64
  var localizedDescription: String!
  var localizedAdditionalDescription: String!
  var isCancellable: Bool
  var isPausable: Bool
  var isCancelled: Bool { get }
  var isPaused: Bool { get }
  var cancellationHandler: (() -> Void)?
  var pausingHandler: (() -> Void)?
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(objectOrNil: AnyObject?, forKey key: String)
  var isIndeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  func resume()
  var userInfo: [Object : AnyObject] { get }
  var kind: String?
  convenience init()
}
typealias ProgressUnpublishingHandler = () -> Void
typealias ProgressPublishingHandler = (Progress) -> ProgressUnpublishingHandler?
protocol ProgressReporting : ObjectProtocol {
  var progress: Progress { get }
}
let progressEstimatedTimeRemainingKey: String
let progressThroughputKey: String
let progressKindFile: String
let progressFileOperationKindKey: String
let progressFileOperationKindDownloading: String
let progressFileOperationKindDecompressingAfterDownloading: String
let progressFileOperationKindReceiving: String
let progressFileOperationKindCopying: String
let progressFileURLKey: String
let progressFileTotalCountKey: String
let progressFileCompletedCountKey: String
struct PropertyListMutabilityOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immutable: PropertyListMutabilityOptions { get }
  static var MutableContainers: PropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: PropertyListMutabilityOptions { get }
}
enum PropertyListFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
typealias PropertyListReadOptions = PropertyListMutabilityOptions
typealias PropertyListWriteOptions = Int
class PropertyListSerialization : Object {
  class func propertyList(plist: AnyObject, isValidFor format: PropertyListFormat) -> Bool
  class func dataWithPropertyList(plist: AnyObject, format: PropertyListFormat, options opt: PropertyListWriteOptions) throws -> Data
  class func writePropertyList(plist: AnyObject, to stream: OutputStream, format: PropertyListFormat, options opt: PropertyListWriteOptions, error: ErrorPointer) -> Int
  class func propertyListWith(data: Data, options opt: PropertyListReadOptions = [], format: UnsafeMutablePointer<PropertyListFormat>) throws -> AnyObject
  class func propertyListWith(stream: InputStream, options opt: PropertyListReadOptions = [], format: UnsafeMutablePointer<PropertyListFormat>) throws -> AnyObject
  class func dataFromPropertyList(plist: AnyObject, format: PropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> Data?
  class func propertyListFrom(data: Data, mutabilityOption opt: PropertyListMutabilityOptions = [], format: UnsafeMutablePointer<PropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
}
class Proxy : ObjectProtocol {
  class func alloc() -> Self
  class func `class`() -> AnyClass
  class func forwardInvocation(invocation: Invocation)
  func forwardInvocation(invocation: Invocation)
  class func dealloc()
  func dealloc()
  class func finalize()
  func finalize()
  var description: String { get }
  var debugDescription: String { get }
  class func respondsTo(aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(object: AnyObject?) -> Bool
  class func isEqual(object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func perform(aSelector: Selector) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector) -> Unmanaged<AnyObject>!
  func perform(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  func perform(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  func isProxy() -> Bool
  class func isProxy() -> Bool
  func isKindOf(aClass: AnyClass) -> Bool
  class func isKindOf(aClass: AnyClass) -> Bool
  func isMemberOf(aClass: AnyClass) -> Bool
  class func isMemberOf(aClass: AnyClass) -> Bool
  func conformsTo(aProtocol: Protocol) -> Bool
  class func conformsTo(aProtocol: Protocol) -> Bool
  func respondsTo(aSelector: Selector) -> Bool
}
struct _NSRange {
  var location: Int
  var length: Int
  init()
  init(location: Int, length: Int)
}
extension NSRange {
  init(_ x: Range<Int>)
  @warn_unused_result
  func toRange() -> Range<Int>?
}
extension NSRange : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSRange : _ObjectiveCBridgeable {
  static func _isBridgedToObjectiveC() -> Bool
  static func _getObjectiveCType() -> Any.Type
  func _bridgeToObjectiveC() -> Value
  static func _forceBridgeFromObjectiveC(x: Value, inout result: NSRange?)
  static func _conditionallyBridgeFromObjectiveC(x: Value, inout result: NSRange?) -> Bool
  typealias _ObjectiveCType = Value
}
typealias NSRange = _NSRange
typealias RangePointer = UnsafeMutablePointer<NSRange>
func makeRange(loc: Int, _ len: Int) -> NSRange
func maxRange(range: NSRange) -> Int
func locationInRange(loc: Int, _ range: NSRange) -> Bool
func equalRanges(range1: NSRange, _ range2: NSRange) -> Bool
func unionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func intersectionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func stringFromRange(range: NSRange) -> String
func rangeFromString(aString: String) -> NSRange
extension Value {
   init(range: NSRange)
  var rangeValue: NSRange { get }
}
struct RegularExpressionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitive: RegularExpressionOptions { get }
  static var AllowCommentsAndWhitespace: RegularExpressionOptions { get }
  static var IgnoreMetacharacters: RegularExpressionOptions { get }
  static var DotMatchesLineSeparators: RegularExpressionOptions { get }
  static var AnchorsMatchLines: RegularExpressionOptions { get }
  static var UseUnixLineSeparators: RegularExpressionOptions { get }
  static var UseUnicodeWordBoundaries: RegularExpressionOptions { get }
}
class RegularExpression : Object, Copying, Coding {
  init(pattern: String, options: RegularExpressionOptions = []) throws
  var pattern: String { get }
  var options: RegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPatternFor(string: String) -> String
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct MatchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ReportProgress: MatchingOptions { get }
  static var ReportCompletion: MatchingOptions { get }
  static var Anchored: MatchingOptions { get }
  static var WithTransparentBounds: MatchingOptions { get }
  static var WithoutAnchoringBounds: MatchingOptions { get }
}
struct MatchingFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Progress: MatchingFlags { get }
  static var Completed: MatchingFlags { get }
  static var HitEnd: MatchingFlags { get }
  static var RequiredEnd: MatchingFlags { get }
  static var InternalError: MatchingFlags { get }
}
extension RegularExpression {
  func enumerateMatchesIn(string: String, options: MatchingOptions = [], range: NSRange, usingBlock block: (TextCheckingResult?, MatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matchesIn(string: String, options: MatchingOptions = [], range: NSRange) -> [TextCheckingResult]
  func numberOfMatchesIn(string: String, options: MatchingOptions = [], range: NSRange) -> Int
  func firstMatchIn(string: String, options: MatchingOptions = [], range: NSRange) -> TextCheckingResult?
  func rangeOfFirstMatchIn(string: String, options: MatchingOptions = [], range: NSRange) -> NSRange
}
extension RegularExpression {
  func stringByReplacingMatchesIn(string: String, options: MatchingOptions = [], range: NSRange, withTemplate templ: String) -> String
  func replaceMatchesIn(string: MutableString, options: MatchingOptions = [], range: NSRange, withTemplate templ: String) -> Int
  func replacementStringFor(result: TextCheckingResult, in string: String, offset: Int, template templ: String) -> String
  class func escapedTemplateFor(string: String) -> String
}
class DataDetector : RegularExpression {
  init(types checkingTypes: TextCheckingTypes) throws
  var checkingTypes: TextCheckingTypes { get }
  convenience init(pattern: String, options: RegularExpressionOptions = []) throws
  convenience init()
  init?(coder aDecoder: Coder)
}
let defaultRunLoopMode: String
let runLoopCommonModes: String
class RunLoop : Object {
  class func current() -> RunLoop
  class func main() -> RunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func add(timer: Timer, forMode mode: String)
  func add(aPort: Port, forMode mode: String)
  func remove(aPort: Port, forMode mode: String)
  func limitDateForMode(mode: String) -> Date?
  func acceptInputForMode(mode: String, before limitDate: Date)
  init()
}
extension RunLoop {
  func run()
  func runUntil(limitDate: Date)
  func runMode(mode: String, before limitDate: Date) -> Bool
}
extension Object {
  class func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: TimeInterval, inModes modes: [String])
  func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: TimeInterval, inModes modes: [String])
  class func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: TimeInterval)
  func perform(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: TimeInterval)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject)
}
extension RunLoop {
  func perform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?, order: Int, modes: [String])
  func cancelPerform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?)
  func cancelPerformSelectorsWithTarget(target: AnyObject)
}
class Scanner : Object, Copying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: CharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string: String)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension Scanner {
  func scanInt(result: UnsafeMutablePointer<Int32>) -> Bool
  func scanInteger(result: UnsafeMutablePointer<Int>) -> Bool
  func scanLongLong(result: UnsafeMutablePointer<Int64>) -> Bool
  func scanUnsignedLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  func scanFloat(result: UnsafeMutablePointer<Float>) -> Bool
  func scanDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanHexInt(result: UnsafeMutablePointer<UInt32>) -> Bool
  func scanHexLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  func scanHexFloat(result: UnsafeMutablePointer<Float>) -> Bool
  func scanHexDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanString(string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharactersFrom(set: CharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpTo(string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharactersFrom(set: CharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var isAtEnd: Bool { get }
  class func localizedScannerWith(string: String) -> AnyObject
}
class NSSet : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> Enumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
extension NSSet : SequenceType {
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension NSSet {
  convenience init(objects elements: AnyObject...)
}
extension NSSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension NSSet {
  /// Initializes a newly allocated set and adds to it objects from
  /// another given set.
  ///
  /// - Returns: An initialized objects set containing the objects from
  ///   `set`. The returned set might be different than the original
  ///   receiver.
  @objc(_swiftInitWithSet_NSSet:) convenience init(set anSet: NSSet)
}
extension NSSet : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSSet {
  var allObjects: [AnyObject] { get }
  func anyObject() -> AnyObject?
  func contains(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func intersectsSet(otherSet: Set<Object>) -> Bool
  func isEqualTo(otherSet: Set<Object>) -> Bool
  func isSubsetOf(otherSet: Set<Object>) -> Bool
  func adding(anObject: AnyObject) -> Set<Object>
  func addingObjectsFrom(other: Set<Object>) -> Set<Object>
  func addingObjectsFrom(other: [AnyObject]) -> Set<Object>
  func enumerateObjectsUsing(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  func objectsPassingTest(predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
  func objects(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
class MutableSet : NSSet {
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: Coder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
extension MutableSet {
  func addObjectsFrom(array: [AnyObject])
  func intersectSet(otherSet: Set<Object>)
  func minusSet(otherSet: Set<Object>)
  func removeAllObjects()
  func unionSet(otherSet: Set<Object>)
  func setSet(otherSet: Set<Object>)
}
extension MutableSet {
}
class CountedSet : MutableSet {
  init(capacity numItems: Int)
  convenience init(array: [AnyObject])
  convenience init(set: Set<Object>)
  func countFor(object: AnyObject) -> Int
  func objectEnumerator() -> Enumerator
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: Coder)
  convenience init()
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
class SortDescriptor : Object, SecureCoding, Copying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: Coder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  func allowEvaluation()
  init(key: String?, ascending: Bool, comparator cmptr: Comparator)
  var comparator: Comparator { get }
  func compare(object1: AnyObject, to object2: AnyObject) -> ComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension NSSet {
  func sortedArrayUsing(sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArrayUsing(sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableArray {
  func sortUsing(sortDescriptors: [SortDescriptor])
}
extension OrderedSet {
  func sortedArrayUsing(sortDescriptors: [SortDescriptor]) -> [AnyObject]
}
extension MutableOrderedSet {
  func sortUsing(sortDescriptors: [SortDescriptor])
}
enum StreamStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotOpen
  case Opening
  case Open
  case Reading
  case Writing
  case AtEnd
  case Closed
  case Error
}
struct StreamEvent : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: StreamEvent { get }
  static var OpenCompleted: StreamEvent { get }
  static var HasBytesAvailable: StreamEvent { get }
  static var HasSpaceAvailable: StreamEvent { get }
  static var ErrorOccurred: StreamEvent { get }
  static var EndEncountered: StreamEvent { get }
}
class Stream : Object {
  func open()
  func close()
  unowned(unsafe) var delegate: @sil_unmanaged StreamDelegate?
  func propertyForKey(key: String) -> AnyObject?
  func setProperty(property: AnyObject?, forKey key: String) -> Bool
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  func removeFrom(aRunLoop: RunLoop, forMode mode: String)
  var streamStatus: StreamStatus { get }
  @NSCopying var streamError: Error? { get }
  init()
}
class InputStream : Stream {
  func read(buffer: UnsafeMutablePointer<UInt8>, maxLength len: Int) -> Int
  func getBuffer(buffer: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, length len: UnsafeMutablePointer<Int>) -> Bool
  var hasBytesAvailable: Bool { get }
  init(data: Data)
  init?(url: URL)
  convenience init()
}
class OutputStream : Stream {
  func write(buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  init?(url: URL, append shouldAppend: Bool)
  convenience init()
}
extension Stream {
}
extension Stream {
  class func getBoundStreamsWithBufferSize(bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
}
extension InputStream {
  convenience init?(fileAtPath path: String)
}
extension OutputStream {
  convenience init?(toFileAtPath path: String, append shouldAppend: Bool)
  class func toMemory() -> Self
}
protocol StreamDelegate : ObjectProtocol {
  optional func stream(aStream: Stream, handle eventCode: StreamEvent)
}
let streamSocketSecurityLevelKey: String
let streamSocketSecurityLevelNone: String
let streamSocketSecurityLevelSSLv2: String
let streamSocketSecurityLevelSSLv3: String
let streamSocketSecurityLevelTLSv1: String
let streamSocketSecurityLevelNegotiatedSSL: String
let streamSOCKSProxyConfigurationKey: String
let streamSOCKSProxyHostKey: String
let streamSOCKSProxyPortKey: String
let streamSOCKSProxyVersionKey: String
let streamSOCKSProxyUserKey: String
let streamSOCKSProxyPasswordKey: String
let streamSOCKSProxyVersion4: String
let streamSOCKSProxyVersion5: String
let streamDataWrittenToMemoryStreamKey: String
let streamFileCurrentOffsetKey: String
let streamSocketSSLErrorDomain: String
let streamSOCKSErrorDomain: String
let streamNetworkServiceType: String
let streamNetworkServiceTypeVoIP: String
let streamNetworkServiceTypeVideo: String
let streamNetworkServiceTypeBackground: String
let streamNetworkServiceTypeVoice: String
typealias unichar = UInt16
struct StringCompareOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitiveSearch: StringCompareOptions { get }
  static var LiteralSearch: StringCompareOptions { get }
  static var BackwardsSearch: StringCompareOptions { get }
  static var AnchoredSearch: StringCompareOptions { get }
  static var NumericSearch: StringCompareOptions { get }
  static var DiacriticInsensitiveSearch: StringCompareOptions { get }
  static var WidthInsensitiveSearch: StringCompareOptions { get }
  static var ForcedOrderingSearch: StringCompareOptions { get }
  static var RegularExpressionSearch: StringCompareOptions { get }
}
var ASCIIStringEncoding: UInt { get }
var NEXTSTEPStringEncoding: UInt { get }
var japaneseEUCStringEncoding: UInt { get }
var UTF8StringEncoding: UInt { get }
var ISOLatin1StringEncoding: UInt { get }
var symbolStringEncoding: UInt { get }
var nonLossyASCIIStringEncoding: UInt { get }
var shiftJISStringEncoding: UInt { get }
var ISOLatin2StringEncoding: UInt { get }
var unicodeStringEncoding: UInt { get }
var windowsCP1251StringEncoding: UInt { get }
var windowsCP1252StringEncoding: UInt { get }
var windowsCP1253StringEncoding: UInt { get }
var windowsCP1254StringEncoding: UInt { get }
var windowsCP1250StringEncoding: UInt { get }
var ISO2022JPStringEncoding: UInt { get }
var macOSRomanStringEncoding: UInt { get }
var UTF16StringEncoding: UInt { get }
var UTF16BigEndianStringEncoding: UInt { get }
var UTF16LittleEndianStringEncoding: UInt { get }
var UTF32StringEncoding: UInt { get }
var UTF32BigEndianStringEncoding: UInt { get }
var UTF32LittleEndianStringEncoding: UInt { get }
struct StringEncodingConversionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllowLossy: StringEncodingConversionOptions { get }
  static var ExternalRepresentation: StringEncodingConversionOptions { get }
}
class NSString : Object, Copying, MutableCopying, SecureCoding {
  var length: Int { get }
  func characterAt(index: Int) -> unichar
  init()
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension NSString : StringLiteralConvertible {
  /// Create an instance initialized to `value`.
  required convenience init(unicodeScalarLiteral value: StaticString)
  required convenience init(extendedGraphemeClusterLiteral value: StaticString)
  /// Create an instance initialized to `value`.
  required convenience init(stringLiteral value: StaticString)
  typealias StringLiteralType = StaticString
  typealias ExtendedGraphemeClusterLiteralType = StaticString
  typealias UnicodeScalarLiteralType = StaticString
}
extension NSString {
  convenience init(format: NSString, _ args: CVarArgType...)
  convenience init(format: NSString, locale: Locale?, _ args: CVarArgType...)
  @warn_unused_result
  class func localizedStringWithFormat(format: NSString, _ args: CVarArgType...) -> Self
  @warn_unused_result
  func stringByAppendingFormat(format: NSString, _ args: CVarArgType...) -> NSString
}
extension NSString {
  /// Returns an `NSString` object initialized by copying the characters
  /// from another given string.
  ///
  /// - Returns: An `NSString` object initialized by copying the
  ///   characters from `aString`. The returned object may be different
  ///   from the original receiver.
  @objc(_swiftInitWithString_NSString:) convenience init(string aString: NSString)
}
extension NSString : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSString {
  func substringFrom(from: Int) -> String
  func substringTo(to: Int) -> String
  func substringWith(range: NSRange) -> String
  func getCharacters(buffer: UnsafeMutablePointer<unichar>, range: NSRange)
  func compare(string: String) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = []) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = [], range compareRange: NSRange) -> ComparisonResult
  func compare(string: String, options mask: StringCompareOptions = [], range compareRange: NSRange, locale: AnyObject?) -> ComparisonResult
  func caseInsensitiveCompare(string: String) -> ComparisonResult
  func localizedCompare(string: String) -> ComparisonResult
  func localizedCaseInsensitiveCompare(string: String) -> ComparisonResult
  func localizedStandardCompare(string: String) -> ComparisonResult
  func isEqualTo(aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefixWith(str: String, options mask: StringCompareOptions = []) -> String
  func contains(str: String) -> Bool
  func localizedCaseInsensitiveContains(str: String) -> Bool
  func localizedStandardContains(str: String) -> Bool
  func localizedStandardRangeOf(str: String) -> NSRange
  func rangeOf(searchString: String) -> NSRange
  func rangeOf(searchString: String, options mask: StringCompareOptions = []) -> NSRange
  func rangeOf(searchString: String, options mask: StringCompareOptions = [], range searchRange: NSRange) -> NSRange
  func rangeOf(searchString: String, options mask: StringCompareOptions = [], range searchRange: NSRange, locale: Locale?) -> NSRange
  func rangeOfCharacterFrom(searchSet: CharacterSet) -> NSRange
  func rangeOfCharacterFrom(searchSet: CharacterSet, options mask: StringCompareOptions = []) -> NSRange
  func rangeOfCharacterFrom(searchSet: CharacterSet, options mask: StringCompareOptions = [], range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequenceAt(index: Int) -> NSRange
  func rangeOfComposedCharacterSequencesFor(range: NSRange) -> NSRange
  func appending(aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  var integerValue: Int { get }
  var longLongValue: Int64 { get }
  var boolValue: Bool { get }
  var uppercase: String { get }
  var lowercase: String { get }
  var capitalized: String { get }
  var localizedUppercase: String { get }
  var localizedLowercase: String { get }
  var localizedCapitalized: String { get }
  func uppercaseStringWith(locale: Locale?) -> String
  func lowercaseStringWith(locale: Locale?) -> String
  func capitalizedStringWith(locale: Locale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func lineRangeFor(range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func paragraphRangeFor(range: NSRange) -> NSRange
  func enumerateSubstringsIn(range: NSRange, options opts: StringEnumerationOptions = [], usingBlock block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateLinesUsing(block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var utf8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func dataUsingEncoding(encoding: UInt, allowLossyConversion lossy: Bool) -> Data?
  func dataUsingEncoding(encoding: UInt) -> Data?
  func canBeConvertedToEncoding(encoding: UInt) -> Bool
  func cStringUsingEncoding(encoding: UInt) -> UnsafePointer<Int8>
  func getCString(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: UInt, options: StringEncodingConversionOptions = [], range: NSRange, remaining leftover: RangePointer) -> Bool
  func maximumLengthOfBytesUsingEncoding(enc: UInt) -> Int
  func lengthOfBytesUsingEncoding(enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedNameOfStringEncoding(encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparatedBy(separator: String) -> [String]
  func componentsSeparatedByCharactersIn(separator: CharacterSet) -> [String]
  func byTrimmingCharactersIn(set: CharacterSet) -> String
  func byPaddingToLength(newLength: Int, withString padString: String, startingAt padIndex: Int) -> String
  func folding(options options: StringCompareOptions = [], locale: Locale?) -> String
  func replacingOccurrencesOf(target: String, withString replacement: String, options: StringCompareOptions = [], range searchRange: NSRange) -> String
  func replacingOccurrencesOf(target: String, withString replacement: String) -> String
  func replacingCharactersIn(range: NSRange, withString replacement: String) -> String
  func applyingTransform(transform: String, reverse: Bool) -> String?
  func writeTo(url: URL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  var description: String { get }
  var hash: Int { get }
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
struct StringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByLines: StringEnumerationOptions { get }
  static var ByParagraphs: StringEnumerationOptions { get }
  static var ByComposedCharacterSequences: StringEnumerationOptions { get }
  static var ByWords: StringEnumerationOptions { get }
  static var BySentences: StringEnumerationOptions { get }
  static var Reverse: StringEnumerationOptions { get }
  static var SubstringNotRequired: StringEnumerationOptions { get }
  static var Localized: StringEnumerationOptions { get }
}
let stringTransformLatinToKatakana: String
let stringTransformLatinToHiragana: String
let stringTransformLatinToHangul: String
let stringTransformLatinToArabic: String
let stringTransformLatinToHebrew: String
let stringTransformLatinToThai: String
let stringTransformLatinToCyrillic: String
let stringTransformLatinToGreek: String
let stringTransformToLatin: String
let stringTransformMandarinToLatin: String
let stringTransformHiraganaToKatakana: String
let stringTransformFullwidthToHalfwidth: String
let stringTransformToXMLHex: String
let stringTransformToUnicodeName: String
let stringTransformStripCombiningMarks: String
let stringTransformStripDiacritics: String
extension NSString {
  class func stringEncodingFor(data: Data, encodingOptions opts: [String : AnyObject]? = [:], convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
}
let stringEncodingDetectionSuggestedEncodingsKey: String
let stringEncodingDetectionDisallowedEncodingsKey: String
let stringEncodingDetectionUseOnlySuggestedEncodingsKey: String
let stringEncodingDetectionAllowLossyKey: String
let stringEncodingDetectionFromWindowsKey: String
let stringEncodingDetectionLossySubstitutionKey: String
let stringEncodingDetectionLikelyLanguageKey: String
class MutableString : NSString {
  func replaceCharactersIn(range: NSRange, withString aString: String)
  init()
  init?(coder aDecoder: Coder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  convenience init?(cString bytes: UnsafePointer<Int8>)
}
extension MutableString {
  func appendFormat(format: NSString, _ args: CVarArgType...)
}
extension MutableString {
  func insert(aString: String, at loc: Int)
  func deleteCharactersIn(range: NSRange)
  func append(aString: String)
  func setString(aString: String)
  func replaceOccurrencesOf(target: String, withString replacement: String, options: StringCompareOptions = [], range searchRange: NSRange) -> Int
  func applyTransform(transform: String, reverse: Bool, range: NSRange, updatedRange resultingRange: RangePointer) -> Bool
  init(capacity: Int)
}
let characterConversionException: String
let parseErrorException: String
extension NSString {
  func propertyList() -> AnyObject
  func propertyListFromStringsFileFormat() -> [Object : AnyObject]?
}
extension NSString {
  func cString() -> UnsafePointer<Int8>
  func lossyCString() -> UnsafePointer<Int8>
  func cStringLength() -> Int
  func getCString(bytes: UnsafeMutablePointer<Int8>)
  func getCString(bytes: UnsafeMutablePointer<Int8>, maxLength: Int)
  func getCString(bytes: UnsafeMutablePointer<Int8>, maxLength: Int, range aRange: NSRange, remaining leftoverRange: RangePointer)
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
  class func stringWithContentsOfFile(path: String) -> AnyObject?
  class func stringWithContentsOf(url: URL) -> AnyObject?
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  convenience init?(cString bytes: UnsafePointer<Int8>)
  class func stringWithCString(bytes: UnsafePointer<Int8>, length: Int) -> AnyObject?
  class func stringWithCString(bytes: UnsafePointer<Int8>) -> AnyObject?
  func getCharacters(buffer: UnsafeMutablePointer<unichar>)
}
var proprietaryStringEncoding: UInt { get }
class SimpleCString : NSString {
  init()
  init?(coder aDecoder: Coder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  convenience init?(cString bytes: UnsafePointer<Int8>)
}
class ConstantString : SimpleCString {
  init()
  init?(coder aDecoder: Coder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  convenience init?(cString bytes: UnsafePointer<Int8>)
}
var _NSConstantStringClassReference: UnsafeMutablePointer<Void>
struct TextCheckingType : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var Orthography: TextCheckingType { get }
  static var Spelling: TextCheckingType { get }
  static var Grammar: TextCheckingType { get }
  static var Date: TextCheckingType { get }
  static var Address: TextCheckingType { get }
  static var Link: TextCheckingType { get }
  static var Quote: TextCheckingType { get }
  static var Dash: TextCheckingType { get }
  static var Replacement: TextCheckingType { get }
  static var Correction: TextCheckingType { get }
  static var RegularExpression: TextCheckingType { get }
  static var PhoneNumber: TextCheckingType { get }
  static var TransitInformation: TextCheckingType { get }
}
typealias TextCheckingTypes = UInt64
var textCheckingAllSystemTypes: TextCheckingTypes { get }
var textCheckingAllCustomTypes: TextCheckingTypes { get }
var textCheckingAllTypes: TextCheckingTypes { get }
class TextCheckingResult : Object, Copying, Coding {
  var resultType: TextCheckingType { get }
  var range: NSRange { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TextCheckingResult {
  @NSCopying var orthography: Orthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: Date? { get }
  @NSCopying var timeZone: TimeZone? { get }
  var duration: TimeInterval { get }
  var components: [String : String]? { get }
  @NSCopying var url: URL? { get }
  var replacementString: String? { get }
  var alternativeStrings: [String]? { get }
  @NSCopying var regularExpression: RegularExpression? { get }
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  var numberOfRanges: Int { get }
  func rangeAt(idx: Int) -> NSRange
  func adjustingRangesWithOffset(offset: Int) -> TextCheckingResult
}
let textCheckingNameKey: String
let textCheckingJobTitleKey: String
let textCheckingOrganizationKey: String
let textCheckingStreetKey: String
let textCheckingCityKey: String
let textCheckingStateKey: String
let textCheckingZIPKey: String
let textCheckingCountryKey: String
let textCheckingPhoneKey: String
let textCheckingAirlineKey: String
let textCheckingFlightKey: String
extension TextCheckingResult {
  class func orthographyCheckingResultWith(range: NSRange, orthography: Orthography) -> TextCheckingResult
  class func spellWith(range: NSRange) -> TextCheckingResult
  class func grammarCheckingResultWith(range: NSRange, details: [String]) -> TextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: Date) -> TextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> TextCheckingResult
  class func addressCheckingResultWith(range: NSRange, components: [String : String]) -> TextCheckingResult
  class func linkCheckingResultWith(range: NSRange, url: URL) -> TextCheckingResult
  class func quoteCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func dashCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func replacementCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func correctionCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func correctionCheckingResultWith(range: NSRange, replacementString: String, alternativeStrings: [String]) -> TextCheckingResult
  class func regularExpressionCheckingResultWithRanges(ranges: RangePointer, count: Int, regularExpression: RegularExpression) -> TextCheckingResult
  class func phoneNumberWith(range: NSRange, phoneNumber: String) -> TextCheckingResult
  class func transitInformationCheckingResultWith(range: NSRange, components: [String : String]) -> TextCheckingResult
}
class Thread : Object {
  class func current() -> Thread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: MutableDictionary { get }
  class func sleepUntil(date: Date)
  class func sleepForTimeInterval(ti: TimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  var threadPriority: Double
  var qualityOfService: QualityOfService
  class func callStackReturnAddresses() -> [Number]
  class func callStackSymbols() -> [String]
  var name: String?
  var stackSize: Int
  var isMainThread: Bool { get }
  class func isMainThread() -> Bool
  class func main() -> Thread
  init()
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isCancelled: Bool { get }
  func cancel()
  func start()
  func main()
}
let willBecomeMultiThreadedNotification: String
let didBecomeSingleThreadedNotification: String
let threadWillExitNotification: String
extension Object {
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  class func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  class func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
  func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
}
class TimeZone : Object, Copying, SecureCoding {
  var name: String { get }
  @NSCopying var data: Data { get }
  func secondsFromGMTFor(aDate: Date) -> Int
  func abbreviationFor(aDate: Date) -> String?
  func isDaylightSavingTimeFor(aDate: Date) -> Bool
  func daylightSavingTimeOffsetFor(aDate: Date) -> TimeInterval
  func nextDaylightSavingTimeTransitionAfter(aDate: Date) -> Date?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TimeZone {
  class func system() -> TimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> TimeZone
  class func setDefaultTimeZone(aTimeZone: TimeZone)
  class func local() -> TimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  class func setAbbreviationDictionary(dict: [String : String])
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var isDaylightSavingTime: Bool { get }
  var daylightSavingTimeOffset: TimeInterval { get }
  @NSCopying var nextDaylightSavingTimeTransition: Date? { get }
  var description: String { get }
  func isEqualTo(aTimeZone: TimeZone) -> Bool
  func localizedName(style: TimeZoneNameStyle, locale: Locale?) -> String?
}
enum TimeZoneNameStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case ShortStandard
  case DaylightSaving
  case ShortDaylightSaving
  case Generic
  case ShortGeneric
}
extension TimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: Data?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation: String)
}
let systemTimeZoneDidChangeNotification: String
class Timer : Object {
   init(timeInterval ti: TimeInterval, invocation: Invocation, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: TimeInterval, invocation: Invocation, repeats yesOrNo: Bool) -> Timer
   init(timeInterval ti: TimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: TimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool) -> Timer
  init(fire date: Date, interval ti: TimeInterval, target t: AnyObject, selector s: Selector, userInfo ui: AnyObject?, repeats rep: Bool)
  func fire()
  @NSCopying var fireDate: Date
  var timeInterval: TimeInterval { get }
  var tolerance: TimeInterval
  func invalidate()
  var isValid: Bool { get }
  var userInfo: AnyObject? { get }
  convenience init()
}
class URL : Object, SecureCoding, Copying {
  convenience init?(scheme: String, host: String?, path: String)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  class func fileURLWithPath(path: String, relativeTo baseURL: URL?) -> URL
  class func fileURLWithPath(path: String, isDirectory isDir: Bool) -> URL
  class func fileURLWithPath(path: String) -> URL
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  class func fileURLWithFileSystemRepresentation(path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  class func absoluteURLWithDataRepresentation(data: Data, relativeTo baseURL: URL?) -> URL
  @NSCopying var dataRepresentation: Data { get }
  var absoluteString: String { get }
  var relativeString: String? { get }
  @NSCopying var base: URL? { get }
  @NSCopying var absolute: URL { get }
  var scheme: String { get }
  var resourceSpecifier: String { get }
  var host: String? { get }
  @NSCopying var port: Number? { get }
  var user: String? { get }
  var password: String? { get }
  var path: String? { get }
  var fragment: String? { get }
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  var hasDirectoryPath: Bool { get }
  func getFileSystemRepresentation(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var isFileURL: Bool { get }
  @NSCopying var standardized: URL? { get }
  func checkResourceIsReachableAndReturnError(error: ErrorPointer) -> Bool
  func isFileReferenceURL() -> Bool
  func fileReference() -> URL?
  @NSCopying var filePath: URL? { get }
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func resourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  func removeCachedResourceValueForKey(key: String)
  func removeAllCachedResourceValues()
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  func bookmarkData(options options: URLBookmarkCreationOptions = [], includingResourceValuesForKeys keys: [String]?, relativeTo relativeURL: URL?) throws -> Data
  convenience init(byResolvingBookmarkData bookmarkData: Data, options: URLBookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  class func resourceValuesForKeys(keys: [String], fromBookmarkData bookmarkData: Data) -> [String : AnyObject]?
  class func writeBookmarkData(bookmarkData: Data, to bookmarkFileURL: URL, options: URLBookmarkFileCreationOptions) throws
  class func bookmarkDataWithContentsOf(bookmarkFileURL: URL) throws -> Data
  convenience init(byResolvingAliasFileAt url: URL, options: URLBookmarkResolutionOptions = []) throws
  func startAccessingSecurityScopedResource() -> Bool
  func stopAccessingSecurityScopedResource()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension URL : _FileReferenceLiteralConvertible {
  convenience init(failableFileReferenceLiteral path: String)
  required convenience init(fileReferenceLiteral path: String)
}
extension URL : _Reflectable {
  func _getMirror() -> _MirrorType
}
let URLFileScheme: String
let URLKeysOfUnsetValuesKey: String
let URLNameKey: String
let URLLocalizedNameKey: String
let URLIsRegularFileKey: String
let URLIsDirectoryKey: String
let URLIsSymbolicLinkKey: String
let URLIsVolumeKey: String
let URLIsPackageKey: String
let URLIsApplicationKey: String
let URLIsSystemImmutableKey: String
let URLIsUserImmutableKey: String
let URLIsHiddenKey: String
let URLHasHiddenExtensionKey: String
let URLCreationDateKey: String
let URLContentAccessDateKey: String
let URLContentModificationDateKey: String
let URLAttributeModificationDateKey: String
let URLLinkCountKey: String
let URLParentDirectoryURLKey: String
let URLVolumeURLKey: String
let URLTypeIdentifierKey: String
let URLLocalizedTypeDescriptionKey: String
let URLLabelNumberKey: String
let URLLabelColorKey: String
let URLLocalizedLabelKey: String
let URLEffectiveIconKey: String
let URLCustomIconKey: String
let URLFileResourceIdentifierKey: String
let URLVolumeIdentifierKey: String
let URLPreferredIOBlockSizeKey: String
let URLIsReadableKey: String
let URLIsWritableKey: String
let URLIsExecutableKey: String
let URLFileSecurityKey: String
let URLIsExcludedFromBackupKey: String
let URLPathKey: String
let URLIsMountTriggerKey: String
let URLGenerationIdentifierKey: String
let URLDocumentIdentifierKey: String
let URLAddedToDirectoryDateKey: String
let URLFileResourceTypeKey: String
let URLFileResourceTypeNamedPipe: String
let URLFileResourceTypeCharacterSpecial: String
let URLFileResourceTypeDirectory: String
let URLFileResourceTypeBlockSpecial: String
let URLFileResourceTypeRegular: String
let URLFileResourceTypeSymbolicLink: String
let URLFileResourceTypeSocket: String
let URLFileResourceTypeUnknown: String
let URLThumbnailDictionaryKey: String
let thumbnail1024x1024SizeKey: String
let URLFileSizeKey: String
let URLFileAllocatedSizeKey: String
let URLTotalFileSizeKey: String
let URLTotalFileAllocatedSizeKey: String
let URLIsAliasFileKey: String
let URLFileProtectionKey: String
let URLFileProtectionNone: String
let URLFileProtectionComplete: String
let URLFileProtectionCompleteUnlessOpen: String
let URLFileProtectionCompleteUntilFirstUserAuthentication: String
let URLVolumeLocalizedFormatDescriptionKey: String
let URLVolumeTotalCapacityKey: String
let URLVolumeAvailableCapacityKey: String
let URLVolumeResourceCountKey: String
let URLVolumeSupportsPersistentIDsKey: String
let URLVolumeSupportsSymbolicLinksKey: String
let URLVolumeSupportsHardLinksKey: String
let URLVolumeSupportsJournalingKey: String
let URLVolumeIsJournalingKey: String
let URLVolumeSupportsSparseFilesKey: String
let URLVolumeSupportsZeroRunsKey: String
let URLVolumeSupportsCaseSensitiveNamesKey: String
let URLVolumeSupportsCasePreservedNamesKey: String
let URLVolumeSupportsRootDirectoryDatesKey: String
let URLVolumeSupportsVolumeSizesKey: String
let URLVolumeSupportsRenamingKey: String
let URLVolumeSupportsAdvisoryFileLockingKey: String
let URLVolumeSupportsExtendedSecurityKey: String
let URLVolumeIsBrowsableKey: String
let URLVolumeMaximumFileSizeKey: String
let URLVolumeIsEjectableKey: String
let URLVolumeIsRemovableKey: String
let URLVolumeIsInternalKey: String
let URLVolumeIsAutomountedKey: String
let URLVolumeIsLocalKey: String
let URLVolumeIsReadOnlyKey: String
let URLVolumeCreationDateKey: String
let URLVolumeURLForRemountingKey: String
let URLVolumeUUIDStringKey: String
let URLVolumeNameKey: String
let URLVolumeLocalizedNameKey: String
let URLIsUbiquitousItemKey: String
let URLUbiquitousItemHasUnresolvedConflictsKey: String
let URLUbiquitousItemIsDownloadedKey: String
let URLUbiquitousItemIsDownloadingKey: String
let URLUbiquitousItemIsUploadedKey: String
let URLUbiquitousItemIsUploadingKey: String
let URLUbiquitousItemPercentDownloadedKey: String
let URLUbiquitousItemPercentUploadedKey: String
let URLUbiquitousItemDownloadingStatusKey: String
let URLUbiquitousItemDownloadingErrorKey: String
let URLUbiquitousItemUploadingErrorKey: String
let URLUbiquitousItemDownloadRequestedKey: String
let URLUbiquitousItemContainerDisplayNameKey: String
let URLUbiquitousItemDownloadingStatusNotDownloaded: String
let URLUbiquitousItemDownloadingStatusDownloaded: String
let URLUbiquitousItemDownloadingStatusCurrent: String
struct URLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PreferFileIDResolution: URLBookmarkCreationOptions { get }
  static var MinimalBookmark: URLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: URLBookmarkCreationOptions { get }
}
struct URLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: URLBookmarkResolutionOptions { get }
  static var WithoutMounting: URLBookmarkResolutionOptions { get }
}
typealias URLBookmarkFileCreationOptions = Int
extension URL {
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func promisedItemResourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  func checkPromisedItemIsReachableAndReturnError(error: ErrorPointer) -> Bool
}
class URLQueryItem : Object, SecureCoding, Copying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class URLComponents : Object, Copying {
  init()
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var url: URL? { get }
  func urlRelativeTo(baseURL: URL?) -> URL?
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  @NSCopying var port: Number?
  var path: String?
  var query: String?
  var fragment: String?
  var percentEncodedUser: String?
  var percentEncodedPassword: String?
  var percentEncodedHost: String?
  var percentEncodedPath: String?
  var percentEncodedQuery: String?
  var percentEncodedFragment: String?
  var rangeOfScheme: NSRange { get }
  var rangeOfUser: NSRange { get }
  var rangeOfPassword: NSRange { get }
  var rangeOfHost: NSRange { get }
  var rangeOfPort: NSRange { get }
  var rangeOfPath: NSRange { get }
  var rangeOfQuery: NSRange { get }
  var rangeOfFragment: NSRange { get }
  var queryItems: [URLQueryItem]?
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension CharacterSet {
  class func urlUserAllowed() -> CharacterSet
  class func urlPasswordAllowed() -> CharacterSet
  class func urlHostAllowed() -> CharacterSet
  class func urlPathAllowed() -> CharacterSet
  class func urlQueryAllowed() -> CharacterSet
  class func urlFragmentAllowed() -> CharacterSet
}
extension NSString {
  func addingPercentEncodingWithAllowedCharacters(allowedCharacters: CharacterSet) -> String?
  var removingPercentEncoding: String? { get }
  func addingPercentEscapesUsingEncoding(enc: UInt) -> String?
  func replacingPercentEscapesUsingEncoding(enc: UInt) -> String?
}
extension URL {
  class func fileURLWithPathComponents(components: [String]) -> URL?
  var pathComponents: [String]? { get }
  var lastPathComponent: String? { get }
  var pathExtension: String? { get }
  func appendingPathComponent(pathComponent: String) -> URL
  func appendingPathComponent(pathComponent: String, isDirectory: Bool) -> URL
  @NSCopying var deletingLastPathComponent: URL? { get }
  func appendingPathExtension(pathExtension: String) -> URL
  @NSCopying var deletingPathExtension: URL? { get }
  @NSCopying var standardizingPath: URL? { get }
  @NSCopying var resolvingSymlinksInPath: URL? { get }
}
class FileSecurity : Object, Copying, Coding {
  init?(coder aDecoder: Coder)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
protocol URLAuthenticationChallengeSender : ObjectProtocol {
  func use(credential: URLCredential, forAuthenticationChallenge challenge: URLAuthenticationChallenge)
  func continueWithoutCredentialFor(challenge: URLAuthenticationChallenge)
  func cancel(challenge: URLAuthenticationChallenge)
  optional func performDefaultHandlingFor(challenge: URLAuthenticationChallenge)
  optional func rejectProtectionSpaceAndContinueWith(challenge: URLAuthenticationChallenge)
}
class URLAuthenticationChallenge : Object, SecureCoding {
  init(protectionSpace space: URLProtectionSpace, proposedCredential credential: URLCredential?, previousFailureCount: Int, failureResponse response: URLResponse?, error: Error?, sender: URLAuthenticationChallengeSender)
  init(authenticationChallenge challenge: URLAuthenticationChallenge, sender: URLAuthenticationChallengeSender)
  @NSCopying var protectionSpace: URLProtectionSpace { get }
  @NSCopying var proposedCredential: URLCredential? { get }
  var previousFailureCount: Int { get }
  @NSCopying var failureResponse: URLResponse? { get }
  @NSCopying var error: Error? { get }
  var sender: URLAuthenticationChallengeSender? { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
enum URLCacheStoragePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Allowed
  case AllowedInMemoryOnly
  case NotAllowed
}
class CachedURLResponse : Object, SecureCoding, Copying {
  init(response: URLResponse, data: Data)
  init(response: URLResponse, data: Data, userInfo: [Object : AnyObject]? = [:], storagePolicy: URLCacheStoragePolicy)
  @NSCopying var response: URLResponse { get }
  @NSCopying var data: Data { get }
  var userInfo: [Object : AnyObject]? { get }
  var storagePolicy: URLCacheStoragePolicy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class URLCache : Object {
  class func shared() -> URLCache
  class func setSharedURLCache(cache: URLCache)
  init(memoryCapacity: Int, diskCapacity: Int, diskPath path: String?)
  func cachedResponseFor(request: URLRequest) -> CachedURLResponse?
  func storeCachedResponse(cachedResponse: CachedURLResponse, forRequest request: URLRequest)
  func removeCachedResponseFor(request: URLRequest)
  func removeAllCachedResponses()
  func removeCachedResponsesSince(date: Date)
  var memoryCapacity: Int
  var diskCapacity: Int
  var currentMemoryUsage: Int { get }
  var currentDiskUsage: Int { get }
  init()
}
extension URLCache {
  func storeCachedResponse(cachedResponse: CachedURLResponse, forDataTask dataTask: URLSessionDataTask)
  func getCachedResponseFor(dataTask: URLSessionDataTask, completionHandler: (CachedURLResponse?) -> Void)
  func removeCachedResponseFor(dataTask: URLSessionDataTask)
}
class URLConnection : Object {
  @NSCopying var originalRequest: URLRequest { get }
  @NSCopying var currentRequest: URLRequest { get }
  func start()
  func cancel()
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  func unscheduleFrom(aRunLoop: RunLoop, forMode mode: String)
  func setDelegateQueue(queue: OperationQueue?)
  class func canHandle(request: URLRequest) -> Bool
  init()
}
protocol URLConnectionDelegate : ObjectProtocol {
  optional func connection(connection: URLConnection, didFailWithError error: Error)
  optional func connectionShouldUseCredentialStorage(connection: URLConnection) -> Bool
  optional func connection(connection: URLConnection, willSendRequestFor challenge: URLAuthenticationChallenge)
  optional func connection(connection: URLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  optional func connection(connection: URLConnection, didReceive challenge: URLAuthenticationChallenge)
  optional func connection(connection: URLConnection, didCancel challenge: URLAuthenticationChallenge)
}
protocol URLConnectionDataDelegate : URLConnectionDelegate {
  optional func connection(connection: URLConnection, willSend request: URLRequest, redirectResponse response: URLResponse?) -> URLRequest?
  optional func connection(connection: URLConnection, didReceive response: URLResponse)
  optional func connection(connection: URLConnection, didReceive data: Data)
  optional func connection(connection: URLConnection, needNewBodyStream request: URLRequest) -> InputStream?
  optional func connection(connection: URLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(connection: URLConnection, willCacheResponse cachedResponse: CachedURLResponse) -> CachedURLResponse?
  optional func connectionDidFinishLoading(connection: URLConnection)
}
protocol URLConnectionDownloadDelegate : URLConnectionDelegate {
  optional func connection(connection: URLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(connection: URLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(connection: URLConnection, destinationURL: URL)
}
extension URLConnection {
}
extension URLConnection {
}
enum URLCredentialPersistence : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ForSession
  case Permanent
  case Synchronizable
}
class URLCredential : Object, SecureCoding, Copying {
  var persistence: URLCredentialPersistence { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension URLCredential {
  init(user: String, password: String, persistence: URLCredentialPersistence)
  var user: String? { get }
  var password: String? { get }
  var hasPassword: Bool { get }
}
extension URLCredential {
  init(identity: SecIdentity, certificates certArray: [AnyObject]?, persistence: URLCredentialPersistence)
  var identity: SecIdentity? { get }
  var certificates: [AnyObject] { get }
}
extension URLCredential {
  init(trust: SecTrust)
   init(forTrust trust: SecTrust)
}
class URLCredentialStorage : Object {
  class func shared() -> URLCredentialStorage
  func credentialsFor(space: URLProtectionSpace) -> [String : URLCredential]?
  var allCredentials: [URLProtectionSpace : [String : URLCredential]] { get }
  func setCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace, options: [String : AnyObject]? = [:])
  func defaultCredentialFor(space: URLProtectionSpace) -> URLCredential?
  func setDefaultCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  init()
}
extension URLCredentialStorage {
  func getCredentialsFor(protectionSpace: URLProtectionSpace, task: URLSessionTask, completionHandler: ([String : URLCredential]?) -> Void)
  func setCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
  func remove(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, options: [String : AnyObject]? = [:], task: URLSessionTask)
  func getDefaultCredentialFor(space: URLProtectionSpace, task: URLSessionTask, completionHandler: (URLCredential?) -> Void)
  func setDefaultCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
}
let URLCredentialStorageChangedNotification: String
let URLCredentialStorageRemoveSynchronizableCredentials: String
let URLErrorDomain: String
let URLErrorFailingURLErrorKey: String
let URLErrorFailingURLStringErrorKey: String
let errorFailingURLStringKey: String
let URLErrorFailingURLPeerTrustErrorKey: String
let URLErrorBackgroundTaskCancelledReasonKey: String
var URLErrorCancelledReasonUserForceQuitApplication: Int { get }
var URLErrorCancelledReasonBackgroundUpdatesDisabled: Int { get }
var URLErrorCancelledReasonInsufficientSystemResources: Int { get }
var URLErrorUnknown: Int { get }
var URLErrorCancelled: Int { get }
var URLErrorBadURL: Int { get }
var URLErrorTimedOut: Int { get }
var URLErrorUnsupportedURL: Int { get }
var URLErrorCannotFindHost: Int { get }
var URLErrorCannotConnectToHost: Int { get }
var URLErrorNetworkConnectionLost: Int { get }
var URLErrorDNSLookupFailed: Int { get }
var URLErrorHTTPTooManyRedirects: Int { get }
var URLErrorResourceUnavailable: Int { get }
var URLErrorNotConnectedToInternet: Int { get }
var URLErrorRedirectToNonExistentLocation: Int { get }
var URLErrorBadServerResponse: Int { get }
var URLErrorUserCancelledAuthentication: Int { get }
var URLErrorUserAuthenticationRequired: Int { get }
var URLErrorZeroByteResource: Int { get }
var URLErrorCannotDecodeRawData: Int { get }
var URLErrorCannotDecodeContentData: Int { get }
var URLErrorCannotParseResponse: Int { get }
var URLErrorAppTransportSecurityRequiresSecureConnection: Int { get }
var URLErrorFileDoesNotExist: Int { get }
var URLErrorFileIsDirectory: Int { get }
var URLErrorNoPermissionsToReadFile: Int { get }
var URLErrorDataLengthExceedsMaximum: Int { get }
var URLErrorSecureConnectionFailed: Int { get }
var URLErrorServerCertificateHasBadDate: Int { get }
var URLErrorServerCertificateUntrusted: Int { get }
var URLErrorServerCertificateHasUnknownRoot: Int { get }
var URLErrorServerCertificateNotYetValid: Int { get }
var URLErrorClientCertificateRejected: Int { get }
var URLErrorClientCertificateRequired: Int { get }
var URLErrorCannotLoadFromNetwork: Int { get }
var URLErrorCannotCreateFile: Int { get }
var URLErrorCannotOpenFile: Int { get }
var URLErrorCannotCloseFile: Int { get }
var URLErrorCannotWriteToFile: Int { get }
var URLErrorCannotRemoveFile: Int { get }
var URLErrorCannotMoveFile: Int { get }
var URLErrorDownloadDecodingFailedMidStream: Int { get }
var URLErrorDownloadDecodingFailedToComplete: Int { get }
var URLErrorInternationalRoamingOff: Int { get }
var URLErrorCallIsActive: Int { get }
var URLErrorDataNotAllowed: Int { get }
var URLErrorRequestBodyStreamExhausted: Int { get }
var URLErrorBackgroundSessionRequiresSharedContainer: Int { get }
var URLErrorBackgroundSessionInUseByAnotherProcess: Int { get }
var URLErrorBackgroundSessionWasDisconnected: Int { get }
let URLProtectionSpaceHTTP: String
let URLProtectionSpaceHTTPS: String
let URLProtectionSpaceFTP: String
let URLProtectionSpaceHTTPProxy: String
let URLProtectionSpaceHTTPSProxy: String
let URLProtectionSpaceFTPProxy: String
let URLProtectionSpaceSOCKSProxy: String
let URLAuthenticationMethodDefault: String
let URLAuthenticationMethodHTTPBasic: String
let URLAuthenticationMethodHTTPDigest: String
let URLAuthenticationMethodHTMLForm: String
let URLAuthenticationMethodNTLM: String
let URLAuthenticationMethodNegotiate: String
let URLAuthenticationMethodClientCertificate: String
let URLAuthenticationMethodServerTrust: String
class URLProtectionSpace : Object, SecureCoding, Copying {
  init(host: String, port: Int, protocol: String?, realm: String?, authenticationMethod: String?)
  init(proxyHost host: String, port: Int, type: String?, realm: String?, authenticationMethod: String?)
  var realm: String? { get }
  var receivesCredentialSecurely: Bool { get }
  var host: String { get }
  var port: Int { get }
  var proxyType: String? { get }
  var `protocol`: String? { get }
  var authenticationMethod: String { get }
  func isProxy() -> Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension URLProtectionSpace {
  var distinguishedNames: [Data]? { get }
}
extension URLProtectionSpace {
  var serverTrust: SecTrust? { get }
}
protocol URLProtocolClient : ObjectProtocol {
  func urlProtocol(protocol: URLProtocol, wasRedirectedTo request: URLRequest, redirectResponse: URLResponse)
  func urlProtocol(protocol: URLProtocol, cachedResponseIsValid cachedResponse: CachedURLResponse)
  func urlProtocol(protocol: URLProtocol, didReceive response: URLResponse, cacheStoragePolicy policy: URLCacheStoragePolicy)
  func urlProtocol(protocol: URLProtocol, didLoad data: Data)
  func urlProtocolDidFinishLoading(protocol: URLProtocol)
  func urlProtocol(protocol: URLProtocol, didFailWithError error: Error)
  func urlProtocol(protocol: URLProtocol, didReceive challenge: URLAuthenticationChallenge)
  func urlProtocol(protocol: URLProtocol, didCancel challenge: URLAuthenticationChallenge)
}
class URLProtocol : Object {
  init(request: URLRequest, cachedResponse: CachedURLResponse?, client: URLProtocolClient?)
  var client: URLProtocolClient? { get }
  @NSCopying var request: URLRequest { get }
  @NSCopying var cachedResponse: CachedURLResponse? { get }
  class func canInitWith(request: URLRequest) -> Bool
  class func canonicalRequestFor(request: URLRequest) -> URLRequest
  class func requestIsCacheEquivalent(a: URLRequest, to b: URLRequest) -> Bool
  func startLoading()
  func stopLoading()
  class func propertyForKey(key: String, in request: URLRequest) -> AnyObject?
  class func setProperty(value: AnyObject, forKey key: String, in request: MutableURLRequest)
  class func removePropertyForKey(key: String, in request: MutableURLRequest)
  class func registerClass(protocolClass: AnyClass) -> Bool
  class func unregisterClass(protocolClass: AnyClass)
  convenience init()
}
extension URLProtocol {
  class func canInitWith(task: URLSessionTask) -> Bool
  convenience init(task: URLSessionTask, cachedResponse: CachedURLResponse?, client: URLProtocolClient?)
  @NSCopying var task: URLSessionTask? { get }
}
enum URLRequestCachePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UseProtocolCachePolicy
  case ReloadIgnoringLocalCacheData
  case ReloadIgnoringLocalAndRemoteCacheData
  static var ReloadIgnoringCacheData: URLRequestCachePolicy { get }
  case ReturnCacheDataElseLoad
  case ReturnCacheDataDontLoad
  case ReloadRevalidatingCacheData
}
enum URLRequestNetworkServiceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NetworkServiceTypeDefault
  case NetworkServiceTypeVoIP
  case NetworkServiceTypeVideo
  case NetworkServiceTypeBackground
  case NetworkServiceTypeVoice
}
class URLRequest : Object, SecureCoding, Copying, MutableCopying {
  class func supportsSecureCoding() -> Bool
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: URLRequestCachePolicy, timeoutInterval: TimeInterval)
  @NSCopying var url: URL? { get }
  var cachePolicy: URLRequestCachePolicy { get }
  var timeoutInterval: TimeInterval { get }
  @NSCopying var mainDocumentURL: URL? { get }
  var networkServiceType: URLRequestNetworkServiceType { get }
  var allowsCellularAccess: Bool { get }
  convenience init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class MutableURLRequest : URLRequest {
  @NSCopying var url: URL?
  var cachePolicy: URLRequestCachePolicy
  var timeoutInterval: TimeInterval
  @NSCopying var mainDocumentURL: URL?
  var networkServiceType: URLRequestNetworkServiceType
  var allowsCellularAccess: Bool
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: URLRequestCachePolicy, timeoutInterval: TimeInterval)
  convenience init()
  init?(coder aDecoder: Coder)
}
extension URLRequest {
  var httpMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func valueForHTTPHeaderField(field: String) -> String?
  @NSCopying var httpBody: Data? { get }
  var httpBodyStream: InputStream? { get }
  var httpShouldHandleCookies: Bool { get }
  var httpShouldUsePipelining: Bool { get }
}
extension MutableURLRequest {
  var httpMethod: String
  var allHTTPHeaderFields: [String : String]?
  func setValue(value: String?, forHTTPHeaderField field: String)
  func addValue(value: String, forHTTPHeaderField field: String)
  @NSCopying var httpBody: Data?
  var httpBodyStream: InputStream?
  var httpShouldHandleCookies: Bool
  var httpShouldUsePipelining: Bool
}
class URLResponse : Object, SecureCoding, Copying {
  init(url URL: URL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  @NSCopying var url: URL? { get }
  var mimeType: String? { get }
  var expectedContentLength: Int64 { get }
  var textEncodingName: String? { get }
  var suggestedFilename: String? { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class HTTPURLResponse : URLResponse {
  init?(url: URL, statusCode: Int, httpVersion HTTPVersion: String?, headerFields: [String : String]?)
  var statusCode: Int { get }
  var allHeaderFields: [Object : AnyObject] { get }
  class func localizedStringForStatusCode(statusCode: Int) -> String
  init(url URL: URL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  convenience init()
  init?(coder aDecoder: Coder)
}
class UUID : Object, Copying, SecureCoding {
  init()
  convenience init?(uuidString string: String)
  convenience init(uuidBytes bytes: UnsafePointer<UInt8>)
  func getBytes(uuid: UnsafeMutablePointer<UInt8>)
  var uuidString: String { get }
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class UbiquitousKeyValueStore : Object {
  class func defaultStore() -> UbiquitousKeyValueStore
  func objectForKey(aKey: String) -> AnyObject?
  func setObject(anObject: AnyObject?, forKey aKey: String)
  func removeObjectForKey(aKey: String)
  func stringForKey(aKey: String) -> String?
  func arrayForKey(aKey: String) -> [AnyObject]?
  func dictionaryForKey(aKey: String) -> [String : AnyObject]?
  func dataForKey(aKey: String) -> Data?
  func longLongForKey(aKey: String) -> Int64
  func doubleForKey(aKey: String) -> Double
  func boolForKey(aKey: String) -> Bool
  func setString(aString: String?, forKey aKey: String)
  func setData(aData: Data?, forKey aKey: String)
  func setArray(anArray: [AnyObject]?, forKey aKey: String)
  func setDictionary(aDictionary: [String : AnyObject]?, forKey aKey: String)
  func setLongLong(value: Int64, forKey aKey: String)
  func setDouble(value: Double, forKey aKey: String)
  func setBool(value: Bool, forKey aKey: String)
  var dictionaryRepresentation: [String : AnyObject] { get }
  func synchronize() -> Bool
  init()
}
let ubiquitousKeyValueStoreDidChangeExternallyNotification: String
let ubiquitousKeyValueStoreChangeReasonKey: String
let ubiquitousKeyValueStoreChangedKeysKey: String
var ubiquitousKeyValueStoreServerChange: Int { get }
var ubiquitousKeyValueStoreInitialSyncChange: Int { get }
var ubiquitousKeyValueStoreQuotaViolationChange: Int { get }
var ubiquitousKeyValueStoreAccountChange: Int { get }
let undoCloseGroupingRunLoopOrdering: Int
class UndoManager : Object {
  func beginUndoGrouping()
  func endUndoGrouping()
  var groupingLevel: Int { get }
  func disableUndoRegistration()
  func enableUndoRegistration()
  var isUndoRegistrationEnabled: Bool { get }
  var groupsByEvent: Bool
  var levelsOfUndo: Int
  var runLoopModes: [String]
  func undo()
  func redo()
  func undoNestedGroup()
  var canUndo: Bool { get }
  var canRedo: Bool { get }
  var isUndoing: Bool { get }
  var isRedoing: Bool { get }
  func removeAllActions()
  func removeAllActionsWithTarget(target: AnyObject)
  func registerUndoWithTarget(target: AnyObject, selector: Selector, object anObject: AnyObject?)
  func prepareWithInvocationTarget(target: AnyObject) -> AnyObject
  func __registerUndoWithTarget(target: AnyObject, handler undoHandler: (AnyObject) -> Void)
  func setActionIsDiscardable(discardable: Bool)
  var undoActionIsDiscardable: Bool { get }
  var redoActionIsDiscardable: Bool { get }
  var undoActionName: String { get }
  var redoActionName: String { get }
  func setActionName(actionName: String)
  var undoMenuItemTitle: String { get }
  var redoMenuItemTitle: String { get }
  func undoMenuTitleForUndoActionName(actionName: String) -> String
  func redoMenuTitleForUndoActionName(actionName: String) -> String
  init()
}
extension UndoManager {
  func registerUndoWithTarget<TargetType : AnyObject>(target: TargetType, handler: (TargetType) -> Void)
}
let undoManagerGroupIsDiscardableKey: String
let undoManagerCheckpointNotification: String
let undoManagerWillUndoChangeNotification: String
let undoManagerWillRedoChangeNotification: String
let undoManagerDidUndoChangeNotification: String
let undoManagerDidRedoChangeNotification: String
let undoManagerDidOpenUndoGroupNotification: String
let undoManagerWillCloseUndoGroupNotification: String
let undoManagerDidCloseUndoGroupNotification: String
class UserActivity : Object {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [Object : AnyObject]?
  func addUserInfoEntriesFrom(otherDictionary: [Object : AnyObject])
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: URL?
  @NSCopying var expirationDate: Date
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak UserActivityDelegate?
  func becomeCurrent()
  func resignCurrent()
  func invalidate()
  func getContinuationStreamsWithCompletionHandler(completionHandler: (InputStream?, OutputStream?, Error?) -> Void)
  var isEligibleForHandoff: Bool
  var isEligibleForSearch: Bool
  var isEligibleForPublicIndexing: Bool
}
let userActivityTypeBrowsingWeb: String
protocol UserActivityDelegate : ObjectProtocol {
  optional func userActivityWillSave(userActivity: UserActivity)
  optional func userActivityWasContinued(userActivity: UserActivity)
  optional func userActivity(userActivity: UserActivity?, didReceive inputStream: InputStream, outputStream: OutputStream)
}
let globalDomain: String
let argumentDomain: String
let registrationDomain: String
class UserDefaults : Object {
  class func standard() -> UserDefaults
  class func resetStandardUserDefaults()
  convenience init()
  init?(suiteName suitename: String?)
  convenience init?(user username: String)
  func objectForKey(defaultName: String) -> AnyObject?
  func setObject(value: AnyObject?, forKey defaultName: String)
  func removeObjectForKey(defaultName: String)
  func stringForKey(defaultName: String) -> String?
  func arrayForKey(defaultName: String) -> [AnyObject]?
  func dictionaryForKey(defaultName: String) -> [String : AnyObject]?
  func dataForKey(defaultName: String) -> Data?
  func stringArrayForKey(defaultName: String) -> [String]?
  func integerForKey(defaultName: String) -> Int
  func floatForKey(defaultName: String) -> Float
  func doubleForKey(defaultName: String) -> Double
  func boolForKey(defaultName: String) -> Bool
  func urlForKey(defaultName: String) -> URL?
  func setInteger(value: Int, forKey defaultName: String)
  func setFloat(value: Float, forKey defaultName: String)
  func setDouble(value: Double, forKey defaultName: String)
  func setBool(value: Bool, forKey defaultName: String)
  func setURL(url: URL?, forKey defaultName: String)
  func register(registrationDictionary: [String : AnyObject])
  func addSuiteNamed(suiteName: String)
  func removeSuiteNamed(suiteName: String)
  func dictionaryRepresentation() -> [String : AnyObject]
  var volatileDomainNames: [String] { get }
  func volatileDomainForName(domainName: String) -> [String : AnyObject]
  func setVolatileDomain(domain: [String : AnyObject], forName domainName: String)
  func removeVolatileDomainForName(domainName: String)
  func persistentDomainNames() -> [AnyObject]
  func persistentDomainForName(domainName: String) -> [String : AnyObject]?
  func setPersistentDomain(domain: [String : AnyObject], forName domainName: String)
  func removePersistentDomainForName(domainName: String)
  func synchronize() -> Bool
  func objectIsForcedForKey(key: String) -> Bool
  func objectIsForcedForKey(key: String, inDomain domain: String) -> Bool
}
let userDefaultsDidChangeNotification: String
class Value : Object, Copying, SecureCoding {
  func getValue(value: UnsafeMutablePointer<Void>)
  var objCType: UnsafePointer<Int8> { get }
  init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  init?(coder aDecoder: Coder)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension Value {
   init(_ value: UnsafePointer<Void>, withObjCType type: UnsafePointer<Int8>)
}
extension Value {
   init(nonretainedObject anObject: AnyObject?)
  var nonretainedObjectValue: AnyObject? { get }
   init(pointer: UnsafePointer<Void>)
  var pointerValue: UnsafeMutablePointer<Void> { get }
  func isEqualTo(value: Value) -> Bool
}
class Number : Value {
  init?(coder aDecoder: Coder)
  init(char value: Int8)
  init(unsignedChar value: UInt8)
  init(short value: Int16)
  init(unsignedShort value: UInt16)
  init(int value: Int32)
  init(unsignedInt value: UInt32)
  init(long value: Int)
  init(unsignedLong value: UInt)
  init(longLong value: Int64)
  init(unsignedLongLong value: UInt64)
  init(float value: Float)
  init(double value: Double)
  init(bool value: Bool)
  init(integer value: Int)
  init(unsignedInteger value: UInt)
  var charValue: Int8 { get }
  var unsignedCharValue: UInt8 { get }
  var shortValue: Int16 { get }
  var unsignedShortValue: UInt16 { get }
  var intValue: Int32 { get }
  var unsignedIntValue: UInt32 { get }
  var longValue: Int { get }
  var unsignedLongValue: UInt { get }
  var longLongValue: Int64 { get }
  var unsignedLongLongValue: UInt64 { get }
  var floatValue: Float { get }
  var doubleValue: Double { get }
  var boolValue: Bool { get }
  var integerValue: Int { get }
  var unsignedIntegerValue: UInt { get }
  var stringValue: String { get }
  func compare(otherNumber: Number) -> ComparisonResult
  func isEqualTo(number: Number) -> Bool
  func descriptionWithLocale(locale: AnyObject?) -> String
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}
extension Number : FloatLiteralConvertible, IntegerLiteralConvertible, BooleanLiteralConvertible {
  required convenience init(integerLiteral value: Int)
  required convenience init(floatLiteral value: Double)
  required convenience init(booleanLiteral value: Bool)
  typealias FloatLiteralType = Double
  typealias IntegerLiteralType = Int
  typealias BooleanLiteralType = Bool
}
extension Number {
}
let negateBooleanTransformerName: String
let isNilTransformerName: String
let isNotNilTransformerName: String
let unarchiveFromDataTransformerName: String
let keyedUnarchiveFromDataTransformerName: String
class ValueTransformer : Object {
  class func setValueTransformer(transformer: ValueTransformer?, forName name: String)
   init?(forName name: String)
  class func valueTransformerNames() -> [String]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(value: AnyObject?) -> AnyObject?
  func reverseTransformedValue(value: AnyObject?) -> AnyObject?
  init()
}
enum XMLParserExternalEntityResolvingPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ResolveExternalEntitiesNever
  case ResolveExternalEntitiesNoNetwork
  case ResolveExternalEntitiesSameOriginOnly
  case ResolveExternalEntitiesAlways
}
class XMLParser : Object {
  convenience init?(contentsOf url: URL)
  init(data: Data)
  convenience init(stream: InputStream)
  unowned(unsafe) var delegate: @sil_unmanaged XMLParserDelegate?
  var shouldProcessNamespaces: Bool
  var shouldReportNamespacePrefixes: Bool
  var externalEntityResolvingPolicy: XMLParserExternalEntityResolvingPolicy
  var allowedExternalEntityURLs: Set<URL>?
  func parse() -> Bool
  func abortParsing()
  @NSCopying var parserError: Error? { get }
  var shouldResolveExternalEntities: Bool
  convenience init()
}
extension XMLParser {
  var publicID: String? { get }
  var systemID: String? { get }
  var lineNumber: Int { get }
  var columnNumber: Int { get }
}
protocol XMLParserDelegate : ObjectProtocol {
  optional func parserDidStartDocument(parser: XMLParser)
  optional func parserDidEndDocument(parser: XMLParser)
  optional func parser(parser: XMLParser, foundNotationDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: XMLParser, foundUnparsedEntityDeclarationWithName name: String, publicID: String?, systemID: String?, notationName: String?)
  optional func parser(parser: XMLParser, foundAttributeDeclarationWithName attributeName: String, forElement elementName: String, type: String?, defaultValue: String?)
  optional func parser(parser: XMLParser, foundElementDeclarationWithName elementName: String, model: String)
  optional func parser(parser: XMLParser, foundInternalEntityDeclarationWithName name: String, value: String?)
  optional func parser(parser: XMLParser, foundExternalEntityDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:])
  optional func parser(parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?)
  optional func parser(parser: XMLParser, didStartMappingPrefix prefix: String, toURI namespaceURI: String)
  optional func parser(parser: XMLParser, didEndMappingPrefix prefix: String)
  optional func parser(parser: XMLParser, foundCharacters string: String)
  optional func parser(parser: XMLParser, foundIgnorableWhitespace whitespaceString: String)
  optional func parser(parser: XMLParser, foundProcessingInstructionWithTarget target: String, data: String?)
  optional func parser(parser: XMLParser, foundComment comment: String)
  optional func parser(parser: XMLParser, foundCDATA CDATABlock: Data)
  optional func parser(parser: XMLParser, resolveExternalEntityName name: String, systemID: String?) -> Data?
  optional func parser(parser: XMLParser, parseErrorOccurred parseError: Error)
  optional func parser(parser: XMLParser, validationErrorOccurred validationError: Error)
}
let XMLParserErrorDomain: String
enum XMLParserError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InternalError
  case OutOfMemoryError
  case DocumentStartError
  case EmptyDocumentError
  case PrematureDocumentEndError
  case InvalidHexCharacterRefError
  case InvalidDecimalCharacterRefError
  case InvalidCharacterRefError
  case InvalidCharacterError
  case CharacterRefAtEOFError
  case CharacterRefInPrologError
  case CharacterRefInEpilogError
  case CharacterRefInDTDError
  case EntityRefAtEOFError
  case EntityRefInPrologError
  case EntityRefInEpilogError
  case EntityRefInDTDError
  case ParsedEntityRefAtEOFError
  case ParsedEntityRefInPrologError
  case ParsedEntityRefInEpilogError
  case ParsedEntityRefInInternalSubsetError
  case EntityReferenceWithoutNameError
  case EntityReferenceMissingSemiError
  case ParsedEntityRefNoNameError
  case ParsedEntityRefMissingSemiError
  case UndeclaredEntityError
  case UnparsedEntityError
  case EntityIsExternalError
  case EntityIsParameterError
  case UnknownEncodingError
  case EncodingNotSupportedError
  case StringNotStartedError
  case StringNotClosedError
  case NamespaceDeclarationError
  case EntityNotStartedError
  case EntityNotFinishedError
  case LessThanSymbolInAttributeError
  case AttributeNotStartedError
  case AttributeNotFinishedError
  case AttributeHasNoValueError
  case AttributeRedefinedError
  case LiteralNotStartedError
  case LiteralNotFinishedError
  case CommentNotFinishedError
  case ProcessingInstructionNotStartedError
  case ProcessingInstructionNotFinishedError
  case NotationNotStartedError
  case NotationNotFinishedError
  case AttributeListNotStartedError
  case AttributeListNotFinishedError
  case MixedContentDeclNotStartedError
  case MixedContentDeclNotFinishedError
  case ElementContentDeclNotStartedError
  case ElementContentDeclNotFinishedError
  case XMLDeclNotStartedError
  case XMLDeclNotFinishedError
  case ConditionalSectionNotStartedError
  case ConditionalSectionNotFinishedError
  case ExternalSubsetNotFinishedError
  case DOCTYPEDeclNotFinishedError
  case MisplacedCDATAEndStringError
  case CDATANotFinishedError
  case MisplacedXMLDeclarationError
  case SpaceRequiredError
  case SeparatorRequiredError
  case NMTOKENRequiredError
  case NAMERequiredError
  case PCDATARequiredError
  case URIRequiredError
  case PublicIdentifierRequiredError
  case LTRequiredError
  case GTRequiredError
  case LTSlashRequiredError
  case EqualExpectedError
  case TagNameMismatchError
  case UnfinishedTagError
  case StandaloneValueError
  case InvalidEncodingNameError
  case CommentContainsDoubleHyphenError
  case InvalidEncodingError
  case ExternalStandaloneEntityError
  case InvalidConditionalSectionError
  case EntityValueRequiredError
  case NotWellBalancedError
  case ExtraContentError
  case InvalidCharacterInEntityError
  case ParsedEntityRefInInternalError
  case EntityRefLoopError
  case EntityBoundaryError
  case InvalidURIError
  case URIFragmentError
  case NoDTDError
  case DelegateAbortedParseError
}
func pageSize() -> Int
func logPageSize() -> Int
func roundUpToMultipleOfPageSize(bytes: Int) -> Int
func roundDownToMultipleOfPageSize(bytes: Int) -> Int
func allocateMemoryPages(bytes: Int) -> UnsafeMutablePointer<Void>
func deallocateMemoryPages(ptr: UnsafeMutablePointer<Void>, _ bytes: Int)
func copyMemoryPages(source: UnsafePointer<Void>, _ dest: UnsafeMutablePointer<Void>, _ bytes: Int)
func realMemoryAvailable() -> Int
