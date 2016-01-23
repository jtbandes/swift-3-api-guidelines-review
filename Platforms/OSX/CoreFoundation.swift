
var __COREFOUNDATION__: Int32 { get }
@noreturn func __assert_rtn(_: UnsafePointer<Int8>, _: UnsafePointer<Int8>, _: Int32, _: UnsafePointer<Int8>)
typealias CFArrayRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFArrayReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFArrayCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFArrayEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
struct CFArrayCallBacks {
  var version: CFIndex
  var retain: CFArrayRetainCallBack!
  var release: CFArrayReleaseCallBack!
  var copyDescription: CFArrayCopyDescriptionCallBack!
  var equal: CFArrayEqualCallBack!
  init()
  init(version: CFIndex, retain: CFArrayRetainCallBack!, release: CFArrayReleaseCallBack!, copyDescription: CFArrayCopyDescriptionCallBack!, equal: CFArrayEqualCallBack!)
}
let kCFTypeArrayCallBacks: CFArrayCallBacks
typealias CFArrayApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFArray {
}
typealias CFArrayRef = CFArray
class CFMutableArray {
}
typealias CFMutableArrayRef = CFMutableArray
func CFArrayGetTypeID() -> CFTypeID
func CFArrayCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFArrayCallBacks>) -> CFArray!
func CFArrayCreateCopy(allocator: CFAllocator!, _ theArray: CFArray!) -> CFArray!
func CFArrayCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFArrayCallBacks>) -> CFMutableArray!
func CFArrayCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theArray: CFArray!) -> CFMutableArray!
func CFArrayGetCount(theArray: CFArray!) -> CFIndex
func CFArrayGetCountOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex
func CFArrayContainsValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> Bool
func CFArrayGetValueAtIndex(theArray: CFArray!, _ idx: CFIndex) -> UnsafePointer<Void>
func CFArrayGetValues(theArray: CFArray!, _ range: CFRange, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFArrayApplyFunction(theArray: CFArray!, _ range: CFRange, _ applier: CFArrayApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFArrayGetFirstIndexOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex
func CFArrayGetLastIndexOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex
func CFArrayBSearchValues(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>) -> CFIndex
func CFArrayAppendValue(theArray: CFMutableArray!, _ value: UnsafePointer<Void>)
func CFArrayInsertValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex, _ value: UnsafePointer<Void>)
func CFArraySetValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex, _ value: UnsafePointer<Void>)
func CFArrayRemoveValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex)
func CFArrayRemoveAllValues(theArray: CFMutableArray!)
func CFArrayReplaceValues(theArray: CFMutableArray!, _ range: CFRange, _ newValues: UnsafeMutablePointer<UnsafePointer<Void>>, _ newCount: CFIndex)
func CFArrayExchangeValuesAtIndices(theArray: CFMutableArray!, _ idx1: CFIndex, _ idx2: CFIndex)
func CFArraySortValues(theArray: CFMutableArray!, _ range: CFRange, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>)
func CFArrayAppendArray(theArray: CFMutableArray!, _ otherArray: CFArray!, _ otherRange: CFRange)
class CFAttributedString {
}
typealias CFAttributedStringRef = CFAttributedString
typealias CFMutableAttributedStringRef = CFMutableAttributedString
class CFMutableAttributedString {
}
func CFAttributedStringGetTypeID() -> CFTypeID
func CFAttributedStringCreate(alloc: CFAllocator!, _ str: CFString!, _ attributes: CFDictionary!) -> CFAttributedString!
func CFAttributedStringCreateWithSubstring(alloc: CFAllocator!, _ aStr: CFAttributedString!, _ range: CFRange) -> CFAttributedString!
func CFAttributedStringCreateCopy(alloc: CFAllocator!, _ aStr: CFAttributedString!) -> CFAttributedString!
func CFAttributedStringGetString(aStr: CFAttributedString!) -> CFString!
func CFAttributedStringGetLength(aStr: CFAttributedString!) -> CFIndex
func CFAttributedStringGetAttributes(aStr: CFAttributedString!, _ loc: CFIndex, _ effectiveRange: UnsafeMutablePointer<CFRange>) -> CFDictionary!
func CFAttributedStringGetAttribute(aStr: CFAttributedString!, _ loc: CFIndex, _ attrName: CFString!, _ effectiveRange: UnsafeMutablePointer<CFRange>) -> AnyObject!
func CFAttributedStringGetAttributesAndLongestEffectiveRange(aStr: CFAttributedString!, _ loc: CFIndex, _ inRange: CFRange, _ longestEffectiveRange: UnsafeMutablePointer<CFRange>) -> CFDictionary!
func CFAttributedStringGetAttributeAndLongestEffectiveRange(aStr: CFAttributedString!, _ loc: CFIndex, _ attrName: CFString!, _ inRange: CFRange, _ longestEffectiveRange: UnsafeMutablePointer<CFRange>) -> AnyObject!
func CFAttributedStringCreateMutableCopy(alloc: CFAllocator!, _ maxLength: CFIndex, _ aStr: CFAttributedString!) -> CFMutableAttributedString!
func CFAttributedStringCreateMutable(alloc: CFAllocator!, _ maxLength: CFIndex) -> CFMutableAttributedString!
func CFAttributedStringReplaceString(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFString!)
func CFAttributedStringGetMutableString(aStr: CFMutableAttributedString!) -> CFMutableString!
func CFAttributedStringSetAttributes(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFDictionary!, _ clearOtherAttributes: Bool)
func CFAttributedStringSetAttribute(aStr: CFMutableAttributedString!, _ range: CFRange, _ attrName: CFString!, _ value: AnyObject!)
func CFAttributedStringRemoveAttribute(aStr: CFMutableAttributedString!, _ range: CFRange, _ attrName: CFString!)
func CFAttributedStringReplaceAttributedString(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFAttributedString!)
func CFAttributedStringBeginEditing(aStr: CFMutableAttributedString!)
func CFAttributedStringEndEditing(aStr: CFMutableAttributedString!)
typealias CFBagRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFBagReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFBagCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFBagEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
typealias CFBagHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode
struct CFBagCallBacks {
  var version: CFIndex
  var retain: CFBagRetainCallBack!
  var release: CFBagReleaseCallBack!
  var copyDescription: CFBagCopyDescriptionCallBack!
  var equal: CFBagEqualCallBack!
  var hash: CFBagHashCallBack!
  init()
  init(version: CFIndex, retain: CFBagRetainCallBack!, release: CFBagReleaseCallBack!, copyDescription: CFBagCopyDescriptionCallBack!, equal: CFBagEqualCallBack!, hash: CFBagHashCallBack!)
}
let kCFTypeBagCallBacks: CFBagCallBacks
let kCFCopyStringBagCallBacks: CFBagCallBacks
typealias CFBagApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFBag {
}
typealias CFBagRef = CFBag
class CFMutableBag {
}
typealias CFMutableBagRef = CFMutableBag
func CFBagGetTypeID() -> CFTypeID
func CFBagCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFBagCallBacks>) -> CFBag!
func CFBagCreateCopy(allocator: CFAllocator!, _ theBag: CFBag!) -> CFBag!
func CFBagCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFBagCallBacks>) -> CFMutableBag!
func CFBagCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theBag: CFBag!) -> CFMutableBag!
func CFBagGetCount(theBag: CFBag!) -> CFIndex
func CFBagGetCountOfValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> CFIndex
func CFBagContainsValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> Bool
func CFBagGetValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> UnsafePointer<Void>
func CFBagGetValueIfPresent(theBag: CFBag!, _ candidate: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFBagGetValues(theBag: CFBag!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFBagApplyFunction(theBag: CFBag!, _ applier: CFBagApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFBagAddValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagReplaceValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagSetValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagRemoveValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagRemoveAllValues(theBag: CFMutableBag!)
var kCFCoreFoundationVersionNumber: Double
var kCFCoreFoundationVersionNumber10_0: Double { get }
var kCFCoreFoundationVersionNumber10_0_3: Double { get }
var kCFCoreFoundationVersionNumber10_1: Double { get }
var kCFCoreFoundationVersionNumber10_1_1: Double { get }
var kCFCoreFoundationVersionNumber10_1_2: Double { get }
var kCFCoreFoundationVersionNumber10_1_3: Double { get }
var kCFCoreFoundationVersionNumber10_1_4: Double { get }
var kCFCoreFoundationVersionNumber10_2: Double { get }
var kCFCoreFoundationVersionNumber10_2_1: Double { get }
var kCFCoreFoundationVersionNumber10_2_2: Double { get }
var kCFCoreFoundationVersionNumber10_2_3: Double { get }
var kCFCoreFoundationVersionNumber10_2_4: Double { get }
var kCFCoreFoundationVersionNumber10_2_5: Double { get }
var kCFCoreFoundationVersionNumber10_2_6: Double { get }
var kCFCoreFoundationVersionNumber10_2_7: Double { get }
var kCFCoreFoundationVersionNumber10_2_8: Double { get }
var kCFCoreFoundationVersionNumber10_3: Double { get }
var kCFCoreFoundationVersionNumber10_3_1: Double { get }
var kCFCoreFoundationVersionNumber10_3_2: Double { get }
var kCFCoreFoundationVersionNumber10_3_3: Double { get }
var kCFCoreFoundationVersionNumber10_3_4: Double { get }
var kCFCoreFoundationVersionNumber10_3_5: Double { get }
var kCFCoreFoundationVersionNumber10_3_6: Double { get }
var kCFCoreFoundationVersionNumber10_3_7: Double { get }
var kCFCoreFoundationVersionNumber10_3_8: Double { get }
var kCFCoreFoundationVersionNumber10_3_9: Double { get }
var kCFCoreFoundationVersionNumber10_4: Double { get }
var kCFCoreFoundationVersionNumber10_4_1: Double { get }
var kCFCoreFoundationVersionNumber10_4_2: Double { get }
var kCFCoreFoundationVersionNumber10_4_3: Double { get }
var kCFCoreFoundationVersionNumber10_4_4_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_4_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_5_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_5_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_6_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_6_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_7: Double { get }
var kCFCoreFoundationVersionNumber10_4_8: Double { get }
var kCFCoreFoundationVersionNumber10_4_9: Double { get }
var kCFCoreFoundationVersionNumber10_4_10: Double { get }
var kCFCoreFoundationVersionNumber10_4_11: Double { get }
var kCFCoreFoundationVersionNumber10_5: Double { get }
var kCFCoreFoundationVersionNumber10_5_1: Double { get }
var kCFCoreFoundationVersionNumber10_5_2: Double { get }
var kCFCoreFoundationVersionNumber10_5_3: Double { get }
var kCFCoreFoundationVersionNumber10_5_4: Double { get }
var kCFCoreFoundationVersionNumber10_5_5: Double { get }
var kCFCoreFoundationVersionNumber10_5_6: Double { get }
var kCFCoreFoundationVersionNumber10_5_7: Double { get }
var kCFCoreFoundationVersionNumber10_5_8: Double { get }
var kCFCoreFoundationVersionNumber10_6: Double { get }
var kCFCoreFoundationVersionNumber10_6_1: Double { get }
var kCFCoreFoundationVersionNumber10_6_2: Double { get }
var kCFCoreFoundationVersionNumber10_6_3: Double { get }
var kCFCoreFoundationVersionNumber10_6_4: Double { get }
var kCFCoreFoundationVersionNumber10_6_5: Double { get }
var kCFCoreFoundationVersionNumber10_6_6: Double { get }
var kCFCoreFoundationVersionNumber10_6_7: Double { get }
var kCFCoreFoundationVersionNumber10_6_8: Double { get }
var kCFCoreFoundationVersionNumber10_7: Double { get }
var kCFCoreFoundationVersionNumber10_7_1: Double { get }
var kCFCoreFoundationVersionNumber10_7_2: Double { get }
var kCFCoreFoundationVersionNumber10_7_3: Double { get }
var kCFCoreFoundationVersionNumber10_7_4: Double { get }
var kCFCoreFoundationVersionNumber10_7_5: Double { get }
var kCFCoreFoundationVersionNumber10_8: Double { get }
var kCFCoreFoundationVersionNumber10_8_1: Double { get }
var kCFCoreFoundationVersionNumber10_8_2: Double { get }
var kCFCoreFoundationVersionNumber10_8_3: Double { get }
var kCFCoreFoundationVersionNumber10_8_4: Double { get }
var kCFCoreFoundationVersionNumber10_9: Double { get }
var kCFCoreFoundationVersionNumber10_9_1: Double { get }
var kCFCoreFoundationVersionNumber10_9_2: Double { get }
var kCFCoreFoundationVersionNumber10_10: Double { get }
var kCFCoreFoundationVersionNumber10_10_1: Double { get }
var kCFCoreFoundationVersionNumber10_10_2: Int32 { get }
var kCFCoreFoundationVersionNumber10_10_3: Double { get }
typealias CFTypeID = UInt
typealias CFOptionFlags = UInt
typealias CFHashCode = UInt
typealias CFIndex = Int
typealias CFTypeRef = AnyObject
typealias CFStringRef = CFString
class CFString {
}
class CFMutableString {
}
typealias CFMutableStringRef = CFMutableString
typealias CFPropertyListRef = CFPropertyList
typealias CFPropertyList = CFTypeRef
enum CFComparisonResult : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case CompareLessThan
  case CompareEqualTo
  case CompareGreaterThan
}
typealias CFComparatorFunction = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult
let kCFNotFound: CFIndex
struct CFRange {
  var location: CFIndex
  var length: CFIndex
  init()
  init(location: CFIndex, length: CFIndex)
}
func CFRangeMake(loc: CFIndex, _ len: CFIndex) -> CFRange
func __CFRangeMake(loc: CFIndex, _ len: CFIndex) -> CFRange
typealias CFNullRef = CFNull
class CFNull {
}
func CFNullGetTypeID() -> CFTypeID
let kCFNull: CFNull!
class CFAllocator {
}
typealias CFAllocatorRef = CFAllocator
let kCFAllocatorDefault: CFAllocator!
let kCFAllocatorSystemDefault: CFAllocator!
let kCFAllocatorMalloc: CFAllocator!
let kCFAllocatorMallocZone: CFAllocator!
let kCFAllocatorNull: CFAllocator!
let kCFAllocatorUseContext: CFAllocator!
typealias CFAllocatorRetainCallBack = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFAllocatorReleaseCallBack = @convention(c) (UnsafePointer<Void>) -> Void
typealias CFAllocatorCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFAllocatorAllocateCallBack = @convention(c) (CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CFAllocatorReallocateCallBack = @convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CFAllocatorDeallocateCallBack = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CFAllocatorPreferredSizeCallBack = @convention(c) (CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> CFIndex
struct CFAllocatorContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack!
  var release: CFAllocatorReleaseCallBack!
  var copyDescription: CFAllocatorCopyDescriptionCallBack!
  var allocate: CFAllocatorAllocateCallBack!
  var reallocate: CFAllocatorReallocateCallBack!
  var deallocate: CFAllocatorDeallocateCallBack!
  var preferredSize: CFAllocatorPreferredSizeCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack!, release: CFAllocatorReleaseCallBack!, copyDescription: CFAllocatorCopyDescriptionCallBack!, allocate: CFAllocatorAllocateCallBack!, reallocate: CFAllocatorReallocateCallBack!, deallocate: CFAllocatorDeallocateCallBack!, preferredSize: CFAllocatorPreferredSizeCallBack!)
}
func CFAllocatorGetTypeID() -> CFTypeID
func CFAllocatorSetDefault(allocator: CFAllocator!)
func CFAllocatorGetDefault() -> Unmanaged<CFAllocator>!
func CFAllocatorCreate(allocator: CFAllocator!, _ context: UnsafeMutablePointer<CFAllocatorContext>) -> Unmanaged<CFAllocator>!
func CFAllocatorAllocate(allocator: CFAllocator!, _ size: CFIndex, _ hint: CFOptionFlags) -> UnsafeMutablePointer<Void>
func CFAllocatorReallocate(allocator: CFAllocator!, _ ptr: UnsafeMutablePointer<Void>, _ newsize: CFIndex, _ hint: CFOptionFlags) -> UnsafeMutablePointer<Void>
func CFAllocatorDeallocate(allocator: CFAllocator!, _ ptr: UnsafeMutablePointer<Void>)
func CFAllocatorGetPreferredSizeForSize(allocator: CFAllocator!, _ size: CFIndex, _ hint: CFOptionFlags) -> CFIndex
func CFAllocatorGetContext(allocator: CFAllocator!, _ context: UnsafeMutablePointer<CFAllocatorContext>)
func CFGetTypeID(cf: AnyObject!) -> CFTypeID
func CFCopyTypeIDDescription(type_id: CFTypeID) -> CFString!
func CFGetRetainCount(cf: AnyObject!) -> CFIndex
func CFEqual(cf1: AnyObject!, _ cf2: AnyObject!) -> Bool
func CFHash(cf: AnyObject!) -> CFHashCode
func CFCopyDescription(cf: AnyObject!) -> CFString!
func CFGetAllocator(cf: AnyObject!) -> CFAllocator!
struct CFBinaryHeapCompareContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
struct CFBinaryHeapCallBacks {
  var version: CFIndex
  var retain: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var compare: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult)!
  init()
  init(version: CFIndex, retain: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, compare: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult)!)
}
let kCFStringBinaryHeapCallBacks: CFBinaryHeapCallBacks
typealias CFBinaryHeapApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFBinaryHeap {
}
typealias CFBinaryHeapRef = CFBinaryHeap
func CFBinaryHeapGetTypeID() -> CFTypeID
func CFBinaryHeapCreate(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFBinaryHeapCallBacks>, _ compareContext: UnsafePointer<CFBinaryHeapCompareContext>) -> CFBinaryHeap!
func CFBinaryHeapCreateCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ heap: CFBinaryHeap!) -> CFBinaryHeap!
func CFBinaryHeapGetCount(heap: CFBinaryHeap!) -> CFIndex
func CFBinaryHeapGetCountOfValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>) -> CFIndex
func CFBinaryHeapContainsValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>) -> Bool
func CFBinaryHeapGetMinimum(heap: CFBinaryHeap!) -> UnsafePointer<Void>
func CFBinaryHeapGetMinimumIfPresent(heap: CFBinaryHeap!, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFBinaryHeapGetValues(heap: CFBinaryHeap!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFBinaryHeapApplyFunction(heap: CFBinaryHeap!, _ applier: CFBinaryHeapApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFBinaryHeapAddValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>)
func CFBinaryHeapRemoveMinimumValue(heap: CFBinaryHeap!)
func CFBinaryHeapRemoveAllValues(heap: CFBinaryHeap!)
typealias CFBit = UInt32
class CFBitVector {
}
typealias CFBitVectorRef = CFBitVector
typealias CFMutableBitVectorRef = CFMutableBitVector
class CFMutableBitVector {
}
func CFBitVectorGetTypeID() -> CFTypeID
func CFBitVectorCreate(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBits: CFIndex) -> CFBitVector!
func CFBitVectorCreateCopy(allocator: CFAllocator!, _ bv: CFBitVector!) -> CFBitVector!
func CFBitVectorCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex) -> CFMutableBitVector!
func CFBitVectorCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ bv: CFBitVector!) -> CFMutableBitVector!
func CFBitVectorGetCount(bv: CFBitVector!) -> CFIndex
func CFBitVectorGetCountOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorContainsBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> Bool
func CFBitVectorGetBitAtIndex(bv: CFBitVector!, _ idx: CFIndex) -> CFBit
func CFBitVectorGetBits(bv: CFBitVector!, _ range: CFRange, _ bytes: UnsafeMutablePointer<UInt8>)
func CFBitVectorGetFirstIndexOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorGetLastIndexOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorSetCount(bv: CFMutableBitVector!, _ count: CFIndex)
func CFBitVectorFlipBitAtIndex(bv: CFMutableBitVector!, _ idx: CFIndex)
func CFBitVectorFlipBits(bv: CFMutableBitVector!, _ range: CFRange)
func CFBitVectorSetBitAtIndex(bv: CFMutableBitVector!, _ idx: CFIndex, _ value: CFBit)
func CFBitVectorSetBits(bv: CFMutableBitVector!, _ range: CFRange, _ value: CFBit)
func CFBitVectorSetAllBits(bv: CFMutableBitVector!, _ value: CFBit)
class CFBundle {
}
typealias CFBundleRef = CFBundle
typealias CFPlugInRef = CFPlugIn
class CFPlugIn {
}
let kCFBundleInfoDictionaryVersionKey: CFString!
let kCFBundleExecutableKey: CFString!
let kCFBundleIdentifierKey: CFString!
let kCFBundleVersionKey: CFString!
let kCFBundleDevelopmentRegionKey: CFString!
let kCFBundleNameKey: CFString!
let kCFBundleLocalizationsKey: CFString!
func CFBundleGetMainBundle() -> CFBundle!
func CFBundleGetBundleWithIdentifier(bundleID: CFString!) -> CFBundle!
func CFBundleGetAllBundles() -> CFArray!
func CFBundleGetTypeID() -> CFTypeID
func CFBundleCreate(allocator: CFAllocator!, _ bundleURL: CFURL!) -> CFBundle!
func CFBundleCreateBundlesFromDirectory(allocator: CFAllocator!, _ directoryURL: CFURL!, _ bundleType: CFString!) -> CFArray!
func CFBundleCopyBundleURL(bundle: CFBundle!) -> CFURL!
func CFBundleGetValueForInfoDictionaryKey(bundle: CFBundle!, _ key: CFString!) -> AnyObject!
func CFBundleGetInfoDictionary(bundle: CFBundle!) -> CFDictionary!
func CFBundleGetLocalInfoDictionary(bundle: CFBundle!) -> CFDictionary!
func CFBundleGetPackageInfo(bundle: CFBundle!, _ packageType: UnsafeMutablePointer<UInt32>, _ packageCreator: UnsafeMutablePointer<UInt32>)
func CFBundleGetIdentifier(bundle: CFBundle!) -> CFString!
func CFBundleGetVersionNumber(bundle: CFBundle!) -> UInt32
func CFBundleGetDevelopmentRegion(bundle: CFBundle!) -> CFString!
func CFBundleCopySupportFilesDirectoryURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyResourcesDirectoryURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyPrivateFrameworksURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedFrameworksURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedSupportURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyBuiltInPlugInsURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyInfoDictionaryInDirectory(bundleURL: CFURL!) -> CFDictionary!
func CFBundleGetPackageInfoInDirectory(url: CFURL!, _ packageType: UnsafeMutablePointer<UInt32>, _ packageCreator: UnsafeMutablePointer<UInt32>) -> Bool
func CFBundleCopyResourceURL(bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfType(bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyLocalizedString(bundle: CFBundle!, _ key: CFString!, _ value: CFString!, _ tableName: CFString!) -> CFString!
func CFBundleCopyResourceURLInDirectory(bundleURL: CFURL!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeInDirectory(bundleURL: CFURL!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyBundleLocalizations(bundle: CFBundle!) -> CFArray!
func CFBundleCopyPreferredLocalizationsFromArray(locArray: CFArray!) -> CFArray!
func CFBundleCopyLocalizationsForPreferences(locArray: CFArray!, _ prefArray: CFArray!) -> CFArray!
func CFBundleCopyResourceURLForLocalization(bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeForLocalization(bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFArray!
func CFBundleCopyInfoDictionaryForURL(url: CFURL!) -> CFDictionary!
func CFBundleCopyLocalizationsForURL(url: CFURL!) -> CFArray!
func CFBundleCopyExecutableArchitecturesForURL(url: CFURL!) -> CFArray!
func CFBundleCopyExecutableURL(bundle: CFBundle!) -> CFURL!
var kCFBundleExecutableArchitectureI386: Int { get }
var kCFBundleExecutableArchitecturePPC: Int { get }
var kCFBundleExecutableArchitectureX86_64: Int { get }
var kCFBundleExecutableArchitecturePPC64: Int { get }
func CFBundleCopyExecutableArchitectures(bundle: CFBundle!) -> CFArray!
func CFBundlePreflightExecutable(bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CFBundleLoadExecutableAndReturnError(bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CFBundleLoadExecutable(bundle: CFBundle!) -> Bool
func CFBundleIsExecutableLoaded(bundle: CFBundle!) -> Bool
func CFBundleUnloadExecutable(bundle: CFBundle!)
func CFBundleGetFunctionPointerForName(bundle: CFBundle!, _ functionName: CFString!) -> UnsafeMutablePointer<Void>
func CFBundleGetFunctionPointersForNames(bundle: CFBundle!, _ functionNames: CFArray!, _ ftbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func CFBundleGetDataPointerForName(bundle: CFBundle!, _ symbolName: CFString!) -> UnsafeMutablePointer<Void>
func CFBundleGetDataPointersForNames(bundle: CFBundle!, _ symbolNames: CFArray!, _ stbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func CFBundleCopyAuxiliaryExecutableURL(bundle: CFBundle!, _ executableName: CFString!) -> CFURL!
func CFBundleGetPlugIn(bundle: CFBundle!) -> CFPlugIn!
typealias CFBundleRefNum = Int32
func CFBundleOpenBundleResourceMap(bundle: CFBundle!) -> CFBundleRefNum
func CFBundleOpenBundleResourceFiles(bundle: CFBundle!, _ refNum: UnsafeMutablePointer<CFBundleRefNum>, _ localizedRefNum: UnsafeMutablePointer<CFBundleRefNum>) -> Int32
func CFBundleCloseBundleResourceMap(bundle: CFBundle!, _ refNum: CFBundleRefNum)
struct __CFByteOrder : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CFByteOrderUnknown: __CFByteOrder { get }
var CFByteOrderLittleEndian: __CFByteOrder { get }
var CFByteOrderBigEndian: __CFByteOrder { get }
typealias CFByteOrder = CFIndex
func CFByteOrderGetCurrent() -> CFByteOrder
func CFSwapInt16(arg: UInt16) -> UInt16
func CFSwapInt32(arg: UInt32) -> UInt32
func CFSwapInt64(arg: UInt64) -> UInt64
func CFSwapInt16BigToHost(arg: UInt16) -> UInt16
func CFSwapInt32BigToHost(arg: UInt32) -> UInt32
func CFSwapInt64BigToHost(arg: UInt64) -> UInt64
func CFSwapInt16HostToBig(arg: UInt16) -> UInt16
func CFSwapInt32HostToBig(arg: UInt32) -> UInt32
func CFSwapInt64HostToBig(arg: UInt64) -> UInt64
func CFSwapInt16LittleToHost(arg: UInt16) -> UInt16
func CFSwapInt32LittleToHost(arg: UInt32) -> UInt32
func CFSwapInt64LittleToHost(arg: UInt64) -> UInt64
func CFSwapInt16HostToLittle(arg: UInt16) -> UInt16
func CFSwapInt32HostToLittle(arg: UInt32) -> UInt32
func CFSwapInt64HostToLittle(arg: UInt64) -> UInt64
struct CFSwappedFloat32 {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct CFSwappedFloat64 {
  var v: UInt64
  init()
  init(v: UInt64)
}
func CFConvertFloat32HostToSwapped(arg: Float32) -> CFSwappedFloat32
func CFConvertFloat32SwappedToHost(arg: CFSwappedFloat32) -> Float32
func CFConvertFloat64HostToSwapped(arg: Float64) -> CFSwappedFloat64
func CFConvertFloat64SwappedToHost(arg: CFSwappedFloat64) -> Float64
func CFConvertFloatHostToSwapped(arg: Float) -> CFSwappedFloat32
func CFConvertFloatSwappedToHost(arg: CFSwappedFloat32) -> Float
func CFConvertDoubleHostToSwapped(arg: Double) -> CFSwappedFloat64
func CFConvertDoubleSwappedToHost(arg: CFSwappedFloat64) -> Double
class CFCalendar {
}
typealias CFCalendarRef = CFCalendar
func CFCalendarGetTypeID() -> CFTypeID
func CFCalendarCopyCurrent() -> CFCalendar!
func CFCalendarCreateWithIdentifier(allocator: CFAllocator!, _ identifier: CFString!) -> CFCalendar!
func CFCalendarGetIdentifier(calendar: CFCalendar!) -> CFString!
func CFCalendarCopyLocale(calendar: CFCalendar!) -> CFLocale!
func CFCalendarSetLocale(calendar: CFCalendar!, _ locale: CFLocale!)
func CFCalendarCopyTimeZone(calendar: CFCalendar!) -> CFTimeZone!
func CFCalendarSetTimeZone(calendar: CFCalendar!, _ tz: CFTimeZone!)
func CFCalendarGetFirstWeekday(calendar: CFCalendar!) -> CFIndex
func CFCalendarSetFirstWeekday(calendar: CFCalendar!, _ wkdy: CFIndex)
func CFCalendarGetMinimumDaysInFirstWeek(calendar: CFCalendar!) -> CFIndex
func CFCalendarSetMinimumDaysInFirstWeek(calendar: CFCalendar!, _ mwd: CFIndex)
struct CFCalendarUnit : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Era: CFCalendarUnit { get }
  static var Year: CFCalendarUnit { get }
  static var Month: CFCalendarUnit { get }
  static var Day: CFCalendarUnit { get }
  static var Hour: CFCalendarUnit { get }
  static var Minute: CFCalendarUnit { get }
  static var Second: CFCalendarUnit { get }
  static var Week: CFCalendarUnit { get }
  static var Weekday: CFCalendarUnit { get }
  static var WeekdayOrdinal: CFCalendarUnit { get }
  static var Quarter: CFCalendarUnit { get }
  static var WeekOfMonth: CFCalendarUnit { get }
  static var WeekOfYear: CFCalendarUnit { get }
  static var YearForWeekOfYear: CFCalendarUnit { get }
}
func CFCalendarGetMinimumRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetMaximumRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetRangeOfUnit(calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFRange
func CFCalendarGetOrdinalityOfUnit(calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFIndex
func CFCalendarGetTimeRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit, _ at: CFAbsoluteTime, _ startp: UnsafeMutablePointer<CFAbsoluteTime>, _ tip: UnsafeMutablePointer<CFTimeInterval>) -> Bool
var kCFCalendarComponentsWrap: CFOptionFlags { get }
class CFCharacterSet {
}
typealias CFCharacterSetRef = CFCharacterSet
typealias CFMutableCharacterSetRef = CFMutableCharacterSet
class CFMutableCharacterSet {
}
enum CFCharacterSetPredefinedSet : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Control
  case Whitespace
  case WhitespaceAndNewline
  case DecimalDigit
  case Letter
  case LowercaseLetter
  case UppercaseLetter
  case NonBase
  case Decomposable
  case AlphaNumeric
  case Punctuation
  case CapitalizedLetter
  case Symbol
  case Newline
  case Illegal
}
func CFCharacterSetGetTypeID() -> CFTypeID
func CFCharacterSetGetPredefined(theSetIdentifier: CFCharacterSetPredefinedSet) -> CFCharacterSet!
func CFCharacterSetCreateWithCharactersInRange(alloc: CFAllocator!, _ theRange: CFRange) -> CFCharacterSet!
func CFCharacterSetCreateWithCharactersInString(alloc: CFAllocator!, _ theString: CFString!) -> CFCharacterSet!
func CFCharacterSetCreateWithBitmapRepresentation(alloc: CFAllocator!, _ theData: CFData!) -> CFCharacterSet!
func CFCharacterSetCreateInvertedSet(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFCharacterSet!
func CFCharacterSetIsSupersetOfSet(theSet: CFCharacterSet!, _ theOtherset: CFCharacterSet!) -> Bool
func CFCharacterSetHasMemberInPlane(theSet: CFCharacterSet!, _ thePlane: CFIndex) -> Bool
func CFCharacterSetCreateMutable(alloc: CFAllocator!) -> CFMutableCharacterSet!
func CFCharacterSetCreateCopy(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFCharacterSet!
func CFCharacterSetCreateMutableCopy(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFMutableCharacterSet!
func CFCharacterSetIsCharacterMember(theSet: CFCharacterSet!, _ theChar: UniChar) -> Bool
func CFCharacterSetIsLongCharacterMember(theSet: CFCharacterSet!, _ theChar: UTF32Char) -> Bool
func CFCharacterSetCreateBitmapRepresentation(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFData!
func CFCharacterSetAddCharactersInRange(theSet: CFMutableCharacterSet!, _ theRange: CFRange)
func CFCharacterSetRemoveCharactersInRange(theSet: CFMutableCharacterSet!, _ theRange: CFRange)
func CFCharacterSetAddCharactersInString(theSet: CFMutableCharacterSet!, _ theString: CFString!)
func CFCharacterSetRemoveCharactersInString(theSet: CFMutableCharacterSet!, _ theString: CFString!)
func CFCharacterSetUnion(theSet: CFMutableCharacterSet!, _ theOtherSet: CFCharacterSet!)
func CFCharacterSetIntersect(theSet: CFMutableCharacterSet!, _ theOtherSet: CFCharacterSet!)
func CFCharacterSetInvert(theSet: CFMutableCharacterSet!)
class CFData {
}
typealias CFDataRef = CFData
typealias CFMutableDataRef = CFMutableData
class CFMutableData {
}
func CFDataGetTypeID() -> CFTypeID
func CFDataCreate(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex) -> CFData!
func CFDataCreateWithBytesNoCopy(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFData!
func CFDataCreateCopy(allocator: CFAllocator!, _ theData: CFData!) -> CFData!
func CFDataCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex) -> CFMutableData!
func CFDataCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theData: CFData!) -> CFMutableData!
func CFDataGetLength(theData: CFData!) -> CFIndex
func CFDataGetBytePtr(theData: CFData!) -> UnsafePointer<UInt8>
func CFDataGetMutableBytePtr(theData: CFMutableData!) -> UnsafeMutablePointer<UInt8>
func CFDataGetBytes(theData: CFData!, _ range: CFRange, _ buffer: UnsafeMutablePointer<UInt8>)
func CFDataSetLength(theData: CFMutableData!, _ length: CFIndex)
func CFDataIncreaseLength(theData: CFMutableData!, _ extraLength: CFIndex)
func CFDataAppendBytes(theData: CFMutableData!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex)
func CFDataReplaceBytes(theData: CFMutableData!, _ range: CFRange, _ newBytes: UnsafePointer<UInt8>, _ newLength: CFIndex)
func CFDataDeleteBytes(theData: CFMutableData!, _ range: CFRange)
struct CFDataSearchFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Backwards: CFDataSearchFlags { get }
  static var Anchored: CFDataSearchFlags { get }
}
func CFDataFind(theData: CFData!, _ dataToFind: CFData!, _ searchRange: CFRange, _ compareOptions: CFDataSearchFlags) -> CFRange
typealias CFTimeInterval = Double
typealias CFAbsoluteTime = CFTimeInterval
func CFAbsoluteTimeGetCurrent() -> CFAbsoluteTime
let kCFAbsoluteTimeIntervalSince1970: CFTimeInterval
let kCFAbsoluteTimeIntervalSince1904: CFTimeInterval
typealias CFDateRef = CFDate
class CFDate {
}
func CFDateGetTypeID() -> CFTypeID
func CFDateCreate(allocator: CFAllocator!, _ at: CFAbsoluteTime) -> CFDate!
func CFDateGetAbsoluteTime(theDate: CFDate!) -> CFAbsoluteTime
func CFDateGetTimeIntervalSinceDate(theDate: CFDate!, _ otherDate: CFDate!) -> CFTimeInterval
func CFDateCompare(theDate: CFDate!, _ otherDate: CFDate!, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
typealias CFTimeZoneRef = CFTimeZone
class CFTimeZone {
}
struct CFGregorianDate {
  var year: Int32
  var month: Int8
  var day: Int8
  var hour: Int8
  var minute: Int8
  var second: Double
  init()
  init(year: Int32, month: Int8, day: Int8, hour: Int8, minute: Int8, second: Double)
}
struct CFGregorianUnits {
  var years: Int32
  var months: Int32
  var days: Int32
  var hours: Int32
  var minutes: Int32
  var seconds: Double
  init()
  init(years: Int32, months: Int32, days: Int32, hours: Int32, minutes: Int32, seconds: Double)
}
struct CFGregorianUnitFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var UnitsYears: CFGregorianUnitFlags { get }
  static var UnitsMonths: CFGregorianUnitFlags { get }
  static var UnitsDays: CFGregorianUnitFlags { get }
  static var UnitsHours: CFGregorianUnitFlags { get }
  static var UnitsMinutes: CFGregorianUnitFlags { get }
  static var UnitsSeconds: CFGregorianUnitFlags { get }
  static var AllUnits: CFGregorianUnitFlags { get }
}
func CFGregorianDateIsValid(gdate: CFGregorianDate, _ unitFlags: CFOptionFlags) -> Bool
func CFGregorianDateGetAbsoluteTime(gdate: CFGregorianDate, _ tz: CFTimeZone!) -> CFAbsoluteTime
func CFAbsoluteTimeGetGregorianDate(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> CFGregorianDate
func CFAbsoluteTimeAddGregorianUnits(at: CFAbsoluteTime, _ tz: CFTimeZone!, _ units: CFGregorianUnits) -> CFAbsoluteTime
func CFAbsoluteTimeGetDifferenceAsGregorianUnits(at1: CFAbsoluteTime, _ at2: CFAbsoluteTime, _ tz: CFTimeZone!, _ unitFlags: CFOptionFlags) -> CFGregorianUnits
func CFAbsoluteTimeGetDayOfWeek(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
func CFAbsoluteTimeGetDayOfYear(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
func CFAbsoluteTimeGetWeekOfYear(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
class CFDateFormatter {
}
typealias CFDateFormatterRef = CFDateFormatter
func CFDateFormatterCreateDateFormatFromTemplate(allocator: CFAllocator!, _ tmplate: CFString!, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFString!
func CFDateFormatterGetTypeID() -> CFTypeID
enum CFDateFormatterStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
func CFDateFormatterCreate(allocator: CFAllocator!, _ locale: CFLocale!, _ dateStyle: CFDateFormatterStyle, _ timeStyle: CFDateFormatterStyle) -> CFDateFormatter!
func CFDateFormatterGetLocale(formatter: CFDateFormatter!) -> CFLocale!
func CFDateFormatterGetDateStyle(formatter: CFDateFormatter!) -> CFDateFormatterStyle
func CFDateFormatterGetTimeStyle(formatter: CFDateFormatter!) -> CFDateFormatterStyle
func CFDateFormatterGetFormat(formatter: CFDateFormatter!) -> CFString!
func CFDateFormatterSetFormat(formatter: CFDateFormatter!, _ formatString: CFString!)
func CFDateFormatterCreateStringWithDate(allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ date: CFDate!) -> CFString!
func CFDateFormatterCreateStringWithAbsoluteTime(allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ at: CFAbsoluteTime) -> CFString!
func CFDateFormatterCreateDateFromString(allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>) -> CFDate!
func CFDateFormatterGetAbsoluteTimeFromString(formatter: CFDateFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>, _ atp: UnsafeMutablePointer<CFAbsoluteTime>) -> Bool
func CFDateFormatterSetProperty(formatter: CFDateFormatter!, _ key: CFString!, _ value: AnyObject!)
func CFDateFormatterCopyProperty(formatter: CFDateFormatter!, _ key: CFString!) -> AnyObject!
let kCFDateFormatterIsLenient: CFString!
let kCFDateFormatterTimeZone: CFString!
let kCFDateFormatterCalendarName: CFString!
let kCFDateFormatterDefaultFormat: CFString!
let kCFDateFormatterTwoDigitStartDate: CFString!
let kCFDateFormatterDefaultDate: CFString!
let kCFDateFormatterCalendar: CFString!
let kCFDateFormatterEraSymbols: CFString!
let kCFDateFormatterMonthSymbols: CFString!
let kCFDateFormatterShortMonthSymbols: CFString!
let kCFDateFormatterWeekdaySymbols: CFString!
let kCFDateFormatterShortWeekdaySymbols: CFString!
let kCFDateFormatterAMSymbol: CFString!
let kCFDateFormatterPMSymbol: CFString!
let kCFDateFormatterLongEraSymbols: CFString!
let kCFDateFormatterVeryShortMonthSymbols: CFString!
let kCFDateFormatterStandaloneMonthSymbols: CFString!
let kCFDateFormatterShortStandaloneMonthSymbols: CFString!
let kCFDateFormatterVeryShortStandaloneMonthSymbols: CFString!
let kCFDateFormatterVeryShortWeekdaySymbols: CFString!
let kCFDateFormatterStandaloneWeekdaySymbols: CFString!
let kCFDateFormatterShortStandaloneWeekdaySymbols: CFString!
let kCFDateFormatterVeryShortStandaloneWeekdaySymbols: CFString!
let kCFDateFormatterQuarterSymbols: CFString!
let kCFDateFormatterShortQuarterSymbols: CFString!
let kCFDateFormatterStandaloneQuarterSymbols: CFString!
let kCFDateFormatterShortStandaloneQuarterSymbols: CFString!
let kCFDateFormatterGregorianStartDate: CFString!
let kCFDateFormatterDoesRelativeDateFormattingKey: CFString!
typealias CFDictionaryRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFDictionaryReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFDictionaryCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFDictionaryEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
typealias CFDictionaryHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode
struct CFDictionaryKeyCallBacks {
  var version: CFIndex
  var retain: CFDictionaryRetainCallBack!
  var release: CFDictionaryReleaseCallBack!
  var copyDescription: CFDictionaryCopyDescriptionCallBack!
  var equal: CFDictionaryEqualCallBack!
  var hash: CFDictionaryHashCallBack!
  init()
  init(version: CFIndex, retain: CFDictionaryRetainCallBack!, release: CFDictionaryReleaseCallBack!, copyDescription: CFDictionaryCopyDescriptionCallBack!, equal: CFDictionaryEqualCallBack!, hash: CFDictionaryHashCallBack!)
}
let kCFTypeDictionaryKeyCallBacks: CFDictionaryKeyCallBacks
let kCFCopyStringDictionaryKeyCallBacks: CFDictionaryKeyCallBacks
struct CFDictionaryValueCallBacks {
  var version: CFIndex
  var retain: CFDictionaryRetainCallBack!
  var release: CFDictionaryReleaseCallBack!
  var copyDescription: CFDictionaryCopyDescriptionCallBack!
  var equal: CFDictionaryEqualCallBack!
  init()
  init(version: CFIndex, retain: CFDictionaryRetainCallBack!, release: CFDictionaryReleaseCallBack!, copyDescription: CFDictionaryCopyDescriptionCallBack!, equal: CFDictionaryEqualCallBack!)
}
let kCFTypeDictionaryValueCallBacks: CFDictionaryValueCallBacks
typealias CFDictionaryApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFDictionary {
}
typealias CFDictionaryRef = CFDictionary
class CFMutableDictionary {
}
typealias CFMutableDictionaryRef = CFMutableDictionary
func CFDictionaryGetTypeID() -> CFTypeID
func CFDictionaryCreate(allocator: CFAllocator!, _ keys: UnsafeMutablePointer<UnsafePointer<Void>>, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ keyCallBacks: UnsafePointer<CFDictionaryKeyCallBacks>, _ valueCallBacks: UnsafePointer<CFDictionaryValueCallBacks>) -> CFDictionary!
func CFDictionaryCreateCopy(allocator: CFAllocator!, _ theDict: CFDictionary!) -> CFDictionary!
func CFDictionaryCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ keyCallBacks: UnsafePointer<CFDictionaryKeyCallBacks>, _ valueCallBacks: UnsafePointer<CFDictionaryValueCallBacks>) -> CFMutableDictionary!
func CFDictionaryCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theDict: CFDictionary!) -> CFMutableDictionary!
func CFDictionaryGetCount(theDict: CFDictionary!) -> CFIndex
func CFDictionaryGetCountOfKey(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> CFIndex
func CFDictionaryGetCountOfValue(theDict: CFDictionary!, _ value: UnsafePointer<Void>) -> CFIndex
func CFDictionaryContainsKey(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> Bool
func CFDictionaryContainsValue(theDict: CFDictionary!, _ value: UnsafePointer<Void>) -> Bool
func CFDictionaryGetValue(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> UnsafePointer<Void>
func CFDictionaryGetValueIfPresent(theDict: CFDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFDictionaryGetKeysAndValues(theDict: CFDictionary!, _ keys: UnsafeMutablePointer<UnsafePointer<Void>>, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFDictionaryApplyFunction(theDict: CFDictionary!, _ applier: CFDictionaryApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFDictionaryAddValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func CFDictionarySetValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func CFDictionaryReplaceValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func CFDictionaryRemoveValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>)
func CFDictionaryRemoveAllValues(theDict: CFMutableDictionary!)
class CFError {
}
typealias CFErrorRef = CFError
func CFErrorGetTypeID() -> CFTypeID
let kCFErrorDomainPOSIX: CFString!
let kCFErrorDomainOSStatus: CFString!
let kCFErrorDomainMach: CFString!
let kCFErrorDomainCocoa: CFString!
let kCFErrorLocalizedDescriptionKey: CFString!
let kCFErrorLocalizedFailureReasonKey: CFString!
let kCFErrorLocalizedRecoverySuggestionKey: CFString!
let kCFErrorDescriptionKey: CFString!
let kCFErrorUnderlyingErrorKey: CFString!
let kCFErrorURLKey: CFString!
let kCFErrorFilePathKey: CFString!
func CFErrorCreate(allocator: CFAllocator!, _ domain: CFString!, _ code: CFIndex, _ userInfo: CFDictionary!) -> CFError!
func CFErrorCreateWithUserInfoKeysAndValues(allocator: CFAllocator!, _ domain: CFString!, _ code: CFIndex, _ userInfoKeys: UnsafePointer<UnsafePointer<Void>>, _ userInfoValues: UnsafePointer<UnsafePointer<Void>>, _ numUserInfoValues: CFIndex) -> CFError!
func CFErrorGetDomain(err: CFError!) -> CFString!
func CFErrorGetCode(err: CFError!) -> CFIndex
func CFErrorCopyUserInfo(err: CFError!) -> CFDictionary!
func CFErrorCopyDescription(err: CFError!) -> CFString!
func CFErrorCopyFailureReason(err: CFError!) -> CFString!
func CFErrorCopyRecoverySuggestion(err: CFError!) -> CFString!
typealias CFFileDescriptorNativeDescriptor = Int32
class CFFileDescriptor {
}
typealias CFFileDescriptorRef = CFFileDescriptor
var kCFFileDescriptorReadCallBack: CFOptionFlags { get }
var kCFFileDescriptorWriteCallBack: CFOptionFlags { get }
typealias CFFileDescriptorCallBack = @convention(c) (CFFileDescriptor!, CFOptionFlags, UnsafeMutablePointer<Void>) -> Void
struct CFFileDescriptorContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  var release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
func CFFileDescriptorGetTypeID() -> CFTypeID
func CFFileDescriptorCreate(allocator: CFAllocator!, _ fd: CFFileDescriptorNativeDescriptor, _ closeOnInvalidate: Bool, _ callout: CFFileDescriptorCallBack!, _ context: UnsafePointer<CFFileDescriptorContext>) -> CFFileDescriptor!
func CFFileDescriptorGetNativeDescriptor(f: CFFileDescriptor!) -> CFFileDescriptorNativeDescriptor
func CFFileDescriptorGetContext(f: CFFileDescriptor!, _ context: UnsafeMutablePointer<CFFileDescriptorContext>)
func CFFileDescriptorEnableCallBacks(f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
func CFFileDescriptorDisableCallBacks(f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
func CFFileDescriptorInvalidate(f: CFFileDescriptor!)
func CFFileDescriptorIsValid(f: CFFileDescriptor!) -> Bool
func CFFileDescriptorCreateRunLoopSource(allocator: CFAllocator!, _ f: CFFileDescriptor!, _ order: CFIndex) -> CFRunLoopSource!
var __COREFOUNDATION_CFFILESECURITY__: Int32 { get }
class CFFileSecurity {
}
typealias CFFileSecurityRef = CFFileSecurity
func CFFileSecurityGetTypeID() -> CFTypeID
func CFFileSecurityCreate(allocator: CFAllocator!) -> CFFileSecurity!
func CFFileSecurityCreateCopy(allocator: CFAllocator!, _ fileSec: CFFileSecurity!) -> CFFileSecurity!
func CFFileSecurityCopyOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
func CFFileSecuritySetOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: CFUUID!) -> Bool
func CFFileSecurityCopyGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
func CFFileSecuritySetGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: CFUUID!) -> Bool
func CFFileSecurityCopyAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: UnsafeMutablePointer<acl_t>) -> Bool
func CFFileSecuritySetAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: acl_t) -> Bool
func CFFileSecurityGetOwner(fileSec: CFFileSecurity!, _ owner: UnsafeMutablePointer<uid_t>) -> Bool
func CFFileSecuritySetOwner(fileSec: CFFileSecurity!, _ owner: uid_t) -> Bool
func CFFileSecurityGetGroup(fileSec: CFFileSecurity!, _ group: UnsafeMutablePointer<gid_t>) -> Bool
func CFFileSecuritySetGroup(fileSec: CFFileSecurity!, _ group: gid_t) -> Bool
func CFFileSecurityGetMode(fileSec: CFFileSecurity!, _ mode: UnsafeMutablePointer<mode_t>) -> Bool
func CFFileSecuritySetMode(fileSec: CFFileSecurity!, _ mode: mode_t) -> Bool
struct CFFileSecurityClearOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Owner: CFFileSecurityClearOptions { get }
  static var Group: CFFileSecurityClearOptions { get }
  static var Mode: CFFileSecurityClearOptions { get }
  static var OwnerUUID: CFFileSecurityClearOptions { get }
  static var GroupUUID: CFFileSecurityClearOptions { get }
  static var AccessControlList: CFFileSecurityClearOptions { get }
}
func CFFileSecurityClearProperties(fileSec: CFFileSecurity!, _ clearPropertyMask: CFFileSecurityClearOptions) -> Bool
class CFLocale {
}
typealias CFLocaleRef = CFLocale
func CFLocaleGetTypeID() -> CFTypeID
func CFLocaleGetSystem() -> CFLocale!
func CFLocaleCopyCurrent() -> CFLocale!
func CFLocaleCopyAvailableLocaleIdentifiers() -> CFArray!
func CFLocaleCopyISOLanguageCodes() -> CFArray!
func CFLocaleCopyISOCountryCodes() -> CFArray!
func CFLocaleCopyISOCurrencyCodes() -> CFArray!
func CFLocaleCopyCommonISOCurrencyCodes() -> CFArray!
func CFLocaleCopyPreferredLanguages() -> CFArray!
func CFLocaleCreateCanonicalLanguageIdentifierFromString(allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFString!
func CFLocaleCreateCanonicalLocaleIdentifierFromString(allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFString!
func CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(allocator: CFAllocator!, _ lcode: LangCode, _ rcode: RegionCode) -> CFString!
func CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode(allocator: CFAllocator!, _ lcid: UInt32) -> CFString!
func CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier(localeIdentifier: CFString!) -> UInt32
enum CFLocaleLanguageDirection : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Unknown
  case LeftToRight
  case RightToLeft
  case TopToBottom
  case BottomToTop
}
func CFLocaleGetLanguageCharacterDirection(isoLangCode: CFString!) -> CFLocaleLanguageDirection
func CFLocaleGetLanguageLineDirection(isoLangCode: CFString!) -> CFLocaleLanguageDirection
func CFLocaleCreateComponentsFromLocaleIdentifier(allocator: CFAllocator!, _ localeID: CFString!) -> CFDictionary!
func CFLocaleCreateLocaleIdentifierFromComponents(allocator: CFAllocator!, _ dictionary: CFDictionary!) -> CFString!
func CFLocaleCreate(allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFLocale!
func CFLocaleCreateCopy(allocator: CFAllocator!, _ locale: CFLocale!) -> CFLocale!
func CFLocaleGetIdentifier(locale: CFLocale!) -> CFString!
func CFLocaleGetValue(locale: CFLocale!, _ key: CFString!) -> AnyObject!
func CFLocaleCopyDisplayNameForPropertyValue(displayLocale: CFLocale!, _ key: CFString!, _ value: CFString!) -> CFString!
let kCFLocaleCurrentLocaleDidChangeNotification: CFString!
let kCFLocaleIdentifier: CFString!
let kCFLocaleLanguageCode: CFString!
let kCFLocaleCountryCode: CFString!
let kCFLocaleScriptCode: CFString!
let kCFLocaleVariantCode: CFString!
let kCFLocaleExemplarCharacterSet: CFString!
let kCFLocaleCalendarIdentifier: CFString!
let kCFLocaleCalendar: CFString!
let kCFLocaleCollationIdentifier: CFString!
let kCFLocaleUsesMetricSystem: CFString!
let kCFLocaleMeasurementSystem: CFString!
let kCFLocaleDecimalSeparator: CFString!
let kCFLocaleGroupingSeparator: CFString!
let kCFLocaleCurrencySymbol: CFString!
let kCFLocaleCurrencyCode: CFString!
let kCFLocaleCollatorIdentifier: CFString!
let kCFLocaleQuotationBeginDelimiterKey: CFString!
let kCFLocaleQuotationEndDelimiterKey: CFString!
let kCFLocaleAlternateQuotationBeginDelimiterKey: CFString!
let kCFLocaleAlternateQuotationEndDelimiterKey: CFString!
let kCFGregorianCalendar: CFString!
let kCFBuddhistCalendar: CFString!
let kCFChineseCalendar: CFString!
let kCFHebrewCalendar: CFString!
let kCFIslamicCalendar: CFString!
let kCFIslamicCivilCalendar: CFString!
let kCFJapaneseCalendar: CFString!
let kCFRepublicOfChinaCalendar: CFString!
let kCFPersianCalendar: CFString!
let kCFIndianCalendar: CFString!
let kCFISO8601Calendar: CFString!
let kCFIslamicTabularCalendar: CFString!
let kCFIslamicUmmAlQuraCalendar: CFString!
class CFMachPort {
}
typealias CFMachPortRef = CFMachPort
struct CFMachPortContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFMachPortCallBack = @convention(c) (CFMachPort!, UnsafeMutablePointer<Void>, CFIndex, UnsafeMutablePointer<Void>) -> Void
typealias CFMachPortInvalidationCallBack = @convention(c) (CFMachPort!, UnsafeMutablePointer<Void>) -> Void
func CFMachPortGetTypeID() -> CFTypeID
func CFMachPortCreate(allocator: CFAllocator!, _ callout: CFMachPortCallBack!, _ context: UnsafeMutablePointer<CFMachPortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMachPort!
func CFMachPortCreateWithPort(allocator: CFAllocator!, _ portNum: mach_port_t, _ callout: CFMachPortCallBack!, _ context: UnsafeMutablePointer<CFMachPortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMachPort!
func CFMachPortGetPort(port: CFMachPort!) -> mach_port_t
func CFMachPortGetContext(port: CFMachPort!, _ context: UnsafeMutablePointer<CFMachPortContext>)
func CFMachPortInvalidate(port: CFMachPort!)
func CFMachPortIsValid(port: CFMachPort!) -> Bool
func CFMachPortGetInvalidationCallBack(port: CFMachPort!) -> CFMachPortInvalidationCallBack!
func CFMachPortSetInvalidationCallBack(port: CFMachPort!, _ callout: CFMachPortInvalidationCallBack!)
func CFMachPortCreateRunLoopSource(allocator: CFAllocator!, _ port: CFMachPort!, _ order: CFIndex) -> CFRunLoopSource!
class CFMessagePort {
}
typealias CFMessagePortRef = CFMessagePort
var kCFMessagePortSuccess: Int32 { get }
var kCFMessagePortSendTimeout: Int32 { get }
var kCFMessagePortReceiveTimeout: Int32 { get }
var kCFMessagePortIsInvalid: Int32 { get }
var kCFMessagePortTransportError: Int32 { get }
var kCFMessagePortBecameInvalidError: Int32 { get }
struct CFMessagePortContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFMessagePortCallBack = @convention(c) (CFMessagePort!, Int32, CFData!, UnsafeMutablePointer<Void>) -> Unmanaged<CFData>!
typealias CFMessagePortInvalidationCallBack = @convention(c) (CFMessagePort!, UnsafeMutablePointer<Void>) -> Void
func CFMessagePortGetTypeID() -> CFTypeID
func CFMessagePortCreateLocal(allocator: CFAllocator!, _ name: CFString!, _ callout: CFMessagePortCallBack!, _ context: UnsafeMutablePointer<CFMessagePortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMessagePort!
func CFMessagePortCreateRemote(allocator: CFAllocator!, _ name: CFString!) -> CFMessagePort!
func CFMessagePortIsRemote(ms: CFMessagePort!) -> Bool
func CFMessagePortGetName(ms: CFMessagePort!) -> CFString!
func CFMessagePortSetName(ms: CFMessagePort!, _ newName: CFString!) -> Bool
func CFMessagePortGetContext(ms: CFMessagePort!, _ context: UnsafeMutablePointer<CFMessagePortContext>)
func CFMessagePortInvalidate(ms: CFMessagePort!)
func CFMessagePortIsValid(ms: CFMessagePort!) -> Bool
func CFMessagePortGetInvalidationCallBack(ms: CFMessagePort!) -> CFMessagePortInvalidationCallBack!
func CFMessagePortSetInvalidationCallBack(ms: CFMessagePort!, _ callout: CFMessagePortInvalidationCallBack!)
func CFMessagePortSendRequest(remote: CFMessagePort!, _ msgid: Int32, _ data: CFData!, _ sendTimeout: CFTimeInterval, _ rcvTimeout: CFTimeInterval, _ replyMode: CFString!, _ returnData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> Int32
func CFMessagePortCreateRunLoopSource(allocator: CFAllocator!, _ local: CFMessagePort!, _ order: CFIndex) -> CFRunLoopSource!
func CFMessagePortSetDispatchQueue(ms: CFMessagePort!, _ queue: dispatch_queue_t!)
class CFNotificationCenter {
}
typealias CFNotificationCenterRef = CFNotificationCenter
typealias CFNotificationCallback = @convention(c) (CFNotificationCenter!, UnsafeMutablePointer<Void>, CFString!, UnsafePointer<Void>, CFDictionary!) -> Void
enum CFNotificationSuspensionBehavior : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Drop
  case Coalesce
  case Hold
  case DeliverImmediately
}
func CFNotificationCenterGetTypeID() -> CFTypeID
func CFNotificationCenterGetLocalCenter() -> CFNotificationCenter!
func CFNotificationCenterGetDistributedCenter() -> CFNotificationCenter!
func CFNotificationCenterGetDarwinNotifyCenter() -> CFNotificationCenter!
func CFNotificationCenterAddObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>, _ callBack: CFNotificationCallback!, _ name: CFString!, _ object: UnsafePointer<Void>, _ suspensionBehavior: CFNotificationSuspensionBehavior)
func CFNotificationCenterRemoveObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>, _ name: CFString!, _ object: UnsafePointer<Void>)
func CFNotificationCenterRemoveEveryObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>)
func CFNotificationCenterPostNotification(center: CFNotificationCenter!, _ name: CFString!, _ object: UnsafePointer<Void>, _ userInfo: CFDictionary!, _ deliverImmediately: Bool)
var kCFNotificationDeliverImmediately: CFOptionFlags { get }
var kCFNotificationPostToAllSessions: CFOptionFlags { get }
func CFNotificationCenterPostNotificationWithOptions(center: CFNotificationCenter!, _ name: CFString!, _ object: UnsafePointer<Void>, _ userInfo: CFDictionary!, _ options: CFOptionFlags)
class CFBoolean {
}
typealias CFBooleanRef = CFBoolean
let kCFBooleanTrue: CFBoolean!
let kCFBooleanFalse: CFBoolean!
func CFBooleanGetTypeID() -> CFTypeID
func CFBooleanGetValue(boolean: CFBoolean!) -> Bool
enum CFNumberType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case SInt8Type
  case SInt16Type
  case SInt32Type
  case SInt64Type
  case Float32Type
  case Float64Type
  case CharType
  case ShortType
  case IntType
  case LongType
  case LongLongType
  case FloatType
  case DoubleType
  case CFIndexType
  case NSIntegerType
  case CGFloatType
  static var MaxType: CFNumberType { get }
}
class CFNumber {
}
typealias CFNumberRef = CFNumber
let kCFNumberPositiveInfinity: CFNumber!
let kCFNumberNegativeInfinity: CFNumber!
let kCFNumberNaN: CFNumber!
func CFNumberGetTypeID() -> CFTypeID
func CFNumberCreate(allocator: CFAllocator!, _ theType: CFNumberType, _ valuePtr: UnsafePointer<Void>) -> CFNumber!
func CFNumberGetType(number: CFNumber!) -> CFNumberType
func CFNumberGetByteSize(number: CFNumber!) -> CFIndex
func CFNumberIsFloatType(number: CFNumber!) -> Bool
func CFNumberGetValue(number: CFNumber!, _ theType: CFNumberType, _ valuePtr: UnsafeMutablePointer<Void>) -> Bool
func CFNumberCompare(number: CFNumber!, _ otherNumber: CFNumber!, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
class CFNumberFormatter {
}
typealias CFNumberFormatterRef = CFNumberFormatter
func CFNumberFormatterGetTypeID() -> CFTypeID
enum CFNumberFormatterStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
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
func CFNumberFormatterCreate(allocator: CFAllocator!, _ locale: CFLocale!, _ style: CFNumberFormatterStyle) -> CFNumberFormatter!
func CFNumberFormatterGetLocale(formatter: CFNumberFormatter!) -> CFLocale!
func CFNumberFormatterGetStyle(formatter: CFNumberFormatter!) -> CFNumberFormatterStyle
func CFNumberFormatterGetFormat(formatter: CFNumberFormatter!) -> CFString!
func CFNumberFormatterSetFormat(formatter: CFNumberFormatter!, _ formatString: CFString!)
func CFNumberFormatterCreateStringWithNumber(allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ number: CFNumber!) -> CFString!
func CFNumberFormatterCreateStringWithValue(allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ numberType: CFNumberType, _ valuePtr: UnsafePointer<Void>) -> CFString!
struct CFNumberFormatterOptionFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ParseIntegersOnly: CFNumberFormatterOptionFlags { get }
}
func CFNumberFormatterCreateNumberFromString(allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>, _ options: CFOptionFlags) -> CFNumber!
func CFNumberFormatterGetValueFromString(formatter: CFNumberFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>, _ numberType: CFNumberType, _ valuePtr: UnsafeMutablePointer<Void>) -> Bool
func CFNumberFormatterSetProperty(formatter: CFNumberFormatter!, _ key: CFString!, _ value: AnyObject!)
func CFNumberFormatterCopyProperty(formatter: CFNumberFormatter!, _ key: CFString!) -> AnyObject!
let kCFNumberFormatterCurrencyCode: CFString!
let kCFNumberFormatterDecimalSeparator: CFString!
let kCFNumberFormatterCurrencyDecimalSeparator: CFString!
let kCFNumberFormatterAlwaysShowDecimalSeparator: CFString!
let kCFNumberFormatterGroupingSeparator: CFString!
let kCFNumberFormatterUseGroupingSeparator: CFString!
let kCFNumberFormatterPercentSymbol: CFString!
let kCFNumberFormatterZeroSymbol: CFString!
let kCFNumberFormatterNaNSymbol: CFString!
let kCFNumberFormatterInfinitySymbol: CFString!
let kCFNumberFormatterMinusSign: CFString!
let kCFNumberFormatterPlusSign: CFString!
let kCFNumberFormatterCurrencySymbol: CFString!
let kCFNumberFormatterExponentSymbol: CFString!
let kCFNumberFormatterMinIntegerDigits: CFString!
let kCFNumberFormatterMaxIntegerDigits: CFString!
let kCFNumberFormatterMinFractionDigits: CFString!
let kCFNumberFormatterMaxFractionDigits: CFString!
let kCFNumberFormatterGroupingSize: CFString!
let kCFNumberFormatterSecondaryGroupingSize: CFString!
let kCFNumberFormatterRoundingMode: CFString!
let kCFNumberFormatterRoundingIncrement: CFString!
let kCFNumberFormatterFormatWidth: CFString!
let kCFNumberFormatterPaddingPosition: CFString!
let kCFNumberFormatterPaddingCharacter: CFString!
let kCFNumberFormatterDefaultFormat: CFString!
let kCFNumberFormatterMultiplier: CFString!
let kCFNumberFormatterPositivePrefix: CFString!
let kCFNumberFormatterPositiveSuffix: CFString!
let kCFNumberFormatterNegativePrefix: CFString!
let kCFNumberFormatterNegativeSuffix: CFString!
let kCFNumberFormatterPerMillSymbol: CFString!
let kCFNumberFormatterInternationalCurrencySymbol: CFString!
let kCFNumberFormatterCurrencyGroupingSeparator: CFString!
let kCFNumberFormatterIsLenient: CFString!
let kCFNumberFormatterUseSignificantDigits: CFString!
let kCFNumberFormatterMinSignificantDigits: CFString!
let kCFNumberFormatterMaxSignificantDigits: CFString!
enum CFNumberFormatterRoundingMode : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case RoundCeiling
  case RoundFloor
  case RoundDown
  case RoundUp
  case RoundHalfEven
  case RoundHalfDown
  case RoundHalfUp
}
enum CFNumberFormatterPadPosition : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case BeforePrefix
  case AfterPrefix
  case BeforeSuffix
  case AfterSuffix
}
func CFNumberFormatterGetDecimalInfoForCurrencyCode(currencyCode: CFString!, _ defaultFractionDigits: UnsafeMutablePointer<Int32>, _ roundingIncrement: UnsafeMutablePointer<Double>) -> Bool
var COREFOUNDATION_CFPLUGINCOM_SEPARATE: Int32 { get }
let kCFPlugInDynamicRegistrationKey: CFString!
let kCFPlugInDynamicRegisterFunctionKey: CFString!
let kCFPlugInUnloadFunctionKey: CFString!
let kCFPlugInFactoriesKey: CFString!
let kCFPlugInTypesKey: CFString!
typealias CFPlugInDynamicRegisterFunction = @convention(c) (CFPlugIn!) -> Void
typealias CFPlugInUnloadFunction = @convention(c) (CFPlugIn!) -> Void
typealias CFPlugInFactoryFunction = @convention(c) (CFAllocator!, CFUUID!) -> UnsafeMutablePointer<Void>
func CFPlugInGetTypeID() -> CFTypeID
func CFPlugInCreate(allocator: CFAllocator!, _ plugInURL: CFURL!) -> CFPlugIn!
func CFPlugInGetBundle(plugIn: CFPlugIn!) -> CFBundle!
func CFPlugInSetLoadOnDemand(plugIn: CFPlugIn!, _ flag: Bool)
func CFPlugInIsLoadOnDemand(plugIn: CFPlugIn!) -> Bool
func CFPlugInFindFactoriesForPlugInType(typeUUID: CFUUID!) -> CFArray!
func CFPlugInFindFactoriesForPlugInTypeInPlugIn(typeUUID: CFUUID!, _ plugIn: CFPlugIn!) -> CFArray!
func CFPlugInInstanceCreate(allocator: CFAllocator!, _ factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> UnsafeMutablePointer<Void>
func CFPlugInRegisterFactoryFunction(factoryUUID: CFUUID!, _ func: CFPlugInFactoryFunction!) -> Bool
func CFPlugInRegisterFactoryFunctionByName(factoryUUID: CFUUID!, _ plugIn: CFPlugIn!, _ functionName: CFString!) -> Bool
func CFPlugInUnregisterFactory(factoryUUID: CFUUID!) -> Bool
func CFPlugInRegisterPlugInType(factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> Bool
func CFPlugInUnregisterPlugInType(factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> Bool
func CFPlugInAddInstanceForFactory(factoryID: CFUUID!)
func CFPlugInRemoveInstanceForFactory(factoryID: CFUUID!)
typealias CFPlugInInstanceRef = CFPlugInInstance
class CFPlugInInstance {
}
typealias CFPlugInInstanceGetInterfaceFunction = @convention(c) (CFPlugInInstance!, CFString!, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> DarwinBoolean
typealias CFPlugInInstanceDeallocateInstanceDataFunction = @convention(c) (UnsafeMutablePointer<Void>) -> Void
func CFPlugInInstanceGetInterfaceFunctionTable(instance: CFPlugInInstance!, _ interfaceName: CFString!, _ ftbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func CFPlugInInstanceGetFactoryName(instance: CFPlugInInstance!) -> CFString!
func CFPlugInInstanceGetInstanceData(instance: CFPlugInInstance!) -> UnsafeMutablePointer<Void>
func CFPlugInInstanceGetTypeID() -> CFTypeID
func CFPlugInInstanceCreateWithInstanceDataSize(allocator: CFAllocator!, _ instanceDataSize: CFIndex, _ deallocateInstanceFunction: CFPlugInInstanceDeallocateInstanceDataFunction!, _ factoryName: CFString!, _ getInterfaceFunction: CFPlugInInstanceGetInterfaceFunction!) -> CFPlugInInstance!
let kCFPreferencesAnyApplication: CFString!
let kCFPreferencesCurrentApplication: CFString!
let kCFPreferencesAnyHost: CFString!
let kCFPreferencesCurrentHost: CFString!
let kCFPreferencesAnyUser: CFString!
let kCFPreferencesCurrentUser: CFString!
func CFPreferencesCopyAppValue(key: CFString!, _ applicationID: CFString!) -> CFPropertyList!
func CFPreferencesGetAppBooleanValue(key: CFString!, _ applicationID: CFString!, _ keyExistsAndHasValidFormat: UnsafeMutablePointer<DarwinBoolean>) -> Bool
func CFPreferencesGetAppIntegerValue(key: CFString!, _ applicationID: CFString!, _ keyExistsAndHasValidFormat: UnsafeMutablePointer<DarwinBoolean>) -> CFIndex
func CFPreferencesSetAppValue(key: CFString!, _ value: CFPropertyList!, _ applicationID: CFString!)
func CFPreferencesAddSuitePreferencesToApp(applicationID: CFString!, _ suiteID: CFString!)
func CFPreferencesRemoveSuitePreferencesFromApp(applicationID: CFString!, _ suiteID: CFString!)
func CFPreferencesAppSynchronize(applicationID: CFString!) -> Bool
func CFPreferencesCopyValue(key: CFString!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFPropertyList!
func CFPreferencesCopyMultiple(keysToFetch: CFArray!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFDictionary!
func CFPreferencesSetValue(key: CFString!, _ value: CFPropertyList!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!)
func CFPreferencesSetMultiple(keysToSet: CFDictionary!, _ keysToRemove: CFArray!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!)
func CFPreferencesSynchronize(applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> Bool
func CFPreferencesCopyKeyList(applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFArray!
func CFPreferencesAppValueIsForced(key: CFString!, _ applicationID: CFString!) -> Bool
struct CFPropertyListMutabilityOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Immutable: CFPropertyListMutabilityOptions { get }
  static var MutableContainers: CFPropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: CFPropertyListMutabilityOptions { get }
}
func CFPropertyListCreateFromXMLData(allocator: CFAllocator!, _ xmlData: CFData!, _ mutabilityOption: CFOptionFlags, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Unmanaged<CFPropertyList>!
func CFPropertyListCreateXMLData(allocator: CFAllocator!, _ propertyList: CFPropertyList!) -> Unmanaged<CFData>!
func CFPropertyListCreateDeepCopy(allocator: CFAllocator!, _ propertyList: CFPropertyList!, _ mutabilityOption: CFOptionFlags) -> CFPropertyList!
enum CFPropertyListFormat : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
func CFPropertyListIsValid(plist: CFPropertyList!, _ format: CFPropertyListFormat) -> Bool
func CFPropertyListWriteToStream(propertyList: CFPropertyList!, _ stream: CFWriteStream!, _ format: CFPropertyListFormat, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFIndex
func CFPropertyListCreateFromStream(allocator: CFAllocator!, _ stream: CFReadStream!, _ streamLength: CFIndex, _ mutabilityOption: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Unmanaged<CFPropertyList>!
var kCFPropertyListReadCorruptError: CFIndex { get }
var kCFPropertyListReadUnknownVersionError: CFIndex { get }
var kCFPropertyListReadStreamError: CFIndex { get }
var kCFPropertyListWriteStreamError: CFIndex { get }
func CFPropertyListCreateWithData(allocator: CFAllocator!, _ data: CFData!, _ options: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFPropertyList>!
func CFPropertyListCreateWithStream(allocator: CFAllocator!, _ stream: CFReadStream!, _ streamLength: CFIndex, _ options: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFPropertyList>!
func CFPropertyListWrite(propertyList: CFPropertyList!, _ stream: CFWriteStream!, _ format: CFPropertyListFormat, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFIndex
func CFPropertyListCreateData(allocator: CFAllocator!, _ propertyList: CFPropertyList!, _ format: CFPropertyListFormat, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
class CFRunLoop {
}
typealias CFRunLoopRef = CFRunLoop
class CFRunLoopSource {
}
typealias CFRunLoopSourceRef = CFRunLoopSource
class CFRunLoopObserver {
}
typealias CFRunLoopObserverRef = CFRunLoopObserver
class CFRunLoopTimer {
}
typealias CFRunLoopTimerRef = CFRunLoopTimer
enum CFRunLoopRunResult : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Finished
  case Stopped
  case TimedOut
  case HandledSource
}
struct CFRunLoopActivity : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Entry: CFRunLoopActivity { get }
  static var BeforeTimers: CFRunLoopActivity { get }
  static var BeforeSources: CFRunLoopActivity { get }
  static var BeforeWaiting: CFRunLoopActivity { get }
  static var AfterWaiting: CFRunLoopActivity { get }
  static var Exit: CFRunLoopActivity { get }
  static var AllActivities: CFRunLoopActivity { get }
}
let kCFRunLoopDefaultMode: CFString!
let kCFRunLoopCommonModes: CFString!
func CFRunLoopGetTypeID() -> CFTypeID
func CFRunLoopGetCurrent() -> CFRunLoop!
func CFRunLoopGetMain() -> CFRunLoop!
func CFRunLoopCopyCurrentMode(rl: CFRunLoop!) -> CFString!
func CFRunLoopCopyAllModes(rl: CFRunLoop!) -> CFArray!
func CFRunLoopAddCommonMode(rl: CFRunLoop!, _ mode: CFString!)
func CFRunLoopGetNextTimerFireDate(rl: CFRunLoop!, _ mode: CFString!) -> CFAbsoluteTime
func CFRunLoopRun()
func CFRunLoopRunInMode(mode: CFString!, _ seconds: CFTimeInterval, _ returnAfterSourceHandled: Bool) -> CFRunLoopRunResult
func CFRunLoopIsWaiting(rl: CFRunLoop!) -> Bool
func CFRunLoopWakeUp(rl: CFRunLoop!)
func CFRunLoopStop(rl: CFRunLoop!)
func CFRunLoopPerformBlock(rl: CFRunLoop!, _ mode: AnyObject!, _ block: (() -> Void)!)
func CFRunLoopContainsSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!) -> Bool
func CFRunLoopAddSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!)
func CFRunLoopRemoveSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!)
func CFRunLoopContainsObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!) -> Bool
func CFRunLoopAddObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!)
func CFRunLoopRemoveObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!)
func CFRunLoopContainsTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!) -> Bool
func CFRunLoopAddTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!)
func CFRunLoopRemoveTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!)
struct CFRunLoopSourceContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!
  var hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!
  var schedule: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!
  var cancel: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!
  var perform: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!, hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!, schedule: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!, cancel: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!, perform: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!)
}
struct CFRunLoopSourceContext1 {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!
  var hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!
  var getPort: (@convention(c) (UnsafeMutablePointer<Void>) -> mach_port_t)!
  var perform: (@convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFAllocator!, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!, hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!, getPort: (@convention(c) (UnsafeMutablePointer<Void>) -> mach_port_t)!, perform: (@convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFAllocator!, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!)
}
func CFRunLoopSourceGetTypeID() -> CFTypeID
func CFRunLoopSourceCreate(allocator: CFAllocator!, _ order: CFIndex, _ context: UnsafeMutablePointer<CFRunLoopSourceContext>) -> CFRunLoopSource!
func CFRunLoopSourceGetOrder(source: CFRunLoopSource!) -> CFIndex
func CFRunLoopSourceInvalidate(source: CFRunLoopSource!)
func CFRunLoopSourceIsValid(source: CFRunLoopSource!) -> Bool
func CFRunLoopSourceGetContext(source: CFRunLoopSource!, _ context: UnsafeMutablePointer<CFRunLoopSourceContext>)
func CFRunLoopSourceSignal(source: CFRunLoopSource!)
struct CFRunLoopObserverContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFRunLoopObserverCallBack = @convention(c) (CFRunLoopObserver!, CFRunLoopActivity, UnsafeMutablePointer<Void>) -> Void
func CFRunLoopObserverGetTypeID() -> CFTypeID
func CFRunLoopObserverCreate(allocator: CFAllocator!, _ activities: CFOptionFlags, _ repeats: Bool, _ order: CFIndex, _ callout: CFRunLoopObserverCallBack!, _ context: UnsafeMutablePointer<CFRunLoopObserverContext>) -> CFRunLoopObserver!
func CFRunLoopObserverCreateWithHandler(allocator: CFAllocator!, _ activities: CFOptionFlags, _ repeats: Bool, _ order: CFIndex, _ block: ((CFRunLoopObserver!, CFRunLoopActivity) -> Void)!) -> CFRunLoopObserver!
func CFRunLoopObserverGetActivities(observer: CFRunLoopObserver!) -> CFOptionFlags
func CFRunLoopObserverDoesRepeat(observer: CFRunLoopObserver!) -> Bool
func CFRunLoopObserverGetOrder(observer: CFRunLoopObserver!) -> CFIndex
func CFRunLoopObserverInvalidate(observer: CFRunLoopObserver!)
func CFRunLoopObserverIsValid(observer: CFRunLoopObserver!) -> Bool
func CFRunLoopObserverGetContext(observer: CFRunLoopObserver!, _ context: UnsafeMutablePointer<CFRunLoopObserverContext>)
struct CFRunLoopTimerContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFRunLoopTimerCallBack = @convention(c) (CFRunLoopTimer!, UnsafeMutablePointer<Void>) -> Void
func CFRunLoopTimerGetTypeID() -> CFTypeID
func CFRunLoopTimerCreate(allocator: CFAllocator!, _ fireDate: CFAbsoluteTime, _ interval: CFTimeInterval, _ flags: CFOptionFlags, _ order: CFIndex, _ callout: CFRunLoopTimerCallBack!, _ context: UnsafeMutablePointer<CFRunLoopTimerContext>) -> CFRunLoopTimer!
func CFRunLoopTimerCreateWithHandler(allocator: CFAllocator!, _ fireDate: CFAbsoluteTime, _ interval: CFTimeInterval, _ flags: CFOptionFlags, _ order: CFIndex, _ block: ((CFRunLoopTimer!) -> Void)!) -> CFRunLoopTimer!
func CFRunLoopTimerGetNextFireDate(timer: CFRunLoopTimer!) -> CFAbsoluteTime
func CFRunLoopTimerSetNextFireDate(timer: CFRunLoopTimer!, _ fireDate: CFAbsoluteTime)
func CFRunLoopTimerGetInterval(timer: CFRunLoopTimer!) -> CFTimeInterval
func CFRunLoopTimerDoesRepeat(timer: CFRunLoopTimer!) -> Bool
func CFRunLoopTimerGetOrder(timer: CFRunLoopTimer!) -> CFIndex
func CFRunLoopTimerInvalidate(timer: CFRunLoopTimer!)
func CFRunLoopTimerIsValid(timer: CFRunLoopTimer!) -> Bool
func CFRunLoopTimerGetContext(timer: CFRunLoopTimer!, _ context: UnsafeMutablePointer<CFRunLoopTimerContext>)
func CFRunLoopTimerGetTolerance(timer: CFRunLoopTimer!) -> CFTimeInterval
func CFRunLoopTimerSetTolerance(timer: CFRunLoopTimer!, _ tolerance: CFTimeInterval)
typealias CFSetRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFSetReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFSetCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFSetEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
typealias CFSetHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode
struct CFSetCallBacks {
  var version: CFIndex
  var retain: CFSetRetainCallBack!
  var release: CFSetReleaseCallBack!
  var copyDescription: CFSetCopyDescriptionCallBack!
  var equal: CFSetEqualCallBack!
  var hash: CFSetHashCallBack!
  init()
  init(version: CFIndex, retain: CFSetRetainCallBack!, release: CFSetReleaseCallBack!, copyDescription: CFSetCopyDescriptionCallBack!, equal: CFSetEqualCallBack!, hash: CFSetHashCallBack!)
}
let kCFTypeSetCallBacks: CFSetCallBacks
let kCFCopyStringSetCallBacks: CFSetCallBacks
typealias CFSetApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFSet {
}
typealias CFSetRef = CFSet
class CFMutableSet {
}
typealias CFMutableSetRef = CFMutableSet
func CFSetGetTypeID() -> CFTypeID
func CFSetCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFSetCallBacks>) -> CFSet!
func CFSetCreateCopy(allocator: CFAllocator!, _ theSet: CFSet!) -> CFSet!
func CFSetCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFSetCallBacks>) -> CFMutableSet!
func CFSetCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theSet: CFSet!) -> CFMutableSet!
func CFSetGetCount(theSet: CFSet!) -> CFIndex
func CFSetGetCountOfValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> CFIndex
func CFSetContainsValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> Bool
func CFSetGetValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> UnsafePointer<Void>
func CFSetGetValueIfPresent(theSet: CFSet!, _ candidate: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFSetGetValues(theSet: CFSet!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFSetApplyFunction(theSet: CFSet!, _ applier: CFSetApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFSetAddValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)
func CFSetReplaceValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)
func CFSetSetValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)
func CFSetRemoveValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)
func CFSetRemoveAllValues(theSet: CFMutableSet!)
class CFSocket {
}
typealias CFSocketRef = CFSocket
enum CFSocketError : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Success
  case Error
  case Timeout
}
struct CFSocketSignature {
  var protocolFamily: Int32
  var socketType: Int32
  var `protocol`: Int32
  var address: Unmanaged<CFData>!
  init()
  init(protocolFamily: Int32, socketType: Int32, protocol: Int32, address: Unmanaged<CFData>!)
}
struct CFSocketCallBackType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var NoCallBack: CFSocketCallBackType { get }
  static var ReadCallBack: CFSocketCallBackType { get }
  static var AcceptCallBack: CFSocketCallBackType { get }
  static var DataCallBack: CFSocketCallBackType { get }
  static var ConnectCallBack: CFSocketCallBackType { get }
  static var WriteCallBack: CFSocketCallBackType { get }
}
var kCFSocketAutomaticallyReenableReadCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableAcceptCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableDataCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableWriteCallBack: CFOptionFlags { get }
var kCFSocketLeaveErrors: CFOptionFlags { get }
var kCFSocketCloseOnInvalidate: CFOptionFlags { get }
typealias CFSocketCallBack = @convention(c) (CFSocket!, CFSocketCallBackType, CFData!, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
struct CFSocketContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFSocketNativeHandle = Int32
func CFSocketGetTypeID() -> CFTypeID
func CFSocketCreate(allocator: CFAllocator!, _ protocolFamily: Int32, _ socketType: Int32, _ protocol: Int32, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateWithNative(allocator: CFAllocator!, _ sock: CFSocketNativeHandle, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateWithSocketSignature(allocator: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateConnectedToSocketSignature(allocator: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>, _ timeout: CFTimeInterval) -> CFSocket!
func CFSocketSetAddress(s: CFSocket!, _ address: CFData!) -> CFSocketError
func CFSocketConnectToAddress(s: CFSocket!, _ address: CFData!, _ timeout: CFTimeInterval) -> CFSocketError
func CFSocketInvalidate(s: CFSocket!)
func CFSocketIsValid(s: CFSocket!) -> Bool
func CFSocketCopyAddress(s: CFSocket!) -> CFData!
func CFSocketCopyPeerAddress(s: CFSocket!) -> CFData!
func CFSocketGetContext(s: CFSocket!, _ context: UnsafeMutablePointer<CFSocketContext>)
func CFSocketGetNative(s: CFSocket!) -> CFSocketNativeHandle
func CFSocketCreateRunLoopSource(allocator: CFAllocator!, _ s: CFSocket!, _ order: CFIndex) -> CFRunLoopSource!
func CFSocketGetSocketFlags(s: CFSocket!) -> CFOptionFlags
func CFSocketSetSocketFlags(s: CFSocket!, _ flags: CFOptionFlags)
func CFSocketDisableCallBacks(s: CFSocket!, _ callBackTypes: CFOptionFlags)
func CFSocketEnableCallBacks(s: CFSocket!, _ callBackTypes: CFOptionFlags)
func CFSocketSendData(s: CFSocket!, _ address: CFData!, _ data: CFData!, _ timeout: CFTimeInterval) -> CFSocketError
func CFSocketRegisterValue(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ value: CFPropertyList!) -> CFSocketError
func CFSocketCopyRegisteredValue(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ value: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ nameServerAddress: UnsafeMutablePointer<Unmanaged<CFData>?>) -> CFSocketError
func CFSocketRegisterSocketSignature(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ signature: UnsafePointer<CFSocketSignature>) -> CFSocketError
func CFSocketCopyRegisteredSocketSignature(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ signature: UnsafeMutablePointer<CFSocketSignature>, _ nameServerAddress: UnsafeMutablePointer<Unmanaged<CFData>?>) -> CFSocketError
func CFSocketUnregister(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!) -> CFSocketError
func CFSocketSetDefaultNameRegistryPortNumber(port: UInt16)
func CFSocketGetDefaultNameRegistryPortNumber() -> UInt16
let kCFSocketCommandKey: CFString!
let kCFSocketNameKey: CFString!
let kCFSocketValueKey: CFString!
let kCFSocketResultKey: CFString!
let kCFSocketErrorKey: CFString!
let kCFSocketRegisterCommand: CFString!
let kCFSocketRetrieveCommand: CFString!
enum CFStreamStatus : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NotOpen
  case Opening
  case Open
  case Reading
  case Writing
  case AtEnd
  case Closed
  case Error
}
struct CFStreamEventType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var None: CFStreamEventType { get }
  static var OpenCompleted: CFStreamEventType { get }
  static var HasBytesAvailable: CFStreamEventType { get }
  static var CanAcceptBytes: CFStreamEventType { get }
  static var ErrorOccurred: CFStreamEventType { get }
  static var EndEncountered: CFStreamEventType { get }
}
struct CFStreamClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  var release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
class CFReadStream {
}
typealias CFReadStreamRef = CFReadStream
typealias CFWriteStreamRef = CFWriteStream
class CFWriteStream {
}
typealias CFReadStreamClientCallBack = @convention(c) (CFReadStream!, CFStreamEventType, UnsafeMutablePointer<Void>) -> Void
typealias CFWriteStreamClientCallBack = @convention(c) (CFWriteStream!, CFStreamEventType, UnsafeMutablePointer<Void>) -> Void
func CFReadStreamGetTypeID() -> CFTypeID
func CFWriteStreamGetTypeID() -> CFTypeID
let kCFStreamPropertyDataWritten: CFString!
func CFReadStreamCreateWithBytesNoCopy(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFReadStream!
func CFWriteStreamCreateWithBuffer(alloc: CFAllocator!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferCapacity: CFIndex) -> CFWriteStream!
func CFWriteStreamCreateWithAllocatedBuffers(alloc: CFAllocator!, _ bufferAllocator: CFAllocator!) -> CFWriteStream!
func CFReadStreamCreateWithFile(alloc: CFAllocator!, _ fileURL: CFURL!) -> CFReadStream!
func CFWriteStreamCreateWithFile(alloc: CFAllocator!, _ fileURL: CFURL!) -> CFWriteStream!
func CFStreamCreateBoundPair(alloc: CFAllocator!, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>, _ transferBufferSize: CFIndex)
let kCFStreamPropertyAppendToFile: CFString!
let kCFStreamPropertyFileCurrentOffset: CFString!
let kCFStreamPropertySocketNativeHandle: CFString!
let kCFStreamPropertySocketRemoteHostName: CFString!
let kCFStreamPropertySocketRemotePortNumber: CFString!
func CFStreamCreatePairWithSocket(alloc: CFAllocator!, _ sock: CFSocketNativeHandle, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithSocketToHost(alloc: CFAllocator!, _ host: CFString!, _ port: UInt32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithPeerSocketSignature(alloc: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFReadStreamGetStatus(stream: CFReadStream!) -> CFStreamStatus
func CFWriteStreamGetStatus(stream: CFWriteStream!) -> CFStreamStatus
func CFReadStreamCopyError(stream: CFReadStream!) -> CFError!
func CFWriteStreamCopyError(stream: CFWriteStream!) -> CFError!
func CFReadStreamOpen(stream: CFReadStream!) -> Bool
func CFWriteStreamOpen(stream: CFWriteStream!) -> Bool
func CFReadStreamClose(stream: CFReadStream!)
func CFWriteStreamClose(stream: CFWriteStream!)
func CFReadStreamHasBytesAvailable(stream: CFReadStream!) -> Bool
func CFReadStreamRead(stream: CFReadStream!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamGetBuffer(stream: CFReadStream!, _ maxBytesToRead: CFIndex, _ numBytesRead: UnsafeMutablePointer<CFIndex>) -> UnsafePointer<UInt8>
func CFWriteStreamCanAcceptBytes(stream: CFWriteStream!) -> Bool
func CFWriteStreamWrite(stream: CFWriteStream!, _ buffer: UnsafePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamCopyProperty(stream: CFReadStream!, _ propertyName: CFString!) -> AnyObject!
func CFWriteStreamCopyProperty(stream: CFWriteStream!, _ propertyName: CFString!) -> AnyObject!
func CFReadStreamSetProperty(stream: CFReadStream!, _ propertyName: CFString!, _ propertyValue: AnyObject!) -> Bool
func CFWriteStreamSetProperty(stream: CFWriteStream!, _ propertyName: CFString!, _ propertyValue: AnyObject!) -> Bool
func CFReadStreamSetClient(stream: CFReadStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFReadStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Bool
func CFWriteStreamSetClient(stream: CFWriteStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFWriteStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Bool
func CFReadStreamScheduleWithRunLoop(stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFWriteStreamScheduleWithRunLoop(stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFReadStreamUnscheduleFromRunLoop(stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFWriteStreamUnscheduleFromRunLoop(stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFReadStreamSetDispatchQueue(stream: CFReadStream!, _ q: dispatch_queue_t!)
func CFWriteStreamSetDispatchQueue(stream: CFWriteStream!, _ q: dispatch_queue_t!)
func CFReadStreamCopyDispatchQueue(stream: CFReadStream!) -> dispatch_queue_t!
func CFWriteStreamCopyDispatchQueue(stream: CFWriteStream!) -> dispatch_queue_t!
enum CFStreamErrorDomain : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Custom
  case POSIX
  case MacOSStatus
}
struct CFStreamError {
  var domain: CFIndex
  var error: Int32
  init()
  init(domain: CFIndex, error: Int32)
}
func CFReadStreamGetError(stream: CFReadStream!) -> CFStreamError
func CFWriteStreamGetError(stream: CFWriteStream!) -> CFStreamError
typealias CFStringEncoding = UInt32
var kCFStringEncodingInvalidId: UInt32 { get }
enum CFStringBuiltInEncodings : CFStringEncoding {
  init?(rawValue: CFStringEncoding)
  var rawValue: CFStringEncoding { get }
  case MacRoman
  case WindowsLatin1
  case ISOLatin1
  case NextStepLatin
  case ASCII
  case Unicode
  case UTF8
  case NonLossyASCII
  static var UTF16: CFStringBuiltInEncodings { get }
  case UTF16BE
  case UTF16LE
  case UTF32
  case UTF32BE
  case UTF32LE
}
func CFStringGetTypeID() -> CFTypeID
func CFStringCreateWithPascalString(alloc: CFAllocator!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateWithCString(alloc: CFAllocator!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateWithBytes(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBytes: CFIndex, _ encoding: CFStringEncoding, _ isExternalRepresentation: Bool) -> CFString!
func CFStringCreateWithCharacters(alloc: CFAllocator!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex) -> CFString!
func CFStringCreateWithPascalStringNoCopy(alloc: CFAllocator!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithCStringNoCopy(alloc: CFAllocator!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithBytesNoCopy(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBytes: CFIndex, _ encoding: CFStringEncoding, _ isExternalRepresentation: Bool, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithCharactersNoCopy(alloc: CFAllocator!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithSubstring(alloc: CFAllocator!, _ str: CFString!, _ range: CFRange) -> CFString!
func CFStringCreateCopy(alloc: CFAllocator!, _ theString: CFString!) -> CFString!
func CFStringCreateWithFormatAndArguments(alloc: CFAllocator!, _ formatOptions: CFDictionary!, _ format: CFString!, _ arguments: CVaListPointer) -> CFString!
func CFStringCreateMutable(alloc: CFAllocator!, _ maxLength: CFIndex) -> CFMutableString!
func CFStringCreateMutableCopy(alloc: CFAllocator!, _ maxLength: CFIndex, _ theString: CFString!) -> CFMutableString!
func CFStringCreateMutableWithExternalCharactersNoCopy(alloc: CFAllocator!, _ chars: UnsafeMutablePointer<UniChar>, _ numChars: CFIndex, _ capacity: CFIndex, _ externalCharactersAllocator: CFAllocator!) -> CFMutableString!
func CFStringGetLength(theString: CFString!) -> CFIndex
func CFStringGetCharacterAtIndex(theString: CFString!, _ idx: CFIndex) -> UniChar
func CFStringGetCharacters(theString: CFString!, _ range: CFRange, _ buffer: UnsafeMutablePointer<UniChar>)
func CFStringGetPascalString(theString: CFString!, _ buffer: StringPtr, _ bufferSize: CFIndex, _ encoding: CFStringEncoding) -> Bool
func CFStringGetCString(theString: CFString!, _ buffer: UnsafeMutablePointer<Int8>, _ bufferSize: CFIndex, _ encoding: CFStringEncoding) -> Bool
func CFStringGetPascalStringPtr(theString: CFString!, _ encoding: CFStringEncoding) -> ConstStringPtr
func CFStringGetCStringPtr(theString: CFString!, _ encoding: CFStringEncoding) -> UnsafePointer<Int8>
func CFStringGetCharactersPtr(theString: CFString!) -> UnsafePointer<UniChar>
func CFStringGetBytes(theString: CFString!, _ range: CFRange, _ encoding: CFStringEncoding, _ lossByte: UInt8, _ isExternalRepresentation: Bool, _ buffer: UnsafeMutablePointer<UInt8>, _ maxBufLen: CFIndex, _ usedBufLen: UnsafeMutablePointer<CFIndex>) -> CFIndex
func CFStringCreateFromExternalRepresentation(alloc: CFAllocator!, _ data: CFData!, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateExternalRepresentation(alloc: CFAllocator!, _ theString: CFString!, _ encoding: CFStringEncoding, _ lossByte: UInt8) -> CFData!
func CFStringGetSmallestEncoding(theString: CFString!) -> CFStringEncoding
func CFStringGetFastestEncoding(theString: CFString!) -> CFStringEncoding
func CFStringGetSystemEncoding() -> CFStringEncoding
func CFStringGetMaximumSizeForEncoding(length: CFIndex, _ encoding: CFStringEncoding) -> CFIndex
func CFStringGetFileSystemRepresentation(string: CFString!, _ buffer: UnsafeMutablePointer<Int8>, _ maxBufLen: CFIndex) -> Bool
func CFStringGetMaximumSizeOfFileSystemRepresentation(string: CFString!) -> CFIndex
func CFStringCreateWithFileSystemRepresentation(alloc: CFAllocator!, _ buffer: UnsafePointer<Int8>) -> CFString!
struct CFStringCompareFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var CompareCaseInsensitive: CFStringCompareFlags { get }
  static var CompareBackwards: CFStringCompareFlags { get }
  static var CompareAnchored: CFStringCompareFlags { get }
  static var CompareNonliteral: CFStringCompareFlags { get }
  static var CompareLocalized: CFStringCompareFlags { get }
  static var CompareNumerically: CFStringCompareFlags { get }
  static var CompareDiacriticInsensitive: CFStringCompareFlags { get }
  static var CompareWidthInsensitive: CFStringCompareFlags { get }
  static var CompareForcedOrdering: CFStringCompareFlags { get }
}
func CFStringCompareWithOptionsAndLocale(theString1: CFString!, _ theString2: CFString!, _ rangeToCompare: CFRange, _ compareOptions: CFStringCompareFlags, _ locale: CFLocale!) -> CFComparisonResult
func CFStringCompareWithOptions(theString1: CFString!, _ theString2: CFString!, _ rangeToCompare: CFRange, _ compareOptions: CFStringCompareFlags) -> CFComparisonResult
func CFStringCompare(theString1: CFString!, _ theString2: CFString!, _ compareOptions: CFStringCompareFlags) -> CFComparisonResult
func CFStringFindWithOptionsAndLocale(theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ locale: CFLocale!, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringFindWithOptions(theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringCreateArrayWithFindResults(alloc: CFAllocator!, _ theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ compareOptions: CFStringCompareFlags) -> CFArray!
func CFStringFind(theString: CFString!, _ stringToFind: CFString!, _ compareOptions: CFStringCompareFlags) -> CFRange
func CFStringHasPrefix(theString: CFString!, _ prefix: CFString!) -> Bool
func CFStringHasSuffix(theString: CFString!, _ suffix: CFString!) -> Bool
func CFStringGetRangeOfComposedCharactersAtIndex(theString: CFString!, _ theIndex: CFIndex) -> CFRange
func CFStringFindCharacterFromSet(theString: CFString!, _ theSet: CFCharacterSet!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringGetLineBounds(theString: CFString!, _ range: CFRange, _ lineBeginIndex: UnsafeMutablePointer<CFIndex>, _ lineEndIndex: UnsafeMutablePointer<CFIndex>, _ contentsEndIndex: UnsafeMutablePointer<CFIndex>)
func CFStringGetParagraphBounds(string: CFString!, _ range: CFRange, _ parBeginIndex: UnsafeMutablePointer<CFIndex>, _ parEndIndex: UnsafeMutablePointer<CFIndex>, _ contentsEndIndex: UnsafeMutablePointer<CFIndex>)
func CFStringGetHyphenationLocationBeforeIndex(string: CFString!, _ location: CFIndex, _ limitRange: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!, _ character: UnsafeMutablePointer<UTF32Char>) -> CFIndex
func CFStringIsHyphenationAvailableForLocale(locale: CFLocale!) -> Bool
func CFStringCreateByCombiningStrings(alloc: CFAllocator!, _ theArray: CFArray!, _ separatorString: CFString!) -> CFString!
func CFStringCreateArrayBySeparatingStrings(alloc: CFAllocator!, _ theString: CFString!, _ separatorString: CFString!) -> CFArray!
func CFStringGetIntValue(str: CFString!) -> Int32
func CFStringGetDoubleValue(str: CFString!) -> Double
func CFStringAppend(theString: CFMutableString!, _ appendedString: CFString!)
func CFStringAppendCharacters(theString: CFMutableString!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex)
func CFStringAppendPascalString(theString: CFMutableString!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding)
func CFStringAppendCString(theString: CFMutableString!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding)
func CFStringAppendFormatAndArguments(theString: CFMutableString!, _ formatOptions: CFDictionary!, _ format: CFString!, _ arguments: CVaListPointer)
func CFStringInsert(str: CFMutableString!, _ idx: CFIndex, _ insertedStr: CFString!)
func CFStringDelete(theString: CFMutableString!, _ range: CFRange)
func CFStringReplace(theString: CFMutableString!, _ range: CFRange, _ replacement: CFString!)
func CFStringReplaceAll(theString: CFMutableString!, _ replacement: CFString!)
func CFStringFindAndReplace(theString: CFMutableString!, _ stringToFind: CFString!, _ replacementString: CFString!, _ rangeToSearch: CFRange, _ compareOptions: CFStringCompareFlags) -> CFIndex
func CFStringSetExternalCharactersNoCopy(theString: CFMutableString!, _ chars: UnsafeMutablePointer<UniChar>, _ length: CFIndex, _ capacity: CFIndex)
func CFStringPad(theString: CFMutableString!, _ padString: CFString!, _ length: CFIndex, _ indexIntoPad: CFIndex)
func CFStringTrim(theString: CFMutableString!, _ trimString: CFString!)
func CFStringTrimWhitespace(theString: CFMutableString!)
func CFStringLowercase(theString: CFMutableString!, _ locale: CFLocale!)
func CFStringUppercase(theString: CFMutableString!, _ locale: CFLocale!)
func CFStringCapitalize(theString: CFMutableString!, _ locale: CFLocale!)
enum CFStringNormalizationForm : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case D
  case KD
  case C
  case KC
}
func CFStringNormalize(theString: CFMutableString!, _ theForm: CFStringNormalizationForm)
func CFStringFold(theString: CFMutableString!, _ theFlags: CFStringCompareFlags, _ theLocale: CFLocale!)
func CFStringTransform(string: CFMutableString!, _ range: UnsafeMutablePointer<CFRange>, _ transform: CFString!, _ reverse: Bool) -> Bool
let kCFStringTransformStripCombiningMarks: CFString!
let kCFStringTransformToLatin: CFString!
let kCFStringTransformFullwidthHalfwidth: CFString!
let kCFStringTransformLatinKatakana: CFString!
let kCFStringTransformLatinHiragana: CFString!
let kCFStringTransformHiraganaKatakana: CFString!
let kCFStringTransformMandarinLatin: CFString!
let kCFStringTransformLatinHangul: CFString!
let kCFStringTransformLatinArabic: CFString!
let kCFStringTransformLatinHebrew: CFString!
let kCFStringTransformLatinThai: CFString!
let kCFStringTransformLatinCyrillic: CFString!
let kCFStringTransformLatinGreek: CFString!
let kCFStringTransformToXMLHex: CFString!
let kCFStringTransformToUnicodeName: CFString!
let kCFStringTransformStripDiacritics: CFString!
func CFStringIsEncodingAvailable(encoding: CFStringEncoding) -> Bool
func CFStringGetListOfAvailableEncodings() -> UnsafePointer<CFStringEncoding>
func CFStringGetNameOfEncoding(encoding: CFStringEncoding) -> CFString!
func CFStringConvertEncodingToNSStringEncoding(encoding: CFStringEncoding) -> UInt
func CFStringConvertNSStringEncodingToEncoding(encoding: UInt) -> CFStringEncoding
func CFStringConvertEncodingToWindowsCodepage(encoding: CFStringEncoding) -> UInt32
func CFStringConvertWindowsCodepageToEncoding(codepage: UInt32) -> CFStringEncoding
func CFStringConvertIANACharSetNameToEncoding(theString: CFString!) -> CFStringEncoding
func CFStringConvertEncodingToIANACharSetName(encoding: CFStringEncoding) -> CFString!
func CFStringGetMostCompatibleMacStringEncoding(encoding: CFStringEncoding) -> CFStringEncoding
var __kCFStringInlineBufferLength: Int32 { get }
struct CFStringInlineBuffer {
  var buffer: (UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar)
  var theString: Unmanaged<CFString>!
  var directUniCharBuffer: UnsafePointer<UniChar>
  var directCStringBuffer: UnsafePointer<Int8>
  var rangeToBuffer: CFRange
  var bufferedRangeStart: CFIndex
  var bufferedRangeEnd: CFIndex
  init()
  init(buffer: (UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar), theString: Unmanaged<CFString>!, directUniCharBuffer: UnsafePointer<UniChar>, directCStringBuffer: UnsafePointer<Int8>, rangeToBuffer: CFRange, bufferedRangeStart: CFIndex, bufferedRangeEnd: CFIndex)
}
func CFStringInitInlineBuffer(str: CFString!, _ buf: UnsafeMutablePointer<CFStringInlineBuffer>, _ range: CFRange)
func CFStringGetCharacterFromInlineBuffer(buf: UnsafeMutablePointer<CFStringInlineBuffer>, _ idx: CFIndex) -> UniChar
func CFStringIsSurrogateHighCharacter(character: UniChar) -> Bool
func CFStringIsSurrogateLowCharacter(character: UniChar) -> Bool
func CFStringGetLongCharacterForSurrogatePair(surrogateHigh: UniChar, _ surrogateLow: UniChar) -> UTF32Char
func CFStringGetSurrogatePairForLongCharacter(character: UTF32Char, _ surrogates: UnsafeMutablePointer<UniChar>) -> Bool
func CFShow(obj: AnyObject!)
func CFShowStr(str: CFString!)
func __CFStringMakeConstantString(cStr: UnsafePointer<Int8>) -> CFString!
enum CFStringEncodings : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case MacJapanese
  case MacChineseTrad
  case MacKorean
  case MacArabic
  case MacHebrew
  case MacGreek
  case MacCyrillic
  case MacDevanagari
  case MacGurmukhi
  case MacGujarati
  case MacOriya
  case MacBengali
  case MacTamil
  case MacTelugu
  case MacKannada
  case MacMalayalam
  case MacSinhalese
  case MacBurmese
  case MacKhmer
  case MacThai
  case MacLaotian
  case MacGeorgian
  case MacArmenian
  case MacChineseSimp
  case MacTibetan
  case MacMongolian
  case MacEthiopic
  case MacCentralEurRoman
  case MacVietnamese
  case MacExtArabic
  case MacSymbol
  case MacDingbats
  case MacTurkish
  case MacCroatian
  case MacIcelandic
  case MacRomanian
  case MacCeltic
  case MacGaelic
  case MacFarsi
  case MacUkrainian
  case MacInuit
  case MacVT100
  case MacHFS
  case ISOLatin2
  case ISOLatin3
  case ISOLatin4
  case ISOLatinCyrillic
  case ISOLatinArabic
  case ISOLatinGreek
  case ISOLatinHebrew
  case ISOLatin5
  case ISOLatin6
  case ISOLatinThai
  case ISOLatin7
  case ISOLatin8
  case ISOLatin9
  case ISOLatin10
  case DOSLatinUS
  case DOSGreek
  case DOSBalticRim
  case DOSLatin1
  case DOSGreek1
  case DOSLatin2
  case DOSCyrillic
  case DOSTurkish
  case DOSPortuguese
  case DOSIcelandic
  case DOSHebrew
  case DOSCanadianFrench
  case DOSArabic
  case DOSNordic
  case DOSRussian
  case DOSGreek2
  case DOSThai
  case DOSJapanese
  case DOSChineseSimplif
  case DOSKorean
  case DOSChineseTrad
  case WindowsLatin2
  case WindowsCyrillic
  case WindowsGreek
  case WindowsLatin5
  case WindowsHebrew
  case WindowsArabic
  case WindowsBalticRim
  case WindowsVietnamese
  case WindowsKoreanJohab
  case ANSEL
  case JIS_X0201_76
  case JIS_X0208_83
  case JIS_X0208_90
  case JIS_X0212_90
  case JIS_C6226_78
  case ShiftJIS_X0213
  case ShiftJIS_X0213_MenKuTen
  case GB_2312_80
  case GBK_95
  case GB_18030_2000
  case KSC_5601_87
  case KSC_5601_92_Johab
  case CNS_11643_92_P1
  case CNS_11643_92_P2
  case CNS_11643_92_P3
  case ISO_2022_JP
  case ISO_2022_JP_2
  case ISO_2022_JP_1
  case ISO_2022_JP_3
  case ISO_2022_CN
  case ISO_2022_CN_EXT
  case ISO_2022_KR
  case EUC_JP
  case EUC_CN
  case EUC_TW
  case EUC_KR
  case ShiftJIS
  case KOI8_R
  case Big5
  case MacRomanLatin1
  case HZ_GB_2312
  case Big5_HKSCS_1999
  case VISCII
  case KOI8_U
  case Big5_E
  case NextStepJapanese
  case EBCDIC_US
  case EBCDIC_CP037
  case UTF7
  case UTF7_IMAP
  static var ShiftJIS_X0213_00: CFStringEncodings { get }
}
func CFStringTokenizerCopyBestStringLanguage(string: CFString!, _ range: CFRange) -> CFString!
typealias CFStringTokenizerRef = CFStringTokenizer
class CFStringTokenizer {
}
var kCFStringTokenizerUnitWord: CFOptionFlags { get }
var kCFStringTokenizerUnitSentence: CFOptionFlags { get }
var kCFStringTokenizerUnitParagraph: CFOptionFlags { get }
var kCFStringTokenizerUnitLineBreak: CFOptionFlags { get }
var kCFStringTokenizerUnitWordBoundary: CFOptionFlags { get }
var kCFStringTokenizerAttributeLatinTranscription: CFOptionFlags { get }
var kCFStringTokenizerAttributeLanguage: CFOptionFlags { get }
struct CFStringTokenizerTokenType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var None: CFStringTokenizerTokenType { get }
  static var Normal: CFStringTokenizerTokenType { get }
  static var HasSubTokensMask: CFStringTokenizerTokenType { get }
  static var HasDerivedSubTokensMask: CFStringTokenizerTokenType { get }
  static var HasHasNumbersMask: CFStringTokenizerTokenType { get }
  static var HasNonLettersMask: CFStringTokenizerTokenType { get }
  static var IsCJWordMask: CFStringTokenizerTokenType { get }
}
func CFStringTokenizerGetTypeID() -> CFTypeID
func CFStringTokenizerCreate(alloc: CFAllocator!, _ string: CFString!, _ range: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFStringTokenizer!
func CFStringTokenizerSetString(tokenizer: CFStringTokenizer!, _ string: CFString!, _ range: CFRange)
func CFStringTokenizerGoToTokenAtIndex(tokenizer: CFStringTokenizer!, _ index: CFIndex) -> CFStringTokenizerTokenType
func CFStringTokenizerAdvanceToNextToken(tokenizer: CFStringTokenizer!) -> CFStringTokenizerTokenType
func CFStringTokenizerGetCurrentTokenRange(tokenizer: CFStringTokenizer!) -> CFRange
func CFStringTokenizerCopyCurrentTokenAttribute(tokenizer: CFStringTokenizer!, _ attribute: CFOptionFlags) -> AnyObject!
func CFStringTokenizerGetCurrentSubTokens(tokenizer: CFStringTokenizer!, _ ranges: UnsafeMutablePointer<CFRange>, _ maxRangeLength: CFIndex, _ derivedSubTokens: CFMutableArray!) -> CFIndex
func CFTimeZoneGetTypeID() -> CFTypeID
func CFTimeZoneCopySystem() -> CFTimeZone!
func CFTimeZoneResetSystem()
func CFTimeZoneCopyDefault() -> CFTimeZone!
func CFTimeZoneSetDefault(tz: CFTimeZone!)
func CFTimeZoneCopyKnownNames() -> CFArray!
func CFTimeZoneCopyAbbreviationDictionary() -> CFDictionary!
func CFTimeZoneSetAbbreviationDictionary(dict: CFDictionary!)
func CFTimeZoneCreate(allocator: CFAllocator!, _ name: CFString!, _ data: CFData!) -> CFTimeZone!
func CFTimeZoneCreateWithTimeIntervalFromGMT(allocator: CFAllocator!, _ ti: CFTimeInterval) -> CFTimeZone!
func CFTimeZoneCreateWithName(allocator: CFAllocator!, _ name: CFString!, _ tryAbbrev: Bool) -> CFTimeZone!
func CFTimeZoneGetName(tz: CFTimeZone!) -> CFString!
func CFTimeZoneGetData(tz: CFTimeZone!) -> CFData!
func CFTimeZoneGetSecondsFromGMT(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFTimeInterval
func CFTimeZoneCopyAbbreviation(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFString!
func CFTimeZoneIsDaylightSavingTime(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> Bool
func CFTimeZoneGetDaylightSavingTimeOffset(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFTimeInterval
func CFTimeZoneGetNextDaylightSavingTimeTransition(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFAbsoluteTime
enum CFTimeZoneNameStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Standard
  case ShortStandard
  case DaylightSaving
  case ShortDaylightSaving
  case Generic
  case ShortGeneric
}
func CFTimeZoneCopyLocalizedName(tz: CFTimeZone!, _ style: CFTimeZoneNameStyle, _ locale: CFLocale!) -> CFString!
let kCFTimeZoneSystemTimeZoneDidChangeNotification: CFString!
typealias CFTreeRetainCallBack = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFTreeReleaseCallBack = @convention(c) (UnsafePointer<Void>) -> Void
typealias CFTreeCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
struct CFTreeContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFTreeRetainCallBack!
  var release: CFTreeReleaseCallBack!
  var copyDescription: CFTreeCopyDescriptionCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFTreeRetainCallBack!, release: CFTreeReleaseCallBack!, copyDescription: CFTreeCopyDescriptionCallBack!)
}
typealias CFTreeApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFTree {
}
typealias CFTreeRef = CFTree
func CFTreeGetTypeID() -> CFTypeID
func CFTreeCreate(allocator: CFAllocator!, _ context: UnsafePointer<CFTreeContext>) -> CFTree!
func CFTreeGetParent(tree: CFTree!) -> CFTree!
func CFTreeGetNextSibling(tree: CFTree!) -> CFTree!
func CFTreeGetFirstChild(tree: CFTree!) -> CFTree!
func CFTreeGetContext(tree: CFTree!, _ context: UnsafeMutablePointer<CFTreeContext>)
func CFTreeGetChildCount(tree: CFTree!) -> CFIndex
func CFTreeGetChildAtIndex(tree: CFTree!, _ idx: CFIndex) -> CFTree!
func CFTreeGetChildren(tree: CFTree!, _ children: UnsafeMutablePointer<Unmanaged<CFTree>?>)
func CFTreeApplyFunctionToChildren(tree: CFTree!, _ applier: CFTreeApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFTreeFindRoot(tree: CFTree!) -> CFTree!
func CFTreeSetContext(tree: CFTree!, _ context: UnsafePointer<CFTreeContext>)
func CFTreePrependChild(tree: CFTree!, _ newChild: CFTree!)
func CFTreeAppendChild(tree: CFTree!, _ newChild: CFTree!)
func CFTreeInsertSibling(tree: CFTree!, _ newSibling: CFTree!)
func CFTreeRemove(tree: CFTree!)
func CFTreeRemoveAllChildren(tree: CFTree!)
func CFTreeSortChildren(tree: CFTree!, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>)
enum CFURLPathStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case CFURLPOSIXPathStyle
  case CFURLWindowsPathStyle
}
class CFURL {
}
typealias CFURLRef = CFURL
func CFURLGetTypeID() -> CFTypeID
func CFURLCreateWithBytes(allocator: CFAllocator!, _ URLBytes: UnsafePointer<UInt8>, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateData(allocator: CFAllocator!, _ url: CFURL!, _ encoding: CFStringEncoding, _ escapeWhitespace: Bool) -> CFData!
func CFURLCreateWithString(allocator: CFAllocator!, _ URLString: CFString!, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateAbsoluteURLWithBytes(alloc: CFAllocator!, _ relativeURLBytes: UnsafePointer<UInt8>, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!, _ useCompatibilityMode: Bool) -> CFURL!
func CFURLCreateWithFileSystemPath(allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool) -> CFURL!
func CFURLCreateFromFileSystemRepresentation(allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>, _ bufLen: CFIndex, _ isDirectory: Bool) -> CFURL!
func CFURLCreateWithFileSystemPathRelativeToBase(allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateFromFileSystemRepresentationRelativeToBase(allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>, _ bufLen: CFIndex, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLGetFileSystemRepresentation(url: CFURL!, _ resolveAgainstBase: Bool, _ buffer: UnsafeMutablePointer<UInt8>, _ maxBufLen: CFIndex) -> Bool
func CFURLCopyAbsoluteURL(relativeURL: CFURL!) -> CFURL!
func CFURLGetString(anURL: CFURL!) -> CFString!
func CFURLGetBaseURL(anURL: CFURL!) -> CFURL!
func CFURLCanBeDecomposed(anURL: CFURL!) -> Bool
func CFURLCopyScheme(anURL: CFURL!) -> CFString!
func CFURLCopyNetLocation(anURL: CFURL!) -> CFString!
func CFURLCopyPath(anURL: CFURL!) -> CFString!
func CFURLCopyStrictPath(anURL: CFURL!, _ isAbsolute: UnsafeMutablePointer<DarwinBoolean>) -> CFString!
func CFURLCopyFileSystemPath(anURL: CFURL!, _ pathStyle: CFURLPathStyle) -> CFString!
func CFURLHasDirectoryPath(anURL: CFURL!) -> Bool
func CFURLCopyResourceSpecifier(anURL: CFURL!) -> CFString!
func CFURLCopyHostName(anURL: CFURL!) -> CFString!
func CFURLGetPortNumber(anURL: CFURL!) -> Int32
func CFURLCopyUserName(anURL: CFURL!) -> CFString!
func CFURLCopyPassword(anURL: CFURL!) -> CFString!
func CFURLCopyParameterString(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyQueryString(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyFragment(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyLastPathComponent(url: CFURL!) -> CFString!
func CFURLCopyPathExtension(url: CFURL!) -> CFString!
func CFURLCreateCopyAppendingPathComponent(allocator: CFAllocator!, _ url: CFURL!, _ pathComponent: CFString!, _ isDirectory: Bool) -> CFURL!
func CFURLCreateCopyDeletingLastPathComponent(allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLCreateCopyAppendingPathExtension(allocator: CFAllocator!, _ url: CFURL!, _ extension: CFString!) -> CFURL!
func CFURLCreateCopyDeletingPathExtension(allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLGetBytes(url: CFURL!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
enum CFURLComponentType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Scheme
  case NetLocation
  case Path
  case ResourceSpecifier
  case User
  case Password
  case UserInfo
  case Host
  case Port
  case ParameterString
  case Query
  case Fragment
}
func CFURLGetByteRangeForComponent(url: CFURL!, _ component: CFURLComponentType, _ rangeIncludingSeparators: UnsafeMutablePointer<CFRange>) -> CFRange
func CFURLCreateStringByReplacingPercentEscapes(allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCreateStringByReplacingPercentEscapesUsingEncoding(allocator: CFAllocator!, _ origString: CFString!, _ charsToLeaveEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
func CFURLCreateStringByAddingPercentEscapes(allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveUnescaped: CFString!, _ legalURLCharactersToBeEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
func CFURLIsFileReferenceURL(url: CFURL!) -> Bool
func CFURLCreateFileReferenceURL(allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
func CFURLCreateFilePathURL(allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
func CFURLCopyResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValueTypeRefPtr: UnsafeMutablePointer<Void>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CFURLCopyResourcePropertiesForKeys(url: CFURL!, _ keys: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
func CFURLSetResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValue: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CFURLSetResourcePropertiesForKeys(url: CFURL!, _ keyedPropertyValues: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
let kCFURLKeysOfUnsetValuesKey: CFString!
func CFURLClearResourcePropertyCacheForKey(url: CFURL!, _ key: CFString!)
func CFURLClearResourcePropertyCache(url: CFURL!)
func CFURLSetTemporaryResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValue: AnyObject!)
func CFURLResourceIsReachable(url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
let kCFURLNameKey: CFString!
let kCFURLLocalizedNameKey: CFString!
let kCFURLIsRegularFileKey: CFString!
let kCFURLIsDirectoryKey: CFString!
let kCFURLIsSymbolicLinkKey: CFString!
let kCFURLIsVolumeKey: CFString!
let kCFURLIsPackageKey: CFString!
let kCFURLIsApplicationKey: CFString!
let kCFURLApplicationIsScriptableKey: CFString!
let kCFURLIsSystemImmutableKey: CFString!
let kCFURLIsUserImmutableKey: CFString!
let kCFURLIsHiddenKey: CFString!
let kCFURLHasHiddenExtensionKey: CFString!
let kCFURLCreationDateKey: CFString!
let kCFURLContentAccessDateKey: CFString!
let kCFURLContentModificationDateKey: CFString!
let kCFURLAttributeModificationDateKey: CFString!
let kCFURLLinkCountKey: CFString!
let kCFURLParentDirectoryURLKey: CFString!
let kCFURLVolumeURLKey: CFString!
let kCFURLTypeIdentifierKey: CFString!
let kCFURLLocalizedTypeDescriptionKey: CFString!
let kCFURLLabelNumberKey: CFString!
let kCFURLLabelColorKey: CFString!
let kCFURLLocalizedLabelKey: CFString!
let kCFURLEffectiveIconKey: CFString!
let kCFURLCustomIconKey: CFString!
let kCFURLFileResourceIdentifierKey: CFString!
let kCFURLVolumeIdentifierKey: CFString!
let kCFURLPreferredIOBlockSizeKey: CFString!
let kCFURLIsReadableKey: CFString!
let kCFURLIsWritableKey: CFString!
let kCFURLIsExecutableKey: CFString!
let kCFURLFileSecurityKey: CFString!
let kCFURLIsExcludedFromBackupKey: CFString!
let kCFURLTagNamesKey: CFString!
let kCFURLPathKey: CFString!
let kCFURLIsMountTriggerKey: CFString!
let kCFURLGenerationIdentifierKey: CFString!
let kCFURLDocumentIdentifierKey: CFString!
let kCFURLAddedToDirectoryDateKey: CFString!
let kCFURLQuarantinePropertiesKey: CFString!
let kCFURLFileResourceTypeKey: CFString!
let kCFURLFileResourceTypeNamedPipe: CFString!
let kCFURLFileResourceTypeCharacterSpecial: CFString!
let kCFURLFileResourceTypeDirectory: CFString!
let kCFURLFileResourceTypeBlockSpecial: CFString!
let kCFURLFileResourceTypeRegular: CFString!
let kCFURLFileResourceTypeSymbolicLink: CFString!
let kCFURLFileResourceTypeSocket: CFString!
let kCFURLFileResourceTypeUnknown: CFString!
let kCFURLFileSizeKey: CFString!
let kCFURLFileAllocatedSizeKey: CFString!
let kCFURLTotalFileSizeKey: CFString!
let kCFURLTotalFileAllocatedSizeKey: CFString!
let kCFURLIsAliasFileKey: CFString!
let kCFURLVolumeLocalizedFormatDescriptionKey: CFString!
let kCFURLVolumeTotalCapacityKey: CFString!
let kCFURLVolumeAvailableCapacityKey: CFString!
let kCFURLVolumeResourceCountKey: CFString!
let kCFURLVolumeSupportsPersistentIDsKey: CFString!
let kCFURLVolumeSupportsSymbolicLinksKey: CFString!
let kCFURLVolumeSupportsHardLinksKey: CFString!
let kCFURLVolumeSupportsJournalingKey: CFString!
let kCFURLVolumeIsJournalingKey: CFString!
let kCFURLVolumeSupportsSparseFilesKey: CFString!
let kCFURLVolumeSupportsZeroRunsKey: CFString!
let kCFURLVolumeSupportsCaseSensitiveNamesKey: CFString!
let kCFURLVolumeSupportsCasePreservedNamesKey: CFString!
let kCFURLVolumeSupportsRootDirectoryDatesKey: CFString!
let kCFURLVolumeSupportsVolumeSizesKey: CFString!
let kCFURLVolumeSupportsRenamingKey: CFString!
let kCFURLVolumeSupportsAdvisoryFileLockingKey: CFString!
let kCFURLVolumeSupportsExtendedSecurityKey: CFString!
let kCFURLVolumeIsBrowsableKey: CFString!
let kCFURLVolumeMaximumFileSizeKey: CFString!
let kCFURLVolumeIsEjectableKey: CFString!
let kCFURLVolumeIsRemovableKey: CFString!
let kCFURLVolumeIsInternalKey: CFString!
let kCFURLVolumeIsAutomountedKey: CFString!
let kCFURLVolumeIsLocalKey: CFString!
let kCFURLVolumeIsReadOnlyKey: CFString!
let kCFURLVolumeCreationDateKey: CFString!
let kCFURLVolumeURLForRemountingKey: CFString!
let kCFURLVolumeUUIDStringKey: CFString!
let kCFURLVolumeNameKey: CFString!
let kCFURLVolumeLocalizedNameKey: CFString!
let kCFURLIsUbiquitousItemKey: CFString!
let kCFURLUbiquitousItemHasUnresolvedConflictsKey: CFString!
let kCFURLUbiquitousItemIsDownloadingKey: CFString!
let kCFURLUbiquitousItemIsUploadedKey: CFString!
let kCFURLUbiquitousItemIsUploadingKey: CFString!
let kCFURLUbiquitousItemDownloadingStatusKey: CFString!
let kCFURLUbiquitousItemDownloadingErrorKey: CFString!
let kCFURLUbiquitousItemUploadingErrorKey: CFString!
let kCFURLUbiquitousItemDownloadingStatusNotDownloaded: CFString!
let kCFURLUbiquitousItemDownloadingStatusDownloaded: CFString!
let kCFURLUbiquitousItemDownloadingStatusCurrent: CFString!
struct CFURLBookmarkCreationOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var MinimalBookmarkMask: CFURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: CFURLBookmarkCreationOptions { get }
  static var WithSecurityScope: CFURLBookmarkCreationOptions { get }
  static var SecurityScopeAllowOnlyReadAccess: CFURLBookmarkCreationOptions { get }
}
struct CFURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var CFURLBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var CFURLBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
  static var CFURLBookmarkResolutionWithSecurityScope: CFURLBookmarkResolutionOptions { get }
  static var CFBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var CFBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
}
typealias CFURLBookmarkFileCreationOptions = CFOptionFlags
func CFURLCreateBookmarkData(allocator: CFAllocator!, _ url: CFURL!, _ options: CFURLBookmarkCreationOptions, _ resourcePropertiesToInclude: CFArray!, _ relativeToURL: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
func CFURLCreateByResolvingBookmarkData(allocator: CFAllocator!, _ bookmark: CFData!, _ options: CFURLBookmarkResolutionOptions, _ relativeToURL: CFURL!, _ resourcePropertiesToInclude: CFArray!, _ isStale: UnsafeMutablePointer<DarwinBoolean>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
func CFURLCreateResourcePropertiesForKeysFromBookmarkData(allocator: CFAllocator!, _ resourcePropertiesToReturn: CFArray!, _ bookmark: CFData!) -> Unmanaged<CFDictionary>!
func CFURLCreateResourcePropertyForKeyFromBookmarkData(allocator: CFAllocator!, _ resourcePropertyKey: CFString!, _ bookmark: CFData!) -> Unmanaged<AnyObject>!
func CFURLCreateBookmarkDataFromFile(allocator: CFAllocator!, _ fileURL: CFURL!, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
func CFURLWriteBookmarkDataToFile(bookmarkRef: CFData!, _ fileURL: CFURL!, _ options: CFURLBookmarkFileCreationOptions, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CFURLCreateBookmarkDataFromAliasRecord(allocatorRef: CFAllocator!, _ aliasRecordDataRef: CFData!) -> Unmanaged<CFData>!
func CFURLStartAccessingSecurityScopedResource(url: CFURL!) -> Bool
func CFURLStopAccessingSecurityScopedResource(url: CFURL!)
var __COREFOUNDATION_CFURLENUMERATOR__: Int32 { get }
class CFURLEnumerator {
}
typealias CFURLEnumeratorRef = CFURLEnumerator
func CFURLEnumeratorGetTypeID() -> CFTypeID
struct CFURLEnumeratorOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var DefaultBehavior: CFURLEnumeratorOptions { get }
  static var DescendRecursively: CFURLEnumeratorOptions { get }
  static var SkipInvisibles: CFURLEnumeratorOptions { get }
  static var GenerateFileReferenceURLs: CFURLEnumeratorOptions { get }
  static var SkipPackageContents: CFURLEnumeratorOptions { get }
  static var IncludeDirectoriesPreOrder: CFURLEnumeratorOptions { get }
  static var IncludeDirectoriesPostOrder: CFURLEnumeratorOptions { get }
}
func CFURLEnumeratorCreateForDirectoryURL(alloc: CFAllocator!, _ directoryURL: CFURL!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
func CFURLEnumeratorCreateForMountedVolumes(alloc: CFAllocator!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
enum CFURLEnumeratorResult : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Success
  case End
  case Error
  case DirectoryPostOrderSuccess
}
func CFURLEnumeratorGetNextURL(enumerator: CFURLEnumerator!, _ url: UnsafeMutablePointer<Unmanaged<CFURL>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFURLEnumeratorResult
func CFURLEnumeratorSkipDescendents(enumerator: CFURLEnumerator!)
func CFURLEnumeratorGetDescendentLevel(enumerator: CFURLEnumerator!) -> CFIndex
class CFUUID {
}
typealias CFUUIDRef = CFUUID
struct CFUUIDBytes {
  var byte0: UInt8
  var byte1: UInt8
  var byte2: UInt8
  var byte3: UInt8
  var byte4: UInt8
  var byte5: UInt8
  var byte6: UInt8
  var byte7: UInt8
  var byte8: UInt8
  var byte9: UInt8
  var byte10: UInt8
  var byte11: UInt8
  var byte12: UInt8
  var byte13: UInt8
  var byte14: UInt8
  var byte15: UInt8
  init()
  init(byte0: UInt8, byte1: UInt8, byte2: UInt8, byte3: UInt8, byte4: UInt8, byte5: UInt8, byte6: UInt8, byte7: UInt8, byte8: UInt8, byte9: UInt8, byte10: UInt8, byte11: UInt8, byte12: UInt8, byte13: UInt8, byte14: UInt8, byte15: UInt8)
}
func CFUUIDGetTypeID() -> CFTypeID
func CFUUIDCreate(alloc: CFAllocator!) -> CFUUID!
func CFUUIDCreateWithBytes(alloc: CFAllocator!, _ byte0: UInt8, _ byte1: UInt8, _ byte2: UInt8, _ byte3: UInt8, _ byte4: UInt8, _ byte5: UInt8, _ byte6: UInt8, _ byte7: UInt8, _ byte8: UInt8, _ byte9: UInt8, _ byte10: UInt8, _ byte11: UInt8, _ byte12: UInt8, _ byte13: UInt8, _ byte14: UInt8, _ byte15: UInt8) -> CFUUID!
func CFUUIDCreateFromString(alloc: CFAllocator!, _ uuidStr: CFString!) -> CFUUID!
func CFUUIDCreateString(alloc: CFAllocator!, _ uuid: CFUUID!) -> CFString!
func CFUUIDGetConstantUUIDWithBytes(alloc: CFAllocator!, _ byte0: UInt8, _ byte1: UInt8, _ byte2: UInt8, _ byte3: UInt8, _ byte4: UInt8, _ byte5: UInt8, _ byte6: UInt8, _ byte7: UInt8, _ byte8: UInt8, _ byte9: UInt8, _ byte10: UInt8, _ byte11: UInt8, _ byte12: UInt8, _ byte13: UInt8, _ byte14: UInt8, _ byte15: UInt8) -> CFUUID!
func CFUUIDGetUUIDBytes(uuid: CFUUID!) -> CFUUIDBytes
func CFUUIDCreateFromUUIDBytes(alloc: CFAllocator!, _ bytes: CFUUIDBytes) -> CFUUID!
class CFUserNotification {
}
typealias CFUserNotificationRef = CFUserNotification
typealias CFUserNotificationCallBack = @convention(c) (CFUserNotification!, CFOptionFlags) -> Void
func CFUserNotificationGetTypeID() -> CFTypeID
func CFUserNotificationCreate(allocator: CFAllocator!, _ timeout: CFTimeInterval, _ flags: CFOptionFlags, _ error: UnsafeMutablePointer<Int32>, _ dictionary: CFDictionary!) -> CFUserNotification!
func CFUserNotificationReceiveResponse(userNotification: CFUserNotification!, _ timeout: CFTimeInterval, _ responseFlags: UnsafeMutablePointer<CFOptionFlags>) -> Int32
func CFUserNotificationGetResponseValue(userNotification: CFUserNotification!, _ key: CFString!, _ idx: CFIndex) -> CFString!
func CFUserNotificationGetResponseDictionary(userNotification: CFUserNotification!) -> CFDictionary!
func CFUserNotificationUpdate(userNotification: CFUserNotification!, _ timeout: CFTimeInterval, _ flags: CFOptionFlags, _ dictionary: CFDictionary!) -> Int32
func CFUserNotificationCancel(userNotification: CFUserNotification!) -> Int32
func CFUserNotificationCreateRunLoopSource(allocator: CFAllocator!, _ userNotification: CFUserNotification!, _ callout: CFUserNotificationCallBack!, _ order: CFIndex) -> CFRunLoopSource!
func CFUserNotificationDisplayNotice(timeout: CFTimeInterval, _ flags: CFOptionFlags, _ iconURL: CFURL!, _ soundURL: CFURL!, _ localizationURL: CFURL!, _ alertHeader: CFString!, _ alertMessage: CFString!, _ defaultButtonTitle: CFString!) -> Int32
func CFUserNotificationDisplayAlert(timeout: CFTimeInterval, _ flags: CFOptionFlags, _ iconURL: CFURL!, _ soundURL: CFURL!, _ localizationURL: CFURL!, _ alertHeader: CFString!, _ alertMessage: CFString!, _ defaultButtonTitle: CFString!, _ alternateButtonTitle: CFString!, _ otherButtonTitle: CFString!, _ responseFlags: UnsafeMutablePointer<CFOptionFlags>) -> Int32
var kCFUserNotificationStopAlertLevel: CFOptionFlags { get }
var kCFUserNotificationNoteAlertLevel: CFOptionFlags { get }
var kCFUserNotificationCautionAlertLevel: CFOptionFlags { get }
var kCFUserNotificationPlainAlertLevel: CFOptionFlags { get }
var kCFUserNotificationDefaultResponse: CFOptionFlags { get }
var kCFUserNotificationAlternateResponse: CFOptionFlags { get }
var kCFUserNotificationOtherResponse: CFOptionFlags { get }
var kCFUserNotificationCancelResponse: CFOptionFlags { get }
var kCFUserNotificationNoDefaultButtonFlag: CFOptionFlags { get }
var kCFUserNotificationUseRadioButtonsFlag: CFOptionFlags { get }
func CFUserNotificationCheckBoxChecked(i: CFIndex) -> CFOptionFlags
func CFUserNotificationSecureTextField(i: CFIndex) -> CFOptionFlags
func CFUserNotificationPopUpSelection(n: CFIndex) -> CFOptionFlags
let kCFUserNotificationIconURLKey: CFString!
let kCFUserNotificationSoundURLKey: CFString!
let kCFUserNotificationLocalizationURLKey: CFString!
let kCFUserNotificationAlertHeaderKey: CFString!
let kCFUserNotificationAlertMessageKey: CFString!
let kCFUserNotificationDefaultButtonTitleKey: CFString!
let kCFUserNotificationAlternateButtonTitleKey: CFString!
let kCFUserNotificationOtherButtonTitleKey: CFString!
let kCFUserNotificationProgressIndicatorValueKey: CFString!
let kCFUserNotificationPopUpTitlesKey: CFString!
let kCFUserNotificationTextFieldTitlesKey: CFString!
let kCFUserNotificationCheckBoxTitlesKey: CFString!
let kCFUserNotificationTextFieldValuesKey: CFString!
let kCFUserNotificationPopUpSelectionKey: CFString!
var kCFXMLNodeCurrentVersion: CFIndex { get }
typealias CFXMLNodeRef = CFXMLNode
class CFXMLNode {
}
typealias CFXMLTree = CFTreeRef
typealias CFXMLTreeRef = CFXMLTree
enum CFXMLNodeTypeCode : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Document
  case Element
  case Attribute
  case ProcessingInstruction
  case Comment
  case Text
  case CDATASection
  case DocumentFragment
  case Entity
  case EntityReference
  case DocumentType
  case Whitespace
  case Notation
  case ElementTypeDeclaration
  case AttributeListDeclaration
}
struct CFXMLElementInfo {
  var attributes: Unmanaged<CFDictionary>!
  var attributeOrder: Unmanaged<CFArray>!
  var isEmpty: DarwinBoolean
  var _reserved: (Int8, Int8, Int8)
  init()
  init(attributes: Unmanaged<CFDictionary>!, attributeOrder: Unmanaged<CFArray>!, isEmpty: DarwinBoolean, _reserved: (Int8, Int8, Int8))
}
struct CFXMLProcessingInstructionInfo {
  var dataString: Unmanaged<CFString>!
  init()
  init(dataString: Unmanaged<CFString>!)
}
struct CFXMLDocumentInfo {
  var sourceURL: Unmanaged<CFURL>!
  var encoding: CFStringEncoding
  init()
  init(sourceURL: Unmanaged<CFURL>!, encoding: CFStringEncoding)
}
struct CFXMLExternalID {
  var systemID: Unmanaged<CFURL>!
  var publicID: Unmanaged<CFString>!
  init()
  init(systemID: Unmanaged<CFURL>!, publicID: Unmanaged<CFString>!)
}
struct CFXMLDocumentTypeInfo {
  var externalID: CFXMLExternalID
  init()
  init(externalID: CFXMLExternalID)
}
struct CFXMLNotationInfo {
  var externalID: CFXMLExternalID
  init()
  init(externalID: CFXMLExternalID)
}
struct CFXMLElementTypeDeclarationInfo {
  var contentDescription: Unmanaged<CFString>!
  init()
  init(contentDescription: Unmanaged<CFString>!)
}
struct CFXMLAttributeDeclarationInfo {
  var attributeName: Unmanaged<CFString>!
  var typeString: Unmanaged<CFString>!
  var defaultString: Unmanaged<CFString>!
  init()
  init(attributeName: Unmanaged<CFString>!, typeString: Unmanaged<CFString>!, defaultString: Unmanaged<CFString>!)
}
struct CFXMLAttributeListDeclarationInfo {
  var numberOfAttributes: CFIndex
  var attributes: UnsafeMutablePointer<CFXMLAttributeDeclarationInfo>
  init()
  init(numberOfAttributes: CFIndex, attributes: UnsafeMutablePointer<CFXMLAttributeDeclarationInfo>)
}
enum CFXMLEntityTypeCode : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Parameter
  case ParsedInternal
  case ParsedExternal
  case Unparsed
  case Character
}
struct CFXMLEntityInfo {
  var entityType: CFXMLEntityTypeCode
  var replacementText: Unmanaged<CFString>!
  var entityID: CFXMLExternalID
  var notationName: Unmanaged<CFString>!
  init()
  init(entityType: CFXMLEntityTypeCode, replacementText: Unmanaged<CFString>!, entityID: CFXMLExternalID, notationName: Unmanaged<CFString>!)
}
struct CFXMLEntityReferenceInfo {
  var entityType: CFXMLEntityTypeCode
  init()
  init(entityType: CFXMLEntityTypeCode)
}
class CFXMLParser {
}
typealias CFXMLParserRef = CFXMLParser
struct CFXMLParserOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ValidateDocument: CFXMLParserOptions { get }
  static var SkipMetaData: CFXMLParserOptions { get }
  static var ReplacePhysicalEntities: CFXMLParserOptions { get }
  static var SkipWhitespace: CFXMLParserOptions { get }
  static var ResolveExternalEntities: CFXMLParserOptions { get }
  static var AddImpliedAttributes: CFXMLParserOptions { get }
  static var AllOptions: CFXMLParserOptions { get }
  static var NoOptions: CFXMLParserOptions { get }
}
struct CFXMLParserStatusCode : OptionSetType {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
  static var StatusParseNotBegun: CFXMLParserStatusCode { get }
  static var StatusParseInProgress: CFXMLParserStatusCode { get }
  static var StatusParseSuccessful: CFXMLParserStatusCode { get }
  static var ErrorUnexpectedEOF: CFXMLParserStatusCode { get }
  static var ErrorUnknownEncoding: CFXMLParserStatusCode { get }
  static var ErrorEncodingConversionFailure: CFXMLParserStatusCode { get }
  static var ErrorMalformedProcessingInstruction: CFXMLParserStatusCode { get }
  static var ErrorMalformedDTD: CFXMLParserStatusCode { get }
  static var ErrorMalformedName: CFXMLParserStatusCode { get }
  static var ErrorMalformedCDSect: CFXMLParserStatusCode { get }
  static var ErrorMalformedCloseTag: CFXMLParserStatusCode { get }
  static var ErrorMalformedStartTag: CFXMLParserStatusCode { get }
  static var ErrorMalformedDocument: CFXMLParserStatusCode { get }
  static var ErrorElementlessDocument: CFXMLParserStatusCode { get }
  static var ErrorMalformedComment: CFXMLParserStatusCode { get }
  static var ErrorMalformedCharacterReference: CFXMLParserStatusCode { get }
  static var ErrorMalformedParsedCharacterData: CFXMLParserStatusCode { get }
  static var ErrorNoData: CFXMLParserStatusCode { get }
}
typealias CFXMLParserCreateXMLStructureCallBack = @convention(c) (CFXMLParser!, CFXMLNode!, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CFXMLParserAddChildCallBack = @convention(c) (CFXMLParser!, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CFXMLParserEndXMLStructureCallBack = @convention(c) (CFXMLParser!, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CFXMLParserResolveExternalEntityCallBack = @convention(c) (CFXMLParser!, UnsafeMutablePointer<CFXMLExternalID>, UnsafeMutablePointer<Void>) -> Unmanaged<CFData>!
typealias CFXMLParserHandleErrorCallBack = @convention(c) (CFXMLParser!, CFXMLParserStatusCode, UnsafeMutablePointer<Void>) -> DarwinBoolean
struct CFXMLParserCallBacks {
  var version: CFIndex
  var createXMLStructure: CFXMLParserCreateXMLStructureCallBack!
  var addChild: CFXMLParserAddChildCallBack!
  var endXMLStructure: CFXMLParserEndXMLStructureCallBack!
  var resolveExternalEntity: CFXMLParserResolveExternalEntityCallBack!
  var handleError: CFXMLParserHandleErrorCallBack!
  init()
  init(version: CFIndex, createXMLStructure: CFXMLParserCreateXMLStructureCallBack!, addChild: CFXMLParserAddChildCallBack!, endXMLStructure: CFXMLParserEndXMLStructureCallBack!, resolveExternalEntity: CFXMLParserResolveExternalEntityCallBack!, handleError: CFXMLParserHandleErrorCallBack!)
}
typealias CFXMLParserRetainCallBack = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFXMLParserReleaseCallBack = @convention(c) (UnsafePointer<Void>) -> Void
typealias CFXMLParserCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
struct CFXMLParserContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFXMLParserRetainCallBack!
  var release: CFXMLParserReleaseCallBack!
  var copyDescription: CFXMLParserCopyDescriptionCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFXMLParserRetainCallBack!, release: CFXMLParserReleaseCallBack!, copyDescription: CFXMLParserCopyDescriptionCallBack!)
}
func CFXMLCreateStringByEscapingEntities(allocator: CFAllocator!, _ string: CFString!, _ entitiesDictionary: CFDictionary!) -> CFString!
func CFXMLCreateStringByUnescapingEntities(allocator: CFAllocator!, _ string: CFString!, _ entitiesDictionary: CFDictionary!) -> CFString!
let kCFXMLTreeErrorDescription: CFString!
let kCFXMLTreeErrorLineNumber: CFString!
let kCFXMLTreeErrorLocation: CFString!
let kCFXMLTreeErrorStatusCode: CFString!
