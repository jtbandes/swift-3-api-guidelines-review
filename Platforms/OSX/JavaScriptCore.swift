
class JSContext : Object {
  init!()
  init!(virtualMachine: JSVirtualMachine!)
  func evaluateScript(script: String!) -> JSValue!
  func evaluateScript(script: String!, withSourceURL sourceURL: URL!) -> JSValue!
  class func current() -> JSContext!
  class func currentCallee() -> JSValue!
  class func currentThis() -> JSValue!
  class func currentArguments() -> [AnyObject]!
  var globalObject: JSValue! { get }
  var exception: JSValue!
  var exceptionHandler: ((JSContext!, JSValue!) -> Void)!
  var virtualMachine: JSVirtualMachine! { get }
  var name: String!
}
extension JSContext {
  func objectForKeyedSubscript(key: AnyObject!) -> JSValue!
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<Copying, ObjectProtocol>!)
}
extension JSContext {
   init!(jsGlobalContextRef: JSGlobalContextRef)
  var jsGlobalContextRef: JSGlobalContextRef { get }
}
class JSValue : Object {
  var context: JSContext! { get }
   init!(object value: AnyObject!, in context: JSContext!)
   init!(bool value: Bool, in context: JSContext!)
   init!(double value: Double, in context: JSContext!)
   init!(int32 value: Int32, in context: JSContext!)
   init!(uInt32 value: UInt32, in context: JSContext!)
   init!(newObjectIn context: JSContext!)
   init!(newArrayIn context: JSContext!)
   init!(newRegularExpressionFromPattern pattern: String!, flags: String!, in context: JSContext!)
   init!(newErrorFromMessage message: String!, in context: JSContext!)
   init!(nullIn context: JSContext!)
   init!(undefinedIn context: JSContext!)
  func toObject() -> AnyObject!
  func toObjectOf(expectedClass: AnyClass!) -> AnyObject!
  func toBool() -> Bool
  func toDouble() -> Double
  func toInt32() -> Int32
  func toUInt32() -> UInt32
  func toNumber() -> Number!
  func toString() -> String!
  func toDate() -> Date!
  func toArray() -> [AnyObject]!
  func toDictionary() -> [Object : AnyObject]!
  func forProperty(property: String!) -> JSValue!
  func setValue(value: AnyObject!, forProperty property: String!)
  func deleteProperty(property: String!) -> Bool
  func hasProperty(property: String!) -> Bool
  func defineProperty(property: String!, descriptor: AnyObject!)
  func atIndex(index: Int) -> JSValue!
  func setValue(value: AnyObject!, at index: Int)
  var isUndefined: Bool { get }
  var isNull: Bool { get }
  var isBoolean: Bool { get }
  var isNumber: Bool { get }
  var isString: Bool { get }
  var isObject: Bool { get }
  var isArray: Bool { get }
  var isDate: Bool { get }
  func isEqualTo(value: AnyObject!) -> Bool
  func isEqualWithTypeCoercionTo(value: AnyObject!) -> Bool
  func isInstanceOf(value: AnyObject!) -> Bool
  func callWithArguments(arguments: [AnyObject]!) -> JSValue!
  func constructWithArguments(arguments: [AnyObject]!) -> JSValue!
  func invokeMethod(method: String!, withArguments arguments: [AnyObject]!) -> JSValue!
  init()
}
extension JSValue {
   init!(point: CGPoint, in context: JSContext!)
   init!(range: NSRange, in context: JSContext!)
   init!(rect: CGRect, in context: JSContext!)
   init!(size: CGSize, in context: JSContext!)
  func toPoint() -> CGPoint
  func toRange() -> NSRange
  func toRect() -> CGRect
  func toSize() -> CGSize
}
extension JSValue {
  func objectForKeyedSubscript(key: AnyObject!) -> JSValue!
  func objectAtIndexedSubscript(index: Int) -> JSValue!
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<Copying, ObjectProtocol>!)
  func setObject(object: AnyObject!, atIndexedSubscript index: Int)
}
extension JSValue {
   init!(jsValueRef value: JSValueRef, in context: JSContext!)
  var jsValueRef: JSValueRef { get }
}
let JSPropertyDescriptorWritableKey: String
let JSPropertyDescriptorEnumerableKey: String
let JSPropertyDescriptorConfigurableKey: String
let JSPropertyDescriptorValueKey: String
let JSPropertyDescriptorGetKey: String
let JSPropertyDescriptorSetKey: String
class JSManagedValue : Object {
   init!(value: JSValue!, andOwner owner: AnyObject!)
  init!(value: JSValue!)
  var value: JSValue! { get }
  init()
}
class JSVirtualMachine : Object {
  init!()
  func addManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
  func removeManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
}
protocol JSExport {
}
typealias JSContextGroupRef = COpaquePointer
typealias JSContextRef = COpaquePointer
typealias JSGlobalContextRef = COpaquePointer
typealias JSStringRef = COpaquePointer
typealias JSClassRef = COpaquePointer
typealias JSPropertyNameArrayRef = COpaquePointer
typealias JSPropertyNameAccumulatorRef = COpaquePointer
typealias JSValueRef = COpaquePointer
typealias JSObjectRef = COpaquePointer
func JSEvaluateScript(ctx: JSContextRef, _ script: JSStringRef, _ thisObject: JSObjectRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef
func JSCheckScriptSyntax(ctx: JSContextRef, _ script: JSStringRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSGarbageCollect(ctx: JSContextRef)
func JSContextGroupCreate() -> JSContextGroupRef
func JSContextGroupRetain(group: JSContextGroupRef) -> JSContextGroupRef
func JSContextGroupRelease(group: JSContextGroupRef)
func JSGlobalContextCreate(globalObjectClass: JSClassRef) -> JSGlobalContextRef
func JSGlobalContextCreateInGroup(group: JSContextGroupRef, _ globalObjectClass: JSClassRef) -> JSGlobalContextRef
func JSGlobalContextRetain(ctx: JSGlobalContextRef) -> JSGlobalContextRef
func JSGlobalContextRelease(ctx: JSGlobalContextRef)
func JSContextGetGlobalObject(ctx: JSContextRef) -> JSObjectRef
func JSContextGetGroup(ctx: JSContextRef) -> JSContextGroupRef
func JSContextGetGlobalContext(ctx: JSContextRef) -> JSGlobalContextRef
func JSGlobalContextCopyName(ctx: JSGlobalContextRef) -> JSStringRef
func JSGlobalContextSetName(ctx: JSGlobalContextRef, _ name: JSStringRef)
var kJSPropertyAttributeNone: Int { get }
var kJSPropertyAttributeReadOnly: Int { get }
var kJSPropertyAttributeDontEnum: Int { get }
var kJSPropertyAttributeDontDelete: Int { get }
typealias JSPropertyAttributes = UInt32
var kJSClassAttributeNone: Int { get }
var kJSClassAttributeNoAutomaticPrototype: Int { get }
typealias JSClassAttributes = UInt32
typealias JSObjectInitializeCallback = @convention(c) (JSContextRef, JSObjectRef) -> Void
typealias JSObjectFinalizeCallback = @convention(c) (JSObjectRef) -> Void
typealias JSObjectHasPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef) -> Bool
typealias JSObjectGetPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, UnsafeMutablePointer<JSValueRef>) -> JSValueRef
typealias JSObjectSetPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, JSValueRef, UnsafeMutablePointer<JSValueRef>) -> Bool
typealias JSObjectDeletePropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, UnsafeMutablePointer<JSValueRef>) -> Bool
typealias JSObjectGetPropertyNamesCallback = @convention(c) (JSContextRef, JSObjectRef, JSPropertyNameAccumulatorRef) -> Void
typealias JSObjectCallAsFunctionCallback = @convention(c) (JSContextRef, JSObjectRef, JSObjectRef, Int, UnsafePointer<JSValueRef>, UnsafeMutablePointer<JSValueRef>) -> JSValueRef
typealias JSObjectCallAsConstructorCallback = @convention(c) (JSContextRef, JSObjectRef, Int, UnsafePointer<JSValueRef>, UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
typealias JSObjectHasInstanceCallback = @convention(c) (JSContextRef, JSObjectRef, JSValueRef, UnsafeMutablePointer<JSValueRef>) -> Bool
typealias JSObjectConvertToTypeCallback = @convention(c) (JSContextRef, JSObjectRef, JSType, UnsafeMutablePointer<JSValueRef>) -> JSValueRef
struct JSStaticValue {
  var name: UnsafePointer<Int8>
  var getProperty: JSObjectGetPropertyCallback!
  var setProperty: JSObjectSetPropertyCallback!
  var attributes: JSPropertyAttributes
  init()
  init(name: UnsafePointer<Int8>, getProperty: JSObjectGetPropertyCallback!, setProperty: JSObjectSetPropertyCallback!, attributes: JSPropertyAttributes)
}
struct JSStaticFunction {
  var name: UnsafePointer<Int8>
  var callAsFunction: JSObjectCallAsFunctionCallback!
  var attributes: JSPropertyAttributes
  init()
  init(name: UnsafePointer<Int8>, callAsFunction: JSObjectCallAsFunctionCallback!, attributes: JSPropertyAttributes)
}
struct JSClassDefinition {
  var version: Int32
  var attributes: JSClassAttributes
  var className: UnsafePointer<Int8>
  var parentClass: JSClassRef
  var staticValues: UnsafePointer<JSStaticValue>
  var staticFunctions: UnsafePointer<JSStaticFunction>
  var initialize: JSObjectInitializeCallback!
  var finalize: JSObjectFinalizeCallback!
  var hasProperty: JSObjectHasPropertyCallback!
  var getProperty: JSObjectGetPropertyCallback!
  var setProperty: JSObjectSetPropertyCallback!
  var deleteProperty: JSObjectDeletePropertyCallback!
  var getPropertyNames: JSObjectGetPropertyNamesCallback!
  var callAsFunction: JSObjectCallAsFunctionCallback!
  var callAsConstructor: JSObjectCallAsConstructorCallback!
  var hasInstance: JSObjectHasInstanceCallback!
  var convertToType: JSObjectConvertToTypeCallback!
  init()
  init(version: Int32, attributes: JSClassAttributes, className: UnsafePointer<Int8>, parentClass: JSClassRef, staticValues: UnsafePointer<JSStaticValue>, staticFunctions: UnsafePointer<JSStaticFunction>, initialize: JSObjectInitializeCallback!, finalize: JSObjectFinalizeCallback!, hasProperty: JSObjectHasPropertyCallback!, getProperty: JSObjectGetPropertyCallback!, setProperty: JSObjectSetPropertyCallback!, deleteProperty: JSObjectDeletePropertyCallback!, getPropertyNames: JSObjectGetPropertyNamesCallback!, callAsFunction: JSObjectCallAsFunctionCallback!, callAsConstructor: JSObjectCallAsConstructorCallback!, hasInstance: JSObjectHasInstanceCallback!, convertToType: JSObjectConvertToTypeCallback!)
}
let kJSClassDefinitionEmpty: JSClassDefinition
func JSClassCreate(definition: UnsafePointer<JSClassDefinition>) -> JSClassRef
func JSClassRetain(jsClass: JSClassRef) -> JSClassRef
func JSClassRelease(jsClass: JSClassRef)
func JSObjectMake(ctx: JSContextRef, _ jsClass: JSClassRef, _ data: UnsafeMutablePointer<Void>) -> JSObjectRef
func JSObjectMakeFunctionWithCallback(ctx: JSContextRef, _ name: JSStringRef, _ callAsFunction: JSObjectCallAsFunctionCallback!) -> JSObjectRef
func JSObjectMakeConstructor(ctx: JSContextRef, _ jsClass: JSClassRef, _ callAsConstructor: JSObjectCallAsConstructorCallback!) -> JSObjectRef
func JSObjectMakeArray(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectMakeDate(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectMakeError(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectMakeRegExp(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectMakeFunction(ctx: JSContextRef, _ name: JSStringRef, _ parameterCount: UInt32, _ parameterNames: UnsafePointer<JSStringRef>, _ body: JSStringRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectGetPrototype(ctx: JSContextRef, _ object: JSObjectRef) -> JSValueRef
func JSObjectSetPrototype(ctx: JSContextRef, _ object: JSObjectRef, _ value: JSValueRef)
func JSObjectHasProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef) -> Bool
func JSObjectGetProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef
func JSObjectSetProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ value: JSValueRef, _ attributes: JSPropertyAttributes, _ exception: UnsafeMutablePointer<JSValueRef>)
func JSObjectDeleteProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSObjectGetPropertyAtIndex(ctx: JSContextRef, _ object: JSObjectRef, _ propertyIndex: UInt32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef
func JSObjectSetPropertyAtIndex(ctx: JSContextRef, _ object: JSObjectRef, _ propertyIndex: UInt32, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>)
func JSObjectGetPrivate(object: JSObjectRef) -> UnsafeMutablePointer<Void>
func JSObjectSetPrivate(object: JSObjectRef, _ data: UnsafeMutablePointer<Void>) -> Bool
func JSObjectIsFunction(ctx: JSContextRef, _ object: JSObjectRef) -> Bool
func JSObjectCallAsFunction(ctx: JSContextRef, _ object: JSObjectRef, _ thisObject: JSObjectRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef
func JSObjectIsConstructor(ctx: JSContextRef, _ object: JSObjectRef) -> Bool
func JSObjectCallAsConstructor(ctx: JSContextRef, _ object: JSObjectRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectCopyPropertyNames(ctx: JSContextRef, _ object: JSObjectRef) -> JSPropertyNameArrayRef
func JSPropertyNameArrayRetain(array: JSPropertyNameArrayRef) -> JSPropertyNameArrayRef
func JSPropertyNameArrayRelease(array: JSPropertyNameArrayRef)
func JSPropertyNameArrayGetCount(array: JSPropertyNameArrayRef) -> Int
func JSPropertyNameArrayGetNameAtIndex(array: JSPropertyNameArrayRef, _ index: Int) -> JSStringRef
func JSPropertyNameAccumulatorAddName(accumulator: JSPropertyNameAccumulatorRef, _ propertyName: JSStringRef)
typealias JSChar = UInt16
func JSStringCreateWithCharacters(chars: UnsafePointer<JSChar>, _ numChars: Int) -> JSStringRef
func JSStringCreateWithUTF8CString(string: UnsafePointer<Int8>) -> JSStringRef
func JSStringRetain(string: JSStringRef) -> JSStringRef
func JSStringRelease(string: JSStringRef)
func JSStringGetLength(string: JSStringRef) -> Int
func JSStringGetCharactersPtr(string: JSStringRef) -> UnsafePointer<JSChar>
func JSStringGetMaximumUTF8CStringSize(string: JSStringRef) -> Int
func JSStringGetUTF8CString(string: JSStringRef, _ buffer: UnsafeMutablePointer<Int8>, _ bufferSize: Int) -> Int
func JSStringIsEqual(a: JSStringRef, _ b: JSStringRef) -> Bool
func JSStringIsEqualToUTF8CString(a: JSStringRef, _ b: UnsafePointer<Int8>) -> Bool
func JSStringCreateWithCFString(string: CFString!) -> JSStringRef
func JSStringCopyCFString(alloc: CFAllocator!, _ string: JSStringRef) -> CFString!
struct JSType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kJSTypeUndefined: JSType { get }
var kJSTypeNull: JSType { get }
var kJSTypeBoolean: JSType { get }
var kJSTypeNumber: JSType { get }
var kJSTypeString: JSType { get }
var kJSTypeObject: JSType { get }
func JSValueGetType(ctx: JSContextRef, _: JSValueRef) -> JSType
func JSValueIsUndefined(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsNull(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsBoolean(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsNumber(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsString(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsObject(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsObjectOfClass(ctx: JSContextRef, _ value: JSValueRef, _ jsClass: JSClassRef) -> Bool
func JSValueIsArray(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsDate(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsEqual(ctx: JSContextRef, _ a: JSValueRef, _ b: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSValueIsStrictEqual(ctx: JSContextRef, _ a: JSValueRef, _ b: JSValueRef) -> Bool
func JSValueIsInstanceOfConstructor(ctx: JSContextRef, _ value: JSValueRef, _ constructor: JSObjectRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSValueMakeUndefined(ctx: JSContextRef) -> JSValueRef
func JSValueMakeNull(ctx: JSContextRef) -> JSValueRef
func JSValueMakeBoolean(ctx: JSContextRef, _ boolean: Bool) -> JSValueRef
func JSValueMakeNumber(ctx: JSContextRef, _ number: Double) -> JSValueRef
func JSValueMakeString(ctx: JSContextRef, _ string: JSStringRef) -> JSValueRef
func JSValueMakeFromJSONString(ctx: JSContextRef, _ string: JSStringRef) -> JSValueRef
func JSValueCreateJSONString(ctx: JSContextRef, _ value: JSValueRef, _ indent: UInt32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSStringRef
func JSValueToBoolean(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueToNumber(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Double
func JSValueToStringCopy(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSStringRef
func JSValueToObject(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSValueProtect(ctx: JSContextRef, _ value: JSValueRef)
func JSValueUnprotect(ctx: JSContextRef, _ value: JSValueRef)
