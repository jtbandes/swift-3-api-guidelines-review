
var NSFileNoSuchFileError: Int { get }
var NSFileLockingError: Int { get }
var NSFileReadUnknownError: Int { get }
var NSFileReadNoPermissionError: Int { get }
var NSFileReadInvalidFileNameError: Int { get }
var NSFileReadCorruptFileError: Int { get }
var NSFileReadNoSuchFileError: Int { get }
var NSFileReadInapplicableStringEncodingError: Int { get }
var NSFileReadUnsupportedSchemeError: Int { get }
var NSFileReadTooLargeError: Int { get }
var NSFileReadUnknownStringEncodingError: Int { get }
var NSFileWriteUnknownError: Int { get }
var NSFileWriteNoPermissionError: Int { get }
var NSFileWriteInvalidFileNameError: Int { get }
var NSFileWriteFileExistsError: Int { get }
var NSFileWriteInapplicableStringEncodingError: Int { get }
var NSFileWriteUnsupportedSchemeError: Int { get }
var NSFileWriteOutOfSpaceError: Int { get }
var NSFileWriteVolumeReadOnlyError: Int { get }
var NSFileManagerUnmountUnknownError: Int { get }
var NSFileManagerUnmountBusyError: Int { get }
var NSKeyValueValidationError: Int { get }
var NSFormattingError: Int { get }
var NSUserCancelledError: Int { get }
var NSFeatureUnsupportedError: Int { get }
var NSExecutableNotLoadableError: Int { get }
var NSExecutableArchitectureMismatchError: Int { get }
var NSExecutableRuntimeMismatchError: Int { get }
var NSExecutableLoadError: Int { get }
var NSExecutableLinkError: Int { get }
var NSFileErrorMinimum: Int { get }
var NSFileErrorMaximum: Int { get }
var NSValidationErrorMinimum: Int { get }
var NSValidationErrorMaximum: Int { get }
var NSExecutableErrorMinimum: Int { get }
var NSExecutableErrorMaximum: Int { get }
var NSFormattingErrorMinimum: Int { get }
var NSFormattingErrorMaximum: Int { get }
var NSPropertyListReadCorruptError: Int { get }
var NSPropertyListReadUnknownVersionError: Int { get }
var NSPropertyListReadStreamError: Int { get }
var NSPropertyListWriteStreamError: Int { get }
var NSPropertyListWriteInvalidError: Int { get }
var NSPropertyListErrorMinimum: Int { get }
var NSPropertyListErrorMaximum: Int { get }
var NSXPCConnectionInterrupted: Int { get }
var NSXPCConnectionInvalid: Int { get }
var NSXPCConnectionReplyInvalid: Int { get }
var NSXPCConnectionErrorMinimum: Int { get }
var NSXPCConnectionErrorMaximum: Int { get }
var NSUbiquitousFileUnavailableError: Int { get }
var NSUbiquitousFileNotUploadedDueToQuotaError: Int { get }
var NSUbiquitousFileUbiquityServerNotAvailable: Int { get }
var NSUbiquitousFileErrorMinimum: Int { get }
var NSUbiquitousFileErrorMaximum: Int { get }
var NSUserActivityHandoffFailedError: Int { get }
var NSUserActivityConnectionUnavailableError: Int { get }
var NSUserActivityRemoteApplicationTimedOutError: Int { get }
var NSUserActivityHandoffUserInfoTooLargeError: Int { get }
var NSUserActivityErrorMinimum: Int { get }
var NSUserActivityErrorMaximum: Int { get }
var NSCoderReadCorruptError: Int { get }
var NSCoderValueNotFoundError: Int { get }
var NSCoderErrorMinimum: Int { get }
var NSCoderErrorMaximum: Int { get }
var NSBundleErrorMinimum: Int { get }
var NSBundleErrorMaximum: Int { get }
struct NSAffineTransformStruct {
  var m11: CGFloat
  var m12: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var tX: CGFloat
  var tY: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m21: CGFloat, m22: CGFloat, tX: CGFloat, tY: CGFloat)
}
class NSAffineTransform : NSObject, NSCopying, NSSecureCoding {
  convenience init(transform: NSAffineTransform)
  init()
  func translateXBy(deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotateByDegrees(angle: CGFloat)
  func rotateByRadians(angle: CGFloat)
  func scaleBy(scale: CGFloat)
  func scaleXBy(scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func appendTransform(transform: NSAffineTransform)
  func prependTransform(transform: NSAffineTransform)
  func transformPoint(aPoint: NSPoint) -> NSPoint
  func transformSize(aSize: NSSize) -> NSSize
  var transformStruct: NSAffineTransformStruct
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct NSAppleEventSendOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoReply: NSAppleEventSendOptions { get }
  static var QueueReply: NSAppleEventSendOptions { get }
  static var WaitForReply: NSAppleEventSendOptions { get }
  static var NeverInteract: NSAppleEventSendOptions { get }
  static var CanInteract: NSAppleEventSendOptions { get }
  static var AlwaysInteract: NSAppleEventSendOptions { get }
  static var CanSwitchLayer: NSAppleEventSendOptions { get }
  static var DontRecord: NSAppleEventSendOptions { get }
  static var DontExecute: NSAppleEventSendOptions { get }
  static var DontAnnotate: NSAppleEventSendOptions { get }
  static var DefaultOptions: NSAppleEventSendOptions { get }
}
class NSAppleEventDescriptor : NSObject, NSCopying, NSSecureCoding {
  class func nullDescriptor() -> NSAppleEventDescriptor
   init(boolean: Bool)
   init(enumCode enumerator: OSType)
   init(int32 signedInt: Int32)
   init(double doubleValue: Double)
   init(typeCode: OSType)
   init(string: String)
   init(date: NSDate)
   init(fileURL: NSURL)
  class func appleEventWithEventClass(eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID) -> NSAppleEventDescriptor
  class func listDescriptor() -> NSAppleEventDescriptor
  class func recordDescriptor() -> NSAppleEventDescriptor
  class func currentProcessDescriptor() -> NSAppleEventDescriptor
   init(processIdentifier: pid_t)
   init(bundleIdentifier: String)
   init(applicationURL: NSURL)
  init(AEDescNoCopy aeDesc: UnsafePointer<AEDesc>)
  convenience init?(descriptorType: DescType, bytes: UnsafePointer<Void>, length byteCount: Int)
  convenience init?(descriptorType: DescType, data: NSData?)
  convenience init(eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID)
  convenience init(listDescriptor: ())
  convenience init(recordDescriptor: ())
  var aeDesc: UnsafePointer<AEDesc> { get }
  var descriptorType: DescType { get }
  @NSCopying var data: NSData { get }
  var booleanValue: Bool { get }
  var enumCodeValue: OSType { get }
  var int32Value: Int32 { get }
  var doubleValue: Double { get }
  var typeCodeValue: OSType { get }
  var stringValue: String? { get }
  @NSCopying var dateValue: NSDate? { get }
  @NSCopying var fileURLValue: NSURL? { get }
  var eventClass: AEEventClass { get }
  var eventID: AEEventID { get }
  var returnID: AEReturnID { get }
  var transactionID: AETransactionID { get }
  func setParamDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func paramDescriptorForKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeParamDescriptorWithKeyword(keyword: AEKeyword)
  func setAttributeDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func attributeDescriptorForKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  func sendEventWithOptions(sendOptions: NSAppleEventSendOptions, timeout timeoutInSeconds: NSTimeInterval) throws -> NSAppleEventDescriptor
  var isRecordDescriptor: Bool { get }
  var numberOfItems: Int { get }
  func insertDescriptor(descriptor: NSAppleEventDescriptor, atIndex index: Int)
  func descriptorAtIndex(index: Int) -> NSAppleEventDescriptor?
  func removeDescriptorAtIndex(index: Int)
  func setDescriptor(descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func descriptorForKeyword(keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeDescriptorWithKeyword(keyword: AEKeyword)
  func keywordForDescriptorAtIndex(index: Int) -> AEKeyword
  func coerceToDescriptorType(descriptorType: DescType) -> NSAppleEventDescriptor?
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias NSAppleEventManagerSuspensionID = COpaquePointer
let NSAppleEventTimeOutDefault: Double
let NSAppleEventTimeOutNone: Double
let NSAppleEventManagerWillProcessFirstEventNotification: String
class NSAppleEventManager : NSObject {
  class func sharedAppleEventManager() -> NSAppleEventManager
  func setEventHandler(handler: AnyObject, andSelector handleEventSelector: Selector, forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func removeEventHandlerForEventClass(eventClass: AEEventClass, andEventID eventID: AEEventID)
  func dispatchRawAppleEvent(theAppleEvent: UnsafePointer<AppleEvent>, withRawReply theReply: UnsafeMutablePointer<AppleEvent>, handlerRefCon: SRefCon) -> OSErr
  var currentAppleEvent: NSAppleEventDescriptor? { get }
  var currentReplyAppleEvent: NSAppleEventDescriptor? { get }
  func suspendCurrentAppleEvent() -> NSAppleEventManagerSuspensionID
  func appleEventForSuspensionID(suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func replyAppleEventForSuspensionID(suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func setCurrentAppleEventAndReplyEventWithSuspensionID(suspensionID: NSAppleEventManagerSuspensionID)
  func resumeWithSuspensionID(suspensionID: NSAppleEventManagerSuspensionID)
  init()
}
let NSAppleScriptErrorMessage: String
let NSAppleScriptErrorNumber: String
let NSAppleScriptErrorAppName: String
let NSAppleScriptErrorBriefMessage: String
let NSAppleScriptErrorRange: String
class NSAppleScript : NSObject, NSCopying {
  init?(contentsOfURL url: NSURL, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(source: String)
  var source: String? { get }
  var compiled: Bool { get }
  func compileAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func executeAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor
  func executeAppleEvent(event: NSAppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSArchiver : NSCoder {
  init(forWritingWithMutableData mdata: NSMutableData)
  var archiverData: NSMutableData { get }
  func encodeRootObject(rootObject: AnyObject)
  func encodeConditionalObject(object: AnyObject?)
  class func archivedDataWithRootObject(rootObject: AnyObject) -> NSData
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  func encodeClassName(trueName: String, intoClassName inArchiveName: String)
  func classNameEncodedForTrueClassName(trueName: String) -> String?
  func replaceObject(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}
class NSUnarchiver : NSCoder {
  init?(forReadingWithData data: NSData)
  var atEnd: Bool { get }
  var systemVersion: UInt32 { get }
  class func unarchiveObjectWithData(data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  class func decodeClassName(inArchiveName: String, asClassName trueName: String)
  func decodeClassName(inArchiveName: String, asClassName trueName: String)
  class func classNameDecodedForArchiveClassName(inArchiveName: String) -> String
  func classNameDecodedForArchiveClassName(inArchiveName: String) -> String
  func replaceObject(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}
let NSInconsistentArchiveException: String
extension NSObject {
  var classForArchiver: AnyClass? { get }
  class func replacementObjectForArchiver(archiver: NSArchiver) -> AnyObject?
  func replacementObjectForArchiver(archiver: NSArchiver) -> AnyObject?
  class func classForArchiver() -> AnyClass?
}
class NSArray : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(index: Int) -> AnyObject
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func arrayByAddingObject(anObject: AnyObject) -> [AnyObject]
  func arrayByAddingObjectsFromArray(otherArray: [AnyObject]) -> [AnyObject]
  func componentsJoinedByString(separator: String) -> String
  func containsObject(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func firstObjectCommonWithArray(otherArray: [AnyObject]) -> AnyObject?
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func indexOfObject(anObject: AnyObject) -> Int
  func indexOfObject(anObject: AnyObject, inRange range: NSRange) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject) -> Int
  func indexOfObjectIdenticalTo(anObject: AnyObject, inRange range: NSRange) -> Int
  func isEqualToArray(otherArray: [AnyObject]) -> Bool
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var sortedArrayHint: NSData { get }
  func sortedArrayUsingFunction(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>) -> [AnyObject]
  func sortedArrayUsingFunction(comparator: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>, hint: NSData?) -> [AnyObject]
  func sortedArrayUsingSelector(comparator: Selector) -> [AnyObject]
  func subarrayWithRange(range: NSRange) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func objectsAtIndexes(indexes: NSIndexSet) -> [AnyObject]
  subscript (idx: Int) -> AnyObject { get }
  func enumerateObjectsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func sortedArrayUsingComparator(cmptr: NSComparator) -> [AnyObject]
  func sortedArrayWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  func indexOfObject(obj: AnyObject, inSortedRange r: NSRange, options opts: NSBinarySearchingOptions, usingComparator cmp: NSComparator) -> Int
}
struct NSBinarySearchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FirstEqual: NSBinarySearchingOptions { get }
  static var LastEqual: NSBinarySearchingOptions { get }
  static var InsertionIndex: NSBinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
extension NSArray {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
class NSMutableArray : NSArray {
  func addObject(anObject: AnyObject)
  func insertObject(anObject: AnyObject, atIndex index: Int)
  func removeLastObject()
  func removeObjectAtIndex(index: Int)
  func replaceObjectAtIndex(index: Int, withObject anObject: AnyObject)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
}
extension NSMutableArray {
  func addObjectsFromArray(otherArray: [AnyObject])
  func exchangeObjectAtIndex(idx1: Int, withObjectAtIndex idx2: Int)
  func removeAllObjects()
  func removeObject(anObject: AnyObject, inRange range: NSRange)
  func removeObject(anObject: AnyObject)
  func removeObjectIdenticalTo(anObject: AnyObject, inRange range: NSRange)
  func removeObjectIdenticalTo(anObject: AnyObject)
  func removeObjectsInArray(otherArray: [AnyObject])
  func removeObjectsInRange(range: NSRange)
  func replaceObjectsInRange(range: NSRange, withObjectsFromArray otherArray: [AnyObject], range otherRange: NSRange)
  func replaceObjectsInRange(range: NSRange, withObjectsFromArray otherArray: [AnyObject])
  func setArray(otherArray: [AnyObject])
  func sortUsingFunction(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  func sortUsingSelector(comparator: Selector)
  func insertObjects(objects: [AnyObject], atIndexes indexes: NSIndexSet)
  func removeObjectsAtIndexes(indexes: NSIndexSet)
  func replaceObjectsAtIndexes(indexes: NSIndexSet, withObjects objects: [AnyObject])
  subscript (idx: Int) -> AnyObject
  func sortUsingComparator(cmptr: NSComparator)
  func sortWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator)
}
extension NSMutableArray {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
class NSAttributedString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var string: String { get }
  func attributesAtIndex(location: Int, effectiveRange range: NSRangePointer) -> [String : AnyObject]
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  var length: Int { get }
  func attribute(attrName: String, atIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  func attributedSubstringFromRange(range: NSRange) -> NSAttributedString
  func attributesAtIndex(location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, atIndex location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> AnyObject?
  func isEqualToAttributedString(other: NSAttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
  func enumerateAttributesInRange(enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions, usingBlock block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateAttribute(attrName: String, inRange enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions, usingBlock block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct NSAttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Reverse: NSAttributedStringEnumerationOptions { get }
  static var LongestEffectiveRangeNotRequired: NSAttributedStringEnumerationOptions { get }
}
class NSMutableAttributedString : NSAttributedString {
  func replaceCharactersInRange(range: NSRange, withString str: String)
  func setAttributes(attrs: [String : AnyObject]?, range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}
extension NSMutableAttributedString {
  var mutableString: NSMutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharactersInRange(range: NSRange, withAttributedString attrString: NSAttributedString)
  func insertAttributedString(attrString: NSAttributedString, atIndex loc: Int)
  func appendAttributedString(attrString: NSAttributedString)
  func deleteCharactersInRange(range: NSRange)
  func setAttributedString(attrString: NSAttributedString)
  func beginEditing()
  func endEditing()
}
enum NSBackgroundActivityResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Finished
  case Deferred
}
typealias NSBackgroundActivityCompletionHandler = (NSBackgroundActivityResult) -> Void
class NSBackgroundActivityScheduler : NSObject {
  init(identifier: String)
  var identifier: String { get }
  var qualityOfService: NSQualityOfService
  var repeats: Bool
  var interval: NSTimeInterval
  var tolerance: NSTimeInterval
  func scheduleWithBlock(block: (NSBackgroundActivityCompletionHandler) -> Void)
  func invalidate()
  var shouldDefer: Bool { get }
  convenience init()
}
class NSBundle : NSObject {
  class func mainBundle() -> NSBundle
  init?(path: String)
  convenience init?(URL url: NSURL)
   init(forClass aClass: AnyClass)
   init?(identifier: String)
  class func allBundles() -> [NSBundle]
  class func allFrameworks() -> [NSBundle]
  func load() -> Bool
  var loaded: Bool { get }
  func unload() -> Bool
  func preflight() throws
  func loadAndReturnError() throws
  @NSCopying var bundleURL: NSURL { get }
  @NSCopying var resourceURL: NSURL? { get }
  @NSCopying var executableURL: NSURL? { get }
  func URLForAuxiliaryExecutable(executableName: String) -> NSURL?
  @NSCopying var privateFrameworksURL: NSURL? { get }
  @NSCopying var sharedFrameworksURL: NSURL? { get }
  @NSCopying var sharedSupportURL: NSURL? { get }
  @NSCopying var builtInPlugInsURL: NSURL? { get }
  @NSCopying var appStoreReceiptURL: NSURL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func pathForAuxiliaryExecutable(executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  class func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> NSURL?
  class func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> [NSURL]?
  func URLForResource(name: String?, withExtension ext: String?) -> NSURL?
  func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?) -> NSURL?
  func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> NSURL?
  func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?) -> [NSURL]?
  func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [NSURL]?
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
  class func preferredLocalizationsFromArray(localizationsArray: [String]) -> [String]
  class func preferredLocalizationsFromArray(localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  var executableArchitectures: [NSNumber]? { get }
  convenience init()
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  func variantFittingPresentationWidth(width: Int) -> String
}
let NSBundleDidLoadNotification: String
let NSLoadedClasses: String
extension NSBundle {
}
struct NSByteCountFormatterUnits : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UseDefault: NSByteCountFormatterUnits { get }
  static var UseBytes: NSByteCountFormatterUnits { get }
  static var UseKB: NSByteCountFormatterUnits { get }
  static var UseMB: NSByteCountFormatterUnits { get }
  static var UseGB: NSByteCountFormatterUnits { get }
  static var UseTB: NSByteCountFormatterUnits { get }
  static var UsePB: NSByteCountFormatterUnits { get }
  static var UseEB: NSByteCountFormatterUnits { get }
  static var UseZB: NSByteCountFormatterUnits { get }
  static var UseYBOrHigher: NSByteCountFormatterUnits { get }
  static var UseAll: NSByteCountFormatterUnits { get }
}
enum NSByteCountFormatterCountStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case File
  case Memory
  case Decimal
  case Binary
}
class NSByteCountFormatter : NSFormatter {
  class func stringFromByteCount(byteCount: Int64, countStyle: NSByteCountFormatterCountStyle) -> String
  func stringFromByteCount(byteCount: Int64) -> String
  var allowedUnits: NSByteCountFormatterUnits
  var countStyle: NSByteCountFormatterCountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var adaptive: Bool
  var zeroPadsFractionDigits: Bool
  var formattingContext: NSFormattingContext
  init()
  init?(coder aDecoder: NSCoder)
}
var NS_UnknownByteOrder: Int { get }
var NS_LittleEndian: Int { get }
var NS_BigEndian: Int { get }
func NSHostByteOrder() -> Int
func NSSwapShort(inv: UInt16) -> UInt16
func NSSwapInt(inv: UInt32) -> UInt32
func NSSwapLong(inv: UInt) -> UInt
func NSSwapLongLong(inv: UInt64) -> UInt64
func NSSwapBigShortToHost(x: UInt16) -> UInt16
func NSSwapBigIntToHost(x: UInt32) -> UInt32
func NSSwapBigLongToHost(x: UInt) -> UInt
func NSSwapBigLongLongToHost(x: UInt64) -> UInt64
func NSSwapHostShortToBig(x: UInt16) -> UInt16
func NSSwapHostIntToBig(x: UInt32) -> UInt32
func NSSwapHostLongToBig(x: UInt) -> UInt
func NSSwapHostLongLongToBig(x: UInt64) -> UInt64
func NSSwapLittleShortToHost(x: UInt16) -> UInt16
func NSSwapLittleIntToHost(x: UInt32) -> UInt32
func NSSwapLittleLongToHost(x: UInt) -> UInt
func NSSwapLittleLongLongToHost(x: UInt64) -> UInt64
func NSSwapHostShortToLittle(x: UInt16) -> UInt16
func NSSwapHostIntToLittle(x: UInt32) -> UInt32
func NSSwapHostLongToLittle(x: UInt) -> UInt
func NSSwapHostLongLongToLittle(x: UInt64) -> UInt64
struct NSSwappedFloat {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct NSSwappedDouble {
  var v: UInt64
  init()
  init(v: UInt64)
}
func NSConvertHostFloatToSwapped(x: Float) -> NSSwappedFloat
func NSConvertSwappedFloatToHost(x: NSSwappedFloat) -> Float
func NSConvertHostDoubleToSwapped(x: Double) -> NSSwappedDouble
func NSConvertSwappedDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapFloat(x: NSSwappedFloat) -> NSSwappedFloat
func NSSwapDouble(x: NSSwappedDouble) -> NSSwappedDouble
func NSSwapBigDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapBigFloatToHost(x: NSSwappedFloat) -> Float
func NSSwapHostDoubleToBig(x: Double) -> NSSwappedDouble
func NSSwapHostFloatToBig(x: Float) -> NSSwappedFloat
func NSSwapLittleDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapLittleFloatToHost(x: NSSwappedFloat) -> Float
func NSSwapHostDoubleToLittle(x: Double) -> NSSwappedDouble
func NSSwapHostFloatToLittle(x: Float) -> NSSwappedFloat
class NSCache : NSObject {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged NSCacheDelegate?
  func objectForKey(key: AnyObject) -> AnyObject?
  func setObject(obj: AnyObject, forKey key: AnyObject)
  func setObject(obj: AnyObject, forKey key: AnyObject, cost g: Int)
  func removeObjectForKey(key: AnyObject)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
  init()
}
protocol NSCacheDelegate : NSObjectProtocol {
  optional func cache(cache: NSCache, willEvictObject obj: AnyObject)
}
let NSCalendarIdentifierGregorian: String
let NSCalendarIdentifierBuddhist: String
let NSCalendarIdentifierChinese: String
let NSCalendarIdentifierCoptic: String
let NSCalendarIdentifierEthiopicAmeteMihret: String
let NSCalendarIdentifierEthiopicAmeteAlem: String
let NSCalendarIdentifierHebrew: String
let NSCalendarIdentifierISO8601: String
let NSCalendarIdentifierIndian: String
let NSCalendarIdentifierIslamic: String
let NSCalendarIdentifierIslamicCivil: String
let NSCalendarIdentifierJapanese: String
let NSCalendarIdentifierPersian: String
let NSCalendarIdentifierRepublicOfChina: String
let NSCalendarIdentifierIslamicTabular: String
let NSCalendarIdentifierIslamicUmmAlQura: String
struct NSCalendarUnit : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Era: NSCalendarUnit { get }
  static var Year: NSCalendarUnit { get }
  static var Month: NSCalendarUnit { get }
  static var Day: NSCalendarUnit { get }
  static var Hour: NSCalendarUnit { get }
  static var Minute: NSCalendarUnit { get }
  static var Second: NSCalendarUnit { get }
  static var Weekday: NSCalendarUnit { get }
  static var WeekdayOrdinal: NSCalendarUnit { get }
  static var Quarter: NSCalendarUnit { get }
  static var WeekOfMonth: NSCalendarUnit { get }
  static var WeekOfYear: NSCalendarUnit { get }
  static var YearForWeekOfYear: NSCalendarUnit { get }
  static var Nanosecond: NSCalendarUnit { get }
  static var Calendar: NSCalendarUnit { get }
  static var TimeZone: NSCalendarUnit { get }
  static var NSEraCalendarUnit: NSCalendarUnit { get }
  static var NSYearCalendarUnit: NSCalendarUnit { get }
  static var NSMonthCalendarUnit: NSCalendarUnit { get }
  static var NSDayCalendarUnit: NSCalendarUnit { get }
  static var NSHourCalendarUnit: NSCalendarUnit { get }
  static var NSMinuteCalendarUnit: NSCalendarUnit { get }
  static var NSSecondCalendarUnit: NSCalendarUnit { get }
  static var NSWeekCalendarUnit: NSCalendarUnit { get }
  static var NSWeekdayCalendarUnit: NSCalendarUnit { get }
  static var NSWeekdayOrdinalCalendarUnit: NSCalendarUnit { get }
  static var NSQuarterCalendarUnit: NSCalendarUnit { get }
  static var NSWeekOfMonthCalendarUnit: NSCalendarUnit { get }
  static var NSWeekOfYearCalendarUnit: NSCalendarUnit { get }
  static var NSYearForWeekOfYearCalendarUnit: NSCalendarUnit { get }
  static var NSCalendarCalendarUnit: NSCalendarUnit { get }
  static var NSTimeZoneCalendarUnit: NSCalendarUnit { get }
}
struct NSCalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: NSCalendarOptions { get }
  static var MatchStrictly: NSCalendarOptions { get }
  static var SearchBackwards: NSCalendarOptions { get }
  static var MatchPreviousTimePreservingSmallerUnits: NSCalendarOptions { get }
  static var MatchNextTimePreservingSmallerUnits: NSCalendarOptions { get }
  static var MatchNextTime: NSCalendarOptions { get }
  static var MatchFirst: NSCalendarOptions { get }
  static var MatchLast: NSCalendarOptions { get }
}
var NSWrapCalendarComponents: Int { get }
class NSCalendar : NSObject, NSCopying, NSSecureCoding {
  class func currentCalendar() -> NSCalendar
  class func autoupdatingCurrentCalendar() -> NSCalendar
   init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone
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
  var AMSymbol: String { get }
  var PMSymbol: String { get }
  func minimumRangeOfUnit(unit: NSCalendarUnit) -> NSRange
  func maximumRangeOfUnit(unit: NSCalendarUnit) -> NSRange
  func rangeOfUnit(smaller: NSCalendarUnit, inUnit larger: NSCalendarUnit, forDate date: NSDate) -> NSRange
  func ordinalityOfUnit(smaller: NSCalendarUnit, inUnit larger: NSCalendarUnit, forDate date: NSDate) -> Int
  func rangeOfUnit(unit: NSCalendarUnit, startDate datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, forDate date: NSDate) -> Bool
  func dateFromComponents(comps: NSDateComponents) -> NSDate?
  func components(unitFlags: NSCalendarUnit, fromDate date: NSDate) -> NSDateComponents
  func dateByAddingComponents(comps: NSDateComponents, toDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  func components(unitFlags: NSCalendarUnit, fromDate startingDate: NSDate, toDate resultDate: NSDate, options opts: NSCalendarOptions) -> NSDateComponents
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  func component(unit: NSCalendarUnit, fromDate date: NSDate) -> Int
  func dateWithEra(eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  func dateWithEra(eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  func startOfDayForDate(date: NSDate) -> NSDate
  func componentsInTimeZone(timezone: NSTimeZone, fromDate date: NSDate) -> NSDateComponents
  func compareDate(date1: NSDate, toDate date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> NSComparisonResult
  func isDate(date1: NSDate, equalToDate date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> Bool
  func isDate(date1: NSDate, inSameDayAsDate date2: NSDate) -> Bool
  func isDateInToday(date: NSDate) -> Bool
  func isDateInYesterday(date: NSDate) -> Bool
  func isDateInTomorrow(date: NSDate) -> Bool
  func isDateInWeekend(date: NSDate) -> Bool
  func rangeOfWeekendStartDate(datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, containingDate date: NSDate) -> Bool
  func nextWeekendStartDate(datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, options: NSCalendarOptions, afterDate date: NSDate) -> Bool
  func components(unitFlags: NSCalendarUnit, fromDateComponents startingDateComp: NSDateComponents, toDateComponents resultDateComp: NSDateComponents, options: NSCalendarOptions) -> NSDateComponents
  func dateByAddingUnit(unit: NSCalendarUnit, value: Int, toDate date: NSDate, options: NSCalendarOptions) -> NSDate?
  func enumerateDatesStartingAfterDate(start: NSDate, matchingComponents comps: NSDateComponents, options opts: NSCalendarOptions, usingBlock block: (NSDate?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  func nextDateAfterDate(date: NSDate, matchingComponents comps: NSDateComponents, options: NSCalendarOptions) -> NSDate?
  func nextDateAfterDate(date: NSDate, matchingUnit unit: NSCalendarUnit, value: Int, options: NSCalendarOptions) -> NSDate?
  func nextDateAfterDate(date: NSDate, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: NSCalendarOptions) -> NSDate?
  func dateBySettingUnit(unit: NSCalendarUnit, value v: Int, ofDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  func dateBySettingHour(h: Int, minute m: Int, second s: Int, ofDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  func date(date: NSDate, matchesComponents components: NSDateComponents) -> Bool
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let NSCalendarDayChangedNotification: String
var NSDateComponentUndefined: Int { get }
var NSUndefinedDateComponent: Int { get }
class NSDateComponents : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var calendar: NSCalendar?
  @NSCopying var timeZone: NSTimeZone?
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
  var leapMonth: Bool
  @NSCopying var date: NSDate? { get }
  func setValue(value: Int, forComponent unit: NSCalendarUnit)
  func valueForComponent(unit: NSCalendarUnit) -> Int
  var validDate: Bool { get }
  func isValidDateInCalendar(calendar: NSCalendar) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSDate {
  class func dateWithNaturalLanguageString(string: String, locale: AnyObject?) -> AnyObject?
  class func dateWithNaturalLanguageString(string: String) -> AnyObject?
  class func dateWithString(aString: String) -> AnyObject
  func dateWithCalendarFormat(format: String?, timeZone aTimeZone: NSTimeZone?) -> NSCalendarDate
  func descriptionWithCalendarFormat(format: String?, timeZone aTimeZone: NSTimeZone?, locale: AnyObject?) -> String?
  convenience init?(string description: String)
}
var NSOpenStepUnicodeReservedBase: Int { get }
class NSCharacterSet : NSObject, NSCopying, NSMutableCopying, NSCoding {
  class func controlCharacterSet() -> NSCharacterSet
  class func whitespaceCharacterSet() -> NSCharacterSet
  class func whitespaceAndNewlineCharacterSet() -> NSCharacterSet
  class func decimalDigitCharacterSet() -> NSCharacterSet
  class func letterCharacterSet() -> NSCharacterSet
  class func lowercaseLetterCharacterSet() -> NSCharacterSet
  class func uppercaseLetterCharacterSet() -> NSCharacterSet
  class func nonBaseCharacterSet() -> NSCharacterSet
  class func alphanumericCharacterSet() -> NSCharacterSet
  class func decomposableCharacterSet() -> NSCharacterSet
  class func illegalCharacterSet() -> NSCharacterSet
  class func punctuationCharacterSet() -> NSCharacterSet
  class func capitalizedLetterCharacterSet() -> NSCharacterSet
  class func symbolCharacterSet() -> NSCharacterSet
  class func newlineCharacterSet() -> NSCharacterSet
   init(range aRange: NSRange)
   init(charactersInString aString: String)
   init(bitmapRepresentation data: NSData)
   init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  func characterIsMember(aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: NSData { get }
  @NSCopying var invertedSet: NSCharacterSet { get }
  func longCharacterIsMember(theLongChar: UTF32Char) -> Bool
  func isSupersetOfSet(theOtherSet: NSCharacterSet) -> Bool
  func hasMemberInPlane(thePlane: UInt8) -> Bool
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
class NSMutableCharacterSet : NSCharacterSet, NSCopying, NSMutableCopying {
  func addCharactersInRange(aRange: NSRange)
  func removeCharactersInRange(aRange: NSRange)
  func addCharactersInString(aString: String)
  func removeCharactersInString(aString: String)
  func formUnionWithCharacterSet(otherSet: NSCharacterSet)
  func formIntersectionWithCharacterSet(otherSet: NSCharacterSet)
  func invert()
  class func controlCharacterSet() -> NSMutableCharacterSet
  class func whitespaceCharacterSet() -> NSMutableCharacterSet
  class func whitespaceAndNewlineCharacterSet() -> NSMutableCharacterSet
  class func decimalDigitCharacterSet() -> NSMutableCharacterSet
  class func letterCharacterSet() -> NSMutableCharacterSet
  class func lowercaseLetterCharacterSet() -> NSMutableCharacterSet
  class func uppercaseLetterCharacterSet() -> NSMutableCharacterSet
  class func nonBaseCharacterSet() -> NSMutableCharacterSet
  class func alphanumericCharacterSet() -> NSMutableCharacterSet
  class func decomposableCharacterSet() -> NSMutableCharacterSet
  class func illegalCharacterSet() -> NSMutableCharacterSet
  class func punctuationCharacterSet() -> NSMutableCharacterSet
  class func capitalizedLetterCharacterSet() -> NSMutableCharacterSet
  class func symbolCharacterSet() -> NSMutableCharacterSet
  class func newlineCharacterSet() -> NSMutableCharacterSet
   init(range aRange: NSRange)
   init(charactersInString aString: String)
   init(bitmapRepresentation data: NSData)
   init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  convenience init()
}
class NSClassDescription : NSObject {
  class func registerClassDescription(description: NSClassDescription, forClass aClass: AnyClass)
  class func invalidateClassDescriptionCache()
   init?(forClass aClass: AnyClass)
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  init()
}
extension NSObject {
  @NSCopying var classDescription: NSClassDescription { get }
  var attributeKeys: [String] { get }
  var toOneRelationshipKeys: [String] { get }
  var toManyRelationshipKeys: [String] { get }
  class func inverseForRelationshipKey(relationshipKey: String) -> String?
  func inverseForRelationshipKey(relationshipKey: String) -> String?
  class func classDescription() -> NSClassDescription
  class func attributeKeys() -> [String]
  class func toOneRelationshipKeys() -> [String]
  class func toManyRelationshipKeys() -> [String]
}
let NSClassDescriptionNeededForClassNotification: String
class NSCoder : NSObject {
  func encodeValueOfObjCType(type: UnsafePointer<Int8>, at addr: UnsafePointer<Void>)
  func encodeDataObject(data: NSData)
  func decodeValueOfObjCType(type: UnsafePointer<Int8>, at data: UnsafeMutablePointer<Void>)
  func decodeDataObject() -> NSData?
  func versionForClassName(className: String) -> Int
  init()
}
extension NSCoder {
  @warn_unused_result
  func decodeObjectOfClass<DecodedObjectType : NSCoding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType?
  @warn_unused_result
  @nonobjc func decodeObjectOfClasses(classes: NSSet?, forKey key: String) -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObject() throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectForKey(key: String) throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectOfClass<DecodedObjectType : NSCoding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType?
  @warn_unused_result
  func decodeTopLevelObjectOfClasses(classes: NSSet?, forKey key: String) throws -> AnyObject?
}
extension NSCoder {
  func encodeObject(object: AnyObject?)
  func encodeRootObject(rootObject: AnyObject)
  func encodeBycopyObject(anObject: AnyObject?)
  func encodeByrefObject(anObject: AnyObject?)
  func encodeConditionalObject(object: AnyObject?)
  func encodeArrayOfObjCType(type: UnsafePointer<Int8>, count: Int, at array: UnsafePointer<Void>)
  func encodeBytes(byteaddr: UnsafePointer<Void>, length: Int)
  func decodeObject() -> AnyObject?
  func decodeArrayOfObjCType(itemType: UnsafePointer<Int8>, count: Int, at array: UnsafeMutablePointer<Void>)
  func decodeBytesWithReturnedLength(lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Void>
  func encodePropertyList(aPropertyList: AnyObject)
  func decodePropertyList() -> AnyObject?
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encodeObject(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encodeBool(boolv: Bool, forKey key: String)
  func encodeInt(intv: Int32, forKey key: String)
  func encodeInt32(intv: Int32, forKey key: String)
  func encodeInt64(intv: Int64, forKey key: String)
  func encodeFloat(realv: Float, forKey key: String)
  func encodeDouble(realv: Double, forKey key: String)
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
  func encodeInteger(intv: Int, forKey key: String)
  func decodeIntegerForKey(key: String) -> Int
  var requiresSecureCoding: Bool { get }
  func __decodeObjectOfClasses(classes: Set<NSObject>?, forKey key: String) -> AnyObject?
  func decodePropertyListForKey(key: String) -> AnyObject?
  var allowedClasses: Set<NSObject>? { get }
  func failWithError(error: NSError)
}
extension NSCoder {
}
struct NSComparisonPredicateOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  static var DiacriticInsensitivePredicateOption: NSComparisonPredicateOptions { get }
  static var NormalizedPredicateOption: NSComparisonPredicateOptions { get }
}
enum NSComparisonPredicateModifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DirectPredicateModifier
  case AllPredicateModifier
  case AnyPredicateModifier
}
enum NSPredicateOperatorType : UInt {
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
class NSComparisonPredicate : NSPredicate {
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, modifier: NSComparisonPredicateModifier, type: NSPredicateOperatorType, options: NSComparisonPredicateOptions)
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, customSelector selector: Selector)
  init?(coder: NSCoder)
  var predicateOperatorType: NSPredicateOperatorType { get }
  var comparisonPredicateModifier: NSComparisonPredicateModifier { get }
  var leftExpression: NSExpression { get }
  var rightExpression: NSExpression { get }
  var customSelector: Selector { get }
  var options: NSComparisonPredicateOptions { get }
  convenience init()
}
enum NSCompoundPredicateType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotPredicateType
  case AndPredicateType
  case OrPredicateType
}
class NSCompoundPredicate : NSPredicate {
  init(type: NSCompoundPredicateType, subpredicates: [NSPredicate])
  init?(coder: NSCoder)
  var compoundPredicateType: NSCompoundPredicateType { get }
  var subpredicates: [AnyObject] { get }
   init(andPredicateWithSubpredicates subpredicates: [NSPredicate])
   init(orPredicateWithSubpredicates subpredicates: [NSPredicate])
   init(notPredicateWithSubpredicate predicate: NSPredicate)
  convenience init()
}
struct NSDataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataReadingMappedIfSafe: NSDataReadingOptions { get }
  static var DataReadingUncached: NSDataReadingOptions { get }
  static var DataReadingMappedAlways: NSDataReadingOptions { get }
  static var DataReadingMapped: NSDataReadingOptions { get }
  static var MappedRead: NSDataReadingOptions { get }
  static var UncachedRead: NSDataReadingOptions { get }
}
struct NSDataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: NSDataWritingOptions { get }
  static var DataWritingWithoutOverwriting: NSDataWritingOptions { get }
  static var AtomicWrite: NSDataWritingOptions { get }
}
struct NSDataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Backwards: NSDataSearchOptions { get }
  static var Anchored: NSDataSearchOptions { get }
}
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
struct NSDataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var IgnoreUnknownCharacters: NSDataBase64DecodingOptions { get }
}
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqualToData(other: NSData) -> Bool
  func subdataWithRange(range: NSRange) -> NSData
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func writeToFile(path: String, options writeOptionsMask: NSDataWritingOptions) throws
  func writeToURL(url: NSURL, options writeOptionsMask: NSDataWritingOptions) throws
  func rangeOfData(dataToFind: NSData, options mask: NSDataSearchOptions, range searchRange: NSRange) -> NSRange
  func enumerateByteRangesUsingBlock(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
}
extension NSData {
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  func base64EncodedStringWithOptions(options: NSDataBase64EncodingOptions) -> String
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  func base64EncodedDataWithOptions(options: NSDataBase64EncodingOptions) -> NSData
}
extension NSData {
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  class func dataWithContentsOfMappedFile(path: String) -> AnyObject?
  init?(contentsOfMappedFile path: String)
}
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  init?(contentsOfMappedFile path: String)
}
extension NSMutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func appendData(other: NSData)
  func increaseLengthBy(extraLength: Int)
  func replaceBytesInRange(range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesInRange(range: NSRange)
  func setData(data: NSData)
  func replaceBytesInRange(range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity: Int)
  init?(length: Int)
}
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  init?(contentsOfMappedFile path: String)
  init?(capacity: Int)
  init?(length: Int)
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
let NSSystemClockDidChangeNotification: String
typealias NSTimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class NSDate : NSObject, NSCopying, NSSecureCoding {
  var timeIntervalSinceReferenceDate: NSTimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: NSTimeInterval)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSDate : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension NSDate {
  func timeIntervalSinceDate(anotherDate: NSDate) -> NSTimeInterval
  var timeIntervalSinceNow: NSTimeInterval { get }
  var timeIntervalSince1970: NSTimeInterval { get }
  func dateByAddingTimeInterval(ti: NSTimeInterval) -> Self
  func earlierDate(anotherDate: NSDate) -> NSDate
  func laterDate(anotherDate: NSDate) -> NSDate
  func compare(other: NSDate) -> NSComparisonResult
  func isEqualToDate(otherDate: NSDate) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> NSTimeInterval
}
extension NSDate {
  class func distantFuture() -> NSDate
  class func distantPast() -> NSDate
  convenience init(timeIntervalSinceNow secs: NSTimeInterval)
  convenience init(timeIntervalSince1970 secs: NSTimeInterval)
  convenience init(timeInterval secsToBeAdded: NSTimeInterval, sinceDate date: NSDate)
}
enum NSDateComponentsFormatterUnitsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Positional
  case Abbreviated
  case Short
  case Full
  case SpellOut
}
struct NSDateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var Default: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropLeading: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropMiddle: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropTrailing: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropAll: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var Pad: NSDateComponentsFormatterZeroFormattingBehavior { get }
}
class NSDateComponentsFormatter : NSFormatter {
  func stringForObjectValue(obj: AnyObject) -> String?
  func stringFromDateComponents(components: NSDateComponents) -> String?
  func stringFromDate(startDate: NSDate, toDate endDate: NSDate) -> String?
  func stringFromTimeInterval(ti: NSTimeInterval) -> String?
  class func localizedStringFromDateComponents(components: NSDateComponents, unitsStyle: NSDateComponentsFormatterUnitsStyle) -> String?
  var unitsStyle: NSDateComponentsFormatterUnitsStyle
  var allowedUnits: NSCalendarUnit
  var zeroFormattingBehavior: NSDateComponentsFormatterZeroFormattingBehavior
  @NSCopying var calendar: NSCalendar?
  var allowsFractionalUnits: Bool
  var maximumUnitCount: Int
  var collapsesLargestUnit: Bool
  var includesApproximationPhrase: Bool
  var includesTimeRemainingPhrase: Bool
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
class NSDateFormatter : NSFormatter {
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromDate(date: NSDate) -> String
  func dateFromString(string: String) -> NSDate?
  class func localizedStringFromDate(date: NSDate, dateStyle dstyle: NSDateFormatterStyle, timeStyle tstyle: NSDateFormatterStyle) -> String
  class func dateFormatFromTemplate(tmplate: String, options opts: Int, locale: NSLocale?) -> String?
  class func defaultFormatterBehavior() -> NSDateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NSDateFormatterBehavior)
  func setLocalizedDateFormatFromTemplate(dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: NSDateFormatterStyle
  var timeStyle: NSDateFormatterStyle
  @NSCopying var locale: NSLocale!
  var generatesCalendarDates: Bool
  var formatterBehavior: NSDateFormatterBehavior
  @NSCopying var timeZone: NSTimeZone!
  @NSCopying var calendar: NSCalendar!
  var lenient: Bool
  @NSCopying var twoDigitStartDate: NSDate?
  @NSCopying var defaultDate: NSDate?
  var eraSymbols: [String]!
  var monthSymbols: [String]!
  var shortMonthSymbols: [String]!
  var weekdaySymbols: [String]!
  var shortWeekdaySymbols: [String]!
  var AMSymbol: String!
  var PMSymbol: String!
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
  @NSCopying var gregorianStartDate: NSDate?
  var doesRelativeDateFormatting: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSDateFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
enum NSDateFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_0
  case Behavior10_4
}
extension NSDateFormatter {
}
enum NSDateIntervalFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
class NSDateIntervalFormatter : NSFormatter {
  @NSCopying var locale: NSLocale!
  @NSCopying var calendar: NSCalendar!
  @NSCopying var timeZone: NSTimeZone!
  var dateTemplate: String!
  var dateStyle: NSDateIntervalFormatterStyle
  var timeStyle: NSDateIntervalFormatterStyle
  func stringFromDate(fromDate: NSDate, toDate: NSDate) -> String
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSRoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundPlain
  case RoundDown
  case RoundUp
  case RoundBankers
}
enum NSCalculationError : UInt {
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
struct NSDecimal {
  var _exponent: Int32
  var _length: UInt32
  var _isNegative: UInt32
  var _isCompact: UInt32
  var _reserved: UInt32
  var _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(_exponent: Int32, _length: UInt32, _isNegative: UInt32, _isCompact: UInt32, _reserved: UInt32, _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
}
func NSDecimalIsNotANumber(dcm: UnsafePointer<NSDecimal>) -> Bool
func NSDecimalCopy(destination: UnsafeMutablePointer<NSDecimal>, _ source: UnsafePointer<NSDecimal>)
func NSDecimalCompact(number: UnsafeMutablePointer<NSDecimal>)
func NSDecimalCompare(leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>) -> NSComparisonResult
func NSDecimalRound(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ scale: Int, _ roundingMode: NSRoundingMode)
func NSDecimalNormalize(number1: UnsafeMutablePointer<NSDecimal>, _ number2: UnsafeMutablePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalAdd(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalSubtract(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalMultiply(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalDivide(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalPower(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ power: Int, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalMultiplyByPowerOf10(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ power: Int16, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalString(dcm: UnsafePointer<NSDecimal>, _ locale: AnyObject?) -> String
let NSDecimalNumberExactnessException: String
let NSDecimalNumberOverflowException: String
let NSDecimalNumberUnderflowException: String
let NSDecimalNumberDivideByZeroException: String
protocol NSDecimalNumberBehaviors {
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: NSCalculationError, leftOperand: NSDecimalNumber, rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
}
class NSDecimalNumber : NSNumber {
  convenience init(mantissa: UInt64, exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: NSDecimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale: AnyObject?)
  func descriptionWithLocale(locale: AnyObject?) -> String
  var decimalValue: NSDecimal { get }
  class func zero() -> NSDecimalNumber
  class func one() -> NSDecimalNumber
  class func minimumDecimalNumber() -> NSDecimalNumber
  class func maximumDecimalNumber() -> NSDecimalNumber
  class func notANumber() -> NSDecimalNumber
  func decimalNumberByAdding(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByAdding(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberBySubtracting(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberBySubtracting(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByMultiplyingBy(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByMultiplyingBy(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByDividingBy(decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByDividingBy(decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByRaisingToPower(power: Int) -> NSDecimalNumber
  func decimalNumberByRaisingToPower(power: Int, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByMultiplyingByPowerOf10(power: Int16) -> NSDecimalNumber
  func decimalNumberByMultiplyingByPowerOf10(power: Int16, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByRoundingAccordingToBehavior(behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func compare(decimalNumber: NSNumber) -> NSComparisonResult
  class func setDefaultBehavior(behavior: NSDecimalNumberBehaviors)
  class func defaultBehavior() -> NSDecimalNumberBehaviors
  var objCType: UnsafePointer<Int8> { get }
  var doubleValue: Double { get }
  init?(coder aDecoder: NSCoder)
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
class NSDecimalNumberHandler : NSObject, NSDecimalNumberBehaviors, NSCoding {
  class func defaultDecimalNumberHandler() -> NSDecimalNumberHandler
  init(roundingMode: NSRoundingMode, scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
  convenience init()
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: NSCalculationError, leftOperand: NSDecimalNumber, rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSNumber {
  var decimalValue: NSDecimal { get }
}
extension NSScanner {
  func scanDecimal(dcm: UnsafeMutablePointer<NSDecimal>) -> Bool
}
class NSDictionary : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectForKey(aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
extension NSDictionary : DictionaryLiteralConvertible {
  required convenience init(dictionaryLiteral elements: (NSCopying, AnyObject)...)
  typealias Key = NSCopying
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
  func allKeysForObject(anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var description: String { get }
  var descriptionInStringsFileFormat: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func isEqualToDictionary(otherDictionary: [NSObject : AnyObject]) -> Bool
  func objectEnumerator() -> NSEnumerator
  func objectsForKeys(keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func keysSortedByValueUsingSelector(comparator: Selector) -> [AnyObject]
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  subscript (key: NSCopying) -> AnyObject? { get }
  func enumerateKeysAndObjectsUsingBlock(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateKeysAndObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  func keysSortedByValueUsingComparator(cmptr: NSComparator) -> [AnyObject]
  func keysSortedByValueWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  func keysOfEntriesPassingTest(predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  func keysOfEntriesWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSDictionary {
  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getObjects:andKeys:count:
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
extension NSDictionary {
  convenience init(object: AnyObject, forKey key: NSCopying)
  convenience init(dictionary otherDictionary: [NSObject : AnyObject])
  convenience init(dictionary otherDictionary: [NSObject : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [NSCopying])
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
class NSMutableDictionary : NSDictionary {
  func removeObjectForKey(aKey: AnyObject)
  func setObject(anObject: AnyObject, forKey aKey: NSCopying)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  convenience init(object: AnyObject, forKey key: NSCopying)
  convenience init(dictionary otherDictionary: [NSObject : AnyObject])
  convenience init(dictionary otherDictionary: [NSObject : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [NSCopying])
}
extension NSMutableDictionary {
  func addEntriesFromDictionary(otherDictionary: [NSObject : AnyObject])
  func removeAllObjects()
  func removeObjectsForKeys(keyArray: [AnyObject])
  func setDictionary(otherDictionary: [NSObject : AnyObject])
  subscript (key: NSCopying) -> AnyObject?
}
extension NSMutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
extension NSDictionary {
  class func sharedKeySetForKeys(keys: [NSCopying]) -> AnyObject
}
extension NSMutableDictionary {
   init(sharedKeySet keyset: AnyObject)
}
class NSDistributedLock : NSObject {
  init?(path: String)
  func tryLock() -> Bool
  func unlock()
  func breakLock()
  @NSCopying var lockDate: NSDate { get }
}
let NSLocalNotificationCenterType: String
enum NSNotificationSuspensionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Drop
  case Coalesce
  case Hold
  case DeliverImmediately
}
struct NSDistributedNotificationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeliverImmediately: NSDistributedNotificationOptions { get }
  static var PostToAllSessions: NSDistributedNotificationOptions { get }
}
let NSNotificationDeliverImmediately: NSDistributedNotificationOptions
let NSNotificationPostToAllSessions: NSDistributedNotificationOptions
class NSDistributedNotificationCenter : NSNotificationCenter {
  class func notificationCenterForType(notificationCenterType: String) -> NSDistributedNotificationCenter
  class func defaultCenter() -> NSDistributedNotificationCenter
  func addObserver(observer: AnyObject, selector: Selector, name: String?, object: String?, suspensionBehavior: NSNotificationSuspensionBehavior)
  func postNotificationName(name: String, object: String?, userInfo: [NSObject : AnyObject]?, deliverImmediately: Bool)
  func postNotificationName(name: String, object: String?, userInfo: [NSObject : AnyObject]?, options: NSDistributedNotificationOptions)
  var suspended: Bool
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?, userInfo aUserInfo: [NSObject : AnyObject]?)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: String?)
  init()
}
enum NSEnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Joule
  case Kilojoule
  case Calorie
  case Kilocalorie
}
class NSEnergyFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forFoodEnergyUse: Bool
  func stringFromValue(value: Double, unit: NSEnergyFormatterUnit) -> String
  func stringFromJoules(numberInJoules: Double) -> String
  func unitStringFromValue(value: Double, unit: NSEnergyFormatterUnit) -> String
  func unitStringFromJoules(numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<NSEnergyFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
struct NSFastEnumerationState {
  var state: UInt
  var itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>
  var mutationsPtr: UnsafeMutablePointer<UInt>
  var extra: (UInt, UInt, UInt, UInt, UInt)
  init()
  init(state: UInt, itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>, mutationsPtr: UnsafeMutablePointer<UInt>, extra: (UInt, UInt, UInt, UInt, UInt))
}
protocol NSFastEnumeration {
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class NSEnumerator : NSObject, NSFastEnumeration {
  func nextObject() -> AnyObject?
  init()
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
extension NSEnumerator : SequenceType {
  /// Return a *generator* over the *enumerator*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension NSEnumerator {
  var allObjects: [AnyObject] { get }
}
let NSCocoaErrorDomain: String
let NSPOSIXErrorDomain: String
let NSOSStatusErrorDomain: String
let NSMachErrorDomain: String
let NSUnderlyingErrorKey: String
let NSLocalizedDescriptionKey: String
let NSLocalizedFailureReasonErrorKey: String
let NSLocalizedRecoverySuggestionErrorKey: String
let NSLocalizedRecoveryOptionsErrorKey: String
let NSRecoveryAttempterErrorKey: String
let NSHelpAnchorErrorKey: String
let NSStringEncodingErrorKey: String
let NSURLErrorKey: String
let NSFilePathErrorKey: String
class NSError : NSObject, NSCopying, NSSecureCoding {
  init(domain: String, code: Int, userInfo dict: [NSObject : AnyObject]?)
  var domain: String { get }
  var code: Int { get }
  var userInfo: [NSObject : AnyObject] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: AnyObject? { get }
  var helpAnchor: String? { get }
  class func setUserInfoValueProviderForDomain(errorDomain: String, provider: ((NSError, String) -> AnyObject?)?)
  class func userInfoValueProviderForDomain(errorDomain: String) -> ((NSError, String) -> AnyObject?)?
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSError : ErrorType {
  var _domain: String { get }
  var _code: Int { get }
}
extension NSObject {
  class func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  class func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
  func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
}
let NSGenericException: String
let NSRangeException: String
let NSInvalidArgumentException: String
let NSInternalInconsistencyException: String
let NSMallocException: String
let NSObjectInaccessibleException: String
let NSObjectNotAvailableException: String
let NSDestinationInvalidException: String
let NSPortTimeoutException: String
let NSInvalidSendPortException: String
let NSInvalidReceivePortException: String
let NSPortSendException: String
let NSPortReceiveException: String
let NSOldStyleException: String
class NSException : NSObject, NSCopying, NSCoding {
  init(name aName: String, reason aReason: String?, userInfo aUserInfo: [NSObject : AnyObject]?)
  var name: String { get }
  var reason: String? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  var callStackReturnAddresses: [NSNumber] { get }
  var callStackSymbols: [String] { get }
  func raise()
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSException {
  class func raise(name: String, format: String, arguments argList: CVaListPointer)
}
typealias NSUncaughtExceptionHandler = (NSException) -> Void
func NSGetUncaughtExceptionHandler() -> (@convention(c) (NSException) -> Void)?
func NSSetUncaughtExceptionHandler(_: (@convention(c) (NSException) -> Void)?)
let NSAssertionHandlerKey: String
class NSAssertionHandler : NSObject {
  class func currentHandler() -> NSAssertionHandler
  init()
}
enum NSExpressionType : UInt {
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
class NSExpression : NSObject, NSSecureCoding, NSCopying {
   init(format expressionFormat: String, argumentArray arguments: [AnyObject])
   init(format expressionFormat: String, arguments argList: CVaListPointer)
   init(forConstantValue obj: AnyObject?)
  class func expressionForEvaluatedObject() -> NSExpression
   init(forVariable string: String)
   init(forKeyPath keyPath: String)
   init(forFunction name: String, arguments parameters: [AnyObject])
   init(forAggregate subexpressions: [AnyObject])
   init(forUnionSet left: NSExpression, with right: NSExpression)
   init(forIntersectSet left: NSExpression, with right: NSExpression)
   init(forMinusSet left: NSExpression, with right: NSExpression)
   init(forSubquery expression: NSExpression, usingIteratorVariable variable: String, predicate: AnyObject)
   init(forFunction target: NSExpression, selectorName name: String, arguments parameters: [AnyObject]?)
  class func expressionForAnyKey() -> NSExpression
   init(forBlock block: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject, arguments: [NSExpression]?)
   init(forConditional predicate: NSPredicate, trueExpression: NSExpression, falseExpression: NSExpression)
  init(expressionType type: NSExpressionType)
  init?(coder: NSCoder)
  var expressionType: NSExpressionType { get }
  var constantValue: AnyObject { get }
  var keyPath: String { get }
  var function: String { get }
  var variable: String { get }
  @NSCopying var operand: NSExpression { get }
  var arguments: [NSExpression]? { get }
  var collection: AnyObject { get }
  @NSCopying var predicate: NSPredicate { get }
  @NSCopying var leftExpression: NSExpression { get }
  @NSCopying var rightExpression: NSExpression { get }
  @NSCopying var trueExpression: NSExpression { get }
  @NSCopying var falseExpression: NSExpression { get }
  var expressionBlock: (AnyObject?, [AnyObject], NSMutableDictionary?) -> AnyObject { get }
  func expressionValueWithObject(object: AnyObject?, context: NSMutableDictionary?) -> AnyObject
  func allowEvaluation()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSExpression {
  convenience init(format expressionFormat: String, _ args: CVarArgType...)
}
struct _expressionFlags {
  var _evaluationBlocked: UInt32
  var _reservedExpressionFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedExpressionFlags: UInt32)
}
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)?)
  func cancelRequestWithError(error: NSError)
  func openURL(URL: NSURL, completionHandler: ((Bool) -> Void)?)
  init()
}
let NSExtensionItemsAndErrorsKey: String
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [AnyObject]?
  var userInfo: [NSObject : AnyObject]?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let NSExtensionItemAttributedTitleKey: String
let NSExtensionItemAttributedContentTextKey: String
let NSExtensionItemAttachmentsKey: String
protocol NSExtensionRequestHandling : NSObjectProtocol {
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
struct NSFileCoordinatorReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutChanges: NSFileCoordinatorReadingOptions { get }
  static var ResolvesSymbolicLink: NSFileCoordinatorReadingOptions { get }
  static var ImmediatelyAvailableMetadataOnly: NSFileCoordinatorReadingOptions { get }
  static var ForUploading: NSFileCoordinatorReadingOptions { get }
}
struct NSFileCoordinatorWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ForDeleting: NSFileCoordinatorWritingOptions { get }
  static var ForMoving: NSFileCoordinatorWritingOptions { get }
  static var ForMerging: NSFileCoordinatorWritingOptions { get }
  static var ForReplacing: NSFileCoordinatorWritingOptions { get }
  static var ContentIndependentMetadataOnly: NSFileCoordinatorWritingOptions { get }
}
class NSFileAccessIntent : NSObject {
  class func readingIntentWithURL(url: NSURL, options: NSFileCoordinatorReadingOptions) -> Self
  class func writingIntentWithURL(url: NSURL, options: NSFileCoordinatorWritingOptions) -> Self
  @NSCopying var URL: NSURL { get }
  init()
}
class NSFileCoordinator : NSObject {
  class func addFilePresenter(filePresenter: NSFilePresenter)
  class func removeFilePresenter(filePresenter: NSFilePresenter)
  class func filePresenters() -> [NSFilePresenter]
  init(filePresenter filePresenterOrNil: NSFilePresenter?)
  var purposeIdentifier: String
  func coordinateAccessWithIntents(intents: [NSFileAccessIntent], queue: NSOperationQueue, byAccessor accessor: (NSError?) -> Void)
  func coordinateReadingItemAtURL(url: NSURL, options: NSFileCoordinatorReadingOptions, error outError: NSErrorPointer, byAccessor reader: (NSURL) -> Void)
  func coordinateWritingItemAtURL(url: NSURL, options: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor writer: (NSURL) -> Void)
  func coordinateReadingItemAtURL(readingURL: NSURL, options readingOptions: NSFileCoordinatorReadingOptions, writingItemAtURL writingURL: NSURL, options writingOptions: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor readerWriter: (NSURL, NSURL) -> Void)
  func coordinateWritingItemAtURL(url1: NSURL, options options1: NSFileCoordinatorWritingOptions, writingItemAtURL url2: NSURL, options options2: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor writer: (NSURL, NSURL) -> Void)
  func prepareForReadingItemsAtURLs(readingURLs: [NSURL], options readingOptions: NSFileCoordinatorReadingOptions, writingItemsAtURLs writingURLs: [NSURL], options writingOptions: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor batchAccessor: (() -> Void) -> Void)
  func itemAtURL(oldURL: NSURL, willMoveToURL newURL: NSURL)
  func itemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  func cancel()
  convenience init()
}
class NSFileHandle : NSObject, NSSecureCoding {
  @NSCopying var availableData: NSData { get }
  func readDataToEndOfFile() -> NSData
  func readDataOfLength(length: Int) -> NSData
  func writeData(data: NSData)
  var offsetInFile: UInt64 { get }
  func seekToEndOfFile() -> UInt64
  func seekToFileOffset(offset: UInt64)
  func truncateFileAtOffset(offset: UInt64)
  func synchronizeFile()
  func closeFile()
  init(fileDescriptor fd: Int32, closeOnDealloc closeopt: Bool)
  init?(coder: NSCoder)
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSFileHandle {
  class func fileHandleWithStandardInput() -> NSFileHandle
  class func fileHandleWithStandardOutput() -> NSFileHandle
  class func fileHandleWithStandardError() -> NSFileHandle
  class func fileHandleWithNullDevice() -> NSFileHandle
  convenience init?(forReadingAtPath path: String)
  convenience init?(forWritingAtPath path: String)
  convenience init?(forUpdatingAtPath path: String)
  convenience init(forReadingFromURL url: NSURL) throws
  convenience init(forWritingToURL url: NSURL) throws
  convenience init(forUpdatingURL url: NSURL) throws
}
let NSFileHandleOperationException: String
let NSFileHandleReadCompletionNotification: String
let NSFileHandleReadToEndOfFileCompletionNotification: String
let NSFileHandleConnectionAcceptedNotification: String
let NSFileHandleDataAvailableNotification: String
let NSFileHandleNotificationDataItem: String
let NSFileHandleNotificationFileHandleItem: String
extension NSFileHandle {
  func readInBackgroundAndNotifyForModes(modes: [String]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotifyForModes(modes: [String]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotifyForModes(modes: [String]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotifyForModes(modes: [String]?)
  func waitForDataInBackgroundAndNotify()
  var readabilityHandler: ((NSFileHandle) -> Void)?
  var writeabilityHandler: ((NSFileHandle) -> Void)?
}
extension NSFileHandle {
  convenience init(fileDescriptor fd: Int32)
  var fileDescriptor: Int32 { get }
}
class NSPipe : NSObject {
  var fileHandleForReading: NSFileHandle { get }
  var fileHandleForWriting: NSFileHandle { get }
  init()
}
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
struct NSVolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: NSVolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: NSVolumeEnumerationOptions { get }
}
struct NSDirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: NSDirectoryEnumerationOptions { get }
}
struct NSFileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: NSFileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: NSFileManagerItemReplacementOptions { get }
}
enum NSURLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
struct NSFileManagerUnmountOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllPartitionsAndEjectDisk: NSFileManagerUnmountOptions { get }
  static var WithoutUI: NSFileManagerUnmountOptions { get }
}
let NSFileManagerUnmountDissentingProcessIdentifierErrorKey: String
let NSUbiquityIdentityDidChangeNotification: String
class NSFileManager : NSObject {
  class func defaultManager() -> NSFileManager
  func mountedVolumeURLsIncludingResourceValuesForKeys(propertyKeys: [String]?, options: NSVolumeEnumerationOptions) -> [NSURL]?
  func unmountVolumeAtURL(url: NSURL, options mask: NSFileManagerUnmountOptions, completionHandler: (NSError?) -> Void)
  func contentsOfDirectoryAtURL(url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions) throws -> [NSURL]
  func URLsForDirectory(directory: NSSearchPathDirectory, inDomains domainMask: NSSearchPathDomainMask) -> [NSURL]
  func URLForDirectory(directory: NSSearchPathDirectory, inDomain domain: NSSearchPathDomainMask, appropriateForURL url: NSURL?, create shouldCreate: Bool) throws -> NSURL
  func getRelationship(outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectoryAtURL directoryURL: NSURL, toItemAtURL otherURL: NSURL) throws
  func getRelationship(outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectory directory: NSSearchPathDirectory, inDomain domainMask: NSSearchPathDomainMask, toItemAtURL url: NSURL) throws
  func createDirectoryAtURL(url: NSURL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]?) throws
  func createSymbolicLinkAtURL(url: NSURL, withDestinationURL destURL: NSURL) throws
  unowned(unsafe) var delegate: @sil_unmanaged NSFileManagerDelegate?
  func setAttributes(attributes: [String : AnyObject], ofItemAtPath path: String) throws
  func createDirectoryAtPath(path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]?) throws
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
  func copyItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  func moveItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  func linkItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  func removeItemAtURL(URL: NSURL) throws
  func trashItemAtURL(url: NSURL, resultingItemURL outResultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
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
  func enumeratorAtPath(path: String) -> NSDirectoryEnumerator?
  func enumeratorAtURL(url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions, errorHandler handler: ((NSURL, NSError) -> Bool)?) -> NSDirectoryEnumerator?
  func subpathsAtPath(path: String) -> [String]?
  func contentsAtPath(path: String) -> NSData?
  func createFileAtPath(path: String, contents data: NSData?, attributes attr: [String : AnyObject]?) -> Bool
  func fileSystemRepresentationWithPath(path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(str: UnsafePointer<Int8>, length len: Int) -> String
  func replaceItemAtURL(originalItemURL: NSURL, withItemAtURL newItemURL: NSURL, backupItemName: String?, options: NSFileManagerItemReplacementOptions, resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
  func setUbiquitous(flag: Bool, itemAtURL url: NSURL, destinationURL: NSURL) throws
  func isUbiquitousItemAtURL(url: NSURL) -> Bool
  func startDownloadingUbiquitousItemAtURL(url: NSURL) throws
  func evictUbiquitousItemAtURL(url: NSURL) throws
  func URLForUbiquityContainerIdentifier(containerIdentifier: String?) -> NSURL?
  func URLForPublishingUbiquitousItemAtURL(url: NSURL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<NSDate?>) throws -> NSURL
  @NSCopying var ubiquityIdentityToken: protocol<NSCoding, NSCopying, NSObjectProtocol>? { get }
  func containerURLForSecurityApplicationGroupIdentifier(groupIdentifier: String) -> NSURL?
  init()
}
extension NSObject {
}
protocol NSFileManagerDelegate : NSObjectProtocol {
  optional func fileManager(fileManager: NSFileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldCopyItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldMoveItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldLinkItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldRemoveItemAtPath path: String) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldRemoveItemAtURL URL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtPath path: String) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtURL URL: NSURL) -> Bool
}
class NSDirectoryEnumerator : NSEnumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  var level: Int { get }
  func skipDescendants()
  init()
}
let NSFileType: String
let NSFileTypeDirectory: String
let NSFileTypeRegular: String
let NSFileTypeSymbolicLink: String
let NSFileTypeSocket: String
let NSFileTypeCharacterSpecial: String
let NSFileTypeBlockSpecial: String
let NSFileTypeUnknown: String
let NSFileSize: String
let NSFileModificationDate: String
let NSFileReferenceCount: String
let NSFileDeviceIdentifier: String
let NSFileOwnerAccountName: String
let NSFileGroupOwnerAccountName: String
let NSFilePosixPermissions: String
let NSFileSystemNumber: String
let NSFileSystemFileNumber: String
let NSFileExtensionHidden: String
let NSFileHFSCreatorCode: String
let NSFileHFSTypeCode: String
let NSFileImmutable: String
let NSFileAppendOnly: String
let NSFileCreationDate: String
let NSFileOwnerAccountID: String
let NSFileGroupOwnerAccountID: String
let NSFileBusy: String
let NSFileSystemSize: String
let NSFileSystemFreeSize: String
let NSFileSystemNodes: String
let NSFileSystemFreeNodes: String
extension NSDictionary {
  func fileSize() -> UInt64
  func fileModificationDate() -> NSDate?
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
  func fileCreationDate() -> NSDate?
  func fileOwnerAccountID() -> NSNumber?
  func fileGroupOwnerAccountID() -> NSNumber?
}
protocol NSFilePresenter : NSObjectProtocol {
  @NSCopying var presentedItemURL: NSURL? { get }
  var presentedItemOperationQueue: NSOperationQueue { get }
  @NSCopying optional var primaryPresentedItemURL: NSURL? { get }
  optional func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func presentedItemDidMoveToURL(newURL: NSURL)
  optional func presentedItemDidChange()
  optional func presentedItemDidGainVersion(version: NSFileVersion)
  optional func presentedItemDidLoseVersion(version: NSFileVersion)
  optional func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletionAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  optional func presentedSubitemDidAppearAtURL(url: NSURL)
  optional func presentedSubitemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  optional func presentedSubitemDidChangeAtURL(url: NSURL)
  optional func presentedSubitemAtURL(url: NSURL, didGainVersion version: NSFileVersion)
  optional func presentedSubitemAtURL(url: NSURL, didLoseVersion version: NSFileVersion)
  optional func presentedSubitemAtURL(url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
struct NSFileVersionAddingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: NSFileVersionAddingOptions { get }
}
struct NSFileVersionReplacingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: NSFileVersionReplacingOptions { get }
}
class NSFileVersion : NSObject {
  class func currentVersionOfItemAtURL(url: NSURL) -> NSFileVersion?
  class func otherVersionsOfItemAtURL(url: NSURL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItemAtURL(url: NSURL) -> [NSFileVersion]?
  class func getNonlocalVersionsOfItemAtURL(url: NSURL, completionHandler: ([NSFileVersion]?, NSError?) -> Void)
   init?(ofItemAtURL url: NSURL, forPersistentIdentifier persistentIdentifier: AnyObject)
  class func addVersionOfItemAtURL(url: NSURL, withContentsOfURL contentsURL: NSURL, options: NSFileVersionAddingOptions) throws -> NSFileVersion
  class func temporaryDirectoryURLForNewVersionOfItemAtURL(url: NSURL) -> NSURL
  @NSCopying var URL: NSURL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: NSDate? { get }
  var persistentIdentifier: NSCoding { get }
  var conflict: Bool { get }
  var resolved: Bool
  var discardable: Bool
  var hasLocalContents: Bool { get }
  var hasThumbnail: Bool { get }
  func replaceItemAtURL(url: NSURL, options: NSFileVersionReplacingOptions) throws -> NSURL
  func remove() throws
  class func removeOtherVersionsOfItemAtURL(url: NSURL) throws
  init()
}
struct NSFileWrapperReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immediate: NSFileWrapperReadingOptions { get }
  static var WithoutMapping: NSFileWrapperReadingOptions { get }
}
struct NSFileWrapperWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Atomic: NSFileWrapperWritingOptions { get }
  static var WithNameUpdating: NSFileWrapperWritingOptions { get }
}
class NSFileWrapper : NSObject, NSCoding {
  init(URL url: NSURL, options: NSFileWrapperReadingOptions) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : NSFileWrapper])
  init(regularFileWithContents contents: NSData)
  init(symbolicLinkWithDestinationURL url: NSURL)
  init?(serializedRepresentation serializeRepresentation: NSData)
  init?(coder inCoder: NSCoder)
  var directory: Bool { get }
  var regularFile: Bool { get }
  var symbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : AnyObject]
  func matchesContentsOfURL(url: NSURL) -> Bool
  func readFromURL(url: NSURL, options: NSFileWrapperReadingOptions) throws
  func writeToURL(url: NSURL, options: NSFileWrapperWritingOptions, originalContentsURL: NSURL?) throws
  @NSCopying var serializedRepresentation: NSData? { get }
  func addFileWrapper(child: NSFileWrapper) -> String
  func addRegularFileWithContents(data: NSData, preferredFilename fileName: String) -> String
  func removeFileWrapper(child: NSFileWrapper)
  var fileWrappers: [String : NSFileWrapper]? { get }
  func keyForFileWrapper(child: NSFileWrapper) -> String?
  @NSCopying var regularFileContents: NSData? { get }
  @NSCopying var symbolicLinkDestinationURL: NSURL? { get }
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSFileWrapper {
  convenience init?(path: String)
  convenience init(symbolicLinkWithDestination path: String)
  func needsToBeUpdatedFromPath(path: String) -> Bool
  func updateFromPath(path: String) -> Bool
  func writeToFile(path: String, atomically atomicFlag: Bool, updateFilenames updateFilenamesFlag: Bool) -> Bool
  func addFileWithPath(path: String) -> String
  func addSymbolicLinkWithDestination(path: String, preferredFilename filename: String) -> String
  func symbolicLinkDestination() -> String
}
enum NSFormattingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Dynamic
  case Standalone
  case ListItem
  case BeginningOfSentence
  case MiddleOfSentence
}
enum NSFormattingUnitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Short
  case Medium
  case Long
}
class NSFormatter : NSObject, NSCopying, NSCoding {
  func stringForObjectValue(obj: AnyObject) -> String?
  func attributedStringForObjectValue(obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]?) -> NSAttributedString?
  func editingStringForObjectValue(obj: AnyObject) -> String?
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialString: String, newEditingString newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: NSRangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias NSPoint = CGPoint
typealias NSPointPointer = UnsafeMutablePointer<NSPoint>
typealias NSPointArray = UnsafeMutablePointer<NSPoint>
typealias NSSize = CGSize
typealias NSSizePointer = UnsafeMutablePointer<NSSize>
typealias NSSizeArray = UnsafeMutablePointer<NSSize>
typealias NSRect = CGRect
typealias NSRectPointer = UnsafeMutablePointer<NSRect>
typealias NSRectArray = UnsafeMutablePointer<NSRect>
enum NSRectEdge : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MinX
  case MinY
  case MaxX
  case MaxY
}
extension NSRectEdge {
  init(rectEdge: CGRectEdge)
}
struct NSEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}
struct NSAlignmentOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var AlignMinXInward: NSAlignmentOptions { get }
  static var AlignMinYInward: NSAlignmentOptions { get }
  static var AlignMaxXInward: NSAlignmentOptions { get }
  static var AlignMaxYInward: NSAlignmentOptions { get }
  static var AlignWidthInward: NSAlignmentOptions { get }
  static var AlignHeightInward: NSAlignmentOptions { get }
  static var AlignMinXOutward: NSAlignmentOptions { get }
  static var AlignMinYOutward: NSAlignmentOptions { get }
  static var AlignMaxXOutward: NSAlignmentOptions { get }
  static var AlignMaxYOutward: NSAlignmentOptions { get }
  static var AlignWidthOutward: NSAlignmentOptions { get }
  static var AlignHeightOutward: NSAlignmentOptions { get }
  static var AlignMinXNearest: NSAlignmentOptions { get }
  static var AlignMinYNearest: NSAlignmentOptions { get }
  static var AlignMaxXNearest: NSAlignmentOptions { get }
  static var AlignMaxYNearest: NSAlignmentOptions { get }
  static var AlignWidthNearest: NSAlignmentOptions { get }
  static var AlignHeightNearest: NSAlignmentOptions { get }
  static var AlignRectFlipped: NSAlignmentOptions { get }
  static var AlignAllEdgesInward: NSAlignmentOptions { get }
  static var AlignAllEdgesOutward: NSAlignmentOptions { get }
  static var AlignAllEdgesNearest: NSAlignmentOptions { get }
}
let NSZeroPoint: NSPoint
let NSZeroSize: NSSize
let NSZeroRect: NSRect
let NSEdgeInsetsZero: NSEdgeInsets
func NSMakePoint(x: CGFloat, _ y: CGFloat) -> NSPoint
func NSMakeSize(w: CGFloat, _ h: CGFloat) -> NSSize
func NSMakeRect(x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat) -> NSRect
func NSMaxX(aRect: NSRect) -> CGFloat
func NSMaxY(aRect: NSRect) -> CGFloat
func NSMidX(aRect: NSRect) -> CGFloat
func NSMidY(aRect: NSRect) -> CGFloat
func NSMinX(aRect: NSRect) -> CGFloat
func NSMinY(aRect: NSRect) -> CGFloat
func NSWidth(aRect: NSRect) -> CGFloat
func NSHeight(aRect: NSRect) -> CGFloat
func NSRectFromCGRect(cgrect: CGRect) -> NSRect
func NSRectToCGRect(nsrect: NSRect) -> CGRect
func NSPointFromCGPoint(cgpoint: CGPoint) -> NSPoint
func NSPointToCGPoint(nspoint: NSPoint) -> CGPoint
func NSSizeFromCGSize(cgsize: CGSize) -> NSSize
func NSSizeToCGSize(nssize: NSSize) -> CGSize
func NSEdgeInsetsMake(top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> NSEdgeInsets
func NSEqualPoints(aPoint: NSPoint, _ bPoint: NSPoint) -> Bool
func NSEqualSizes(aSize: NSSize, _ bSize: NSSize) -> Bool
func NSEqualRects(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSIsEmptyRect(aRect: NSRect) -> Bool
func NSEdgeInsetsEqual(aInsets: NSEdgeInsets, _ bInsets: NSEdgeInsets) -> Bool
func NSInsetRect(aRect: NSRect, _ dX: CGFloat, _ dY: CGFloat) -> NSRect
func NSIntegralRect(aRect: NSRect) -> NSRect
func NSIntegralRectWithOptions(aRect: NSRect, _ opts: NSAlignmentOptions) -> NSRect
func NSUnionRect(aRect: NSRect, _ bRect: NSRect) -> NSRect
func NSIntersectionRect(aRect: NSRect, _ bRect: NSRect) -> NSRect
func NSOffsetRect(aRect: NSRect, _ dX: CGFloat, _ dY: CGFloat) -> NSRect
func NSDivideRect(inRect: NSRect, _ slice: UnsafeMutablePointer<NSRect>, _ rem: UnsafeMutablePointer<NSRect>, _ amount: CGFloat, _ edge: NSRectEdge)
func NSPointInRect(aPoint: NSPoint, _ aRect: NSRect) -> Bool
func NSMouseInRect(aPoint: NSPoint, _ aRect: NSRect, _ flipped: Bool) -> Bool
func NSContainsRect(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSIntersectsRect(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSStringFromPoint(aPoint: NSPoint) -> String
func NSStringFromSize(aSize: NSSize) -> String
func NSStringFromRect(aRect: NSRect) -> String
func NSPointFromString(aString: String) -> NSPoint
func NSSizeFromString(aString: String) -> NSSize
func NSRectFromString(aString: String) -> NSRect
extension NSValue {
   init(point: NSPoint)
   init(size: NSSize)
   init(rect: NSRect)
   init(edgeInsets insets: NSEdgeInsets)
  var pointValue: NSPoint { get }
  var sizeValue: NSSize { get }
  var rectValue: NSRect { get }
  var edgeInsetsValue: NSEdgeInsets { get }
}
extension NSCoder {
  func encodePoint(point: NSPoint)
  func decodePoint() -> NSPoint
  func encodeSize(size: NSSize)
  func decodeSize() -> NSSize
  func encodeRect(rect: NSRect)
  func decodeRect() -> NSRect
}
extension NSCoder {
  func encodePoint(point: NSPoint, forKey key: String)
  func encodeSize(size: NSSize, forKey key: String)
  func encodeRect(rect: NSRect, forKey key: String)
  func decodePointForKey(key: String) -> NSPoint
  func decodeSizeForKey(key: String) -> NSSize
  func decodeRectForKey(key: String) -> NSRect
}
func NSFileTypeForHFSTypeCode(hfsFileTypeCode: OSType) -> String!
func NSHFSTypeCodeFromFileType(fileTypeString: String!) -> OSType
func NSHFSTypeOfFile(fullFilePath: String!) -> String!
let NSHTTPCookieName: String
let NSHTTPCookieValue: String
let NSHTTPCookieOriginURL: String
let NSHTTPCookieVersion: String
let NSHTTPCookieDomain: String
let NSHTTPCookiePath: String
let NSHTTPCookieSecure: String
let NSHTTPCookieExpires: String
let NSHTTPCookieComment: String
let NSHTTPCookieCommentURL: String
let NSHTTPCookieDiscard: String
let NSHTTPCookieMaximumAge: String
let NSHTTPCookiePort: String
class NSHTTPCookie : NSObject {
  init?(properties: [String : AnyObject])
  class func requestHeaderFieldsWithCookies(cookies: [NSHTTPCookie]) -> [String : String]
  class func cookiesWithResponseHeaderFields(headerFields: [String : String], forURL URL: NSURL) -> [NSHTTPCookie]
  var properties: [String : AnyObject]? { get }
  var version: Int { get }
  var name: String { get }
  var value: String { get }
  @NSCopying var expiresDate: NSDate? { get }
  var sessionOnly: Bool { get }
  var domain: String { get }
  var path: String { get }
  var secure: Bool { get }
  var HTTPOnly: Bool { get }
  var comment: String? { get }
  @NSCopying var commentURL: NSURL? { get }
  var portList: [NSNumber]? { get }
  init()
}
enum NSHTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Always
  case Never
  case OnlyFromMainDocumentDomain
}
class NSHTTPCookieStorage : NSObject {
  class func sharedHTTPCookieStorage() -> NSHTTPCookieStorage
  class func sharedCookieStorageForGroupContainerIdentifier(identifier: String) -> NSHTTPCookieStorage
  var cookies: [NSHTTPCookie]? { get }
  func setCookie(cookie: NSHTTPCookie)
  func deleteCookie(cookie: NSHTTPCookie)
  func removeCookiesSinceDate(date: NSDate)
  func cookiesForURL(URL: NSURL) -> [NSHTTPCookie]?
  func setCookies(cookies: [NSHTTPCookie], forURL URL: NSURL?, mainDocumentURL: NSURL?)
  var cookieAcceptPolicy: NSHTTPCookieAcceptPolicy
  func sortedCookiesUsingDescriptors(sortOrder: [NSSortDescriptor]) -> [NSHTTPCookie]
  init()
}
extension NSHTTPCookieStorage {
  func storeCookies(cookies: [NSHTTPCookie], forTask task: NSURLSessionTask)
  func getCookiesForTask(task: NSURLSessionTask, completionHandler: ([NSHTTPCookie]?) -> Void)
}
let NSHTTPCookieManagerAcceptPolicyChangedNotification: String
let NSHTTPCookieManagerCookiesChangedNotification: String
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
let NSHashTableStrongMemory: NSPointerFunctionsOptions
let NSHashTableCopyIn: NSPointerFunctionsOptions
let NSHashTableObjectPointerPersonality: NSPointerFunctionsOptions
let NSHashTableWeakMemory: NSPointerFunctionsOptions
typealias NSHashTableOptions = Int
class NSHashTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(options: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
   init(options: NSPointerFunctionsOptions)
  class func weakObjectsHashTable() -> NSHashTable
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  var count: Int { get }
  func member(object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  func addObject(object: AnyObject?)
  func removeObject(object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func containsObject(anObject: AnyObject?) -> Bool
  func intersectsHashTable(other: NSHashTable) -> Bool
  func isEqualToHashTable(other: NSHashTable) -> Bool
  func isSubsetOfHashTable(other: NSHashTable) -> Bool
  func intersectHashTable(other: NSHashTable)
  func unionHashTable(other: NSHashTable)
  func minusHashTable(other: NSHashTable)
  var setRepresentation: Set<NSObject> { get }
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct NSHashEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func NSFreeHashTable(table: NSHashTable)
func NSResetHashTable(table: NSHashTable)
func NSCompareHashTables(table1: NSHashTable, _ table2: NSHashTable) -> Bool
func NSCopyHashTableWithZone(table: NSHashTable, _ zone: NSZone) -> NSHashTable
func NSHashGet(table: NSHashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSHashInsert(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSHashInsertKnownAbsent(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSHashInsertIfAbsent(table: NSHashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSHashRemove(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSEnumerateHashTable(table: NSHashTable) -> NSHashEnumerator
func NSNextHashEnumeratorItem(enumerator: UnsafeMutablePointer<NSHashEnumerator>) -> UnsafeMutablePointer<Void>
func NSEndHashTableEnumeration(enumerator: UnsafeMutablePointer<NSHashEnumerator>)
func NSCountHashTable(table: NSHashTable) -> Int
func NSStringFromHashTable(table: NSHashTable) -> String
func NSAllHashTableObjects(table: NSHashTable) -> [AnyObject]
struct NSHashTableCallBacks {
  var hash: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (NSHashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSHashTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> String?)?
  init()
  init(hash: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (NSHashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSHashTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> String?)?)
}
func NSCreateHashTableWithZone(callBacks: NSHashTableCallBacks, _ capacity: Int, _ zone: NSZone) -> NSHashTable
func NSCreateHashTable(callBacks: NSHashTableCallBacks, _ capacity: Int) -> NSHashTable
let NSIntegerHashCallBacks: NSHashTableCallBacks
let NSNonOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSNonRetainedObjectHashCallBacks: NSHashTableCallBacks
let NSObjectHashCallBacks: NSHashTableCallBacks
let NSOwnedObjectIdentityHashCallBacks: NSHashTableCallBacks
let NSOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSPointerToStructHashCallBacks: NSHashTableCallBacks
class NSHost : NSObject {
  class func currentHost() -> Self
  convenience init(name: String?)
  convenience init(address: String)
  func isEqualToHost(aHost: NSHost) -> Bool
  var name: String? { get }
  var names: [String] { get }
  var address: String? { get }
  var addresses: [String] { get }
  var localizedName: String? { get }
  init()
}
class NSIndexPath : NSObject, NSCopying, NSSecureCoding {
  init(indexes: UnsafePointer<Int>, length: Int)
  convenience init(index: Int)
  func indexPathByAddingIndex(index: Int) -> NSIndexPath
  func indexPathByRemovingLastIndex() -> NSIndexPath
  func indexAtPosition(position: Int) -> Int
  var length: Int { get }
  func getIndexes(indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(otherObject: NSIndexPath) -> NSComparisonResult
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSIndexPath {
  /// This method is unsafe because it could potentially cause buffer overruns. You should use -getIndexes:range: instead. 
  func getIndexes(indexes: UnsafeMutablePointer<Int>)
}
class NSIndexSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init(indexesInRange range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  func isEqualToIndexSet(indexSet: NSIndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqualToIndex(value: Int) -> Int
  func indexLessThanOrEqualToIndex(value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: NSRangePointer) -> Int
  func countOfIndexesInRange(range: NSRange) -> Int
  func containsIndex(value: Int) -> Bool
  func containsIndexesInRange(range: NSRange) -> Bool
  func containsIndexes(indexSet: NSIndexSet) -> Bool
  func intersectsIndexesInRange(range: NSRange) -> Bool
  func enumerateIndexesUsingBlock(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateIndexesWithOptions(opts: NSEnumerationOptions, usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateIndexesInRange(range: NSRange, options opts: NSEnumerationOptions, usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexWithOptions(opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexInRange(range: NSRange, options opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesWithOptions(opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesInRange(range: NSRange, options opts: NSEnumerationOptions, passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func enumerateRangesUsingBlock(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateRangesWithOptions(opts: NSEnumerationOptions, usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateRangesInRange(range: NSRange, options opts: NSEnumerationOptions, usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSIndexSet : SequenceType {
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSIndexSetGenerator
  typealias Generator = NSIndexSetGenerator
  typealias SubSequence = AnySequence<Element>
}
class NSMutableIndexSet : NSIndexSet {
  func addIndexes(indexSet: NSIndexSet)
  func removeIndexes(indexSet: NSIndexSet)
  func removeAllIndexes()
  func addIndex(value: Int)
  func removeIndex(value: Int)
  func addIndexesInRange(range: NSRange)
  func removeIndexesInRange(range: NSRange)
  func shiftIndexesStartingAtIndex(index: Int, by delta: Int)
  init(indexesInRange range: NSRange)
  init(indexSet: NSIndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
typealias NSItemProviderCompletionHandler = (NSSecureCoding?, NSError!) -> Void
typealias NSItemProviderLoadHandler = (NSItemProviderCompletionHandler!, AnyClass!, [NSObject : AnyObject]!) -> Void
class NSItemProvider : NSObject, NSCopying {
  init(item: NSSecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOfURL fileURL: NSURL!)
  func registerItemForTypeIdentifier(typeIdentifier: String, loadHandler: NSItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingToTypeIdentifier(typeIdentifier: String) -> Bool
  func loadItemForTypeIdentifier(typeIdentifier: String, options: [NSObject : AnyObject]?, completionHandler: NSItemProviderCompletionHandler?)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  var previewImageHandler: NSItemProviderLoadHandler?
  func loadPreviewImageWithOptions(options: [NSObject : AnyObject]!, completionHandler: NSItemProviderCompletionHandler!)
}
let NSExtensionJavaScriptPreprocessingResultsKey: String
let NSItemProviderErrorDomain: String
enum NSItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  case UnavailableCoercionError
}
struct NSJSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MutableContainers: NSJSONReadingOptions { get }
  static var MutableLeaves: NSJSONReadingOptions { get }
  static var AllowFragments: NSJSONReadingOptions { get }
}
struct NSJSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrettyPrinted: NSJSONWritingOptions { get }
}
class NSJSONSerialization : NSObject {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func dataWithJSONObject(obj: AnyObject, options opt: NSJSONWritingOptions) throws -> NSData
  class func JSONObjectWithData(data: NSData, options opt: NSJSONReadingOptions) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, toStream stream: NSOutputStream, options opt: NSJSONWritingOptions, error: NSErrorPointer) -> Int
  class func JSONObjectWithStream(stream: NSInputStream, options opt: NSJSONReadingOptions) throws -> AnyObject
  init()
}
let NSUndefinedKeyException: String
let NSAverageKeyValueOperator: String
let NSCountKeyValueOperator: String
let NSDistinctUnionOfArraysKeyValueOperator: String
let NSDistinctUnionOfObjectsKeyValueOperator: String
let NSDistinctUnionOfSetsKeyValueOperator: String
let NSMaximumKeyValueOperator: String
let NSMinimumKeyValueOperator: String
let NSSumKeyValueOperator: String
let NSUnionOfArraysKeyValueOperator: String
let NSUnionOfObjectsKeyValueOperator: String
let NSUnionOfSetsKeyValueOperator: String
extension NSObject {
  class func accessInstanceVariablesDirectly() -> Bool
  class func valueForKey(key: String) -> AnyObject?
  func valueForKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValueForKey(key: String) -> NSMutableArray
  func mutableArrayValueForKey(key: String) -> NSMutableArray
  class func mutableOrderedSetValueForKey(key: String) -> NSMutableOrderedSet
  func mutableOrderedSetValueForKey(key: String) -> NSMutableOrderedSet
  class func mutableSetValueForKey(key: String) -> NSMutableSet
  func mutableSetValueForKey(key: String) -> NSMutableSet
  class func valueForKeyPath(keyPath: String) -> AnyObject?
  func valueForKeyPath(keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValueForKeyPath(keyPath: String) -> NSMutableArray
  func mutableArrayValueForKeyPath(keyPath: String) -> NSMutableArray
  class func mutableOrderedSetValueForKeyPath(keyPath: String) -> NSMutableOrderedSet
  func mutableOrderedSetValueForKeyPath(keyPath: String) -> NSMutableOrderedSet
  class func mutableSetValueForKeyPath(keyPath: String) -> NSMutableSet
  func mutableSetValueForKeyPath(keyPath: String) -> NSMutableSet
  class func valueForUndefinedKey(key: String) -> AnyObject?
  func valueForUndefinedKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forUndefinedKey key: String)
  func setValue(value: AnyObject?, forUndefinedKey key: String)
  class func setNilValueForKey(key: String)
  func setNilValueForKey(key: String)
  class func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  class func setValuesForKeysWithDictionary(keyedValues: [String : AnyObject])
  func setValuesForKeysWithDictionary(keyedValues: [String : AnyObject])
}
extension NSArray {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSDictionary {
  func valueForKey(key: String) -> AnyObject?
}
extension NSMutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSOrderedSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSObject {
}
struct NSKeyValueObservingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var New: NSKeyValueObservingOptions { get }
  static var Old: NSKeyValueObservingOptions { get }
  static var Initial: NSKeyValueObservingOptions { get }
  static var Prior: NSKeyValueObservingOptions { get }
}
enum NSKeyValueChange : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Setting
  case Insertion
  case Removal
  case Replacement
}
enum NSKeyValueSetMutationKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnionSetMutation
  case MinusSetMutation
  case IntersectSetMutation
  case SetSetMutation
}
let NSKeyValueChangeKindKey: String
let NSKeyValueChangeNewKey: String
let NSKeyValueChangeOldKey: String
let NSKeyValueChangeIndexesKey: String
let NSKeyValueChangeNotificationIsPriorKey: String
extension NSObject {
  class func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: NSObject, forKeyPath keyPath: String)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(observer: NSObject, toObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, fromObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, fromObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String)
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSOrderedSet {
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSSet {
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSObject {
  class func willChangeValueForKey(key: String)
  func willChangeValueForKey(key: String)
  class func didChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  class func willChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  func willChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  class func didChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  func didChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  class func willChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func willChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  class func didChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func didChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
}
extension NSObject {
  class func keyPathsForValuesAffectingValueForKey(key: String) -> Set<String>
  class func automaticallyNotifiesObserversForKey(key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(observationInfo: UnsafeMutablePointer<Void>)
}
extension NSObject {
}
let NSInvalidArchiveOperationException: String
let NSInvalidUnarchiveOperationException: String
let NSKeyedArchiveRootObjectKey: String
class NSKeyedArchiver : NSCoder {
  class func archivedDataWithRootObject(rootObject: AnyObject) -> NSData
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWithMutableData data: NSMutableData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedArchiverDelegate?
  var outputFormat: NSPropertyListFormat
  func finishEncoding()
  class func setClassName(codedName: String?, forClass cls: AnyClass)
  func setClassName(codedName: String?, forClass cls: AnyClass)
  class func classNameForClass(cls: AnyClass) -> String?
  func classNameForClass(cls: AnyClass) -> String?
  func encodeObject(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encodeBool(boolv: Bool, forKey key: String)
  func encodeInt(intv: Int32, forKey key: String)
  func encodeInt32(intv: Int32, forKey key: String)
  func encodeInt64(intv: Int64, forKey key: String)
  func encodeFloat(realv: Float, forKey key: String)
  func encodeDouble(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  var requiresSecureCoding: Bool
  init()
}
class NSKeyedUnarchiver : NSCoder {
  class func unarchiveObjectWithData(data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  init(forReadingWithData data: NSData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedUnarchiverDelegate?
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
extension NSKeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(data: NSData) throws -> AnyObject?
}
protocol NSKeyedArchiverDelegate : NSObjectProtocol {
  optional func archiver(archiver: NSKeyedArchiver, willEncodeObject object: AnyObject) -> AnyObject?
  optional func archiver(archiver: NSKeyedArchiver, didEncodeObject object: AnyObject?)
  optional func archiver(archiver: NSKeyedArchiver, willReplaceObject object: AnyObject?, withObject newObject: AnyObject?)
  optional func archiverWillFinish(archiver: NSKeyedArchiver)
  optional func archiverDidFinish(archiver: NSKeyedArchiver)
}
protocol NSKeyedUnarchiverDelegate : NSObjectProtocol {
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, didDecodeObject object: AnyObject?) -> AnyObject?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, willReplaceObject object: AnyObject, withObject newObject: AnyObject)
  optional func unarchiverWillFinish(unarchiver: NSKeyedUnarchiver)
  optional func unarchiverDidFinish(unarchiver: NSKeyedUnarchiver)
}
extension NSObject {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObjectForKeyedArchiver(archiver: NSKeyedArchiver) -> AnyObject?
  func replacementObjectForKeyedArchiver(archiver: NSKeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension NSObject {
  class func classForKeyedUnarchiver() -> AnyClass
}
enum NSLengthFormatterUnit : Int {
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
class NSLengthFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forPersonHeightUse: Bool
  func stringFromValue(value: Double, unit: NSLengthFormatterUnit) -> String
  func stringFromMeters(numberInMeters: Double) -> String
  func unitStringFromValue(value: Double, unit: NSLengthFormatterUnit) -> String
  func unitStringFromMeters(numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<NSLengthFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
let NSLinguisticTagSchemeTokenType: String
let NSLinguisticTagSchemeLexicalClass: String
let NSLinguisticTagSchemeNameType: String
let NSLinguisticTagSchemeNameTypeOrLexicalClass: String
let NSLinguisticTagSchemeLemma: String
let NSLinguisticTagSchemeLanguage: String
let NSLinguisticTagSchemeScript: String
let NSLinguisticTagWord: String
let NSLinguisticTagPunctuation: String
let NSLinguisticTagWhitespace: String
let NSLinguisticTagOther: String
let NSLinguisticTagNoun: String
let NSLinguisticTagVerb: String
let NSLinguisticTagAdjective: String
let NSLinguisticTagAdverb: String
let NSLinguisticTagPronoun: String
let NSLinguisticTagDeterminer: String
let NSLinguisticTagParticle: String
let NSLinguisticTagPreposition: String
let NSLinguisticTagNumber: String
let NSLinguisticTagConjunction: String
let NSLinguisticTagInterjection: String
let NSLinguisticTagClassifier: String
let NSLinguisticTagIdiom: String
let NSLinguisticTagOtherWord: String
let NSLinguisticTagSentenceTerminator: String
let NSLinguisticTagOpenQuote: String
let NSLinguisticTagCloseQuote: String
let NSLinguisticTagOpenParenthesis: String
let NSLinguisticTagCloseParenthesis: String
let NSLinguisticTagWordJoiner: String
let NSLinguisticTagDash: String
let NSLinguisticTagOtherPunctuation: String
let NSLinguisticTagParagraphBreak: String
let NSLinguisticTagOtherWhitespace: String
let NSLinguisticTagPersonalName: String
let NSLinguisticTagPlaceName: String
let NSLinguisticTagOrganizationName: String
struct NSLinguisticTaggerOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var OmitWords: NSLinguisticTaggerOptions { get }
  static var OmitPunctuation: NSLinguisticTaggerOptions { get }
  static var OmitWhitespace: NSLinguisticTaggerOptions { get }
  static var OmitOther: NSLinguisticTaggerOptions { get }
  static var JoinNames: NSLinguisticTaggerOptions { get }
}
class NSLinguisticTagger : NSObject {
  init(tagSchemes: [String], options opts: Int)
  var tagSchemes: [String] { get }
  var string: String?
  class func availableTagSchemesForLanguage(language: String) -> [String]
  func setOrthography(orthography: NSOrthography?, range: NSRange)
  func orthographyAtIndex(charIndex: Int, effectiveRange: NSRangePointer) -> NSOrthography?
  func stringEditedInRange(newRange: NSRange, changeInLength delta: Int)
  func enumerateTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func sentenceRangeForRange(range: NSRange) -> NSRange
  func tagAtIndex(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer) -> String?
  func tagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  func possibleTagsAtIndex(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  func linguisticTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography: NSOrthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  func enumerateLinguisticTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography: NSOrthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
class NSLocale : NSObject, NSCopying, NSSecureCoding {
  func objectForKey(key: AnyObject) -> AnyObject?
  func displayNameForKey(key: AnyObject, value: AnyObject) -> String?
  init(localeIdentifier string: String)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSLocale {
  var localeIdentifier: String { get }
}
extension NSLocale {
  class func autoupdatingCurrentLocale() -> NSLocale
  class func currentLocale() -> NSLocale
  class func systemLocale() -> NSLocale
}
extension NSLocale {
  class func availableLocaleIdentifiers() -> [String]
  class func ISOLanguageCodes() -> [String]
  class func ISOCountryCodes() -> [String]
  class func ISOCurrencyCodes() -> [String]
  class func commonISOCurrencyCodes() -> [String]
  class func preferredLanguages() -> [String]
  class func componentsFromLocaleIdentifier(string: String) -> [String : String]
  class func localeIdentifierFromComponents(dict: [String : String]) -> String
  class func canonicalLocaleIdentifierFromString(string: String) -> String
  class func canonicalLanguageIdentifierFromString(string: String) -> String
  class func localeIdentifierFromWindowsLocaleCode(lcid: UInt32) -> String?
  class func windowsLocaleCodeFromLocaleIdentifier(localeIdentifier: String) -> UInt32
  class func characterDirectionForLanguage(isoLangCode: String) -> NSLocaleLanguageDirection
  class func lineDirectionForLanguage(isoLangCode: String) -> NSLocaleLanguageDirection
}
enum NSLocaleLanguageDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case LeftToRight
  case RightToLeft
  case TopToBottom
  case BottomToTop
}
let NSCurrentLocaleDidChangeNotification: String
let NSLocaleIdentifier: String
let NSLocaleLanguageCode: String
let NSLocaleCountryCode: String
let NSLocaleScriptCode: String
let NSLocaleVariantCode: String
let NSLocaleExemplarCharacterSet: String
let NSLocaleCalendar: String
let NSLocaleCollationIdentifier: String
let NSLocaleUsesMetricSystem: String
let NSLocaleMeasurementSystem: String
let NSLocaleDecimalSeparator: String
let NSLocaleGroupingSeparator: String
let NSLocaleCurrencySymbol: String
let NSLocaleCurrencyCode: String
let NSLocaleCollatorIdentifier: String
let NSLocaleQuotationBeginDelimiterKey: String
let NSLocaleQuotationEndDelimiterKey: String
let NSLocaleAlternateQuotationBeginDelimiterKey: String
let NSLocaleAlternateQuotationEndDelimiterKey: String
let NSGregorianCalendar: String
let NSBuddhistCalendar: String
let NSChineseCalendar: String
let NSHebrewCalendar: String
let NSIslamicCalendar: String
let NSIslamicCivilCalendar: String
let NSJapaneseCalendar: String
let NSRepublicOfChinaCalendar: String
let NSPersianCalendar: String
let NSIndianCalendar: String
let NSISO8601Calendar: String
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(limit: NSDate) -> Bool
  var name: String?
  init()
  func lock()
  func unlock()
}
class NSConditionLock : NSObject, NSLocking {
  init(condition: Int)
  var condition: Int { get }
  func lockWhenCondition(condition: Int)
  func tryLock() -> Bool
  func tryLockWhenCondition(condition: Int) -> Bool
  func unlockWithCondition(condition: Int)
  func lockBeforeDate(limit: NSDate) -> Bool
  func lockWhenCondition(condition: Int, beforeDate limit: NSDate) -> Bool
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class NSRecursiveLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(limit: NSDate) -> Bool
  var name: String?
  init()
  func lock()
  func unlock()
}
class NSCondition : NSObject, NSLocking {
  func wait()
  func waitUntilDate(limit: NSDate) -> Bool
  func signal()
  func broadcast()
  var name: String?
  init()
  func lock()
  func unlock()
}
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
let NSMapTableStrongMemory: NSPointerFunctionsOptions
let NSMapTableCopyIn: NSPointerFunctionsOptions
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions: NSPointerFunctionsOptions, valueOptions: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
   init(keyOptions: NSPointerFunctionsOptions, valueOptions: NSPointerFunctionsOptions)
  class func strongToStrongObjectsMapTable() -> NSMapTable
  class func weakToStrongObjectsMapTable() -> NSMapTable
  class func strongToWeakObjectsMapTable() -> NSMapTable
  class func weakToWeakObjectsMapTable() -> NSMapTable
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func objectForKey(aKey: AnyObject?) -> AnyObject?
  func removeObjectForKey(aKey: AnyObject?)
  func setObject(anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct NSMapEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func NSFreeMapTable(table: NSMapTable)
func NSResetMapTable(table: NSMapTable)
func NSCompareMapTables(table1: NSMapTable, _ table2: NSMapTable) -> Bool
func NSCopyMapTableWithZone(table: NSMapTable, _ zone: NSZone) -> NSMapTable
func NSMapMember(table: NSMapTable, _ key: UnsafePointer<Void>, _ originalKey: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func NSMapGet(table: NSMapTable, _ key: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSMapInsert(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func NSMapInsertKnownAbsent(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func NSMapInsertIfAbsent(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSMapRemove(table: NSMapTable, _ key: UnsafePointer<Void>)
func NSEnumerateMapTable(table: NSMapTable) -> NSMapEnumerator
func NSNextMapEnumeratorPair(enumerator: UnsafeMutablePointer<NSMapEnumerator>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func NSEndMapTableEnumeration(enumerator: UnsafeMutablePointer<NSMapEnumerator>)
func NSCountMapTable(table: NSMapTable) -> Int
func NSStringFromMapTable(table: NSMapTable) -> String
func NSAllMapTableKeys(table: NSMapTable) -> [AnyObject]
func NSAllMapTableValues(table: NSMapTable) -> [AnyObject]
struct NSMapTableKeyCallBacks {
  var hash: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (NSMapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?
  var notAKeyMarker: UnsafePointer<Void>
  init()
  init(hash: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (NSMapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?, notAKeyMarker: UnsafePointer<Void>)
}
struct NSMapTableValueCallBacks {
  var retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?
  init()
  init(retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?)
}
func NSCreateMapTableWithZone(keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int, _ zone: NSZone) -> NSMapTable
func NSCreateMapTable(keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int) -> NSMapTable
let NSIntegerMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonOwnedPointerMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonOwnedPointerOrNullMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonRetainedObjectMapKeyCallBacks: NSMapTableKeyCallBacks
let NSObjectMapKeyCallBacks: NSMapTableKeyCallBacks
let NSOwnedPointerMapKeyCallBacks: NSMapTableKeyCallBacks
let NSIntegerMapValueCallBacks: NSMapTableValueCallBacks
let NSNonOwnedPointerMapValueCallBacks: NSMapTableValueCallBacks
let NSObjectMapValueCallBacks: NSMapTableValueCallBacks
let NSNonRetainedObjectMapValueCallBacks: NSMapTableValueCallBacks
let NSOwnedPointerMapValueCallBacks: NSMapTableValueCallBacks
enum NSMassFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Gram
  case Kilogram
  case Ounce
  case Pound
  case Stone
}
class NSMassFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forPersonMassUse: Bool
  func stringFromValue(value: Double, unit: NSMassFormatterUnit) -> String
  func stringFromKilograms(numberInKilograms: Double) -> String
  func unitStringFromValue(value: Double, unit: NSMassFormatterUnit) -> String
  func unitStringFromKilograms(numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<NSMassFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
class NSMetadataQuery : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSMetadataQueryDelegate?
  @NSCopying var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: NSTimeInterval
  var searchScopes: [AnyObject]
  var searchItems: [AnyObject]?
  var operationQueue: NSOperationQueue?
  func startQuery() -> Bool
  func stopQuery()
  var started: Bool { get }
  var gathering: Bool { get }
  var stopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func resultAtIndex(idx: Int) -> AnyObject
  func enumerateResultsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateResultsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(result: AnyObject) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func valueOfAttribute(attrName: String, forResultAtIndex idx: Int) -> AnyObject?
  init()
}
protocol NSMetadataQueryDelegate : NSObjectProtocol {
  optional func metadataQuery(query: NSMetadataQuery, replacementObjectForResultObject result: NSMetadataItem) -> AnyObject
  optional func metadataQuery(query: NSMetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
let NSMetadataQueryDidStartGatheringNotification: String
let NSMetadataQueryGatheringProgressNotification: String
let NSMetadataQueryDidFinishGatheringNotification: String
let NSMetadataQueryDidUpdateNotification: String
let NSMetadataQueryUpdateAddedItemsKey: String
let NSMetadataQueryUpdateChangedItemsKey: String
let NSMetadataQueryUpdateRemovedItemsKey: String
let NSMetadataQueryResultContentRelevanceAttribute: String
let NSMetadataQueryUserHomeScope: String
let NSMetadataQueryLocalComputerScope: String
let NSMetadataQueryNetworkScope: String
let NSMetadataQueryIndexedLocalComputerScope: String
let NSMetadataQueryIndexedNetworkScope: String
let NSMetadataQueryUbiquitousDocumentsScope: String
let NSMetadataQueryUbiquitousDataScope: String
let NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope: String
class NSMetadataItem : NSObject {
  init?(URL url: NSURL)
  func valueForAttribute(key: String) -> AnyObject?
  func valuesForAttributes(keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
class NSMetadataQueryAttributeValueTuple : NSObject {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
class NSMetadataQueryResultGroup : NSObject {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [NSMetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAtIndex(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
let NSMetadataItemFSNameKey: String
let NSMetadataItemDisplayNameKey: String
let NSMetadataItemURLKey: String
let NSMetadataItemPathKey: String
let NSMetadataItemFSSizeKey: String
let NSMetadataItemFSCreationDateKey: String
let NSMetadataItemFSContentChangeDateKey: String
let NSMetadataItemContentTypeKey: String
let NSMetadataItemContentTypeTreeKey: String
let NSMetadataItemIsUbiquitousKey: String
let NSMetadataUbiquitousItemHasUnresolvedConflictsKey: String
let NSMetadataUbiquitousItemDownloadingStatusKey: String
let NSMetadataUbiquitousItemDownloadingStatusNotDownloaded: String
let NSMetadataUbiquitousItemDownloadingStatusDownloaded: String
let NSMetadataUbiquitousItemDownloadingStatusCurrent: String
let NSMetadataUbiquitousItemIsDownloadingKey: String
let NSMetadataUbiquitousItemIsUploadedKey: String
let NSMetadataUbiquitousItemIsUploadingKey: String
let NSMetadataUbiquitousItemPercentDownloadedKey: String
let NSMetadataUbiquitousItemPercentUploadedKey: String
let NSMetadataUbiquitousItemDownloadingErrorKey: String
let NSMetadataUbiquitousItemUploadingErrorKey: String
let NSMetadataUbiquitousItemDownloadRequestedKey: String
let NSMetadataUbiquitousItemIsExternalDocumentKey: String
let NSMetadataUbiquitousItemContainerDisplayNameKey: String
let NSMetadataUbiquitousItemURLInLocalContainerKey: String
let NSMetadataItemAttributeChangeDateKey: String
let NSMetadataItemKeywordsKey: String
let NSMetadataItemTitleKey: String
let NSMetadataItemAuthorsKey: String
let NSMetadataItemEditorsKey: String
let NSMetadataItemParticipantsKey: String
let NSMetadataItemProjectsKey: String
let NSMetadataItemDownloadedDateKey: String
let NSMetadataItemWhereFromsKey: String
let NSMetadataItemCommentKey: String
let NSMetadataItemCopyrightKey: String
let NSMetadataItemLastUsedDateKey: String
let NSMetadataItemContentCreationDateKey: String
let NSMetadataItemContentModificationDateKey: String
let NSMetadataItemDateAddedKey: String
let NSMetadataItemDurationSecondsKey: String
let NSMetadataItemContactKeywordsKey: String
let NSMetadataItemVersionKey: String
let NSMetadataItemPixelHeightKey: String
let NSMetadataItemPixelWidthKey: String
let NSMetadataItemPixelCountKey: String
let NSMetadataItemColorSpaceKey: String
let NSMetadataItemBitsPerSampleKey: String
let NSMetadataItemFlashOnOffKey: String
let NSMetadataItemFocalLengthKey: String
let NSMetadataItemAcquisitionMakeKey: String
let NSMetadataItemAcquisitionModelKey: String
let NSMetadataItemISOSpeedKey: String
let NSMetadataItemOrientationKey: String
let NSMetadataItemLayerNamesKey: String
let NSMetadataItemWhiteBalanceKey: String
let NSMetadataItemApertureKey: String
let NSMetadataItemProfileNameKey: String
let NSMetadataItemResolutionWidthDPIKey: String
let NSMetadataItemResolutionHeightDPIKey: String
let NSMetadataItemExposureModeKey: String
let NSMetadataItemExposureTimeSecondsKey: String
let NSMetadataItemEXIFVersionKey: String
let NSMetadataItemCameraOwnerKey: String
let NSMetadataItemFocalLength35mmKey: String
let NSMetadataItemLensModelKey: String
let NSMetadataItemEXIFGPSVersionKey: String
let NSMetadataItemAltitudeKey: String
let NSMetadataItemLatitudeKey: String
let NSMetadataItemLongitudeKey: String
let NSMetadataItemSpeedKey: String
let NSMetadataItemTimestampKey: String
let NSMetadataItemGPSTrackKey: String
let NSMetadataItemImageDirectionKey: String
let NSMetadataItemNamedLocationKey: String
let NSMetadataItemGPSStatusKey: String
let NSMetadataItemGPSMeasureModeKey: String
let NSMetadataItemGPSDOPKey: String
let NSMetadataItemGPSMapDatumKey: String
let NSMetadataItemGPSDestLatitudeKey: String
let NSMetadataItemGPSDestLongitudeKey: String
let NSMetadataItemGPSDestBearingKey: String
let NSMetadataItemGPSDestDistanceKey: String
let NSMetadataItemGPSProcessingMethodKey: String
let NSMetadataItemGPSAreaInformationKey: String
let NSMetadataItemGPSDateStampKey: String
let NSMetadataItemGPSDifferentalKey: String
let NSMetadataItemCodecsKey: String
let NSMetadataItemMediaTypesKey: String
let NSMetadataItemStreamableKey: String
let NSMetadataItemTotalBitRateKey: String
let NSMetadataItemVideoBitRateKey: String
let NSMetadataItemAudioBitRateKey: String
let NSMetadataItemDeliveryTypeKey: String
let NSMetadataItemAlbumKey: String
let NSMetadataItemHasAlphaChannelKey: String
let NSMetadataItemRedEyeOnOffKey: String
let NSMetadataItemMeteringModeKey: String
let NSMetadataItemMaxApertureKey: String
let NSMetadataItemFNumberKey: String
let NSMetadataItemExposureProgramKey: String
let NSMetadataItemExposureTimeStringKey: String
let NSMetadataItemHeadlineKey: String
let NSMetadataItemInstructionsKey: String
let NSMetadataItemCityKey: String
let NSMetadataItemStateOrProvinceKey: String
let NSMetadataItemCountryKey: String
let NSMetadataItemTextContentKey: String
let NSMetadataItemAudioSampleRateKey: String
let NSMetadataItemAudioChannelCountKey: String
let NSMetadataItemTempoKey: String
let NSMetadataItemKeySignatureKey: String
let NSMetadataItemTimeSignatureKey: String
let NSMetadataItemAudioEncodingApplicationKey: String
let NSMetadataItemComposerKey: String
let NSMetadataItemLyricistKey: String
let NSMetadataItemAudioTrackNumberKey: String
let NSMetadataItemRecordingDateKey: String
let NSMetadataItemMusicalGenreKey: String
let NSMetadataItemIsGeneralMIDISequenceKey: String
let NSMetadataItemRecordingYearKey: String
let NSMetadataItemOrganizationsKey: String
let NSMetadataItemLanguagesKey: String
let NSMetadataItemRightsKey: String
let NSMetadataItemPublishersKey: String
let NSMetadataItemContributorsKey: String
let NSMetadataItemCoverageKey: String
let NSMetadataItemSubjectKey: String
let NSMetadataItemThemeKey: String
let NSMetadataItemDescriptionKey: String
let NSMetadataItemIdentifierKey: String
let NSMetadataItemAudiencesKey: String
let NSMetadataItemNumberOfPagesKey: String
let NSMetadataItemPageWidthKey: String
let NSMetadataItemPageHeightKey: String
let NSMetadataItemSecurityMethodKey: String
let NSMetadataItemCreatorKey: String
let NSMetadataItemEncodingApplicationsKey: String
let NSMetadataItemDueDateKey: String
let NSMetadataItemStarRatingKey: String
let NSMetadataItemPhoneNumbersKey: String
let NSMetadataItemEmailAddressesKey: String
let NSMetadataItemInstantMessageAddressesKey: String
let NSMetadataItemKindKey: String
let NSMetadataItemRecipientsKey: String
let NSMetadataItemFinderCommentKey: String
let NSMetadataItemFontsKey: String
let NSMetadataItemAppleLoopsRootKeyKey: String
let NSMetadataItemAppleLoopsKeyFilterTypeKey: String
let NSMetadataItemAppleLoopsLoopModeKey: String
let NSMetadataItemAppleLoopDescriptorsKey: String
let NSMetadataItemMusicalInstrumentCategoryKey: String
let NSMetadataItemMusicalInstrumentNameKey: String
let NSMetadataItemCFBundleIdentifierKey: String
let NSMetadataItemInformationKey: String
let NSMetadataItemDirectorKey: String
let NSMetadataItemProducerKey: String
let NSMetadataItemGenreKey: String
let NSMetadataItemPerformersKey: String
let NSMetadataItemOriginalFormatKey: String
let NSMetadataItemOriginalSourceKey: String
let NSMetadataItemAuthorEmailAddressesKey: String
let NSMetadataItemRecipientEmailAddressesKey: String
let NSMetadataItemAuthorAddressesKey: String
let NSMetadataItemRecipientAddressesKey: String
let NSMetadataItemIsLikelyJunkKey: String
let NSMetadataItemExecutableArchitecturesKey: String
let NSMetadataItemExecutablePlatformKey: String
let NSMetadataItemApplicationCategoriesKey: String
let NSMetadataItemIsApplicationManagedKey: String
let NSNetServicesErrorCode: String
let NSNetServicesErrorDomain: String
enum NSNetServicesError : Int {
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
struct NSNetServiceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoAutoRename: NSNetServiceOptions { get }
  static var ListenForConnections: NSNetServiceOptions { get }
}
class NSNetService : NSObject {
  init(domain: String, type: String, name: String, port: Int32)
  convenience init(domain: String, type: String, name: String)
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceDelegate?
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [NSData]? { get }
  var port: Int { get }
  func publish()
  func publishWithOptions(options: NSNetServiceOptions)
  func stop()
  class func dictionaryFromTXTRecordData(txtData: NSData) -> [String : NSData]
  class func dataFromTXTRecordDictionary(txtDictionary: [String : NSData]) -> NSData
  func resolveWithTimeout(timeout: NSTimeInterval)
  func getInputStream(inputStream: UnsafeMutablePointer<NSInputStream?>, outputStream: UnsafeMutablePointer<NSOutputStream?>) -> Bool
  func setTXTRecordData(recordData: NSData?) -> Bool
  func TXTRecordData() -> NSData?
  func startMonitoring()
  func stopMonitoring()
  convenience init()
}
class NSNetServiceBrowser : NSObject {
  init()
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceBrowserDelegate?
  var includesPeerToPeer: Bool
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func searchForBrowsableDomains()
  func searchForRegistrationDomains()
  func searchForServicesOfType(type: String, inDomain domainString: String)
  func stop()
}
protocol NSNetServiceDelegate : NSObjectProtocol {
  optional func netServiceWillPublish(sender: NSNetService)
  optional func netServiceDidPublish(sender: NSNetService)
  optional func netService(sender: NSNetService, didNotPublish errorDict: [String : NSNumber])
  optional func netServiceWillResolve(sender: NSNetService)
  optional func netServiceDidResolveAddress(sender: NSNetService)
  optional func netService(sender: NSNetService, didNotResolve errorDict: [String : NSNumber])
  optional func netServiceDidStop(sender: NSNetService)
  optional func netService(sender: NSNetService, didUpdateTXTRecordData data: NSData)
  optional func netService(sender: NSNetService, didAcceptConnectionWithInputStream inputStream: NSInputStream, outputStream: NSOutputStream)
}
protocol NSNetServiceBrowserDelegate : NSObjectProtocol {
  optional func netServiceBrowserWillSearch(browser: NSNetServiceBrowser)
  optional func netServiceBrowserDidStopSearch(browser: NSNetServiceBrowser)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didNotSearch errorDict: [String : NSNumber])
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didFindDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didFindService service: NSNetService, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didRemoveDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didRemoveService service: NSNetService, moreComing: Bool)
}
class NSNotification : NSObject, NSCopying, NSCoding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  init(name: String, object: AnyObject?, userInfo: [NSObject : AnyObject]?)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSNotification {
  convenience init(name aName: String, object anObject: AnyObject?)
  convenience init()
}
class NSNotificationCenter : NSObject {
  class func defaultCenter() -> NSNotificationCenter
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func postNotification(notification: NSNotification)
  func postNotificationName(aName: String, object anObject: AnyObject?)
  func postNotificationName(aName: String, object anObject: AnyObject?, userInfo aUserInfo: [NSObject : AnyObject]?)
  func removeObserver(observer: AnyObject)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  func addObserverForName(name: String?, object obj: AnyObject?, queue: NSOperationQueue?, usingBlock block: (NSNotification) -> Void) -> NSObjectProtocol
  init()
}
enum NSPostingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PostWhenIdle
  case PostASAP
  case PostNow
}
struct NSNotificationCoalescing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoCoalescing: NSNotificationCoalescing { get }
  static var CoalescingOnName: NSNotificationCoalescing { get }
  static var CoalescingOnSender: NSNotificationCoalescing { get }
}
class NSNotificationQueue : NSObject {
  class func defaultQueue() -> NSNotificationQueue
  init(notificationCenter: NSNotificationCenter)
  func enqueueNotification(notification: NSNotification, postingStyle: NSPostingStyle)
  func enqueueNotification(notification: NSNotification, postingStyle: NSPostingStyle, coalesceMask: NSNotificationCoalescing, forModes modes: [String]?)
  func dequeueNotificationsMatching(notification: NSNotification, coalesceMask: Int)
  convenience init()
}
class NSNull : NSObject, NSCopying, NSSecureCoding {
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NSNumberFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_0
  case Behavior10_4
}
class NSNumberFormatter : NSFormatter {
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromNumber(number: NSNumber) -> String?
  func numberFromString(string: String) -> NSNumber?
  class func localizedStringFromNumber(num: NSNumber, numberStyle nstyle: NSNumberFormatterStyle) -> String
  class func defaultFormatterBehavior() -> NSNumberFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NSNumberFormatterBehavior)
  var numberStyle: NSNumberFormatterStyle
  @NSCopying var locale: NSLocale!
  var generatesDecimalNumbers: Bool
  var formatterBehavior: NSNumberFormatterBehavior
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
  @NSCopying var multiplier: NSNumber?
  var formatWidth: Int
  var paddingCharacter: String!
  var paddingPosition: NSNumberFormatterPadPosition
  var roundingMode: NSNumberFormatterRoundingMode
  @NSCopying var roundingIncrement: NSNumber!
  var minimumIntegerDigits: Int
  var maximumIntegerDigits: Int
  var minimumFractionDigits: Int
  var maximumFractionDigits: Int
  @NSCopying var minimum: NSNumber?
  @NSCopying var maximum: NSNumber?
  var currencyGroupingSeparator: String!
  var lenient: Bool
  var usesSignificantDigits: Bool
  var minimumSignificantDigits: Int
  var maximumSignificantDigits: Int
  var partialStringValidationEnabled: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSNumberFormatterStyle : UInt {
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
enum NSNumberFormatterPadPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BeforePrefix
  case AfterPrefix
  case BeforeSuffix
  case AfterSuffix
}
enum NSNumberFormatterRoundingMode : UInt {
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
extension NSNumberFormatter {
  var hasThousandSeparators: Bool
  var thousandSeparator: String!
  var localizesFormat: Bool
  var format: String
  @NSCopying var attributedStringForZero: NSAttributedString
  @NSCopying var attributedStringForNil: NSAttributedString
  @NSCopying var attributedStringForNotANumber: NSAttributedString
  @NSCopying var roundingBehavior: NSDecimalNumberHandler
}
var NSFoundationVersionNumber: Double
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
func NSStringFromSelector(aSelector: Selector) -> String
func NSSelectorFromString(aSelectorName: String) -> Selector
func NSStringFromClass(aClass: AnyClass) -> String
func NSClassFromString(aClassName: String) -> AnyClass?
func NSStringFromProtocol(proto: Protocol) -> String
func NSProtocolFromString(namestr: String) -> Protocol?
func NSGetSizeAndAlignment(typePtr: UnsafePointer<Int8>, _ sizep: UnsafeMutablePointer<Int>, _ alignp: UnsafeMutablePointer<Int>) -> UnsafePointer<Int8>
func NSLogv(format: String, _ args: CVaListPointer)
enum NSComparisonResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OrderedAscending
  case OrderedSame
  case OrderedDescending
}
typealias NSComparator = (AnyObject, AnyObject) -> NSComparisonResult
struct NSEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSEnumerationOptions { get }
  static var Reverse: NSEnumerationOptions { get }
}
struct NSSortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSSortOptions { get }
  static var Stable: NSSortOptions { get }
}
enum NSQualityOfService : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserInteractive
  case UserInitiated
  case Utility
  case Background
  case Default
}
let NSNotFound: Int
protocol NSCopying {
  func copyWithZone(zone: NSZone) -> AnyObject
}
protocol NSMutableCopying {
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
protocol NSCoding {
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSSecureCoding : NSCoding {
  static func supportsSecureCoding() -> Bool
}
extension NSObject {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObjectForCoder(aCoder: NSCoder) -> AnyObject?
  func replacementObjectForCoder(aCoder: NSCoder) -> AnyObject?
  class func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject?
  func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
extension NSObject {
}
protocol NSDiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension NSObject {
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> AnyObject?
extension NSObject {
  class func scriptingValueForSpecifier(objectSpecifier: NSScriptObjectSpecifier) -> AnyObject?
  func scriptingValueForSpecifier(objectSpecifier: NSScriptObjectSpecifier) -> AnyObject?
  var scriptingProperties: [String : AnyObject]?
  class func copyScriptingValue(value: AnyObject, forKey key: String, withProperties properties: [String : AnyObject]) -> AnyObject?
  func copyScriptingValue(value: AnyObject, forKey key: String, withProperties properties: [String : AnyObject]) -> AnyObject?
  class func newScriptingObjectOfClass(objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: AnyObject?, properties: [String : AnyObject]) -> AnyObject?
  func newScriptingObjectOfClass(objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: AnyObject?, properties: [String : AnyObject]) -> AnyObject?
  class func scriptingProperties() -> [String : AnyObject]?
  class func setScriptingProperties(scriptingProperties: [String : AnyObject]?)
}
class NSOperation : NSObject {
  func start()
  func main()
  var cancelled: Bool { get }
  func cancel()
  var executing: Bool { get }
  var finished: Bool { get }
  var concurrent: Bool { get }
  var asynchronous: Bool { get }
  var ready: Bool { get }
  func addDependency(op: NSOperation)
  func removeDependency(op: NSOperation)
  var dependencies: [NSOperation] { get }
  var queuePriority: NSOperationQueuePriority
  var completionBlock: (() -> Void)?
  func waitUntilFinished()
  var threadPriority: Double
  var qualityOfService: NSQualityOfService
  var name: String?
  init()
}
enum NSOperationQueuePriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case VeryLow
  case Low
  case Normal
  case High
  case VeryHigh
}
class NSBlockOperation : NSOperation {
  convenience init(block: () -> Void)
  func addExecutionBlock(block: () -> Void)
  var executionBlocks: [() -> Void] { get }
  init()
}
let NSInvocationOperationVoidResultException: String
let NSInvocationOperationCancelledException: String
let NSOperationQueueDefaultMaxConcurrentOperationCount: Int
class NSOperationQueue : NSObject {
  func addOperation(op: NSOperation)
  func addOperations(ops: [NSOperation], waitUntilFinished wait: Bool)
  func addOperationWithBlock(block: () -> Void)
  var operations: [NSOperation] { get }
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var suspended: Bool
  var name: String?
  var qualityOfService: NSQualityOfService
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  class func currentQueue() -> NSOperationQueue?
  class func mainQueue() -> NSOperationQueue
  init()
}
class NSOrderedSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(idx: Int) -> AnyObject
  func indexOfObject(object: AnyObject) -> Int
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
extension NSOrderedSet : SequenceType {
  /// Return a *generator* over the elements of this *sequence*.
  ///
  /// - Complexity: O(1).
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension NSOrderedSet {
  convenience init(objects elements: AnyObject...)
}
extension NSOrderedSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}
extension NSOrderedSet {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, range: NSRange)
  func objectsAtIndexes(indexes: NSIndexSet) -> [AnyObject]
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func isEqualToOrderedSet(other: NSOrderedSet) -> Bool
  func containsObject(object: AnyObject) -> Bool
  func intersectsOrderedSet(other: NSOrderedSet) -> Bool
  func intersectsSet(set: Set<NSObject>) -> Bool
  func isSubsetOfOrderedSet(other: NSOrderedSet) -> Bool
  func isSubsetOfSet(set: Set<NSObject>) -> Bool
  subscript (idx: Int) -> AnyObject { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var reversedOrderedSet: NSOrderedSet { get }
  var array: [AnyObject] { get }
  var set: Set<NSObject> { get }
  func enumerateObjectsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func indexOfObjectPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexOfObjectAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexesOfObjectsPassingTest(predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexesOfObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, passingTest predicate: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> NSIndexSet
  func indexOfObject(object: AnyObject, inSortedRange range: NSRange, options opts: NSBinarySearchingOptions, usingComparator cmp: NSComparator) -> Int
  func sortedArrayUsingComparator(cmptr: NSComparator) -> [AnyObject]
  func sortedArrayWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
}
extension NSOrderedSet {
  convenience init(object: AnyObject)
  convenience init(orderedSet set: NSOrderedSet)
  convenience init(orderedSet set: NSOrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: NSOrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
class NSMutableOrderedSet : NSOrderedSet {
  func insertObject(object: AnyObject, atIndex idx: Int)
  func removeObjectAtIndex(idx: Int)
  func replaceObjectAtIndex(idx: Int, withObject object: AnyObject)
  init?(coder aDecoder: NSCoder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(orderedSet set: NSOrderedSet)
  convenience init(orderedSet set: NSOrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: NSOrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [AnyObject])
  convenience init(array set: [AnyObject], copyItems flag: Bool)
  convenience init(array set: [AnyObject], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
extension NSMutableOrderedSet {
  func addObject(object: AnyObject)
  func addObjects(objects: UnsafePointer<AnyObject?>, count: Int)
  func addObjectsFromArray(array: [AnyObject])
  func exchangeObjectAtIndex(idx1: Int, withObjectAtIndex idx2: Int)
  func moveObjectsAtIndexes(indexes: NSIndexSet, toIndex idx: Int)
  func insertObjects(objects: [AnyObject], atIndexes indexes: NSIndexSet)
  func setObject(obj: AnyObject, atIndex idx: Int)
  subscript (idx: Int) -> AnyObject
  func replaceObjectsInRange(range: NSRange, withObjects objects: UnsafePointer<AnyObject?>, count: Int)
  func replaceObjectsAtIndexes(indexes: NSIndexSet, withObjects objects: [AnyObject])
  func removeObjectsInRange(range: NSRange)
  func removeObjectsAtIndexes(indexes: NSIndexSet)
  func removeAllObjects()
  func removeObject(object: AnyObject)
  func removeObjectsInArray(array: [AnyObject])
  func intersectOrderedSet(other: NSOrderedSet)
  func minusOrderedSet(other: NSOrderedSet)
  func unionOrderedSet(other: NSOrderedSet)
  func intersectSet(other: Set<NSObject>)
  func minusSet(other: Set<NSObject>)
  func unionSet(other: Set<NSObject>)
  func sortUsingComparator(cmptr: NSComparator)
  func sortWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator)
  func sortRange(range: NSRange, options opts: NSSortOptions, usingComparator cmptr: NSComparator)
}
extension NSMutableOrderedSet {
}
class NSOrthography : NSObject, NSCopying, NSCoding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: NSCoder)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSOrthography {
  func languagesForScript(script: String) -> [String]?
  func dominantLanguageForScript(script: String) -> String?
  var dominantLanguage: String { get }
  var allScripts: [String] { get }
  var allLanguages: [String] { get }
}
extension NSOrthography {
}
extension NSString {
  class func pathWithComponents(components: [String]) -> String
  var pathComponents: [String] { get }
  var absolutePath: Bool { get }
  var lastPathComponent: String { get }
  var stringByDeletingLastPathComponent: String { get }
  func stringByAppendingPathComponent(str: String) -> String
  var pathExtension: String { get }
  var stringByDeletingPathExtension: String { get }
  func stringByAppendingPathExtension(str: String) -> String?
  var stringByAbbreviatingWithTildeInPath: String { get }
  var stringByExpandingTildeInPath: String { get }
  var stringByStandardizingPath: String { get }
  var stringByResolvingSymlinksInPath: String { get }
  func stringsByAppendingPaths(paths: [String]) -> [String]
  func completePathIntoString(outputName: AutoreleasingUnsafeMutablePointer<NSString?>, caseSensitive flag: Bool, matchesIntoArray outputArray: AutoreleasingUnsafeMutablePointer<NSArray?>, filterTypes: [String]?) -> Int
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  func getFileSystemRepresentation(cname: UnsafeMutablePointer<Int8>, maxLength max: Int) -> Bool
}
extension NSArray {
  func pathsMatchingExtensions(filterTypes: [String]) -> [String]
}
func NSUserName() -> String
func NSFullUserName() -> String
func NSHomeDirectory() -> String
func NSHomeDirectoryForUser(userName: String?) -> String?
func NSTemporaryDirectory() -> String
func NSOpenStepRootDirectory() -> String
enum NSSearchPathDirectory : UInt {
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
  case ApplicationScriptsDirectory
  case ItemReplacementDirectory
  case AllApplicationsDirectory
  case AllLibrariesDirectory
  case TrashDirectory
}
struct NSSearchPathDomainMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UserDomainMask: NSSearchPathDomainMask { get }
  static var LocalDomainMask: NSSearchPathDomainMask { get }
  static var NetworkDomainMask: NSSearchPathDomainMask { get }
  static var SystemDomainMask: NSSearchPathDomainMask { get }
  static var AllDomainsMask: NSSearchPathDomainMask { get }
}
func NSSearchPathForDirectoriesInDomains(directory: NSSearchPathDirectory, _ domainMask: NSSearchPathDomainMask, _ expandTilde: Bool) -> [String]
class NSPersonNameComponents : NSObject, NSCopying, NSSecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: NSPersonNameComponents?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NSPersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
struct NSPersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: NSPersonNameComponentsFormatterOptions { get }
}
class NSPersonNameComponentsFormatter : NSFormatter {
  var style: NSPersonNameComponentsFormatterStyle
  var phonetic: Bool
  class func localizedStringFromPersonNameComponents(components: NSPersonNameComponents, style nameFormatStyle: NSPersonNameComponentsFormatterStyle, options nameOptions: NSPersonNameComponentsFormatterOptions) -> String
  func stringFromPersonNameComponents(components: NSPersonNameComponents) -> String
  func annotatedStringFromPersonNameComponents(components: NSPersonNameComponents) -> NSAttributedString
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
let NSPersonNameComponentKey: String
let NSPersonNameComponentGivenName: String
let NSPersonNameComponentFamilyName: String
let NSPersonNameComponentMiddleName: String
let NSPersonNameComponentPrefix: String
let NSPersonNameComponentSuffix: String
let NSPersonNameComponentNickname: String
let NSPersonNameComponentDelimiter: String
class NSPointerArray : NSObject, NSFastEnumeration, NSCopying, NSCoding {
  init(options: NSPointerFunctionsOptions)
  init(pointerFunctions functions: NSPointerFunctions)
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  func pointerAtIndex(index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(pointer: UnsafeMutablePointer<Void>)
  func removePointerAtIndex(index: Int)
  func insertPointer(item: UnsafeMutablePointer<Void>, atIndex index: Int)
  func replacePointerAtIndex(index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  convenience init()
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPointerArray {
  class func strongObjectsPointerArray() -> NSPointerArray
  class func weakObjectsPointerArray() -> NSPointerArray
  var allObjects: [AnyObject] { get }
}
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct NSPointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var StrongMemory: NSPointerFunctionsOptions { get }
  static var OpaqueMemory: NSPointerFunctionsOptions { get }
  static var MallocMemory: NSPointerFunctionsOptions { get }
  static var MachVirtualMemory: NSPointerFunctionsOptions { get }
  static var WeakMemory: NSPointerFunctionsOptions { get }
  static var ObjectPersonality: NSPointerFunctionsOptions { get }
  static var OpaquePersonality: NSPointerFunctionsOptions { get }
  static var ObjectPointerPersonality: NSPointerFunctionsOptions { get }
  static var CStringPersonality: NSPointerFunctionsOptions { get }
  static var StructPersonality: NSPointerFunctionsOptions { get }
  static var IntegerPersonality: NSPointerFunctionsOptions { get }
  static var CopyIn: NSPointerFunctionsOptions { get }
}
class NSPointerFunctions : NSObject, NSCopying {
  init(options: NSPointerFunctionsOptions)
  var hashFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Int)?
  var isEqualFunction: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> ObjCBool)?
  var sizeFunction: (@convention(c) (UnsafePointer<Void>) -> Int)?
  var descriptionFunction: (@convention(c) (UnsafePointer<Void>) -> String?)?
  var relinquishFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Void)?
  var acquireFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?, ObjCBool) -> UnsafeMutablePointer<Void>)?
  var usesStrongWriteBarrier: Bool
  var usesWeakReadAndWriteBarriers: Bool
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias NSSocketNativeHandle = Int32
let NSPortDidBecomeInvalidNotification: String
class NSPort : NSObject, NSCopying, NSCoding {
  func invalidate()
  var valid: Bool { get }
  func setDelegate(anObject: NSPortDelegate?)
  func delegate() -> NSPortDelegate?
  func scheduleInRunLoop(runLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(runLoop: NSRunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func sendBeforeDate(limitDate: NSDate, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  func sendBeforeDate(limitDate: NSDate, msgid msgID: Int, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSPortDelegate : NSObjectProtocol {
  optional func handlePortMessage(message: NSPortMessage)
}
class NSMachPort : NSPort {
  class func portWithMachPort(machPort: UInt32) -> NSPort
  init(machPort: UInt32)
  func setDelegate(anObject: NSMachPortDelegate?)
  func delegate() -> NSMachPortDelegate?
  class func portWithMachPort(machPort: UInt32, options f: NSMachPortOptions) -> NSPort
  init(machPort: UInt32, options f: NSMachPortOptions)
  var machPort: UInt32 { get }
  func scheduleInRunLoop(runLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(runLoop: NSRunLoop, forMode mode: String)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct NSMachPortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeallocateNone: NSMachPortOptions { get }
  static var DeallocateSendRight: NSMachPortOptions { get }
  static var DeallocateReceiveRight: NSMachPortOptions { get }
}
protocol NSMachPortDelegate : NSPortDelegate {
  optional func handleMachMessage(msg: UnsafeMutablePointer<Void>)
}
class NSMessagePort : NSPort {
  init()
  init?(coder aDecoder: NSCoder)
}
class NSSocketPort : NSPort {
  convenience init()
  convenience init?(TCPPort port: UInt16)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: NSData)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, socket sock: NSSocketNativeHandle)
  convenience init?(remoteWithTCPPort port: UInt16, host hostName: String?)
  init(remoteWithProtocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: NSData)
  var protocolFamily: Int32 { get }
  var socketType: Int32 { get }
  var `protocol`: Int32 { get }
  @NSCopying var address: NSData { get }
  var socket: NSSocketNativeHandle { get }
  init?(coder aDecoder: NSCoder)
}
extension NSObject {
  class func classForPortCoder() -> AnyClass
}
class NSPortMessage : NSObject {
  init(sendPort: NSPort?, receivePort replyPort: NSPort?, components: [AnyObject]?)
  var components: [AnyObject]? { get }
  var receivePort: NSPort? { get }
  var sendPort: NSPort? { get }
  func sendBeforeDate(date: NSDate) -> Bool
  var msgid: UInt32
  convenience init()
}
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
   init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
   init(format predicateFormat: String, arguments argList: CVaListPointer)
   init?(fromMetadataQueryString queryString: String)
   init(value: Bool)
   init(block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func predicateWithSubstitutionVariables(variables: [String : AnyObject]) -> Self
  func evaluateWithObject(object: AnyObject?) -> Bool
  func evaluateWithObject(object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  func allowEvaluation()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSPredicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArrayUsingPredicate(predicate: NSPredicate) -> [AnyObject]
}
extension NSMutableArray {
  func filterUsingPredicate(predicate: NSPredicate)
}
extension NSSet {
  func filteredSetUsingPredicate(predicate: NSPredicate) -> Set<NSObject>
}
extension NSMutableSet {
  func filterUsingPredicate(predicate: NSPredicate)
}
extension NSOrderedSet {
  func filteredOrderedSetUsingPredicate(p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  func filterUsingPredicate(p: NSPredicate)
}
var NSWindowsNTOperatingSystem: Int { get }
var NSWindows95OperatingSystem: Int { get }
var NSSolarisOperatingSystem: Int { get }
var NSHPUXOperatingSystem: Int { get }
var NSMACHOperatingSystem: Int { get }
var NSSunOSOperatingSystem: Int { get }
var NSOSF1OperatingSystem: Int { get }
struct NSOperatingSystemVersion {
  var majorVersion: Int
  var minorVersion: Int
  var patchVersion: Int
  init()
  init(majorVersion: Int, minorVersion: Int, patchVersion: Int)
}
class NSProcessInfo : NSObject {
  class func processInfo() -> NSProcessInfo
  var environment: [String : String] { get }
  var arguments: [String] { get }
  var hostName: String { get }
  var processName: String
  var processIdentifier: Int32 { get }
  var globallyUniqueString: String { get }
  func operatingSystem() -> Int
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  var operatingSystemVersion: NSOperatingSystemVersion { get }
  var processorCount: Int { get }
  var activeProcessorCount: Int { get }
  var physicalMemory: UInt64 { get }
  func isOperatingSystemAtLeastVersion(version: NSOperatingSystemVersion) -> Bool
  var systemUptime: NSTimeInterval { get }
  func disableSuddenTermination()
  func enableSuddenTermination()
  func disableAutomaticTermination(reason: String)
  func enableAutomaticTermination(reason: String)
  var automaticTerminationSupportEnabled: Bool
  init()
}
struct NSActivityOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var IdleDisplaySleepDisabled: NSActivityOptions { get }
  static var IdleSystemSleepDisabled: NSActivityOptions { get }
  static var SuddenTerminationDisabled: NSActivityOptions { get }
  static var AutomaticTerminationDisabled: NSActivityOptions { get }
  static var UserInitiated: NSActivityOptions { get }
  static var UserInitiatedAllowingIdleSystemSleep: NSActivityOptions { get }
  static var Background: NSActivityOptions { get }
  static var LatencyCritical: NSActivityOptions { get }
}
extension NSProcessInfo {
  func beginActivityWithOptions(options: NSActivityOptions, reason: String) -> NSObjectProtocol
  func endActivity(activity: NSObjectProtocol)
  func performActivityWithOptions(options: NSActivityOptions, reason: String, usingBlock block: () -> Void)
}
enum NSProcessInfoThermalState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nominal
  case Fair
  case Serious
  case Critical
}
extension NSProcessInfo {
  var thermalState: NSProcessInfoThermalState { get }
}
extension NSProcessInfo {
}
let NSProcessInfoThermalStateDidChangeNotification: String
class NSProgress : NSObject {
  class func currentProgress() -> NSProgress?
   init(totalUnitCount unitCount: Int64)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> NSProgress
   init(totalUnitCount unitCount: Int64, parent: NSProgress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: NSProgress?, userInfo userInfoOrNil: [NSObject : AnyObject]?)
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  func addChild(child: NSProgress, withPendingUnitCount inUnitCount: Int64)
  var totalUnitCount: Int64
  var completedUnitCount: Int64
  var localizedDescription: String!
  var localizedAdditionalDescription: String!
  var cancellable: Bool
  var pausable: Bool
  var cancelled: Bool { get }
  var paused: Bool { get }
  var cancellationHandler: (() -> Void)?
  var pausingHandler: (() -> Void)?
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(objectOrNil: AnyObject?, forKey key: String)
  var indeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  func resume()
  var userInfo: [NSObject : AnyObject] { get }
  var kind: String?
  func publish()
  func unpublish()
  class func addSubscriberForFileURL(url: NSURL, withPublishingHandler publishingHandler: NSProgressPublishingHandler) -> AnyObject
  class func removeSubscriber(subscriber: AnyObject)
  var old: Bool { get }
  convenience init()
}
typealias NSProgressUnpublishingHandler = () -> Void
typealias NSProgressPublishingHandler = (NSProgress) -> NSProgressUnpublishingHandler?
protocol NSProgressReporting : NSObjectProtocol {
  var progress: NSProgress { get }
}
let NSProgressEstimatedTimeRemainingKey: String
let NSProgressThroughputKey: String
let NSProgressKindFile: String
let NSProgressFileOperationKindKey: String
let NSProgressFileOperationKindDownloading: String
let NSProgressFileOperationKindDecompressingAfterDownloading: String
let NSProgressFileOperationKindReceiving: String
let NSProgressFileOperationKindCopying: String
let NSProgressFileURLKey: String
let NSProgressFileTotalCountKey: String
let NSProgressFileCompletedCountKey: String
let NSProgressFileAnimationImageKey: String
let NSProgressFileAnimationImageOriginalRectKey: String
let NSProgressFileIconKey: String
struct NSPropertyListMutabilityOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immutable: NSPropertyListMutabilityOptions { get }
  static var MutableContainers: NSPropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: NSPropertyListMutabilityOptions { get }
}
enum NSPropertyListFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
typealias NSPropertyListReadOptions = NSPropertyListMutabilityOptions
typealias NSPropertyListWriteOptions = Int
class NSPropertyListSerialization : NSObject {
  class func propertyList(plist: AnyObject, isValidForFormat format: NSPropertyListFormat) -> Bool
  class func dataWithPropertyList(plist: AnyObject, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions) throws -> NSData
  class func writePropertyList(plist: AnyObject, toStream stream: NSOutputStream, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions, error: NSErrorPointer) -> Int
  class func propertyListWithData(data: NSData, options opt: NSPropertyListReadOptions, format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  class func propertyListWithStream(stream: NSInputStream, options opt: NSPropertyListReadOptions, format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  class func dataFromPropertyList(plist: AnyObject, format: NSPropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> NSData?
  class func propertyListFromData(data: NSData, mutabilityOption opt: NSPropertyListMutabilityOptions, format: UnsafeMutablePointer<NSPropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
}
class NSProtocolChecker : NSProxy {
  var `protocol`: Protocol { get }
  var target: NSObject? { get }
}
extension NSProtocolChecker {
  init(target anObject: NSObject, protocol aProtocol: Protocol)
}
class NSProxy : NSObjectProtocol {
  class func alloc() -> Self
  class func `class`() -> AnyClass
  class func forwardInvocation(invocation: NSInvocation)
  func forwardInvocation(invocation: NSInvocation)
  class func dealloc()
  func dealloc()
  class func finalize()
  func finalize()
  var description: String { get }
  var debugDescription: String { get }
  class func respondsToSelector(aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(object: AnyObject?) -> Bool
  class func isEqual(object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func performSelector(aSelector: Selector) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector) -> Unmanaged<AnyObject>!
  func performSelector(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  func performSelector(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  func isProxy() -> Bool
  class func isProxy() -> Bool
  func isKindOfClass(aClass: AnyClass) -> Bool
  class func isKindOfClass(aClass: AnyClass) -> Bool
  func isMemberOfClass(aClass: AnyClass) -> Bool
  class func isMemberOfClass(aClass: AnyClass) -> Bool
  func conformsToProtocol(aProtocol: Protocol) -> Bool
  class func conformsToProtocol(aProtocol: Protocol) -> Bool
  func respondsToSelector(aSelector: Selector) -> Bool
}
struct _NSRange {
  var location: Int
  var length: Int
  init()
  init(location: Int, length: Int)
}
extension _NSRange {
  init(_ x: Range<Int>)
  @warn_unused_result
  func toRange() -> Range<Int>?
}
extension _NSRange : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension _NSRange : _ObjectiveCBridgeable {
  static func _isBridgedToObjectiveC() -> Bool
  static func _getObjectiveCType() -> Any.Type
  func _bridgeToObjectiveC() -> NSValue
  static func _forceBridgeFromObjectiveC(x: NSValue, inout result: NSRange?)
  static func _conditionallyBridgeFromObjectiveC(x: NSValue, inout result: NSRange?) -> Bool
  typealias _ObjectiveCType = NSValue
}
typealias NSRange = _NSRange
typealias NSRangePointer = UnsafeMutablePointer<NSRange>
func NSMakeRange(loc: Int, _ len: Int) -> NSRange
func NSMaxRange(range: NSRange) -> Int
func NSLocationInRange(loc: Int, _ range: NSRange) -> Bool
func NSEqualRanges(range1: NSRange, _ range2: NSRange) -> Bool
func NSUnionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func NSIntersectionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func NSStringFromRange(range: NSRange) -> String
func NSRangeFromString(aString: String) -> NSRange
extension NSValue {
   init(range: NSRange)
  var rangeValue: NSRange { get }
}
struct NSRegularExpressionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitive: NSRegularExpressionOptions { get }
  static var AllowCommentsAndWhitespace: NSRegularExpressionOptions { get }
  static var IgnoreMetacharacters: NSRegularExpressionOptions { get }
  static var DotMatchesLineSeparators: NSRegularExpressionOptions { get }
  static var AnchorsMatchLines: NSRegularExpressionOptions { get }
  static var UseUnixLineSeparators: NSRegularExpressionOptions { get }
  static var UseUnicodeWordBoundaries: NSRegularExpressionOptions { get }
}
class NSRegularExpression : NSObject, NSCopying, NSCoding {
  init(pattern: String, options: NSRegularExpressionOptions) throws
  var pattern: String { get }
  var options: NSRegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPatternForString(string: String) -> String
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct NSMatchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ReportProgress: NSMatchingOptions { get }
  static var ReportCompletion: NSMatchingOptions { get }
  static var Anchored: NSMatchingOptions { get }
  static var WithTransparentBounds: NSMatchingOptions { get }
  static var WithoutAnchoringBounds: NSMatchingOptions { get }
}
struct NSMatchingFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Progress: NSMatchingFlags { get }
  static var Completed: NSMatchingFlags { get }
  static var HitEnd: NSMatchingFlags { get }
  static var RequiredEnd: NSMatchingFlags { get }
  static var InternalError: NSMatchingFlags { get }
}
extension NSRegularExpression {
  func enumerateMatchesInString(string: String, options: NSMatchingOptions, range: NSRange, usingBlock block: (NSTextCheckingResult?, NSMatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matchesInString(string: String, options: NSMatchingOptions, range: NSRange) -> [NSTextCheckingResult]
  func numberOfMatchesInString(string: String, options: NSMatchingOptions, range: NSRange) -> Int
  func firstMatchInString(string: String, options: NSMatchingOptions, range: NSRange) -> NSTextCheckingResult?
  func rangeOfFirstMatchInString(string: String, options: NSMatchingOptions, range: NSRange) -> NSRange
}
extension NSRegularExpression {
  func stringByReplacingMatchesInString(string: String, options: NSMatchingOptions, range: NSRange, withTemplate templ: String) -> String
  func replaceMatchesInString(string: NSMutableString, options: NSMatchingOptions, range: NSRange, withTemplate templ: String) -> Int
  func replacementStringForResult(result: NSTextCheckingResult, inString string: String, offset: Int, template templ: String) -> String
  class func escapedTemplateForString(string: String) -> String
}
class NSDataDetector : NSRegularExpression {
  init(types checkingTypes: NSTextCheckingTypes) throws
  var checkingTypes: NSTextCheckingTypes { get }
  convenience init(pattern: String, options: NSRegularExpressionOptions) throws
  convenience init()
  init?(coder aDecoder: NSCoder)
}
let NSDefaultRunLoopMode: String
let NSRunLoopCommonModes: String
class NSRunLoop : NSObject {
  class func currentRunLoop() -> NSRunLoop
  class func mainRunLoop() -> NSRunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func addTimer(timer: NSTimer, forMode mode: String)
  func addPort(aPort: NSPort, forMode mode: String)
  func removePort(aPort: NSPort, forMode mode: String)
  func limitDateForMode(mode: String) -> NSDate?
  func acceptInputForMode(mode: String, beforeDate limitDate: NSDate)
  init()
}
extension NSRunLoop {
  func run()
  func runUntilDate(limitDate: NSDate)
  func runMode(mode: String, beforeDate limitDate: NSDate) -> Bool
}
extension NSObject {
  class func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  class func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject)
}
extension NSRunLoop {
  func performSelector(aSelector: Selector, target: AnyObject, argument arg: AnyObject?, order: Int, modes: [String])
  func cancelPerformSelector(aSelector: Selector, target: AnyObject, argument arg: AnyObject?)
  func cancelPerformSelectorsWithTarget(target: AnyObject)
}
class NSScanner : NSObject, NSCopying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: NSCharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string: String)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSScanner {
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
  func scanString(string: String, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharactersFromSet(set: NSCharacterSet, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToString(string: String, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharactersFromSet(set: NSCharacterSet, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var atEnd: Bool { get }
  class func localizedScannerWithString(string: String) -> AnyObject
}
class NSScriptClassDescription : NSClassDescription {
   init?(forClass aClass: AnyClass)
  init?(suiteName: String, className: String, dictionary classDeclaration: [NSObject : AnyObject]?)
  var suiteName: String? { get }
  var className: String? { get }
  var implementationClassName: String? { get }
  var superclassDescription: NSScriptClassDescription? { get }
  var appleEventCode: FourCharCode { get }
  func matchesAppleEventCode(appleEventCode: FourCharCode) -> Bool
  func supportsCommand(commandDescription: NSScriptCommandDescription) -> Bool
  func selectorForCommand(commandDescription: NSScriptCommandDescription) -> Selector
  func typeForKey(key: String) -> String?
  func classDescriptionForKey(key: String) -> NSScriptClassDescription?
  func appleEventCodeForKey(key: String) -> FourCharCode
  func keyWithAppleEventCode(appleEventCode: FourCharCode) -> String?
  var defaultSubcontainerAttributeKey: String? { get }
  func isLocationRequiredToCreateForKey(toManyRelationshipKey: String) -> Bool
  func hasPropertyForKey(key: String) -> Bool
  func hasOrderedToManyRelationshipForKey(key: String) -> Bool
  func hasReadablePropertyForKey(key: String) -> Bool
  func hasWritablePropertyForKey(key: String) -> Bool
  convenience init()
}
extension NSScriptClassDescription {
}
extension NSObject {
  var classCode: FourCharCode { get }
  var className: String { get }
  class func classCode() -> FourCharCode
  class func className() -> String
}
class NSScriptCoercionHandler : NSObject {
  class func sharedCoercionHandler() -> NSScriptCoercionHandler
  func coerceValue(value: AnyObject, toClass: AnyClass) -> AnyObject?
  func registerCoercer(coercer: AnyObject, selector: Selector, toConvertFromClass fromClass: AnyClass, toClass: AnyClass)
  init()
}
var NSNoScriptError: Int { get }
var NSReceiverEvaluationScriptError: Int { get }
var NSKeySpecifierEvaluationScriptError: Int { get }
var NSArgumentEvaluationScriptError: Int { get }
var NSReceiversCantHandleCommandScriptError: Int { get }
var NSRequiredArgumentsMissingScriptError: Int { get }
var NSArgumentsWrongScriptError: Int { get }
var NSUnknownKeyScriptError: Int { get }
var NSInternalScriptError: Int { get }
var NSOperationNotSupportedForKeyScriptError: Int { get }
var NSCannotCreateScriptCommandError: Int { get }
class NSScriptCommand : NSObject, NSCoding {
  init(commandDescription commandDef: NSScriptCommandDescription)
  convenience init?(coder inCoder: NSCoder)
  var commandDescription: NSScriptCommandDescription { get }
  var directParameter: AnyObject?
  var receiversSpecifier: NSScriptObjectSpecifier?
  var evaluatedReceivers: AnyObject? { get }
  var arguments: [String : AnyObject]?
  var evaluatedArguments: [String : AnyObject]? { get }
  var wellFormed: Bool { get }
  func performDefaultImplementation() -> AnyObject?
  func executeCommand() -> AnyObject?
  var scriptErrorNumber: Int
  var scriptErrorOffendingObjectDescriptor: NSAppleEventDescriptor?
  var scriptErrorExpectedTypeDescriptor: NSAppleEventDescriptor?
  var scriptErrorString: String?
  class func currentCommand() -> NSScriptCommand?
  @NSCopying var appleEvent: NSAppleEventDescriptor? { get }
  func suspendExecution()
  func resumeExecutionWithResult(result: AnyObject?)
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
}
class NSScriptCommandDescription : NSObject, NSCoding {
  init?(suiteName: String, commandName: String, dictionary commandDeclaration: [NSObject : AnyObject]?)
  init?(coder inCoder: NSCoder)
  var suiteName: String { get }
  var commandName: String { get }
  var appleEventClassCode: FourCharCode { get }
  var appleEventCode: FourCharCode { get }
  var commandClassName: String { get }
  var returnType: String? { get }
  var appleEventCodeForReturnType: FourCharCode { get }
  var argumentNames: [String] { get }
  func typeForArgumentWithName(argumentName: String) -> String?
  func appleEventCodeForArgumentWithName(argumentName: String) -> FourCharCode
  func isOptionalArgumentWithName(argumentName: String) -> Bool
  func createCommandInstance() -> NSScriptCommand
  func createCommandInstanceWithZone(zone: NSZone) -> NSScriptCommand
  func encodeWithCoder(aCoder: NSCoder)
}
class NSScriptExecutionContext : NSObject {
  class func sharedScriptExecutionContext() -> NSScriptExecutionContext
  var topLevelObject: AnyObject?
  var objectBeingTested: AnyObject?
  var rangeContainerObject: AnyObject?
  init()
}
let NSOperationNotSupportedForKeyException: String
extension NSObject {
  class func valueAtIndex(index: Int, inPropertyWithKey key: String) -> AnyObject?
  func valueAtIndex(index: Int, inPropertyWithKey key: String) -> AnyObject?
  class func valueWithName(name: String, inPropertyWithKey key: String) -> AnyObject?
  func valueWithName(name: String, inPropertyWithKey key: String) -> AnyObject?
  class func valueWithUniqueID(uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  func valueWithUniqueID(uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  class func insertValue(value: AnyObject, atIndex index: Int, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, atIndex index: Int, inPropertyWithKey key: String)
  class func removeValueAtIndex(index: Int, fromPropertyWithKey key: String)
  func removeValueAtIndex(index: Int, fromPropertyWithKey key: String)
  class func replaceValueAtIndex(index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  func replaceValueAtIndex(index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  class func insertValue(value: AnyObject, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, inPropertyWithKey key: String)
  class func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
  func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
}
var NSNoSpecifierError: Int { get }
var NSNoTopLevelContainersSpecifierError: Int { get }
var NSContainerSpecifierError: Int { get }
var NSUnknownKeySpecifierError: Int { get }
var NSInvalidIndexSpecifierError: Int { get }
var NSInternalSpecifierError: Int { get }
var NSOperationNotSupportedForKeySpecifierError: Int { get }
enum NSInsertionPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PositionAfter
  case PositionBefore
  case PositionBeginning
  case PositionEnd
  case PositionReplace
}
enum NSRelativePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case After
  case Before
}
enum NSWhoseSubelementIdentifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IndexSubelement
  case EverySubelement
  case MiddleSubelement
  case RandomSubelement
  case NoSubelement
}
class NSScriptObjectSpecifier : NSObject, NSCoding {
   init?(descriptor: NSAppleEventDescriptor)
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  unowned(unsafe) var childSpecifier: @sil_unmanaged NSScriptObjectSpecifier?
  var containerSpecifier: NSScriptObjectSpecifier?
  var containerIsObjectBeingTested: Bool
  var containerIsRangeContainerObject: Bool
  var key: String
  var containerClassDescription: NSScriptClassDescription?
  var keyClassDescription: NSScriptClassDescription? { get }
  func indicesOfObjectsByEvaluatingWithContainer(container: AnyObject, count: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Int>
  func objectsByEvaluatingWithContainers(containers: AnyObject) -> AnyObject?
  var objectsByEvaluatingSpecifier: AnyObject? { get }
  var evaluationErrorNumber: Int
  var evaluationErrorSpecifier: NSScriptObjectSpecifier? { get }
  @NSCopying var descriptor: NSAppleEventDescriptor? { get }
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSObject {
  var objectSpecifier: NSScriptObjectSpecifier? { get }
  class func indicesOfObjectsByEvaluatingObjectSpecifier(specifier: NSScriptObjectSpecifier) -> [NSNumber]?
  func indicesOfObjectsByEvaluatingObjectSpecifier(specifier: NSScriptObjectSpecifier) -> [NSNumber]?
  class func objectSpecifier() -> NSScriptObjectSpecifier?
}
class NSIndexSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, index: Int)
  var index: Int
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSMiddleSpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSNameSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, name: String)
  var name: String
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSPositionalSpecifier : NSObject {
  init(position: NSInsertionPosition, objectSpecifier specifier: NSScriptObjectSpecifier)
  var position: NSInsertionPosition { get }
  var objectSpecifier: NSScriptObjectSpecifier { get }
  func setInsertionClassDescription(classDescription: NSScriptClassDescription)
  func evaluate()
  var insertionContainer: AnyObject? { get }
  var insertionKey: String? { get }
  var insertionIndex: Int { get }
  var insertionReplaces: Bool { get }
  convenience init()
}
class NSPropertySpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSRandomSpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSRangeSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, startSpecifier startSpec: NSScriptObjectSpecifier?, endSpecifier endSpec: NSScriptObjectSpecifier?)
  var startSpecifier: NSScriptObjectSpecifier?
  var endSpecifier: NSScriptObjectSpecifier?
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSRelativeSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, relativePosition relPos: NSRelativePosition, baseSpecifier: NSScriptObjectSpecifier?)
  var relativePosition: NSRelativePosition
  var baseSpecifier: NSScriptObjectSpecifier?
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSUniqueIDSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, uniqueID: AnyObject)
  @NSCopying var uniqueID: AnyObject
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSWhoseSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, test: NSScriptWhoseTest)
  var test: NSScriptWhoseTest
  var startSubelementIdentifier: NSWhoseSubelementIdentifier
  var startSubelementIndex: Int
  var endSubelementIdentifier: NSWhoseSubelementIdentifier
  var endSubelementIndex: Int
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
enum NSSaveOptions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Yes
  case No
  case Ask
}
class NSCloneCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCloseCommand : NSScriptCommand {
  var saveOptions: NSSaveOptions { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCountCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCreateCommand : NSScriptCommand {
  var createClassDescription: NSScriptClassDescription { get }
  var resolvedKeyDictionary: [String : AnyObject] { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSDeleteCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSExistsCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSGetCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSMoveCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSQuitCommand : NSScriptCommand {
  var saveOptions: NSSaveOptions { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSSetCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSScriptSuiteRegistry : NSObject {
  class func sharedScriptSuiteRegistry() -> NSScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(registry: NSScriptSuiteRegistry)
  func loadSuitesFromBundle(bundle: NSBundle)
  func loadSuiteWithDictionary(suiteDeclaration: [NSObject : AnyObject], fromBundle bundle: NSBundle)
  func registerClassDescription(classDescription: NSScriptClassDescription)
  func registerCommandDescription(commandDescription: NSScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCodeForSuite(suiteName: String) -> FourCharCode
  func bundleForSuite(suiteName: String) -> NSBundle?
  func classDescriptionsInSuite(suiteName: String) -> [String : NSScriptClassDescription]?
  func commandDescriptionsInSuite(suiteName: String) -> [String : NSScriptCommandDescription]?
  func suiteForAppleEventCode(appleEventCode: FourCharCode) -> String?
  func classDescriptionWithAppleEventCode(appleEventCode: FourCharCode) -> NSScriptClassDescription?
  func commandDescriptionWithAppleEventClass(appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> NSScriptCommandDescription?
  func aeteResource(languageName: String) -> NSData?
  init()
}
enum NSTestComparisonOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case EqualToComparison
  case LessThanOrEqualToComparison
  case LessThanComparison
  case GreaterThanOrEqualToComparison
  case GreaterThanComparison
  case BeginsWithComparison
  case EndsWithComparison
  case ContainsComparison
}
class NSScriptWhoseTest : NSObject, NSCoding {
  func isTrue() -> Bool
  init()
  init?(coder inCoder: NSCoder)
  func encodeWithCoder(aCoder: NSCoder)
}
class NSLogicalTest : NSScriptWhoseTest {
  init(andTestWithTests subTests: [NSSpecifierTest])
  init(orTestWithTests subTests: [NSSpecifierTest])
  init(notTestWithTest subTest: NSScriptWhoseTest)
  convenience init()
  init?(coder inCoder: NSCoder)
}
class NSSpecifierTest : NSScriptWhoseTest {
  init?(coder inCoder: NSCoder)
  init(objectSpecifier obj1: NSScriptObjectSpecifier?, comparisonOperator compOp: NSTestComparisonOperation, testObject obj2: AnyObject?)
}
extension NSObject {
  class func isEqualTo(object: AnyObject?) -> Bool
  func isEqualTo(object: AnyObject?) -> Bool
  class func isLessThanOrEqualTo(object: AnyObject?) -> Bool
  func isLessThanOrEqualTo(object: AnyObject?) -> Bool
  class func isLessThan(object: AnyObject?) -> Bool
  func isLessThan(object: AnyObject?) -> Bool
  class func isGreaterThanOrEqualTo(object: AnyObject?) -> Bool
  func isGreaterThanOrEqualTo(object: AnyObject?) -> Bool
  class func isGreaterThan(object: AnyObject?) -> Bool
  func isGreaterThan(object: AnyObject?) -> Bool
  class func isNotEqualTo(object: AnyObject?) -> Bool
  func isNotEqualTo(object: AnyObject?) -> Bool
  class func doesContain(object: AnyObject) -> Bool
  func doesContain(object: AnyObject) -> Bool
  class func isLike(object: String) -> Bool
  func isLike(object: String) -> Bool
  class func isCaseInsensitiveLike(object: String) -> Bool
  func isCaseInsensitiveLike(object: String) -> Bool
}
extension NSObject {
  class func scriptingIsEqualTo(object: AnyObject) -> Bool
  func scriptingIsEqualTo(object: AnyObject) -> Bool
  class func scriptingIsLessThanOrEqualTo(object: AnyObject) -> Bool
  func scriptingIsLessThanOrEqualTo(object: AnyObject) -> Bool
  class func scriptingIsLessThan(object: AnyObject) -> Bool
  func scriptingIsLessThan(object: AnyObject) -> Bool
  class func scriptingIsGreaterThanOrEqualTo(object: AnyObject) -> Bool
  func scriptingIsGreaterThanOrEqualTo(object: AnyObject) -> Bool
  class func scriptingIsGreaterThan(object: AnyObject) -> Bool
  func scriptingIsGreaterThan(object: AnyObject) -> Bool
  class func scriptingBeginsWith(object: AnyObject) -> Bool
  func scriptingBeginsWith(object: AnyObject) -> Bool
  class func scriptingEndsWith(object: AnyObject) -> Bool
  func scriptingEndsWith(object: AnyObject) -> Bool
  class func scriptingContains(object: AnyObject) -> Bool
  func scriptingContains(object: AnyObject) -> Bool
}
class NSSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func containsObject(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func intersectsSet(otherSet: Set<NSObject>) -> Bool
  func isEqualToSet(otherSet: Set<NSObject>) -> Bool
  func isSubsetOfSet(otherSet: Set<NSObject>) -> Bool
  func setByAddingObject(anObject: AnyObject) -> Set<NSObject>
  func setByAddingObjectsFromSet(other: Set<NSObject>) -> Set<NSObject>
  func setByAddingObjectsFromArray(other: [AnyObject]) -> Set<NSObject>
  func enumerateObjectsUsingBlock(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  func objectsPassingTest(predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  func objectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
class NSMutableSet : NSSet {
  func addObject(object: AnyObject)
  func removeObject(object: AnyObject)
  init?(coder aDecoder: NSCoder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
extension NSMutableSet {
  func addObjectsFromArray(array: [AnyObject])
  func intersectSet(otherSet: Set<NSObject>)
  func minusSet(otherSet: Set<NSObject>)
  func removeAllObjects()
  func unionSet(otherSet: Set<NSObject>)
  func setSet(otherSet: Set<NSObject>)
}
extension NSMutableSet {
}
class NSCountedSet : NSMutableSet {
  init(capacity numItems: Int)
  convenience init(array: [AnyObject])
  convenience init(set: Set<NSObject>)
  func countForObject(object: AnyObject) -> Int
  func objectEnumerator() -> NSEnumerator
  func addObject(object: AnyObject)
  func removeObject(object: AnyObject)
  init?(coder aDecoder: NSCoder)
  convenience init()
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
class NSSortDescriptor : NSObject, NSSecureCoding, NSCopying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: NSCoder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  func allowEvaluation()
  init(key: String?, ascending: Bool, comparator cmptr: NSComparator)
  var comparator: NSComparator { get }
  func compareObject(object1: AnyObject, toObject object2: AnyObject) -> NSComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSSet {
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableArray {
  func sortUsingDescriptors(sortDescriptors: [NSSortDescriptor])
}
extension NSOrderedSet {
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableOrderedSet {
  func sortUsingDescriptors(sortDescriptors: [NSSortDescriptor])
}
class NSSpellServer : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSSpellServerDelegate?
  func registerLanguage(language: String?, byVendor vendor: String?) -> Bool
  func isWordInUserDictionaries(word: String, caseSensitive flag: Bool) -> Bool
  func run()
  init()
}
struct __ssFlags {
  var delegateLearnsWords: UInt32
  var delegateForgetsWords: UInt32
  var busy: UInt32
  var _reserved: UInt32
  init()
  init(delegateLearnsWords: UInt32, delegateForgetsWords: UInt32, busy: UInt32, _reserved: UInt32)
}
protocol NSSpellServerDelegate : NSObjectProtocol {
  optional func spellServer(sender: NSSpellServer, findMisspelledWordInString stringToCheck: String, language: String, wordCount: UnsafeMutablePointer<Int>, countOnly: Bool) -> NSRange
  optional func spellServer(sender: NSSpellServer, suggestGuessesForWord word: String, inLanguage language: String) -> [String]?
  optional func spellServer(sender: NSSpellServer, didLearnWord word: String, inLanguage language: String)
  optional func spellServer(sender: NSSpellServer, didForgetWord word: String, inLanguage language: String)
  optional func spellServer(sender: NSSpellServer, suggestCompletionsForPartialWordRange range: NSRange, inString string: String, language: String) -> [String]?
  optional func spellServer(sender: NSSpellServer, checkGrammarInString stringToCheck: String, language: String?, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  optional func spellServer(sender: NSSpellServer, checkString stringToCheck: String, offset: Int, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]?, orthography: NSOrthography?, wordCount: UnsafeMutablePointer<Int>) -> [NSTextCheckingResult]?
  optional func spellServer(sender: NSSpellServer, recordResponse response: Int, toCorrection correction: String, forWord word: String, language: String)
}
let NSGrammarRange: String
let NSGrammarUserDescription: String
let NSGrammarCorrections: String
enum NSStreamStatus : UInt {
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
struct NSStreamEvent : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSStreamEvent { get }
  static var OpenCompleted: NSStreamEvent { get }
  static var HasBytesAvailable: NSStreamEvent { get }
  static var HasSpaceAvailable: NSStreamEvent { get }
  static var ErrorOccurred: NSStreamEvent { get }
  static var EndEncountered: NSStreamEvent { get }
}
class NSStream : NSObject {
  func open()
  func close()
  unowned(unsafe) var delegate: @sil_unmanaged NSStreamDelegate?
  func propertyForKey(key: String) -> AnyObject?
  func setProperty(property: AnyObject?, forKey key: String) -> Bool
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  var streamStatus: NSStreamStatus { get }
  @NSCopying var streamError: NSError? { get }
  init()
}
class NSInputStream : NSStream {
  func read(buffer: UnsafeMutablePointer<UInt8>, maxLength len: Int) -> Int
  func getBuffer(buffer: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, length len: UnsafeMutablePointer<Int>) -> Bool
  var hasBytesAvailable: Bool { get }
  init(data: NSData)
  init?(URL url: NSURL)
  convenience init()
}
class NSOutputStream : NSStream {
  func write(buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  init?(URL url: NSURL, append shouldAppend: Bool)
  convenience init()
}
extension NSStream {
  class func getStreamsToHostWithName(hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
  class func getStreamsToHost(host: NSHost, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
}
extension NSStream {
  class func getBoundStreamsWithBufferSize(bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
}
extension NSInputStream {
  convenience init?(fileAtPath path: String)
}
extension NSOutputStream {
  convenience init?(toFileAtPath path: String, append shouldAppend: Bool)
  class func outputStreamToMemory() -> Self
}
protocol NSStreamDelegate : NSObjectProtocol {
  optional func stream(aStream: NSStream, handleEvent eventCode: NSStreamEvent)
}
let NSStreamSocketSecurityLevelKey: String
let NSStreamSocketSecurityLevelNone: String
let NSStreamSocketSecurityLevelSSLv2: String
let NSStreamSocketSecurityLevelSSLv3: String
let NSStreamSocketSecurityLevelTLSv1: String
let NSStreamSocketSecurityLevelNegotiatedSSL: String
let NSStreamSOCKSProxyConfigurationKey: String
let NSStreamSOCKSProxyHostKey: String
let NSStreamSOCKSProxyPortKey: String
let NSStreamSOCKSProxyVersionKey: String
let NSStreamSOCKSProxyUserKey: String
let NSStreamSOCKSProxyPasswordKey: String
let NSStreamSOCKSProxyVersion4: String
let NSStreamSOCKSProxyVersion5: String
let NSStreamDataWrittenToMemoryStreamKey: String
let NSStreamFileCurrentOffsetKey: String
let NSStreamSocketSSLErrorDomain: String
let NSStreamSOCKSErrorDomain: String
let NSStreamNetworkServiceType: String
let NSStreamNetworkServiceTypeVoIP: String
let NSStreamNetworkServiceTypeVideo: String
let NSStreamNetworkServiceTypeBackground: String
let NSStreamNetworkServiceTypeVoice: String
typealias unichar = UInt16
struct NSStringCompareOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitiveSearch: NSStringCompareOptions { get }
  static var LiteralSearch: NSStringCompareOptions { get }
  static var BackwardsSearch: NSStringCompareOptions { get }
  static var AnchoredSearch: NSStringCompareOptions { get }
  static var NumericSearch: NSStringCompareOptions { get }
  static var DiacriticInsensitiveSearch: NSStringCompareOptions { get }
  static var WidthInsensitiveSearch: NSStringCompareOptions { get }
  static var ForcedOrderingSearch: NSStringCompareOptions { get }
  static var RegularExpressionSearch: NSStringCompareOptions { get }
}
var NSASCIIStringEncoding: UInt { get }
var NSNEXTSTEPStringEncoding: UInt { get }
var NSJapaneseEUCStringEncoding: UInt { get }
var NSUTF8StringEncoding: UInt { get }
var NSISOLatin1StringEncoding: UInt { get }
var NSSymbolStringEncoding: UInt { get }
var NSNonLossyASCIIStringEncoding: UInt { get }
var NSShiftJISStringEncoding: UInt { get }
var NSISOLatin2StringEncoding: UInt { get }
var NSUnicodeStringEncoding: UInt { get }
var NSWindowsCP1251StringEncoding: UInt { get }
var NSWindowsCP1252StringEncoding: UInt { get }
var NSWindowsCP1253StringEncoding: UInt { get }
var NSWindowsCP1254StringEncoding: UInt { get }
var NSWindowsCP1250StringEncoding: UInt { get }
var NSISO2022JPStringEncoding: UInt { get }
var NSMacOSRomanStringEncoding: UInt { get }
var NSUTF16StringEncoding: UInt { get }
var NSUTF16BigEndianStringEncoding: UInt { get }
var NSUTF16LittleEndianStringEncoding: UInt { get }
var NSUTF32StringEncoding: UInt { get }
var NSUTF32BigEndianStringEncoding: UInt { get }
var NSUTF32LittleEndianStringEncoding: UInt { get }
struct NSStringEncodingConversionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllowLossy: NSStringEncodingConversionOptions { get }
  static var ExternalRepresentation: NSStringEncodingConversionOptions { get }
}
class NSString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  func characterAtIndex(index: Int) -> unichar
  init()
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
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
  convenience init(format: NSString, locale: NSLocale?, _ args: CVarArgType...)
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
  func substringFromIndex(from: Int) -> String
  func substringToIndex(to: Int) -> String
  func substringWithRange(range: NSRange) -> String
  func getCharacters(buffer: UnsafeMutablePointer<unichar>, range: NSRange)
  func compare(string: String) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions, range compareRange: NSRange) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions, range compareRange: NSRange, locale: AnyObject?) -> NSComparisonResult
  func caseInsensitiveCompare(string: String) -> NSComparisonResult
  func localizedCompare(string: String) -> NSComparisonResult
  func localizedCaseInsensitiveCompare(string: String) -> NSComparisonResult
  func localizedStandardCompare(string: String) -> NSComparisonResult
  func isEqualToString(aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefixWithString(str: String, options mask: NSStringCompareOptions) -> String
  func containsString(str: String) -> Bool
  func localizedCaseInsensitiveContainsString(str: String) -> Bool
  func localizedStandardContainsString(str: String) -> Bool
  func localizedStandardRangeOfString(str: String) -> NSRange
  func rangeOfString(searchString: String) -> NSRange
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions) -> NSRange
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions, range searchRange: NSRange) -> NSRange
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions, range searchRange: NSRange, locale: NSLocale?) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet, options mask: NSStringCompareOptions) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet, options mask: NSStringCompareOptions, range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequenceAtIndex(index: Int) -> NSRange
  func rangeOfComposedCharacterSequencesForRange(range: NSRange) -> NSRange
  func stringByAppendingString(aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  var integerValue: Int { get }
  var longLongValue: Int64 { get }
  var boolValue: Bool { get }
  var uppercaseString: String { get }
  var lowercaseString: String { get }
  var capitalizedString: String { get }
  var localizedUppercaseString: String { get }
  var localizedLowercaseString: String { get }
  var localizedCapitalizedString: String { get }
  func uppercaseStringWithLocale(locale: NSLocale?) -> String
  func lowercaseStringWithLocale(locale: NSLocale?) -> String
  func capitalizedStringWithLocale(locale: NSLocale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func lineRangeForRange(range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func paragraphRangeForRange(range: NSRange) -> NSRange
  func enumerateSubstringsInRange(range: NSRange, options opts: NSStringEnumerationOptions, usingBlock block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateLinesUsingBlock(block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var UTF8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func dataUsingEncoding(encoding: UInt, allowLossyConversion lossy: Bool) -> NSData?
  func dataUsingEncoding(encoding: UInt) -> NSData?
  func canBeConvertedToEncoding(encoding: UInt) -> Bool
  func cStringUsingEncoding(encoding: UInt) -> UnsafePointer<Int8>
  func getCString(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: UInt, options: NSStringEncodingConversionOptions, range: NSRange, remainingRange leftover: NSRangePointer) -> Bool
  func maximumLengthOfBytesUsingEncoding(enc: UInt) -> Int
  func lengthOfBytesUsingEncoding(enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedNameOfStringEncoding(encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparatedByString(separator: String) -> [String]
  func componentsSeparatedByCharactersInSet(separator: NSCharacterSet) -> [String]
  func stringByTrimmingCharactersInSet(set: NSCharacterSet) -> String
  func stringByPaddingToLength(newLength: Int, withString padString: String, startingAtIndex padIndex: Int) -> String
  func stringByFoldingWithOptions(options: NSStringCompareOptions, locale: NSLocale?) -> String
  func stringByReplacingOccurrencesOfString(target: String, withString replacement: String, options: NSStringCompareOptions, range searchRange: NSRange) -> String
  func stringByReplacingOccurrencesOfString(target: String, withString replacement: String) -> String
  func stringByReplacingCharactersInRange(range: NSRange, withString replacement: String) -> String
  func stringByApplyingTransform(transform: String, reverse: Bool) -> String?
  func writeToURL(url: NSURL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  var description: String { get }
  var hash: Int { get }
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
struct NSStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByLines: NSStringEnumerationOptions { get }
  static var ByParagraphs: NSStringEnumerationOptions { get }
  static var ByComposedCharacterSequences: NSStringEnumerationOptions { get }
  static var ByWords: NSStringEnumerationOptions { get }
  static var BySentences: NSStringEnumerationOptions { get }
  static var Reverse: NSStringEnumerationOptions { get }
  static var SubstringNotRequired: NSStringEnumerationOptions { get }
  static var Localized: NSStringEnumerationOptions { get }
}
let NSStringTransformLatinToKatakana: String
let NSStringTransformLatinToHiragana: String
let NSStringTransformLatinToHangul: String
let NSStringTransformLatinToArabic: String
let NSStringTransformLatinToHebrew: String
let NSStringTransformLatinToThai: String
let NSStringTransformLatinToCyrillic: String
let NSStringTransformLatinToGreek: String
let NSStringTransformToLatin: String
let NSStringTransformMandarinToLatin: String
let NSStringTransformHiraganaToKatakana: String
let NSStringTransformFullwidthToHalfwidth: String
let NSStringTransformToXMLHex: String
let NSStringTransformToUnicodeName: String
let NSStringTransformStripCombiningMarks: String
let NSStringTransformStripDiacritics: String
extension NSString {
  class func stringEncodingForData(data: NSData, encodingOptions opts: [String : AnyObject]?, convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
}
let NSStringEncodingDetectionSuggestedEncodingsKey: String
let NSStringEncodingDetectionDisallowedEncodingsKey: String
let NSStringEncodingDetectionUseOnlySuggestedEncodingsKey: String
let NSStringEncodingDetectionAllowLossyKey: String
let NSStringEncodingDetectionFromWindowsKey: String
let NSStringEncodingDetectionLossySubstitutionKey: String
let NSStringEncodingDetectionLikelyLanguageKey: String
class NSMutableString : NSString {
  func replaceCharactersInRange(range: NSRange, withString aString: String)
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
extension NSMutableString {
  func appendFormat(format: NSString, _ args: CVarArgType...)
}
extension NSMutableString {
  func insertString(aString: String, atIndex loc: Int)
  func deleteCharactersInRange(range: NSRange)
  func appendString(aString: String)
  func setString(aString: String)
  func replaceOccurrencesOfString(target: String, withString replacement: String, options: NSStringCompareOptions, range searchRange: NSRange) -> Int
  func applyTransform(transform: String, reverse: Bool, range: NSRange, updatedRange resultingRange: NSRangePointer) -> Bool
  init(capacity: Int)
}
let NSCharacterConversionException: String
let NSParseErrorException: String
extension NSString {
  func propertyList() -> AnyObject
  func propertyListFromStringsFileFormat() -> [NSObject : AnyObject]?
}
extension NSString {
  func getCharacters(buffer: UnsafeMutablePointer<unichar>)
}
var NSProprietaryStringEncoding: UInt { get }
class NSSimpleCString : NSString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
class NSConstantString : NSSimpleCString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
enum NSTaskTerminationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Exit
  case UncaughtSignal
}
class NSTask : NSObject {
  init()
  var launchPath: String?
  var arguments: [String]?
  var environment: [String : String]?
  var currentDirectoryPath: String
  var standardInput: AnyObject?
  var standardOutput: AnyObject?
  var standardError: AnyObject?
  func launch()
  func interrupt()
  func terminate()
  func suspend() -> Bool
  func resume() -> Bool
  var processIdentifier: Int32 { get }
  var running: Bool { get }
  var terminationStatus: Int32 { get }
  var terminationReason: NSTaskTerminationReason { get }
  var terminationHandler: ((NSTask) -> Void)?
  var qualityOfService: NSQualityOfService
}
extension NSTask {
  class func launchedTaskWithLaunchPath(path: String, arguments: [String]) -> NSTask
  func waitUntilExit()
}
let NSTaskDidTerminateNotification: String
struct NSTextCheckingType : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var Orthography: NSTextCheckingType { get }
  static var Spelling: NSTextCheckingType { get }
  static var Grammar: NSTextCheckingType { get }
  static var Date: NSTextCheckingType { get }
  static var Address: NSTextCheckingType { get }
  static var Link: NSTextCheckingType { get }
  static var Quote: NSTextCheckingType { get }
  static var Dash: NSTextCheckingType { get }
  static var Replacement: NSTextCheckingType { get }
  static var Correction: NSTextCheckingType { get }
  static var RegularExpression: NSTextCheckingType { get }
  static var PhoneNumber: NSTextCheckingType { get }
  static var TransitInformation: NSTextCheckingType { get }
}
typealias NSTextCheckingTypes = UInt64
var NSTextCheckingAllSystemTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllCustomTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllTypes: NSTextCheckingTypes { get }
class NSTextCheckingResult : NSObject, NSCopying, NSCoding {
  var resultType: NSTextCheckingType { get }
  var range: NSRange { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTextCheckingResult {
  @NSCopying var orthography: NSOrthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: NSDate? { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  var duration: NSTimeInterval { get }
  var components: [String : String]? { get }
  @NSCopying var URL: NSURL? { get }
  var replacementString: String? { get }
  var alternativeStrings: [String]? { get }
  @NSCopying var regularExpression: NSRegularExpression? { get }
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  var numberOfRanges: Int { get }
  func rangeAtIndex(idx: Int) -> NSRange
  func resultByAdjustingRangesWithOffset(offset: Int) -> NSTextCheckingResult
}
let NSTextCheckingNameKey: String
let NSTextCheckingJobTitleKey: String
let NSTextCheckingOrganizationKey: String
let NSTextCheckingStreetKey: String
let NSTextCheckingCityKey: String
let NSTextCheckingStateKey: String
let NSTextCheckingZIPKey: String
let NSTextCheckingCountryKey: String
let NSTextCheckingPhoneKey: String
let NSTextCheckingAirlineKey: String
let NSTextCheckingFlightKey: String
extension NSTextCheckingResult {
  class func orthographyCheckingResultWithRange(range: NSRange, orthography: NSOrthography) -> NSTextCheckingResult
  class func spellCheckingResultWithRange(range: NSRange) -> NSTextCheckingResult
  class func grammarCheckingResultWithRange(range: NSRange, details: [String]) -> NSTextCheckingResult
  class func dateCheckingResultWithRange(range: NSRange, date: NSDate) -> NSTextCheckingResult
  class func dateCheckingResultWithRange(range: NSRange, date: NSDate, timeZone: NSTimeZone, duration: NSTimeInterval) -> NSTextCheckingResult
  class func addressCheckingResultWithRange(range: NSRange, components: [String : String]) -> NSTextCheckingResult
  class func linkCheckingResultWithRange(range: NSRange, URL url: NSURL) -> NSTextCheckingResult
  class func quoteCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func dashCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func replacementCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func correctionCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func correctionCheckingResultWithRange(range: NSRange, replacementString: String, alternativeStrings: [String]) -> NSTextCheckingResult
  class func regularExpressionCheckingResultWithRanges(ranges: NSRangePointer, count: Int, regularExpression: NSRegularExpression) -> NSTextCheckingResult
  class func phoneNumberCheckingResultWithRange(range: NSRange, phoneNumber: String) -> NSTextCheckingResult
  class func transitInformationCheckingResultWithRange(range: NSRange, components: [String : String]) -> NSTextCheckingResult
}
class NSThread : NSObject {
  class func currentThread() -> NSThread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: NSMutableDictionary { get }
  class func sleepUntilDate(date: NSDate)
  class func sleepForTimeInterval(ti: NSTimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  var threadPriority: Double
  var qualityOfService: NSQualityOfService
  class func callStackReturnAddresses() -> [NSNumber]
  class func callStackSymbols() -> [String]
  var name: String?
  var stackSize: Int
  var isMainThread: Bool { get }
  class func isMainThread() -> Bool
  class func mainThread() -> NSThread
  init()
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  var executing: Bool { get }
  var finished: Bool { get }
  var cancelled: Bool { get }
  func cancel()
  func start()
  func main()
}
let NSWillBecomeMultiThreadedNotification: String
let NSDidBecomeSingleThreadedNotification: String
let NSThreadWillExitNotification: String
extension NSObject {
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  class func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
  func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
}
class NSTimeZone : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  @NSCopying var data: NSData { get }
  func secondsFromGMTForDate(aDate: NSDate) -> Int
  func abbreviationForDate(aDate: NSDate) -> String?
  func isDaylightSavingTimeForDate(aDate: NSDate) -> Bool
  func daylightSavingTimeOffsetForDate(aDate: NSDate) -> NSTimeInterval
  func nextDaylightSavingTimeTransitionAfterDate(aDate: NSDate) -> NSDate?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTimeZone {
  class func systemTimeZone() -> NSTimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> NSTimeZone
  class func setDefaultTimeZone(aTimeZone: NSTimeZone)
  class func localTimeZone() -> NSTimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  class func setAbbreviationDictionary(dict: [String : String])
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var daylightSavingTime: Bool { get }
  var daylightSavingTimeOffset: NSTimeInterval { get }
  @NSCopying var nextDaylightSavingTimeTransition: NSDate? { get }
  var description: String { get }
  func isEqualToTimeZone(aTimeZone: NSTimeZone) -> Bool
  func localizedName(style: NSTimeZoneNameStyle, locale: NSLocale?) -> String?
}
enum NSTimeZoneNameStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case ShortStandard
  case DaylightSaving
  case ShortDaylightSaving
  case Generic
  case ShortGeneric
}
extension NSTimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: NSData?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation: String)
}
let NSSystemTimeZoneDidChangeNotification: String
class NSTimer : NSObject {
   init(timeInterval ti: NSTimeInterval, invocation: NSInvocation, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: NSTimeInterval, invocation: NSInvocation, repeats yesOrNo: Bool) -> NSTimer
   init(timeInterval ti: NSTimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(ti: NSTimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool) -> NSTimer
  init(fireDate date: NSDate, interval ti: NSTimeInterval, target t: AnyObject, selector s: Selector, userInfo ui: AnyObject?, repeats rep: Bool)
  func fire()
  @NSCopying var fireDate: NSDate
  var timeInterval: NSTimeInterval { get }
  var tolerance: NSTimeInterval
  func invalidate()
  var valid: Bool { get }
  var userInfo: AnyObject? { get }
  convenience init()
}
class NSURL : NSObject, NSSecureCoding, NSCopying, NSURLHandleClient {
  convenience init?(scheme: String, host: String?, path: String)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?)
  init(fileURLWithPath path: String, relativeToURL baseURL: NSURL?)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?) -> NSURL
  class func fileURLWithPath(path: String, relativeToURL baseURL: NSURL?) -> NSURL
  class func fileURLWithPath(path: String, isDirectory isDir: Bool) -> NSURL
  class func fileURLWithPath(path: String) -> NSURL
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?)
  class func fileURLWithFileSystemRepresentation(path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?) -> NSURL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeToURL baseURL: NSURL?)
  init(dataRepresentation data: NSData, relativeToURL baseURL: NSURL?)
  init(absoluteURLWithDataRepresentation data: NSData, relativeToURL baseURL: NSURL?)
  class func absoluteURLWithDataRepresentation(data: NSData, relativeToURL baseURL: NSURL?) -> NSURL
  @NSCopying var dataRepresentation: NSData { get }
  var absoluteString: String { get }
  var relativeString: String? { get }
  @NSCopying var baseURL: NSURL? { get }
  @NSCopying var absoluteURL: NSURL { get }
  var scheme: String { get }
  var resourceSpecifier: String { get }
  var host: String? { get }
  @NSCopying var port: NSNumber? { get }
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
  var fileURL: Bool { get }
  @NSCopying var standardizedURL: NSURL? { get }
  func checkResourceIsReachableAndReturnError(error: NSErrorPointer) -> Bool
  func isFileReferenceURL() -> Bool
  func fileReferenceURL() -> NSURL?
  @NSCopying var filePathURL: NSURL? { get }
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func resourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  func removeCachedResourceValueForKey(key: String)
  func removeAllCachedResourceValues()
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  func bookmarkDataWithOptions(options: NSURLBookmarkCreationOptions, includingResourceValuesForKeys keys: [String]?, relativeToURL relativeURL: NSURL?) throws -> NSData
  convenience init(byResolvingBookmarkData bookmarkData: NSData, options: NSURLBookmarkResolutionOptions, relativeToURL relativeURL: NSURL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  class func resourceValuesForKeys(keys: [String], fromBookmarkData bookmarkData: NSData) -> [String : AnyObject]?
  class func writeBookmarkData(bookmarkData: NSData, toURL bookmarkFileURL: NSURL, options: NSURLBookmarkFileCreationOptions) throws
  class func bookmarkDataWithContentsOfURL(bookmarkFileURL: NSURL) throws -> NSData
  convenience init(byResolvingAliasFileAtURL url: NSURL, options: NSURLBookmarkResolutionOptions) throws
  func startAccessingSecurityScopedResource() -> Bool
  func stopAccessingSecurityScopedResource()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSURL : _FileReferenceLiteralConvertible {
  convenience init(failableFileReferenceLiteral path: String)
  required convenience init(fileReferenceLiteral path: String)
}
extension NSURL : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
let NSURLFileScheme: String
let NSURLKeysOfUnsetValuesKey: String
let NSURLNameKey: String
let NSURLLocalizedNameKey: String
let NSURLIsRegularFileKey: String
let NSURLIsDirectoryKey: String
let NSURLIsSymbolicLinkKey: String
let NSURLIsVolumeKey: String
let NSURLIsPackageKey: String
let NSURLIsApplicationKey: String
let NSURLApplicationIsScriptableKey: String
let NSURLIsSystemImmutableKey: String
let NSURLIsUserImmutableKey: String
let NSURLIsHiddenKey: String
let NSURLHasHiddenExtensionKey: String
let NSURLCreationDateKey: String
let NSURLContentAccessDateKey: String
let NSURLContentModificationDateKey: String
let NSURLAttributeModificationDateKey: String
let NSURLLinkCountKey: String
let NSURLParentDirectoryURLKey: String
let NSURLVolumeURLKey: String
let NSURLTypeIdentifierKey: String
let NSURLLocalizedTypeDescriptionKey: String
let NSURLLabelNumberKey: String
let NSURLLabelColorKey: String
let NSURLLocalizedLabelKey: String
let NSURLEffectiveIconKey: String
let NSURLCustomIconKey: String
let NSURLFileResourceIdentifierKey: String
let NSURLVolumeIdentifierKey: String
let NSURLPreferredIOBlockSizeKey: String
let NSURLIsReadableKey: String
let NSURLIsWritableKey: String
let NSURLIsExecutableKey: String
let NSURLFileSecurityKey: String
let NSURLIsExcludedFromBackupKey: String
let NSURLTagNamesKey: String
let NSURLPathKey: String
let NSURLIsMountTriggerKey: String
let NSURLGenerationIdentifierKey: String
let NSURLDocumentIdentifierKey: String
let NSURLAddedToDirectoryDateKey: String
let NSURLQuarantinePropertiesKey: String
let NSURLFileResourceTypeKey: String
let NSURLFileResourceTypeNamedPipe: String
let NSURLFileResourceTypeCharacterSpecial: String
let NSURLFileResourceTypeDirectory: String
let NSURLFileResourceTypeBlockSpecial: String
let NSURLFileResourceTypeRegular: String
let NSURLFileResourceTypeSymbolicLink: String
let NSURLFileResourceTypeSocket: String
let NSURLFileResourceTypeUnknown: String
let NSURLThumbnailDictionaryKey: String
let NSURLThumbnailKey: String
let NSThumbnail1024x1024SizeKey: String
let NSURLFileSizeKey: String
let NSURLFileAllocatedSizeKey: String
let NSURLTotalFileSizeKey: String
let NSURLTotalFileAllocatedSizeKey: String
let NSURLIsAliasFileKey: String
let NSURLVolumeLocalizedFormatDescriptionKey: String
let NSURLVolumeTotalCapacityKey: String
let NSURLVolumeAvailableCapacityKey: String
let NSURLVolumeResourceCountKey: String
let NSURLVolumeSupportsPersistentIDsKey: String
let NSURLVolumeSupportsSymbolicLinksKey: String
let NSURLVolumeSupportsHardLinksKey: String
let NSURLVolumeSupportsJournalingKey: String
let NSURLVolumeIsJournalingKey: String
let NSURLVolumeSupportsSparseFilesKey: String
let NSURLVolumeSupportsZeroRunsKey: String
let NSURLVolumeSupportsCaseSensitiveNamesKey: String
let NSURLVolumeSupportsCasePreservedNamesKey: String
let NSURLVolumeSupportsRootDirectoryDatesKey: String
let NSURLVolumeSupportsVolumeSizesKey: String
let NSURLVolumeSupportsRenamingKey: String
let NSURLVolumeSupportsAdvisoryFileLockingKey: String
let NSURLVolumeSupportsExtendedSecurityKey: String
let NSURLVolumeIsBrowsableKey: String
let NSURLVolumeMaximumFileSizeKey: String
let NSURLVolumeIsEjectableKey: String
let NSURLVolumeIsRemovableKey: String
let NSURLVolumeIsInternalKey: String
let NSURLVolumeIsAutomountedKey: String
let NSURLVolumeIsLocalKey: String
let NSURLVolumeIsReadOnlyKey: String
let NSURLVolumeCreationDateKey: String
let NSURLVolumeURLForRemountingKey: String
let NSURLVolumeUUIDStringKey: String
let NSURLVolumeNameKey: String
let NSURLVolumeLocalizedNameKey: String
let NSURLIsUbiquitousItemKey: String
let NSURLUbiquitousItemHasUnresolvedConflictsKey: String
let NSURLUbiquitousItemIsDownloadingKey: String
let NSURLUbiquitousItemIsUploadedKey: String
let NSURLUbiquitousItemIsUploadingKey: String
let NSURLUbiquitousItemDownloadingStatusKey: String
let NSURLUbiquitousItemDownloadingErrorKey: String
let NSURLUbiquitousItemUploadingErrorKey: String
let NSURLUbiquitousItemDownloadRequestedKey: String
let NSURLUbiquitousItemContainerDisplayNameKey: String
let NSURLUbiquitousItemDownloadingStatusNotDownloaded: String
let NSURLUbiquitousItemDownloadingStatusDownloaded: String
let NSURLUbiquitousItemDownloadingStatusCurrent: String
struct NSURLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MinimalBookmark: NSURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: NSURLBookmarkCreationOptions { get }
  static var WithSecurityScope: NSURLBookmarkCreationOptions { get }
  static var SecurityScopeAllowOnlyReadAccess: NSURLBookmarkCreationOptions { get }
}
struct NSURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: NSURLBookmarkResolutionOptions { get }
  static var WithoutMounting: NSURLBookmarkResolutionOptions { get }
  static var WithSecurityScope: NSURLBookmarkResolutionOptions { get }
}
typealias NSURLBookmarkFileCreationOptions = Int
extension NSURL {
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func promisedItemResourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  func checkPromisedItemIsReachableAndReturnError(error: NSErrorPointer) -> Bool
}
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSURLComponents : NSObject, NSCopying {
  init()
  init?(URL url: NSURL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var URL: NSURL? { get }
  func URLRelativeToURL(baseURL: NSURL?) -> NSURL?
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  @NSCopying var port: NSNumber?
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
  var queryItems: [NSURLQueryItem]?
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSCharacterSet {
  class func URLUserAllowedCharacterSet() -> NSCharacterSet
  class func URLPasswordAllowedCharacterSet() -> NSCharacterSet
  class func URLHostAllowedCharacterSet() -> NSCharacterSet
  class func URLPathAllowedCharacterSet() -> NSCharacterSet
  class func URLQueryAllowedCharacterSet() -> NSCharacterSet
  class func URLFragmentAllowedCharacterSet() -> NSCharacterSet
}
extension NSString {
  func stringByAddingPercentEncodingWithAllowedCharacters(allowedCharacters: NSCharacterSet) -> String?
  var stringByRemovingPercentEncoding: String? { get }
  func stringByAddingPercentEscapesUsingEncoding(enc: UInt) -> String?
  func stringByReplacingPercentEscapesUsingEncoding(enc: UInt) -> String?
}
extension NSURL {
  class func fileURLWithPathComponents(components: [String]) -> NSURL?
  var pathComponents: [String]? { get }
  var lastPathComponent: String? { get }
  var pathExtension: String? { get }
  func URLByAppendingPathComponent(pathComponent: String) -> NSURL
  func URLByAppendingPathComponent(pathComponent: String, isDirectory: Bool) -> NSURL
  @NSCopying var URLByDeletingLastPathComponent: NSURL? { get }
  func URLByAppendingPathExtension(pathExtension: String) -> NSURL
  @NSCopying var URLByDeletingPathExtension: NSURL? { get }
  @NSCopying var URLByStandardizingPath: NSURL? { get }
  @NSCopying var URLByResolvingSymlinksInPath: NSURL? { get }
}
class NSFileSecurity : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSObject {
}
extension NSURL {
}
protocol NSURLAuthenticationChallengeSender : NSObjectProtocol {
  func useCredential(credential: NSURLCredential, forAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  func continueWithoutCredentialForAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)
  func cancelAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)
  optional func performDefaultHandlingForAuthenticationChallenge(challenge: NSURLAuthenticationChallenge)
  optional func rejectProtectionSpaceAndContinueWithChallenge(challenge: NSURLAuthenticationChallenge)
}
class NSURLAuthenticationChallenge : NSObject, NSSecureCoding {
  init(protectionSpace space: NSURLProtectionSpace, proposedCredential credential: NSURLCredential?, previousFailureCount: Int, failureResponse response: NSURLResponse?, error: NSError?, sender: NSURLAuthenticationChallengeSender)
  init(authenticationChallenge challenge: NSURLAuthenticationChallenge, sender: NSURLAuthenticationChallengeSender)
  @NSCopying var protectionSpace: NSURLProtectionSpace { get }
  @NSCopying var proposedCredential: NSURLCredential? { get }
  var previousFailureCount: Int { get }
  @NSCopying var failureResponse: NSURLResponse? { get }
  @NSCopying var error: NSError? { get }
  var sender: NSURLAuthenticationChallengeSender? { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NSURLCacheStoragePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Allowed
  case AllowedInMemoryOnly
  case NotAllowed
}
class NSCachedURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(response: NSURLResponse, data: NSData)
  init(response: NSURLResponse, data: NSData, userInfo: [NSObject : AnyObject]?, storagePolicy: NSURLCacheStoragePolicy)
  @NSCopying var response: NSURLResponse { get }
  @NSCopying var data: NSData { get }
  var userInfo: [NSObject : AnyObject]? { get }
  var storagePolicy: NSURLCacheStoragePolicy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSURLCache : NSObject {
  class func sharedURLCache() -> NSURLCache
  class func setSharedURLCache(cache: NSURLCache)
  init(memoryCapacity: Int, diskCapacity: Int, diskPath path: String?)
  func cachedResponseForRequest(request: NSURLRequest) -> NSCachedURLResponse?
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, forRequest request: NSURLRequest)
  func removeCachedResponseForRequest(request: NSURLRequest)
  func removeAllCachedResponses()
  func removeCachedResponsesSinceDate(date: NSDate)
  var memoryCapacity: Int
  var diskCapacity: Int
  var currentMemoryUsage: Int { get }
  var currentDiskUsage: Int { get }
  init()
}
extension NSURLCache {
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, forDataTask dataTask: NSURLSessionDataTask)
  func getCachedResponseForDataTask(dataTask: NSURLSessionDataTask, completionHandler: (NSCachedURLResponse?) -> Void)
  func removeCachedResponseForDataTask(dataTask: NSURLSessionDataTask)
}
class NSURLConnection : NSObject {
  init?(request: NSURLRequest, delegate: AnyObject?, startImmediately: Bool)
  init?(request: NSURLRequest, delegate: AnyObject?)
  @NSCopying var originalRequest: NSURLRequest { get }
  @NSCopying var currentRequest: NSURLRequest { get }
  func start()
  func cancel()
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func unscheduleFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func setDelegateQueue(queue: NSOperationQueue?)
  class func canHandleRequest(request: NSURLRequest) -> Bool
  init()
}
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(connection: NSURLConnection, didFailWithError error: NSError)
  optional func connectionShouldUseCredentialStorage(connection: NSURLConnection) -> Bool
  optional func connection(connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  optional func connection(connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  optional func connection(connection: NSURLConnection, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  optional func connection(connection: NSURLConnection, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
}
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, willSendRequest request: NSURLRequest, redirectResponse response: NSURLResponse?) -> NSURLRequest?
  optional func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse)
  optional func connection(connection: NSURLConnection, didReceiveData data: NSData)
  optional func connection(connection: NSURLConnection, needNewBodyStream request: NSURLRequest) -> NSInputStream?
  optional func connection(connection: NSURLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(connection: NSURLConnection, willCacheResponse cachedResponse: NSCachedURLResponse) -> NSCachedURLResponse?
  optional func connectionDidFinishLoading(connection: NSURLConnection)
}
protocol NSURLConnectionDownloadDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(connection: NSURLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(connection: NSURLConnection, destinationURL: NSURL)
}
extension NSURLConnection {
  class func sendSynchronousRequest(request: NSURLRequest, returningResponse response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>) throws -> NSData
}
extension NSURLConnection {
  class func sendAsynchronousRequest(request: NSURLRequest, queue: NSOperationQueue, completionHandler handler: (NSURLResponse?, NSData?, NSError?) -> Void)
}
enum NSURLCredentialPersistence : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ForSession
  case Permanent
  case Synchronizable
}
class NSURLCredential : NSObject, NSSecureCoding, NSCopying {
  var persistence: NSURLCredentialPersistence { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSURLCredential {
  init(user: String, password: String, persistence: NSURLCredentialPersistence)
  var user: String? { get }
  var password: String? { get }
  var hasPassword: Bool { get }
}
extension NSURLCredential {
  init(identity: SecIdentity, certificates certArray: [AnyObject]?, persistence: NSURLCredentialPersistence)
  var identity: SecIdentity? { get }
  var certificates: [AnyObject] { get }
}
extension NSURLCredential {
  init(trust: SecTrust)
   init(forTrust trust: SecTrust)
}
class NSURLCredentialStorage : NSObject {
  class func sharedCredentialStorage() -> NSURLCredentialStorage
  func credentialsForProtectionSpace(space: NSURLProtectionSpace) -> [String : NSURLCredential]?
  var allCredentials: [NSURLProtectionSpace : [String : NSURLCredential]] { get }
  func setCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  func removeCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  func removeCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace, options: [String : AnyObject]?)
  func defaultCredentialForProtectionSpace(space: NSURLProtectionSpace) -> NSURLCredential?
  func setDefaultCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  init()
}
extension NSURLCredentialStorage {
  func getCredentialsForProtectionSpace(protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: ([String : NSURLCredential]?) -> Void)
  func setCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
  func removeCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, options: [String : AnyObject]?, task: NSURLSessionTask)
  func getDefaultCredentialForProtectionSpace(space: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: (NSURLCredential?) -> Void)
  func setDefaultCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
}
let NSURLCredentialStorageChangedNotification: String
let NSURLCredentialStorageRemoveSynchronizableCredentials: String
class NSURLDownload : NSObject {
  class func canResumeDownloadDecodedWithEncodingMIMEType(MIMEType: String) -> Bool
  init(request: NSURLRequest, delegate: NSURLDownloadDelegate?)
  init(resumeData: NSData, delegate: NSURLDownloadDelegate?, path: String)
  func cancel()
  func setDestination(path: String, allowOverwrite: Bool)
  @NSCopying var request: NSURLRequest { get }
  @NSCopying var resumeData: NSData? { get }
  var deletesFileUponFailure: Bool
  init()
}
protocol NSURLDownloadDelegate : NSObjectProtocol {
  optional func downloadDidBegin(download: NSURLDownload)
  optional func download(download: NSURLDownload, willSendRequest request: NSURLRequest, redirectResponse: NSURLResponse?) -> NSURLRequest?
  optional func download(connection: NSURLDownload, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  optional func download(download: NSURLDownload, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  optional func download(download: NSURLDownload, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  optional func downloadShouldUseCredentialStorage(download: NSURLDownload) -> Bool
  optional func download(download: NSURLDownload, didReceiveResponse response: NSURLResponse)
  optional func download(download: NSURLDownload, willResumeWithResponse response: NSURLResponse, fromByte startingByte: Int64)
  optional func download(download: NSURLDownload, didReceiveDataOfLength length: Int)
  optional func download(download: NSURLDownload, shouldDecodeSourceDataOfMIMEType encodingType: String) -> Bool
  optional func download(download: NSURLDownload, decideDestinationWithSuggestedFilename filename: String)
  optional func download(download: NSURLDownload, didCreateDestination path: String)
  optional func downloadDidFinish(download: NSURLDownload)
  optional func download(download: NSURLDownload, didFailWithError error: NSError)
}
let NSURLErrorDomain: String
let NSURLErrorFailingURLErrorKey: String
let NSURLErrorFailingURLStringErrorKey: String
let NSURLErrorFailingURLPeerTrustErrorKey: String
let NSURLErrorBackgroundTaskCancelledReasonKey: String
var NSURLErrorCancelledReasonUserForceQuitApplication: Int { get }
var NSURLErrorCancelledReasonBackgroundUpdatesDisabled: Int { get }
var NSURLErrorCancelledReasonInsufficientSystemResources: Int { get }
var NSURLErrorUnknown: Int { get }
var NSURLErrorCancelled: Int { get }
var NSURLErrorBadURL: Int { get }
var NSURLErrorTimedOut: Int { get }
var NSURLErrorUnsupportedURL: Int { get }
var NSURLErrorCannotFindHost: Int { get }
var NSURLErrorCannotConnectToHost: Int { get }
var NSURLErrorNetworkConnectionLost: Int { get }
var NSURLErrorDNSLookupFailed: Int { get }
var NSURLErrorHTTPTooManyRedirects: Int { get }
var NSURLErrorResourceUnavailable: Int { get }
var NSURLErrorNotConnectedToInternet: Int { get }
var NSURLErrorRedirectToNonExistentLocation: Int { get }
var NSURLErrorBadServerResponse: Int { get }
var NSURLErrorUserCancelledAuthentication: Int { get }
var NSURLErrorUserAuthenticationRequired: Int { get }
var NSURLErrorZeroByteResource: Int { get }
var NSURLErrorCannotDecodeRawData: Int { get }
var NSURLErrorCannotDecodeContentData: Int { get }
var NSURLErrorCannotParseResponse: Int { get }
var NSURLErrorAppTransportSecurityRequiresSecureConnection: Int { get }
var NSURLErrorFileDoesNotExist: Int { get }
var NSURLErrorFileIsDirectory: Int { get }
var NSURLErrorNoPermissionsToReadFile: Int { get }
var NSURLErrorDataLengthExceedsMaximum: Int { get }
var NSURLErrorSecureConnectionFailed: Int { get }
var NSURLErrorServerCertificateHasBadDate: Int { get }
var NSURLErrorServerCertificateUntrusted: Int { get }
var NSURLErrorServerCertificateHasUnknownRoot: Int { get }
var NSURLErrorServerCertificateNotYetValid: Int { get }
var NSURLErrorClientCertificateRejected: Int { get }
var NSURLErrorClientCertificateRequired: Int { get }
var NSURLErrorCannotLoadFromNetwork: Int { get }
var NSURLErrorCannotCreateFile: Int { get }
var NSURLErrorCannotOpenFile: Int { get }
var NSURLErrorCannotCloseFile: Int { get }
var NSURLErrorCannotWriteToFile: Int { get }
var NSURLErrorCannotRemoveFile: Int { get }
var NSURLErrorCannotMoveFile: Int { get }
var NSURLErrorDownloadDecodingFailedMidStream: Int { get }
var NSURLErrorDownloadDecodingFailedToComplete: Int { get }
var NSURLErrorInternationalRoamingOff: Int { get }
var NSURLErrorCallIsActive: Int { get }
var NSURLErrorDataNotAllowed: Int { get }
var NSURLErrorRequestBodyStreamExhausted: Int { get }
var NSURLErrorBackgroundSessionRequiresSharedContainer: Int { get }
var NSURLErrorBackgroundSessionInUseByAnotherProcess: Int { get }
var NSURLErrorBackgroundSessionWasDisconnected: Int { get }
enum NSURLHandleStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotLoaded
  case LoadSucceeded
  case LoadInProgress
  case LoadFailed
}
protocol NSURLHandleClient {
}
class NSURLHandle : NSObject {
  init()
}
let NSURLProtectionSpaceHTTP: String
let NSURLProtectionSpaceHTTPS: String
let NSURLProtectionSpaceFTP: String
let NSURLProtectionSpaceHTTPProxy: String
let NSURLProtectionSpaceHTTPSProxy: String
let NSURLProtectionSpaceFTPProxy: String
let NSURLProtectionSpaceSOCKSProxy: String
let NSURLAuthenticationMethodDefault: String
let NSURLAuthenticationMethodHTTPBasic: String
let NSURLAuthenticationMethodHTTPDigest: String
let NSURLAuthenticationMethodHTMLForm: String
let NSURLAuthenticationMethodNTLM: String
let NSURLAuthenticationMethodNegotiate: String
let NSURLAuthenticationMethodClientCertificate: String
let NSURLAuthenticationMethodServerTrust: String
class NSURLProtectionSpace : NSObject, NSSecureCoding, NSCopying {
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
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSURLProtectionSpace {
  var distinguishedNames: [NSData]? { get }
}
extension NSURLProtectionSpace {
  var serverTrust: SecTrust? { get }
}
protocol NSURLProtocolClient : NSObjectProtocol {
  func URLProtocol(protocol: NSURLProtocol, wasRedirectedToRequest request: NSURLRequest, redirectResponse: NSURLResponse)
  func URLProtocol(protocol: NSURLProtocol, cachedResponseIsValid cachedResponse: NSCachedURLResponse)
  func URLProtocol(protocol: NSURLProtocol, didReceiveResponse response: NSURLResponse, cacheStoragePolicy policy: NSURLCacheStoragePolicy)
  func URLProtocol(protocol: NSURLProtocol, didLoadData data: NSData)
  func URLProtocolDidFinishLoading(protocol: NSURLProtocol)
  func URLProtocol(protocol: NSURLProtocol, didFailWithError error: NSError)
  func URLProtocol(protocol: NSURLProtocol, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  func URLProtocol(protocol: NSURLProtocol, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
}
class NSURLProtocol : NSObject {
  init(request: NSURLRequest, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)
  var client: NSURLProtocolClient? { get }
  @NSCopying var request: NSURLRequest { get }
  @NSCopying var cachedResponse: NSCachedURLResponse? { get }
  class func canInitWithRequest(request: NSURLRequest) -> Bool
  class func canonicalRequestForRequest(request: NSURLRequest) -> NSURLRequest
  class func requestIsCacheEquivalent(a: NSURLRequest, toRequest b: NSURLRequest) -> Bool
  func startLoading()
  func stopLoading()
  class func propertyForKey(key: String, inRequest request: NSURLRequest) -> AnyObject?
  class func setProperty(value: AnyObject, forKey key: String, inRequest request: NSMutableURLRequest)
  class func removePropertyForKey(key: String, inRequest request: NSMutableURLRequest)
  class func registerClass(protocolClass: AnyClass) -> Bool
  class func unregisterClass(protocolClass: AnyClass)
  convenience init()
}
extension NSURLProtocol {
  class func canInitWithTask(task: NSURLSessionTask) -> Bool
  convenience init(task: NSURLSessionTask, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)
  @NSCopying var task: NSURLSessionTask? { get }
}
enum NSURLRequestCachePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UseProtocolCachePolicy
  case ReloadIgnoringLocalCacheData
  case ReloadIgnoringLocalAndRemoteCacheData
  static var ReloadIgnoringCacheData: NSURLRequestCachePolicy { get }
  case ReturnCacheDataElseLoad
  case ReturnCacheDataDontLoad
  case ReloadRevalidatingCacheData
}
enum NSURLRequestNetworkServiceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NetworkServiceTypeDefault
  case NetworkServiceTypeVoIP
  case NetworkServiceTypeVideo
  case NetworkServiceTypeBackground
  case NetworkServiceTypeVoice
}
class NSURLRequest : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  class func supportsSecureCoding() -> Bool
  convenience init(URL: NSURL)
  init(URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)
  @NSCopying var URL: NSURL? { get }
  var cachePolicy: NSURLRequestCachePolicy { get }
  var timeoutInterval: NSTimeInterval { get }
  @NSCopying var mainDocumentURL: NSURL? { get }
  var networkServiceType: NSURLRequestNetworkServiceType { get }
  var allowsCellularAccess: Bool { get }
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
class NSMutableURLRequest : NSURLRequest {
  @NSCopying var URL: NSURL?
  var cachePolicy: NSURLRequestCachePolicy
  var timeoutInterval: NSTimeInterval
  @NSCopying var mainDocumentURL: NSURL?
  var networkServiceType: NSURLRequestNetworkServiceType
  var allowsCellularAccess: Bool
  convenience init(URL: NSURL)
  init(URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSURLRequest {
  var HTTPMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func valueForHTTPHeaderField(field: String) -> String?
  @NSCopying var HTTPBody: NSData? { get }
  var HTTPBodyStream: NSInputStream? { get }
  var HTTPShouldHandleCookies: Bool { get }
  var HTTPShouldUsePipelining: Bool { get }
}
extension NSMutableURLRequest {
  var HTTPMethod: String
  var allHTTPHeaderFields: [String : String]?
  func setValue(value: String?, forHTTPHeaderField field: String)
  func addValue(value: String, forHTTPHeaderField field: String)
  @NSCopying var HTTPBody: NSData?
  var HTTPBodyStream: NSInputStream?
  var HTTPShouldHandleCookies: Bool
  var HTTPShouldUsePipelining: Bool
}
class NSURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(URL: NSURL, MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  @NSCopying var URL: NSURL? { get }
  var MIMEType: String? { get }
  var expectedContentLength: Int64 { get }
  var textEncodingName: String? { get }
  var suggestedFilename: String? { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSHTTPURLResponse : NSURLResponse {
  init?(URL url: NSURL, statusCode: Int, HTTPVersion: String?, headerFields: [String : String]?)
  var statusCode: Int { get }
  var allHeaderFields: [NSObject : AnyObject] { get }
  class func localizedStringForStatusCode(statusCode: Int) -> String
  init(URL: NSURL, MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSUUID : NSObject, NSCopying, NSSecureCoding {
  init()
  convenience init?(UUIDString string: String)
  convenience init(UUIDBytes bytes: UnsafePointer<UInt8>)
  func getUUIDBytes(uuid: UnsafeMutablePointer<UInt8>)
  var UUIDString: String { get }
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class NSUbiquitousKeyValueStore : NSObject {
  class func defaultStore() -> NSUbiquitousKeyValueStore
  func objectForKey(aKey: String) -> AnyObject?
  func setObject(anObject: AnyObject?, forKey aKey: String)
  func removeObjectForKey(aKey: String)
  func stringForKey(aKey: String) -> String?
  func arrayForKey(aKey: String) -> [AnyObject]?
  func dictionaryForKey(aKey: String) -> [String : AnyObject]?
  func dataForKey(aKey: String) -> NSData?
  func longLongForKey(aKey: String) -> Int64
  func doubleForKey(aKey: String) -> Double
  func boolForKey(aKey: String) -> Bool
  func setString(aString: String?, forKey aKey: String)
  func setData(aData: NSData?, forKey aKey: String)
  func setArray(anArray: [AnyObject]?, forKey aKey: String)
  func setDictionary(aDictionary: [String : AnyObject]?, forKey aKey: String)
  func setLongLong(value: Int64, forKey aKey: String)
  func setDouble(value: Double, forKey aKey: String)
  func setBool(value: Bool, forKey aKey: String)
  var dictionaryRepresentation: [String : AnyObject] { get }
  func synchronize() -> Bool
  init()
}
let NSUbiquitousKeyValueStoreDidChangeExternallyNotification: String
let NSUbiquitousKeyValueStoreChangeReasonKey: String
let NSUbiquitousKeyValueStoreChangedKeysKey: String
var NSUbiquitousKeyValueStoreServerChange: Int { get }
var NSUbiquitousKeyValueStoreInitialSyncChange: Int { get }
var NSUbiquitousKeyValueStoreQuotaViolationChange: Int { get }
var NSUbiquitousKeyValueStoreAccountChange: Int { get }
let NSUndoCloseGroupingRunLoopOrdering: Int
class NSUndoManager : NSObject {
  func beginUndoGrouping()
  func endUndoGrouping()
  var groupingLevel: Int { get }
  func disableUndoRegistration()
  func enableUndoRegistration()
  var undoRegistrationEnabled: Bool { get }
  var groupsByEvent: Bool
  var levelsOfUndo: Int
  var runLoopModes: [String]
  func undo()
  func redo()
  func undoNestedGroup()
  var canUndo: Bool { get }
  var canRedo: Bool { get }
  var undoing: Bool { get }
  var redoing: Bool { get }
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
extension NSUndoManager {
  func registerUndoWithTarget<TargetType : AnyObject>(target: TargetType, handler: (TargetType) -> Void)
}
let NSUndoManagerGroupIsDiscardableKey: String
let NSUndoManagerCheckpointNotification: String
let NSUndoManagerWillUndoChangeNotification: String
let NSUndoManagerWillRedoChangeNotification: String
let NSUndoManagerDidUndoChangeNotification: String
let NSUndoManagerDidRedoChangeNotification: String
let NSUndoManagerDidOpenUndoGroupNotification: String
let NSUndoManagerWillCloseUndoGroupNotification: String
let NSUndoManagerDidCloseUndoGroupNotification: String
class NSUserActivity : NSObject {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [NSObject : AnyObject]?
  func addUserInfoEntriesFromDictionary(otherDictionary: [NSObject : AnyObject])
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: NSURL?
  @NSCopying var expirationDate: NSDate
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  func becomeCurrent()
  func resignCurrent()
  func invalidate()
  func getContinuationStreamsWithCompletionHandler(completionHandler: (NSInputStream?, NSOutputStream?, NSError?) -> Void)
  var eligibleForHandoff: Bool
  var eligibleForSearch: Bool
  var eligibleForPublicIndexing: Bool
}
let NSUserActivityTypeBrowsingWeb: String
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(userActivity: NSUserActivity)
  optional func userActivityWasContinued(userActivity: NSUserActivity)
  optional func userActivity(userActivity: NSUserActivity?, didReceiveInputStream inputStream: NSInputStream, outputStream: NSOutputStream)
}
let NSGlobalDomain: String
let NSArgumentDomain: String
let NSRegistrationDomain: String
class NSUserDefaults : NSObject {
  class func standardUserDefaults() -> NSUserDefaults
  class func resetStandardUserDefaults()
  convenience init()
  init?(suiteName suitename: String?)
  func objectForKey(defaultName: String) -> AnyObject?
  func setObject(value: AnyObject?, forKey defaultName: String)
  func removeObjectForKey(defaultName: String)
  func stringForKey(defaultName: String) -> String?
  func arrayForKey(defaultName: String) -> [AnyObject]?
  func dictionaryForKey(defaultName: String) -> [String : AnyObject]?
  func dataForKey(defaultName: String) -> NSData?
  func stringArrayForKey(defaultName: String) -> [String]?
  func integerForKey(defaultName: String) -> Int
  func floatForKey(defaultName: String) -> Float
  func doubleForKey(defaultName: String) -> Double
  func boolForKey(defaultName: String) -> Bool
  func URLForKey(defaultName: String) -> NSURL?
  func setInteger(value: Int, forKey defaultName: String)
  func setFloat(value: Float, forKey defaultName: String)
  func setDouble(value: Double, forKey defaultName: String)
  func setBool(value: Bool, forKey defaultName: String)
  func setURL(url: NSURL?, forKey defaultName: String)
  func registerDefaults(registrationDictionary: [String : AnyObject])
  func addSuiteNamed(suiteName: String)
  func removeSuiteNamed(suiteName: String)
  func dictionaryRepresentation() -> [String : AnyObject]
  var volatileDomainNames: [String] { get }
  func volatileDomainForName(domainName: String) -> [String : AnyObject]
  func setVolatileDomain(domain: [String : AnyObject], forName domainName: String)
  func removeVolatileDomainForName(domainName: String)
  func persistentDomainForName(domainName: String) -> [String : AnyObject]?
  func setPersistentDomain(domain: [String : AnyObject], forName domainName: String)
  func removePersistentDomainForName(domainName: String)
  func synchronize() -> Bool
  func objectIsForcedForKey(key: String) -> Bool
  func objectIsForcedForKey(key: String, inDomain domain: String) -> Bool
}
let NSUserDefaultsDidChangeNotification: String
enum NSUserNotificationActivationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ContentsClicked
  case ActionButtonClicked
  case Replied
  case AdditionalActionClicked
}
class NSUserNotification : NSObject, NSCopying {
  init()
  var title: String?
  var subtitle: String?
  var informativeText: String?
  var actionButtonTitle: String
  var userInfo: [String : AnyObject]?
  @NSCopying var deliveryDate: NSDate?
  @NSCopying var deliveryTimeZone: NSTimeZone?
  @NSCopying var deliveryRepeatInterval: NSDateComponents?
  @NSCopying var actualDeliveryDate: NSDate? { get }
  var presented: Bool { get }
  var remote: Bool { get }
  var soundName: String?
  var hasActionButton: Bool
  var activationType: NSUserNotificationActivationType { get }
  var otherButtonTitle: String
  var identifier: String?
  var hasReplyButton: Bool
  var responsePlaceholder: String?
  @NSCopying var response: NSAttributedString? { get }
  var additionalActions: [NSUserNotificationAction]?
  @NSCopying var additionalActivationAction: NSUserNotificationAction? { get }
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSUserNotificationAction : NSObject, NSCopying {
  convenience init(identifier: String?, title: String?)
  var identifier: String? { get }
  var title: String? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
let NSUserNotificationDefaultSoundName: String
class NSUserNotificationCenter : NSObject {
  class func defaultUserNotificationCenter() -> NSUserNotificationCenter
  unowned(unsafe) var delegate: @sil_unmanaged NSUserNotificationCenterDelegate?
  var scheduledNotifications: [NSUserNotification]
  func scheduleNotification(notification: NSUserNotification)
  func removeScheduledNotification(notification: NSUserNotification)
  var deliveredNotifications: [NSUserNotification] { get }
  func deliverNotification(notification: NSUserNotification)
  func removeDeliveredNotification(notification: NSUserNotification)
  func removeAllDeliveredNotifications()
  init()
}
protocol NSUserNotificationCenterDelegate : NSObjectProtocol {
  optional func userNotificationCenter(center: NSUserNotificationCenter, didDeliverNotification notification: NSUserNotification)
  optional func userNotificationCenter(center: NSUserNotificationCenter, didActivateNotification notification: NSUserNotification)
  optional func userNotificationCenter(center: NSUserNotificationCenter, shouldPresentNotification notification: NSUserNotification) -> Bool
}
class NSUserScriptTask : NSObject {
  init(URL url: NSURL) throws
  @NSCopying var scriptURL: NSURL { get }
  func executeWithCompletionHandler(handler: NSUserScriptTaskCompletionHandler?)
  convenience init()
}
typealias NSUserScriptTaskCompletionHandler = (NSError?) -> Void
class NSUserUnixTask : NSUserScriptTask {
  var standardInput: NSFileHandle?
  var standardOutput: NSFileHandle?
  var standardError: NSFileHandle?
  func executeWithArguments(arguments: [String]?, completionHandler handler: NSUserUnixTaskCompletionHandler?)
  init(URL url: NSURL) throws
  convenience init()
}
typealias NSUserUnixTaskCompletionHandler = (NSError?) -> Void
class NSUserAppleScriptTask : NSUserScriptTask {
  func executeWithAppleEvent(event: NSAppleEventDescriptor?, completionHandler handler: NSUserAppleScriptTaskCompletionHandler?)
  init(URL url: NSURL) throws
  convenience init()
}
typealias NSUserAppleScriptTaskCompletionHandler = (NSAppleEventDescriptor?, NSError?) -> Void
class NSUserAutomatorTask : NSUserScriptTask {
  var variables: [String : AnyObject]?
  func executeWithInput(input: NSSecureCoding?, completionHandler handler: NSUserAutomatorTaskCompletionHandler?)
  init(URL url: NSURL) throws
  convenience init()
}
typealias NSUserAutomatorTaskCompletionHandler = (AnyObject?, NSError?) -> Void
class NSValue : NSObject, NSCopying, NSSecureCoding {
  func getValue(value: UnsafeMutablePointer<Void>)
  var objCType: UnsafePointer<Int8> { get }
  init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSValue {
   init(_ value: UnsafePointer<Void>, withObjCType type: UnsafePointer<Int8>)
}
extension NSValue {
   init(nonretainedObject anObject: AnyObject?)
  var nonretainedObjectValue: AnyObject? { get }
   init(pointer: UnsafePointer<Void>)
  var pointerValue: UnsafeMutablePointer<Void> { get }
  func isEqualToValue(value: NSValue) -> Bool
}
class NSNumber : NSValue {
  init?(coder aDecoder: NSCoder)
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
  func compare(otherNumber: NSNumber) -> NSComparisonResult
  func isEqualToNumber(number: NSNumber) -> Bool
  func descriptionWithLocale(locale: AnyObject?) -> String
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}
extension NSNumber : FloatLiteralConvertible, IntegerLiteralConvertible, BooleanLiteralConvertible {
  /// Create an instance initialized to `value`.
  required convenience init(integerLiteral value: Int)
  /// Create an instance initialized to `value`.
  required convenience init(floatLiteral value: Double)
  /// Create an instance initialized to `value`.
  required convenience init(booleanLiteral value: Bool)
  typealias FloatLiteralType = Double
  typealias IntegerLiteralType = Int
  typealias BooleanLiteralType = Bool
}
extension NSNumber {
}
let NSNegateBooleanTransformerName: String
let NSIsNilTransformerName: String
let NSIsNotNilTransformerName: String
let NSUnarchiveFromDataTransformerName: String
let NSKeyedUnarchiveFromDataTransformerName: String
class NSValueTransformer : NSObject {
  class func setValueTransformer(transformer: NSValueTransformer?, forName name: String)
   init?(forName name: String)
  class func valueTransformerNames() -> [String]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(value: AnyObject?) -> AnyObject?
  func reverseTransformedValue(value: AnyObject?) -> AnyObject?
  init()
}
class NSXMLDTD : NSXMLNode {
  init()
  convenience init(contentsOfURL url: NSURL, options mask: Int) throws
  init(data: NSData, options mask: Int) throws
  var publicID: String?
  var systemID: String?
  func insertChild(child: NSXMLNode, atIndex index: Int)
  func insertChildren(children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(index: Int)
  func setChildren(children: [NSXMLNode]?)
  func addChild(child: NSXMLNode)
  func replaceChildAtIndex(index: Int, withNode node: NSXMLNode)
  func entityDeclarationForName(name: String) -> NSXMLDTDNode?
  func notationDeclarationForName(name: String) -> NSXMLDTDNode?
  func elementDeclarationForName(name: String) -> NSXMLDTDNode?
  func attributeDeclarationForName(name: String, elementName: String) -> NSXMLDTDNode?
  class func predefinedEntityDeclarationForName(name: String) -> NSXMLDTDNode?
  convenience init(kind: NSXMLNodeKind)
}
enum NSXMLDTDNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NSXMLEntityGeneralKind
  case NSXMLEntityParsedKind
  case NSXMLEntityUnparsedKind
  case NSXMLEntityParameterKind
  case NSXMLEntityPredefined
  case NSXMLAttributeCDATAKind
  case NSXMLAttributeIDKind
  case NSXMLAttributeIDRefKind
  case NSXMLAttributeIDRefsKind
  case NSXMLAttributeEntityKind
  case NSXMLAttributeEntitiesKind
  case NSXMLAttributeNMTokenKind
  case NSXMLAttributeNMTokensKind
  case NSXMLAttributeEnumerationKind
  case NSXMLAttributeNotationKind
  case NSXMLElementDeclarationUndefinedKind
  case NSXMLElementDeclarationEmptyKind
  case NSXMLElementDeclarationAnyKind
  case NSXMLElementDeclarationMixedKind
  case NSXMLElementDeclarationElementKind
}
class NSXMLDTDNode : NSXMLNode {
  init?(XMLString string: String)
  init(kind: NSXMLNodeKind, options: Int)
  init()
  var DTDKind: NSXMLDTDNodeKind
  var external: Bool { get }
  var publicID: String?
  var systemID: String?
  var notationName: String?
  convenience init(kind: NSXMLNodeKind)
}
enum NSXMLDocumentContentKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case XMLKind
  case XHTMLKind
  case HTMLKind
  case TextKind
}
class NSXMLDocument : NSXMLNode {
  init()
  convenience init(XMLString string: String, options mask: Int) throws
  convenience init(contentsOfURL url: NSURL, options mask: Int) throws
  init(data: NSData, options mask: Int) throws
  init(rootElement element: NSXMLElement?)
  class func replacementClassForClass(cls: AnyClass) -> AnyClass
  var characterEncoding: String?
  var version: String?
  var standalone: Bool
  var documentContentKind: NSXMLDocumentContentKind
  var MIMEType: String?
  @NSCopying var DTD: NSXMLDTD?
  func setRootElement(root: NSXMLElement)
  func rootElement() -> NSXMLElement?
  func insertChild(child: NSXMLNode, atIndex index: Int)
  func insertChildren(children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(index: Int)
  func setChildren(children: [NSXMLNode]?)
  func addChild(child: NSXMLNode)
  func replaceChildAtIndex(index: Int, withNode node: NSXMLNode)
  @NSCopying var XMLData: NSData { get }
  func XMLDataWithOptions(options: Int) -> NSData
  func objectByApplyingXSLT(xslt: NSData, arguments: [String : String]?) throws -> AnyObject
  func objectByApplyingXSLTString(xslt: String, arguments: [String : String]?) throws -> AnyObject
  func objectByApplyingXSLTAtURL(xsltURL: NSURL, arguments argument: [String : String]?) throws -> AnyObject
  func validate() throws
  convenience init(kind: NSXMLNodeKind)
  convenience init(kind: NSXMLNodeKind, options: Int)
}
class NSXMLElement : NSXMLNode {
  convenience init(name: String)
  init(name: String, URI: String?)
  convenience init(name: String, stringValue string: String?)
  init(XMLString string: String) throws
  convenience init(kind: NSXMLNodeKind, options: Int)
  func elementsForName(name: String) -> [NSXMLElement]
  func elementsForLocalName(localName: String, URI: String?) -> [NSXMLElement]
  func addAttribute(attribute: NSXMLNode)
  func removeAttributeForName(name: String)
  var attributes: [NSXMLNode]?
  func setAttributesWithDictionary(attributes: [String : String])
  func attributeForName(name: String) -> NSXMLNode?
  func attributeForLocalName(localName: String, URI: String?) -> NSXMLNode?
  func addNamespace(aNamespace: NSXMLNode)
  func removeNamespaceForPrefix(name: String)
  var namespaces: [NSXMLNode]?
  func namespaceForPrefix(name: String) -> NSXMLNode?
  func resolveNamespaceForName(name: String) -> NSXMLNode?
  func resolvePrefixForNamespaceURI(namespaceURI: String) -> String?
  func insertChild(child: NSXMLNode, atIndex index: Int)
  func insertChildren(children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(index: Int)
  func setChildren(children: [NSXMLNode]?)
  func addChild(child: NSXMLNode)
  func replaceChildAtIndex(index: Int, withNode node: NSXMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(preserve: Bool)
  convenience init()
  convenience init(kind: NSXMLNodeKind)
}
extension NSXMLElement {
  func setAttributesAsDictionary(attributes: [NSObject : AnyObject])
}
enum NSXMLNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case InvalidKind
  case DocumentKind
  case ElementKind
  case AttributeKind
  case NamespaceKind
  case ProcessingInstructionKind
  case CommentKind
  case TextKind
  case DTDKind
  case EntityDeclarationKind
  case AttributeDeclarationKind
  case ElementDeclarationKind
  case NotationDeclarationKind
}
class NSXMLNode : NSObject, NSCopying {
  init()
  convenience init(kind: NSXMLNodeKind)
  init(kind: NSXMLNodeKind, options: Int)
  class func document() -> AnyObject
  class func documentWithRootElement(element: NSXMLElement) -> AnyObject
  class func elementWithName(name: String) -> AnyObject
  class func elementWithName(name: String, URI: String) -> AnyObject
  class func elementWithName(name: String, stringValue string: String) -> AnyObject
  class func elementWithName(name: String, children: [NSXMLNode]?, attributes: [NSXMLNode]?) -> AnyObject
  class func attributeWithName(name: String, stringValue: String) -> AnyObject
  class func attributeWithName(name: String, URI: String, stringValue: String) -> AnyObject
  class func namespaceWithName(name: String, stringValue: String) -> AnyObject
  class func processingInstructionWithName(name: String, stringValue: String) -> AnyObject
  class func commentWithStringValue(stringValue: String) -> AnyObject
  class func textWithStringValue(stringValue: String) -> AnyObject
  class func DTDNodeWithXMLString(string: String) -> AnyObject?
  var kind: NSXMLNodeKind { get }
  var name: String?
  var objectValue: AnyObject?
  var stringValue: String?
  func setStringValue(string: String, resolvingEntities resolve: Bool)
  var index: Int { get }
  var level: Int { get }
  var rootDocument: NSXMLDocument? { get }
  @NSCopying var parent: NSXMLNode? { get }
  var childCount: Int { get }
  var children: [NSXMLNode]? { get }
  func childAtIndex(index: Int) -> NSXMLNode?
  @NSCopying var previousSibling: NSXMLNode? { get }
  @NSCopying var nextSibling: NSXMLNode? { get }
  @NSCopying var previousNode: NSXMLNode? { get }
  @NSCopying var nextNode: NSXMLNode? { get }
  func detach()
  var XPath: String? { get }
  var localName: String? { get }
  var prefix: String? { get }
  var URI: String?
  class func localNameForName(name: String) -> String
  class func prefixForName(name: String) -> String?
  class func predefinedNamespaceForPrefix(name: String) -> NSXMLNode?
  var description: String { get }
  var XMLString: String { get }
  func XMLStringWithOptions(options: Int) -> String
  func canonicalXMLStringPreservingComments(comments: Bool) -> String
  func nodesForXPath(xpath: String) throws -> [NSXMLNode]
  func objectsForXQuery(xquery: String, constants: [String : AnyObject]?) throws -> [AnyObject]
  func objectsForXQuery(xquery: String) throws -> [AnyObject]
  func copyWithZone(zone: NSZone) -> AnyObject
}
var NSXMLNodeOptionsNone: Int { get }
var NSXMLNodeIsCDATA: Int { get }
var NSXMLNodeExpandEmptyElement: Int { get }
var NSXMLNodeCompactEmptyElement: Int { get }
var NSXMLNodeUseSingleQuotes: Int { get }
var NSXMLNodeUseDoubleQuotes: Int { get }
var NSXMLNodeNeverEscapeContents: Int { get }
var NSXMLDocumentTidyHTML: Int { get }
var NSXMLDocumentTidyXML: Int { get }
var NSXMLDocumentValidate: Int { get }
var NSXMLNodeLoadExternalEntitiesAlways: Int { get }
var NSXMLNodeLoadExternalEntitiesSameOriginOnly: Int { get }
var NSXMLNodeLoadExternalEntitiesNever: Int { get }
var NSXMLDocumentXInclude: Int { get }
var NSXMLNodePrettyPrint: Int { get }
var NSXMLDocumentIncludeContentTypeDeclaration: Int { get }
var NSXMLNodePreserveNamespaceOrder: Int { get }
var NSXMLNodePreserveAttributeOrder: Int { get }
var NSXMLNodePreserveEntities: Int { get }
var NSXMLNodePreservePrefixes: Int { get }
var NSXMLNodePreserveCDATA: Int { get }
var NSXMLNodePreserveWhitespace: Int { get }
var NSXMLNodePreserveDTD: Int { get }
var NSXMLNodePreserveCharacterReferences: Int { get }
var NSXMLNodePromoteSignificantWhitespace: Int { get }
var NSXMLNodePreserveEmptyElements: Int { get }
var NSXMLNodePreserveQuotes: Int { get }
var NSXMLNodePreserveAll: Int { get }
enum NSXMLParserExternalEntityResolvingPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ResolveExternalEntitiesNever
  case ResolveExternalEntitiesNoNetwork
  case ResolveExternalEntitiesSameOriginOnly
  case ResolveExternalEntitiesAlways
}
class NSXMLParser : NSObject {
  convenience init?(contentsOfURL url: NSURL)
  init(data: NSData)
  convenience init(stream: NSInputStream)
  unowned(unsafe) var delegate: @sil_unmanaged NSXMLParserDelegate?
  var shouldProcessNamespaces: Bool
  var shouldReportNamespacePrefixes: Bool
  var externalEntityResolvingPolicy: NSXMLParserExternalEntityResolvingPolicy
  var allowedExternalEntityURLs: Set<NSURL>?
  func parse() -> Bool
  func abortParsing()
  @NSCopying var parserError: NSError? { get }
  var shouldResolveExternalEntities: Bool
  convenience init()
}
extension NSXMLParser {
  var publicID: String? { get }
  var systemID: String? { get }
  var lineNumber: Int { get }
  var columnNumber: Int { get }
}
protocol NSXMLParserDelegate : NSObjectProtocol {
  optional func parserDidStartDocument(parser: NSXMLParser)
  optional func parserDidEndDocument(parser: NSXMLParser)
  optional func parser(parser: NSXMLParser, foundNotationDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: NSXMLParser, foundUnparsedEntityDeclarationWithName name: String, publicID: String?, systemID: String?, notationName: String?)
  optional func parser(parser: NSXMLParser, foundAttributeDeclarationWithName attributeName: String, forElement elementName: String, type: String?, defaultValue: String?)
  optional func parser(parser: NSXMLParser, foundElementDeclarationWithName elementName: String, model: String)
  optional func parser(parser: NSXMLParser, foundInternalEntityDeclarationWithName name: String, value: String?)
  optional func parser(parser: NSXMLParser, foundExternalEntityDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String])
  optional func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?)
  optional func parser(parser: NSXMLParser, didStartMappingPrefix prefix: String, toURI namespaceURI: String)
  optional func parser(parser: NSXMLParser, didEndMappingPrefix prefix: String)
  optional func parser(parser: NSXMLParser, foundCharacters string: String)
  optional func parser(parser: NSXMLParser, foundIgnorableWhitespace whitespaceString: String)
  optional func parser(parser: NSXMLParser, foundProcessingInstructionWithTarget target: String, data: String?)
  optional func parser(parser: NSXMLParser, foundComment comment: String)
  optional func parser(parser: NSXMLParser, foundCDATA CDATABlock: NSData)
  optional func parser(parser: NSXMLParser, resolveExternalEntityName name: String, systemID: String?) -> NSData?
  optional func parser(parser: NSXMLParser, parseErrorOccurred parseError: NSError)
  optional func parser(parser: NSXMLParser, validationErrorOccurred validationError: NSError)
}
let NSXMLParserErrorDomain: String
enum NSXMLParserError : Int {
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
protocol NSXPCProxyCreating {
  func remoteObjectProxy() -> AnyObject
  func remoteObjectProxyWithErrorHandler(handler: (NSError) -> Void) -> AnyObject
}
struct NSXPCConnectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Privileged: NSXPCConnectionOptions { get }
}
class NSXPCConnection : NSObject, NSXPCProxyCreating {
  init(serviceName: String)
  var serviceName: String? { get }
  init(machServiceName name: String, options: NSXPCConnectionOptions)
  init(listenerEndpoint endpoint: NSXPCListenerEndpoint)
  var endpoint: NSXPCListenerEndpoint { get }
  var exportedInterface: NSXPCInterface?
  var exportedObject: AnyObject?
  var remoteObjectInterface: NSXPCInterface?
  var remoteObjectProxy: AnyObject { get }
  func remoteObjectProxyWithErrorHandler(handler: (NSError) -> Void) -> AnyObject
  var interruptionHandler: (() -> Void)?
  var invalidationHandler: (() -> Void)?
  func resume()
  func suspend()
  func invalidate()
  var auditSessionIdentifier: au_asid_t { get }
  var processIdentifier: pid_t { get }
  var effectiveUserIdentifier: uid_t { get }
  var effectiveGroupIdentifier: gid_t { get }
  init()
}
class NSXPCListener : NSObject {
  class func serviceListener() -> NSXPCListener
  class func anonymousListener() -> NSXPCListener
  init(machServiceName name: String)
  unowned(unsafe) var delegate: @sil_unmanaged NSXPCListenerDelegate?
  var endpoint: NSXPCListenerEndpoint { get }
  func resume()
  func suspend()
  func invalidate()
  convenience init()
}
protocol NSXPCListenerDelegate : NSObjectProtocol {
  optional func listener(listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool
}
class NSXPCInterface : NSObject {
   init(withProtocol protocol: Protocol)
  unowned(unsafe) var `protocol`: @sil_unmanaged Protocol
  func setClasses(classes: Set<NSObject>, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func classesForSelector(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> Set<NSObject>
  func setInterface(ifc: NSXPCInterface, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func interfaceForSelector(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> NSXPCInterface?
  init()
}
class NSXPCListenerEndpoint : NSObject, NSSecureCoding {
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
var NSScannedOption: Int { get }
var NSCollectorDisabledOption: Int { get }
func NSPageSize() -> Int
func NSLogPageSize() -> Int
func NSRoundUpToMultipleOfPageSize(bytes: Int) -> Int
func NSRoundDownToMultipleOfPageSize(bytes: Int) -> Int
func NSAllocateMemoryPages(bytes: Int) -> UnsafeMutablePointer<Void>
func NSDeallocateMemoryPages(ptr: UnsafeMutablePointer<Void>, _ bytes: Int)
func NSCopyMemoryPages(source: UnsafePointer<Void>, _ dest: UnsafeMutablePointer<Void>, _ bytes: Int)
