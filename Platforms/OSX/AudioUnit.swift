
var AUDIO_UNIT_VERSION: Int32 { get }
typealias AUAudioUnitStatus = OSStatus
typealias AUEventSampleTime = Int64
var AUEventSampleTimeImmediate: AUEventSampleTime { get }
typealias AUAudioFrameCount = UInt32
typealias AUAudioChannelCount = UInt32
enum AUAudioUnitBusType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Input
  case Output
}
typealias AURenderPullInputBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>) -> AUAudioUnitStatus
typealias AURenderBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>, AURenderPullInputBlock?) -> AUAudioUnitStatus
typealias AURenderObserver = (AudioUnitRenderActionFlags, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int) -> Void
typealias AUScheduleParameterBlock = (AUEventSampleTime, AUAudioFrameCount, AUParameterAddress, AUValue) -> Void
typealias AUScheduleMIDIEventBlock = (AUEventSampleTime, UInt8, Int, UnsafePointer<UInt8>) -> Void
typealias AUHostMusicalContextBlock = (UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<Double>) -> Bool
struct AUHostTransportStateFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Changed: AUHostTransportStateFlags { get }
  static var Moving: AUHostTransportStateFlags { get }
  static var Recording: AUHostTransportStateFlags { get }
  static var Cycling: AUHostTransportStateFlags { get }
}
typealias AUHostTransportStateBlock = (UnsafeMutablePointer<AUHostTransportStateFlags>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>) -> Bool
class AUAudioUnit : Object {
  init(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = []) throws
  convenience init(componentDescription: AudioComponentDescription) throws
  class func instantiateWith(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = [], completionHandler: (AUAudioUnit?, Error?) -> Void)
  var componentDescription: AudioComponentDescription { get }
  var component: AudioComponent { get }
  var componentName: String? { get }
  var audioUnitName: String? { get }
  var manufacturerName: String? { get }
  var componentVersion: UInt32 { get }
  func allocateRenderResources() throws
  func deallocateRenderResources()
  var renderResourcesAllocated: Bool { get }
  func reset()
  var inputBusses: AUAudioUnitBusArray { get }
  var outputBusses: AUAudioUnitBusArray { get }
  var renderBlock: AURenderBlock { get }
  var scheduleParameterBlock: AUScheduleParameterBlock { get }
  func tokenByAddingRenderObserver(observer: AURenderObserver) -> Int
  func removeRenderObserver(token: Int)
  var maximumFramesToRender: AUAudioFrameCount
  var parameterTree: AUParameterTree? { get }
  func parametersForOverviewWithCount(count: Int) -> [Number]
  var allParameterValues: Bool { get }
  var isMusicDeviceOrEffect: Bool { get }
  var virtualMIDICableCount: Int { get }
  var scheduleMIDIEventBlock: AUScheduleMIDIEventBlock? { get }
  var fullState: [String : AnyObject]?
  var fullStateForDocument: [String : AnyObject]?
  var factoryPresets: [AUAudioUnitPreset]? { get }
  var currentPreset: AUAudioUnitPreset?
  var latency: TimeInterval { get }
  var tailTime: TimeInterval { get }
  var renderQuality: Int
  var shouldBypassEffect: Bool
  var canProcessInPlace: Bool { get }
  var isRenderingOffline: Bool
  var channelCapabilities: [Number]? { get }
  var musicalContextBlock: AUHostMusicalContextBlock?
  var transportStateBlock: AUHostTransportStateBlock?
  var contextName: String?
}
typealias AUInputHandler = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int) -> Void
extension AUAudioUnit {
  var canPerformInput: Bool { get }
  var canPerformOutput: Bool { get }
  var isInputEnabled: Bool
  var isOutputEnabled: Bool
  var outputProvider: AURenderPullInputBlock?
  var inputHandler: AUInputHandler?
  var deviceID: AudioObjectID { get }
  func setDeviceID(deviceID: AudioObjectID) throws
  func startHardware() throws
  func stopHardware()
}
class AUAudioUnitBusArray : Object, FastEnumeration {
  init(audioUnit owner: AUAudioUnit, busType: AUAudioUnitBusType, busses busArray: [AUAudioUnitBus])
  convenience init(audioUnit owner: AUAudioUnit, busType: AUAudioUnitBusType)
  var count: Int { get }
  subscript (index: Int) -> AUAudioUnitBus { get }
  var isCountChangeable: Bool { get }
  func setBusCount(count: Int) throws
  func addObserverToAllBusses(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func removeObserverFromAllBusses(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  /// The audio unit that owns the bus.
  unowned(unsafe) var ownerAudioUnit: @sil_unmanaged AUAudioUnit { get }
  /// Which bus array this is (input or output).
  var busType: AUAudioUnitBusType { get }
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class AUAudioUnitBus : Object {
  var isEnabled: Bool
  var name: String?
  var index: Int { get }
  var busType: AUAudioUnitBusType { get }
  unowned(unsafe) var ownerAudioUnit: @sil_unmanaged AUAudioUnit { get }
  var supportedChannelLayoutTags: [Number]? { get }
  var contextPresentationLatency: TimeInterval
  init()
}
class AUAudioUnitPreset : Object, SecureCoding {
  var number: Int
  var name: String
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
/// Describes the type of a render event.
enum AURenderEventType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Parameter
  case ParameterRamp
  case MIDI
  case MIDISysEx
}
///	Common header for an AURenderEvent.
struct AURenderEventHeader {
  //!< The next event in a linked list of events.
  var next: UnsafeMutablePointer<AURenderEvent>
  //!< The sample time at which the event is scheduled to occur.
  var eventSampleTime: AUEventSampleTime
  //!< The type of the event.
  var eventType: AURenderEventType
  //!< Must be 0.
  var reserved: UInt8
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: UInt8)
}
/// Describes a scheduled parameter change.
struct AUParameterEvent {
  //!< The next event in a linked list of events.
  var next: UnsafeMutablePointer<AURenderEvent>
  //!< The sample time at which the event is scheduled to occur.
  var eventSampleTime: AUEventSampleTime
  //!< AURenderEventParameter or AURenderEventParameterRamp.
  var eventType: AURenderEventType
  //!< Must be 0.
  var reserved: (UInt8, UInt8, UInt8)
  var rampDurationSampleFrames: AUAudioFrameCount
  //!< The parameter to change.
  var parameterAddress: AUParameterAddress
  //!< If ramped, the parameter value at the
  var value: AUValue
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: (UInt8, UInt8, UInt8), rampDurationSampleFrames: AUAudioFrameCount, parameterAddress: AUParameterAddress, value: AUValue)
}
/// Describes a single scheduled MIDI event.
struct AUMIDIEvent {
  //!< The next event in a linked list of events.
  var next: UnsafeMutablePointer<AURenderEvent>
  //!< The sample time at which the event is scheduled to occur.
  var eventSampleTime: AUEventSampleTime
  //!< AURenderEventMIDI or AURenderEventMIDISysEx.
  var eventType: AURenderEventType
  //!< Must be 0.
  var reserved: UInt8
  //!< The number of valid MIDI bytes in the data field.
  var length: UInt16
  //!< The virtual cable number.
  var cable: UInt8
  //!< The bytes of the MIDI event. Running status will not be used.
  var data: (UInt8, UInt8, UInt8)
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: UInt8, length: UInt16, cable: UInt8, data: (UInt8, UInt8, UInt8))
}
struct AURenderEvent {
  var head: AURenderEventHeader
  var parameter: AUParameterEvent
  var MIDI: AUMIDIEvent
  init(head: AURenderEventHeader)
  init(parameter: AUParameterEvent)
  init(MIDI: AUMIDIEvent)
  init()
}
typealias AUInternalRenderBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AURenderEvent>, AURenderPullInputBlock?) -> AUAudioUnitStatus
/// Aspects of AUAudioUnit of interest only to subclassers.
extension AUAudioUnit {
  class func registerSubclass(cls: AnyClass, as componentDescription: AudioComponentDescription, name: String, version: UInt32)
  /// Block which subclassers must provide (via a getter) to implement rendering.
  var internalRenderBlock: AUInternalRenderBlock { get }
  func setRenderResourcesAllocated(flag: Bool)
}
/// Aspects of AUAudioUnitBus of interest only to the implementation of v3 AUs.
extension AUAudioUnitBus {
  var supportedChannelCounts: [Number]?
  var maximumChannelCount: AUAudioChannelCount
}
/// Aspects of AUAudioUnitBusArray of interest only to subclassers.
extension AUAudioUnitBusArray {
  /// Sets the bus array to be a copy of the supplied array. The base class issues KVO notifications.
  func replaceBusses(busArray: [AUAudioUnitBus])
}
extension AUParameterTree {
  ///	Create an AUParameter.
  /// See AUParameter's properties for descriptions of the arguments.
  class func createParameterWithIdentifier(identifier: String, name: String, address: AUParameterAddress, min: AUValue, max: AUValue, unit: AudioUnitParameterUnit, unitName: String?, flags: AudioUnitParameterOptions = [], valueStrings: [String]?, dependentParameters: [Number]?) -> AUParameter
  class func createGroupWithIdentifier(identifier: String, name: String, children: [AUParameterNode]) -> AUParameterGroup
  class func createGroupTemplate(children: [AUParameterNode]) -> AUParameterGroup
  class func createGroupFromTemplate(templateGroup: AUParameterGroup, identifier: String, name: String, addressOffset: AUParameterAddress) -> AUParameterGroup
  class func createTreeWithChildren(children: [AUParameterNode]) -> AUParameterTree
}
/// A block called to notify the AUAudioUnit implementation of changes to AUParameter values.
typealias AUImplementorValueObserver = (AUParameter, AUValue) -> Void
/// A block called to fetch an AUParameter's current value from the AUAudioUnit implementation.
typealias AUImplementorValueProvider = (AUParameter) -> AUValue
/// A block called to convert an AUParameter's value to a string.
typealias AUImplementorStringFromValueCallback = (AUParameter, UnsafePointer<AUValue>) -> String
/// A block called to convert a string to an AUParameter's value.
typealias AUImplementorValueFromStringCallback = (AUParameter, String) -> AUValue
/// A block called to return a group or parameter's localized display name, abbreviated to the requested length.
typealias AUImplementorDisplayNameWithLengthCallback = (AUParameterNode, Int) -> String
/// Aspects of AUParameterNode of interest only to AUAudioUnit subclassers.
extension AUParameterNode {
  var implementorValueObserver: AUImplementorValueObserver
  var implementorValueProvider: AUImplementorValueProvider
  ///	Called to provide string representations of parameter values.
  ///	If value is nil, the callback uses the current value of the parameter.
  var implementorStringFromValueCallback: AUImplementorStringFromValueCallback
  /// Called to convert string to numeric representations of parameter values.
  var implementorValueFromStringCallback: AUImplementorValueFromStringCallback
  /// Called to obtain an abbreviated version of a parameter or group name.
  var implementorDisplayNameWithLengthCallback: AUImplementorDisplayNameWithLengthCallback
}
class AUAudioUnitV2Bridge : AUAudioUnit {
  init(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = []) throws
  convenience init(componentDescription: AudioComponentDescription) throws
}
protocol AUAudioUnitFactory : ExtensionRequestHandling {
  func createAudioUnitWith(desc: AudioComponentDescription) throws -> AUAudioUnit
}
protocol AUCocoaUIBase {
  func interfaceVersion() -> UInt32
  func uiViewForAudioUnit(inAudioUnit: AudioUnit, withSize inPreferredSize: Size) -> NSView?
}
typealias AudioUnit = AudioComponentInstance
var kAudioUnitType_Output: UInt32 { get }
var kAudioUnitType_MusicDevice: UInt32 { get }
var kAudioUnitType_MusicEffect: UInt32 { get }
var kAudioUnitType_FormatConverter: UInt32 { get }
var kAudioUnitType_Effect: UInt32 { get }
var kAudioUnitType_Mixer: UInt32 { get }
var kAudioUnitType_Panner: UInt32 { get }
var kAudioUnitType_Generator: UInt32 { get }
var kAudioUnitType_OfflineEffect: UInt32 { get }
var kAudioUnitType_MIDIProcessor: UInt32 { get }
var kAudioUnitManufacturer_Apple: UInt32 { get }
var kAudioUnitSubType_GenericOutput: UInt32 { get }
var kAudioUnitSubType_VoiceProcessingIO: UInt32 { get }
var kAudioUnitSubType_HALOutput: UInt32 { get }
var kAudioUnitSubType_DefaultOutput: UInt32 { get }
var kAudioUnitSubType_SystemOutput: UInt32 { get }
var kAudioUnitSubType_DLSSynth: UInt32 { get }
var kAudioUnitSubType_Sampler: UInt32 { get }
var kAudioUnitSubType_MIDISynth: UInt32 { get }
var kAudioUnitSubType_AUConverter: UInt32 { get }
var kAudioUnitSubType_Varispeed: UInt32 { get }
var kAudioUnitSubType_DeferredRenderer: UInt32 { get }
var kAudioUnitSubType_Splitter: UInt32 { get }
var kAudioUnitSubType_MultiSplitter: UInt32 { get }
var kAudioUnitSubType_Merger: UInt32 { get }
var kAudioUnitSubType_NewTimePitch: UInt32 { get }
var kAudioUnitSubType_AUiPodTimeOther: UInt32 { get }
var kAudioUnitSubType_RoundTripAAC: UInt32 { get }
var kAudioUnitSubType_TimePitch: UInt32 { get }
var kAudioUnitSubType_PeakLimiter: UInt32 { get }
var kAudioUnitSubType_DynamicsProcessor: UInt32 { get }
var kAudioUnitSubType_LowPassFilter: UInt32 { get }
var kAudioUnitSubType_HighPassFilter: UInt32 { get }
var kAudioUnitSubType_BandPassFilter: UInt32 { get }
var kAudioUnitSubType_HighShelfFilter: UInt32 { get }
var kAudioUnitSubType_LowShelfFilter: UInt32 { get }
var kAudioUnitSubType_ParametricEQ: UInt32 { get }
var kAudioUnitSubType_Distortion: UInt32 { get }
var kAudioUnitSubType_Delay: UInt32 { get }
var kAudioUnitSubType_SampleDelay: UInt32 { get }
var kAudioUnitSubType_NBandEQ: UInt32 { get }
var kAudioUnitSubType_GraphicEQ: UInt32 { get }
var kAudioUnitSubType_MultiBandCompressor: UInt32 { get }
var kAudioUnitSubType_MatrixReverb: UInt32 { get }
var kAudioUnitSubType_Pitch: UInt32 { get }
var kAudioUnitSubType_AUFilter: UInt32 { get }
var kAudioUnitSubType_NetSend: UInt32 { get }
var kAudioUnitSubType_RogerBeep: UInt32 { get }
var kAudioUnitSubType_MultiChannelMixer: UInt32 { get }
var kAudioUnitSubType_MatrixMixer: UInt32 { get }
var kAudioUnitSubType_SpatialMixer: UInt32 { get }
var kAudioUnitSubType_StereoMixer: UInt32 { get }
var kAudioUnitSubType_3DMixer: UInt32 { get }
var kAudioUnitSubType_SphericalHeadPanner: UInt32 { get }
var kAudioUnitSubType_VectorPanner: UInt32 { get }
var kAudioUnitSubType_SoundFieldPanner: UInt32 { get }
var kAudioUnitSubType_HRTFPanner: UInt32 { get }
var kAudioUnitSubType_NetReceive: UInt32 { get }
var kAudioUnitSubType_ScheduledSoundPlayer: UInt32 { get }
var kAudioUnitSubType_AudioFilePlayer: UInt32 { get }
struct AudioUnitRenderActionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var UnitRenderAction_PreRender: AudioUnitRenderActionFlags { get }
  static var UnitRenderAction_PostRender: AudioUnitRenderActionFlags { get }
  static var UnitRenderAction_OutputIsSilence: AudioUnitRenderActionFlags { get }
  static var OfflineUnitRenderAction_Preflight: AudioUnitRenderActionFlags { get }
  static var OfflineUnitRenderAction_Render: AudioUnitRenderActionFlags { get }
  static var OfflineUnitRenderAction_Complete: AudioUnitRenderActionFlags { get }
  static var UnitRenderAction_PostRenderError: AudioUnitRenderActionFlags { get }
  static var UnitRenderAction_DoNotCheckRenderArgs: AudioUnitRenderActionFlags { get }
}
var kAudioUnitErr_InvalidProperty: OSStatus { get }
var kAudioUnitErr_InvalidParameter: OSStatus { get }
var kAudioUnitErr_InvalidElement: OSStatus { get }
var kAudioUnitErr_NoConnection: OSStatus { get }
var kAudioUnitErr_FailedInitialization: OSStatus { get }
var kAudioUnitErr_TooManyFramesToProcess: OSStatus { get }
var kAudioUnitErr_InvalidFile: OSStatus { get }
var kAudioUnitErr_UnknownFileType: OSStatus { get }
var kAudioUnitErr_FileNotSpecified: OSStatus { get }
var kAudioUnitErr_FormatNotSupported: OSStatus { get }
var kAudioUnitErr_Uninitialized: OSStatus { get }
var kAudioUnitErr_InvalidScope: OSStatus { get }
var kAudioUnitErr_PropertyNotWritable: OSStatus { get }
var kAudioUnitErr_CannotDoInCurrentContext: OSStatus { get }
var kAudioUnitErr_InvalidPropertyValue: OSStatus { get }
var kAudioUnitErr_PropertyNotInUse: OSStatus { get }
var kAudioUnitErr_Initialized: OSStatus { get }
var kAudioUnitErr_InvalidOfflineRender: OSStatus { get }
var kAudioUnitErr_Unauthorized: OSStatus { get }
var kAudioComponentErr_InstanceInvalidated: OSStatus { get }
typealias AudioUnitPropertyID = UInt32
typealias AudioUnitScope = UInt32
typealias AudioUnitElement = UInt32
typealias AudioUnitParameterID = UInt32
typealias AudioUnitParameterValue = Float32
enum AUParameterEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ParameterEvent_Immediate
  case ParameterEvent_Ramped
}
struct AudioUnitParameterEvent {
  struct __Unnamed_union_eventValues {
    struct __Unnamed_struct_ramp {
      var startBufferOffset: Int32
      var durationInFrames: UInt32
      var startValue: AudioUnitParameterValue
      var endValue: AudioUnitParameterValue
      init()
      init(startBufferOffset: Int32, durationInFrames: UInt32, startValue: AudioUnitParameterValue, endValue: AudioUnitParameterValue)
    }
    struct __Unnamed_struct_immediate {
      var bufferOffset: UInt32
      var value: AudioUnitParameterValue
      init()
      init(bufferOffset: UInt32, value: AudioUnitParameterValue)
    }
    var ramp: AudioUnitParameterEvent.__Unnamed_union_eventValues.__Unnamed_struct_ramp
    var immediate: AudioUnitParameterEvent.__Unnamed_union_eventValues.__Unnamed_struct_immediate
    init(ramp: AudioUnitParameterEvent.__Unnamed_union_eventValues.__Unnamed_struct_ramp)
    init(immediate: AudioUnitParameterEvent.__Unnamed_union_eventValues.__Unnamed_struct_immediate)
    init()
  }
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var parameter: AudioUnitParameterID
  var eventType: AUParameterEventType
  var eventValues: AudioUnitParameterEvent.__Unnamed_union_eventValues
  init()
  init(scope: AudioUnitScope, element: AudioUnitElement, parameter: AudioUnitParameterID, eventType: AUParameterEventType, eventValues: AudioUnitParameterEvent.__Unnamed_union_eventValues)
}
struct AudioUnitParameter {
  var mAudioUnit: AudioUnit
  var mParameterID: AudioUnitParameterID
  var mScope: AudioUnitScope
  var mElement: AudioUnitElement
}
struct AudioUnitProperty {
  var mAudioUnit: AudioUnit
  var mPropertyID: AudioUnitPropertyID
  var mScope: AudioUnitScope
  var mElement: AudioUnitElement
}
typealias AURenderCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UInt32, UnsafeMutablePointer<AudioBufferList>) -> OSStatus
typealias AudioUnitPropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnit, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement) -> Void
typealias AUInputSamplesInOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<AudioTimeStamp>, Float64, Float64) -> Void
let kAudioComponentRegistrationsChangedNotification: CFString
let kAudioComponentInstanceInvalidationNotification: CFString
func AudioUnitInitialize(inUnit: AudioUnit) -> OSStatus
func AudioUnitUninitialize(inUnit: AudioUnit) -> OSStatus
func AudioUnitGetPropertyInfo(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ outDataSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AudioUnitGetProperty(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ outData: UnsafeMutablePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioUnitSetProperty(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ inData: UnsafePointer<Void>, _ inDataSize: UInt32) -> OSStatus
func AudioUnitAddPropertyListener(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inProc: AudioUnitPropertyListenerProc, _ inProcUserData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioUnitRemovePropertyListenerWithUserData(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inProc: AudioUnitPropertyListenerProc, _ inProcUserData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioUnitAddRenderNotify(inUnit: AudioUnit, _ inProc: AURenderCallback, _ inProcUserData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioUnitRemoveRenderNotify(inUnit: AudioUnit, _ inProc: AURenderCallback, _ inProcUserData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioUnitGetParameter(inUnit: AudioUnit, _ inID: AudioUnitParameterID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ outValue: UnsafeMutablePointer<AudioUnitParameterValue>) -> OSStatus
func AudioUnitSetParameter(inUnit: AudioUnit, _ inID: AudioUnitParameterID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ inValue: AudioUnitParameterValue, _ inBufferOffsetInFrames: UInt32) -> OSStatus
func AudioUnitScheduleParameters(inUnit: AudioUnit, _ inParameterEvent: UnsafePointer<AudioUnitParameterEvent>, _ inNumParamEvents: UInt32) -> OSStatus
func AudioUnitRender(inUnit: AudioUnit, _ ioActionFlags: UnsafeMutablePointer<AudioUnitRenderActionFlags>, _ inTimeStamp: UnsafePointer<AudioTimeStamp>, _ inOutputBusNumber: UInt32, _ inNumberFrames: UInt32, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
func AudioUnitProcess(inUnit: AudioUnit, _ ioActionFlags: UnsafeMutablePointer<AudioUnitRenderActionFlags>, _ inTimeStamp: UnsafePointer<AudioTimeStamp>, _ inNumberFrames: UInt32, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
func AudioUnitProcessMultiple(inUnit: AudioUnit, _ ioActionFlags: UnsafeMutablePointer<AudioUnitRenderActionFlags>, _ inTimeStamp: UnsafePointer<AudioTimeStamp>, _ inNumberFrames: UInt32, _ inNumberInputBufferLists: UInt32, _ inInputBufferLists: UnsafeMutablePointer<UnsafePointer<AudioBufferList>>, _ inNumberOutputBufferLists: UInt32, _ ioOutputBufferLists: UnsafeMutablePointer<UnsafeMutablePointer<AudioBufferList>>) -> OSStatus
func AudioUnitReset(inUnit: AudioUnit, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement) -> OSStatus
var kAudioUnitRange: Int { get }
var kAudioUnitInitializeSelect: Int { get }
var kAudioUnitUninitializeSelect: Int { get }
var kAudioUnitGetPropertyInfoSelect: Int { get }
var kAudioUnitGetPropertySelect: Int { get }
var kAudioUnitSetPropertySelect: Int { get }
var kAudioUnitAddPropertyListenerSelect: Int { get }
var kAudioUnitRemovePropertyListenerSelect: Int { get }
var kAudioUnitRemovePropertyListenerWithUserDataSelect: Int { get }
var kAudioUnitAddRenderNotifySelect: Int { get }
var kAudioUnitRemoveRenderNotifySelect: Int { get }
var kAudioUnitGetParameterSelect: Int { get }
var kAudioUnitSetParameterSelect: Int { get }
var kAudioUnitScheduleParametersSelect: Int { get }
var kAudioUnitRenderSelect: Int { get }
var kAudioUnitResetSelect: Int { get }
var kAudioUnitComplexRenderSelect: Int { get }
var kAudioUnitProcessSelect: Int { get }
var kAudioUnitProcessMultipleSelect: Int { get }
typealias AudioUnitInitializeProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitUninitializeProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitGetPropertyInfoProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
typealias AudioUnitGetPropertyProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement, UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioUnitSetPropertyProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement, UnsafePointer<Void>, UInt32) -> OSStatus
typealias AudioUnitAddPropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitPropertyListenerProc, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitRemovePropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitPropertyListenerProc) -> OSStatus
typealias AudioUnitRemovePropertyListenerWithUserDataProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitPropertyListenerProc, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitAddRenderNotifyProc = @convention(c) (UnsafeMutablePointer<Void>, AURenderCallback, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitRemoveRenderNotifyProc = @convention(c) (UnsafeMutablePointer<Void>, AURenderCallback, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitScheduleParametersProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitParameterEvent>, UInt32) -> OSStatus
typealias AudioUnitResetProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitScope, AudioUnitElement) -> OSStatus
typealias AudioUnitComplexRenderProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UInt32, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>, UnsafeMutablePointer<AudioBufferList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioUnitProcessProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UnsafeMutablePointer<AudioBufferList>) -> OSStatus
typealias AudioUnitProcessMultipleProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UInt32, UnsafeMutablePointer<UnsafePointer<AudioBufferList>>, UInt32, UnsafeMutablePointer<UnsafeMutablePointer<AudioBufferList>>) -> OSStatus
typealias AudioUnitGetParameterProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitParameterID, AudioUnitScope, AudioUnitElement, UnsafeMutablePointer<AudioUnitParameterValue>) -> OSStatus
typealias AudioUnitSetParameterProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitParameterID, AudioUnitScope, AudioUnitElement, AudioUnitParameterValue, UInt32) -> OSStatus
typealias AudioUnitRenderProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UInt32, UnsafeMutablePointer<AudioBufferList>) -> OSStatus
var kAudioUnitErr_IllegalInstrument: OSStatus { get }
var kAudioUnitErr_InstrumentTypeNotFound: OSStatus { get }
typealias AUValue = Float
typealias AUParameterAddress = UInt64
struct AURecordedParameterEvent {
  ///< The host time at which the event occurred.
  var hostTime: UInt64
  ///< The address of the parameter whose value changed.
  var address: AUParameterAddress
  ///< The value of the parameter at that time.
  var value: AUValue
  init()
  init(hostTime: UInt64, address: AUParameterAddress, value: AUValue)
}
typealias AUParameterObserver = (AUParameterAddress, AUValue) -> Void
typealias AUParameterRecordingObserver = (Int, UnsafePointer<AURecordedParameterEvent>) -> Void
typealias AUParameterObserverToken = UnsafeMutablePointer<Void>
class AUParameterNode : Object {
  var identifier: String { get }
  var keyPath: String { get }
  var displayName: String { get }
  func displayNameWithLength(maximumLength: Int) -> String
  func tokenByAddingParameterObserver(observer: AUParameterObserver) -> AUParameterObserverToken
  func tokenByAddingParameterRecordingObserver(observer: AUParameterRecordingObserver) -> AUParameterObserverToken
  func removeParameterObserver(token: AUParameterObserverToken)
  init()
}
class AUParameterGroup : AUParameterNode, SecureCoding {
  /// The group's child nodes (AUParameterGroupNode).
  var children: [AUParameterNode] { get }
  /// Returns a flat array of all parameters in the group, including those in child groups.
  var allParameters: [AUParameter] { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class AUParameterTree : AUParameterGroup, SecureCoding {
  func parameterWithAddress(address: AUParameterAddress) -> AUParameter?
  func parameterWithID(paramID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement) -> AUParameter?
  init()
  init?(coder aDecoder: Coder)
}
class AUParameter : AUParameterNode, SecureCoding {
  /// The parameter's minimum value.
  var minValue: AUValue { get }
  /// The parameter's maximum value.
  var maxValue: AUValue { get }
  /// The parameter's unit of measurement.
  var unit: AudioUnitParameterUnit { get }
  /// A localized name for the parameter's unit. Supplied by the AU if kAudioUnitParameterUnit_CustomUnit; else by the framework.
  var unitName: String? { get }
  /// Various details of the parameter.
  var flags: AudioUnitParameterOptions { get }
  /// The parameter's address.
  var address: AUParameterAddress { get }
  /// For parameters with kAudioUnitParameterUnit_Indexed, localized strings corresponding
  ///	to the values.
  var valueStrings: [String]? { get }
  var dependentParameters: [Number]? { get }
  /// The parameter's current value.
  var value: AUValue
  /// Set the parameter's value, avoiding redundant notifications to the originator.
  func setValue(value: AUValue, originator: AUParameterObserverToken)
  /// Set the parameter's value, preserving the host time of the gesture that initiated the change.
  func setValue(value: AUValue, originator: AUParameterObserverToken, atHostTime hostTime: UInt64)
  /// Get a textual representation of a value for the parameter. Use value==nil to use the current value.
  func stringFromValue(value: UnsafePointer<AUValue>) -> String
  /// Convert a textual representation of a value to a numeric one.
  func valueFrom(string: String) -> AUValue
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
typealias AudioCodec = AudioComponentInstance
typealias AudioCodecPropertyID = UInt32
struct AudioCodecMagicCookieInfo {
  var mMagicCookieSize: UInt32
  var mMagicCookie: UnsafePointer<Void>
  init()
  init(mMagicCookieSize: UInt32, mMagicCookie: UnsafePointer<Void>)
}
var kAudioDecoderComponentType: UInt32 { get }
var kAudioEncoderComponentType: UInt32 { get }
var kAudioUnityCodecComponentType: UInt32 { get }
var kAudioCodecPropertySupportedInputFormats: AudioCodecPropertyID { get }
var kAudioCodecPropertySupportedOutputFormats: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableInputSampleRates: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableOutputSampleRates: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableBitRateRange: AudioCodecPropertyID { get }
var kAudioCodecPropertyMinimumNumberInputPackets: AudioCodecPropertyID { get }
var kAudioCodecPropertyMinimumNumberOutputPackets: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableNumberChannels: AudioCodecPropertyID { get }
var kAudioCodecPropertyDoesSampleRateConversion: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableInputChannelLayoutTags: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableOutputChannelLayoutTags: AudioCodecPropertyID { get }
var kAudioCodecPropertyInputFormatsForOutputFormat: AudioCodecPropertyID { get }
var kAudioCodecPropertyOutputFormatsForInputFormat: AudioCodecPropertyID { get }
var kAudioCodecPropertyFormatInfo: AudioCodecPropertyID { get }
var kAudioCodecPropertyInputBufferSize: AudioCodecPropertyID { get }
var kAudioCodecPropertyPacketFrameSize: AudioCodecPropertyID { get }
var kAudioCodecPropertyHasVariablePacketByteSizes: AudioCodecPropertyID { get }
var kAudioCodecPropertyMaximumPacketByteSize: AudioCodecPropertyID { get }
var kAudioCodecPropertyPacketSizeLimitForVBR: AudioCodecPropertyID { get }
var kAudioCodecPropertyCurrentInputFormat: AudioCodecPropertyID { get }
var kAudioCodecPropertyCurrentOutputFormat: AudioCodecPropertyID { get }
var kAudioCodecPropertyMagicCookie: AudioCodecPropertyID { get }
var kAudioCodecPropertyUsedInputBufferSize: AudioCodecPropertyID { get }
var kAudioCodecPropertyIsInitialized: AudioCodecPropertyID { get }
var kAudioCodecPropertyCurrentTargetBitRate: AudioCodecPropertyID { get }
var kAudioCodecPropertyCurrentInputSampleRate: AudioCodecPropertyID { get }
var kAudioCodecPropertyCurrentOutputSampleRate: AudioCodecPropertyID { get }
var kAudioCodecPropertyQualitySetting: AudioCodecPropertyID { get }
var kAudioCodecPropertyApplicableBitRateRange: AudioCodecPropertyID { get }
var kAudioCodecPropertyRecommendedBitRateRange: AudioCodecPropertyID { get }
var kAudioCodecPropertyApplicableInputSampleRates: AudioCodecPropertyID { get }
var kAudioCodecPropertyApplicableOutputSampleRates: AudioCodecPropertyID { get }
var kAudioCodecPropertyPaddedZeros: AudioCodecPropertyID { get }
var kAudioCodecPropertyPrimeMethod: AudioCodecPropertyID { get }
var kAudioCodecPropertyPrimeInfo: AudioCodecPropertyID { get }
var kAudioCodecPropertyCurrentInputChannelLayout: AudioCodecPropertyID { get }
var kAudioCodecPropertyCurrentOutputChannelLayout: AudioCodecPropertyID { get }
var kAudioCodecPropertySettings: AudioCodecPropertyID { get }
var kAudioCodecPropertyFormatList: AudioCodecPropertyID { get }
var kAudioCodecPropertyBitRateControlMode: AudioCodecPropertyID { get }
var kAudioCodecPropertySoundQualityForVBR: AudioCodecPropertyID { get }
var kAudioCodecPropertyDelayMode: AudioCodecPropertyID { get }
var kAudioCodecPropertyAdjustLocalQuality: AudioCodecPropertyID { get }
var kAudioCodecPropertyProgramTargetLevel: AudioCodecPropertyID { get }
var kAudioCodecPropertyDynamicRangeControlMode: AudioCodecPropertyID { get }
var kAudioCodecPropertyProgramTargetLevelConstant: AudioCodecPropertyID { get }
var kAudioCodecQuality_Max: UInt32 { get }
var kAudioCodecQuality_High: UInt32 { get }
var kAudioCodecQuality_Medium: UInt32 { get }
var kAudioCodecQuality_Low: UInt32 { get }
var kAudioCodecQuality_Min: UInt32 { get }
var kAudioCodecPrimeMethod_Pre: UInt32 { get }
var kAudioCodecPrimeMethod_Normal: UInt32 { get }
var kAudioCodecPrimeMethod_None: UInt32 { get }
var kAudioCodecBitRateControlMode_Constant: UInt32 { get }
var kAudioCodecBitRateControlMode_LongTermAverage: UInt32 { get }
var kAudioCodecBitRateControlMode_VariableConstrained: UInt32 { get }
var kAudioCodecBitRateControlMode_Variable: UInt32 { get }
var kAudioCodecDelayMode_Compatibility: UInt32 { get }
var kAudioCodecDelayMode_Minimum: UInt32 { get }
var kAudioCodecDelayMode_Optimal: UInt32 { get }
var kProgramTargetLevel_None: UInt32 { get }
var kProgramTargetLevel_Minus31dB: UInt32 { get }
var kProgramTargetLevel_Minus23dB: UInt32 { get }
var kProgramTargetLevel_Minus20dB: UInt32 { get }
var kDynamicRangeControlMode_None: UInt32 { get }
var kDynamicRangeControlMode_Light: UInt32 { get }
var kDynamicRangeControlMode_Heavy: UInt32 { get }
struct AudioCodecPrimeInfo {
  var leadingFrames: UInt32
  var trailingFrames: UInt32
  init()
  init(leadingFrames: UInt32, trailingFrames: UInt32)
}
var kAudioSettings_TopLevelKey: String { get }
var kAudioSettings_Version: String { get }
var kAudioSettings_Parameters: String { get }
var kAudioSettings_SettingKey: String { get }
var kAudioSettings_SettingName: String { get }
var kAudioSettings_ValueType: String { get }
var kAudioSettings_AvailableValues: String { get }
var kAudioSettings_LimitedValues: String { get }
var kAudioSettings_CurrentValue: String { get }
var kAudioSettings_Summary: String { get }
var kAudioSettings_Hint: String { get }
var kAudioSettings_Unit: String { get }
struct AudioSettingsFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ExpertParameter: AudioSettingsFlags { get }
  static var InvisibleParameter: AudioSettingsFlags { get }
  static var MetaParameter: AudioSettingsFlags { get }
  static var UserInterfaceParameter: AudioSettingsFlags { get }
}
var kAudioCodecProduceOutputPacketFailure: UInt32 { get }
var kAudioCodecProduceOutputPacketSuccess: UInt32 { get }
var kAudioCodecProduceOutputPacketSuccessHasMore: UInt32 { get }
var kAudioCodecProduceOutputPacketNeedsMoreInputData: UInt32 { get }
var kAudioCodecProduceOutputPacketAtEOF: UInt32 { get }
var kAudioCodecGetPropertyInfoSelect: UInt32 { get }
var kAudioCodecGetPropertySelect: UInt32 { get }
var kAudioCodecSetPropertySelect: UInt32 { get }
var kAudioCodecInitializeSelect: UInt32 { get }
var kAudioCodecUninitializeSelect: UInt32 { get }
var kAudioCodecAppendInputDataSelect: UInt32 { get }
var kAudioCodecProduceOutputDataSelect: UInt32 { get }
var kAudioCodecResetSelect: UInt32 { get }
var kAudioCodecAppendInputBufferListSelect: UInt32 { get }
var kAudioCodecProduceOutputBufferListSelect: UInt32 { get }
var kAudioCodecNoError: OSStatus { get }
var kAudioCodecUnspecifiedError: OSStatus { get }
var kAudioCodecUnknownPropertyError: OSStatus { get }
var kAudioCodecBadPropertySizeError: OSStatus { get }
var kAudioCodecIllegalOperationError: OSStatus { get }
var kAudioCodecUnsupportedFormatError: OSStatus { get }
var kAudioCodecStateError: OSStatus { get }
var kAudioCodecNotEnoughBufferSpaceError: OSStatus { get }
func AudioCodecGetPropertyInfo(inCodec: AudioCodec, _ inPropertyID: AudioCodecPropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AudioCodecGetProperty(inCodec: AudioCodec, _ inPropertyID: AudioCodecPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioCodecSetProperty(inCodec: AudioCodec, _ inPropertyID: AudioCodecPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
func AudioCodecInitialize(inCodec: AudioCodec, _ inInputFormat: UnsafePointer<AudioStreamBasicDescription>, _ inOutputFormat: UnsafePointer<AudioStreamBasicDescription>, _ inMagicCookie: UnsafePointer<Void>, _ inMagicCookieByteSize: UInt32) -> OSStatus
func AudioCodecUninitialize(inCodec: AudioCodec) -> OSStatus
func AudioCodecAppendInputData(inCodec: AudioCodec, _ inInputData: UnsafePointer<Void>, _ ioInputDataByteSize: UnsafeMutablePointer<UInt32>, _ ioNumberPackets: UnsafeMutablePointer<UInt32>, _ inPacketDescription: UnsafePointer<AudioStreamPacketDescription>) -> OSStatus
func AudioCodecProduceOutputPackets(inCodec: AudioCodec, _ outOutputData: UnsafeMutablePointer<Void>, _ ioOutputDataByteSize: UnsafeMutablePointer<UInt32>, _ ioNumberPackets: UnsafeMutablePointer<UInt32>, _ outPacketDescription: UnsafeMutablePointer<AudioStreamPacketDescription>, _ outStatus: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioCodecAppendInputBufferList(inCodec: AudioCodec, _ inBufferList: UnsafePointer<AudioBufferList>, _ ioNumberPackets: UnsafeMutablePointer<UInt32>, _ inPacketDescription: UnsafePointer<AudioStreamPacketDescription>, _ outBytesConsumed: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioCodecProduceOutputBufferList(inCodec: AudioCodec, _ ioBufferList: UnsafeMutablePointer<AudioBufferList>, _ ioNumberPackets: UnsafeMutablePointer<UInt32>, _ outPacketDescription: UnsafeMutablePointer<AudioStreamPacketDescription>, _ outStatus: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioCodecReset(inCodec: AudioCodec) -> OSStatus
typealias AudioCodecGetPropertyInfoProc = @convention(c) (UnsafeMutablePointer<Void>, AudioCodecPropertyID, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
typealias AudioCodecGetPropertyProc = @convention(c) (UnsafeMutablePointer<Void>, AudioCodecPropertyID, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioCodecSetPropertyProc = @convention(c) (UnsafeMutablePointer<Void>, AudioCodecPropertyID, UInt32, UnsafePointer<Void>) -> OSStatus
typealias AudioCodecInitializeProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<AudioStreamBasicDescription>, UnsafePointer<AudioStreamBasicDescription>, UnsafePointer<Void>, UInt32) -> OSStatus
typealias AudioCodecUninitializeProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioCodecAppendInputDataProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<UInt32>, UnsafePointer<AudioStreamPacketDescription>) -> OSStatus
typealias AudioCodecProduceOutputPacketsProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioCodecResetProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioCodecAppendInputBufferListProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<AudioBufferList>, UnsafeMutablePointer<UInt32>, UnsafePointer<AudioStreamPacketDescription>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioCodecProduceOutputBufferListProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioBufferList>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>, UnsafeMutablePointer<UInt32>) -> OSStatus
var kAudioCodecPropertyMinimumDelayMode: AudioCodecPropertyID { get }
var kAudioCodecPropertyNameCFString: AudioCodecPropertyID { get }
var kAudioCodecPropertyManufacturerCFString: AudioCodecPropertyID { get }
var kAudioCodecPropertyFormatCFString: AudioCodecPropertyID { get }
var kAudioCodecPropertyRequiresPacketDescription: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableBitRates: AudioCodecPropertyID { get }
var kAudioCodecExtendFrequencies: AudioCodecPropertyID { get }
var kAudioCodecUseRecommendedSampleRate: AudioCodecPropertyID { get }
var kAudioCodecOutputPrecedence: AudioCodecPropertyID { get }
var kAudioCodecBitRateFormat: AudioCodecPropertyID { get }
var kAudioCodecDoesSampleRateConversion: AudioCodecPropertyID { get }
var kAudioCodecInputFormatsForOutputFormat: AudioCodecPropertyID { get }
var kAudioCodecOutputFormatsForInputFormat: AudioCodecPropertyID { get }
var kAudioCodecPropertyInputChannelLayout: AudioCodecPropertyID { get }
var kAudioCodecPropertyOutputChannelLayout: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableInputChannelLayouts: AudioCodecPropertyID { get }
var kAudioCodecPropertyAvailableOutputChannelLayouts: AudioCodecPropertyID { get }
var kAudioCodecPropertyZeroFramesPadded: AudioCodecPropertyID { get }
var kAudioCodecBitRateFormat_CBR: UInt32 { get }
var kAudioCodecBitRateFormat_ABR: UInt32 { get }
var kAudioCodecBitRateFormat_VBR: UInt32 { get }
var kAudioCodecOutputPrecedenceNone: UInt32 { get }
var kAudioCodecOutputPrecedenceBitRate: UInt32 { get }
var kAudioCodecOutputPrecedenceSampleRate: UInt32 { get }
typealias MagicCookieInfo = AudioCodecMagicCookieInfo
var kHintBasic: UInt32 { get }
var kHintAdvanced: UInt32 { get }
var kHintHidden: UInt32 { get }
struct AudioComponentFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Unsearchable: AudioComponentFlags { get }
  static var SandboxSafe: AudioComponentFlags { get }
  static var IsV3AudioUnit: AudioComponentFlags { get }
  static var RequiresAsyncInstantiation: AudioComponentFlags { get }
  static var CanLoadInProcess: AudioComponentFlags { get }
}
struct AudioComponentInstantiationOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LoadOutOfProcess: AudioComponentInstantiationOptions { get }
  static var LoadInProcess: AudioComponentInstantiationOptions { get }
}
struct AudioComponentDescription {
  var componentType: OSType
  var componentSubType: OSType
  var componentManufacturer: OSType
  var componentFlags: UInt32
  var componentFlagsMask: UInt32
  init()
  init(componentType: OSType, componentSubType: OSType, componentManufacturer: OSType, componentFlags: UInt32, componentFlagsMask: UInt32)
}
typealias AudioComponent = COpaquePointer
typealias AudioComponentInstance = UnsafeMutablePointer<ComponentInstanceRecord>
typealias AudioComponentMethod = COpaquePointer
struct AudioComponentPlugInInterface {
  var Open: @convention(c) (UnsafeMutablePointer<Void>, AudioComponentInstance) -> OSStatus
  var Close: @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
  var Lookup: @convention(c) (Int16) -> AudioComponentMethod
  var reserved: UnsafeMutablePointer<Void>
}
typealias AudioComponentFactoryFunction = @convention(c) (UnsafePointer<AudioComponentDescription>) -> UnsafeMutablePointer<AudioComponentPlugInInterface>
func AudioComponentFindNext(inComponent: AudioComponent, _ inDesc: UnsafePointer<AudioComponentDescription>) -> AudioComponent
func AudioComponentCount(inDesc: UnsafePointer<AudioComponentDescription>) -> UInt32
func AudioComponentCopyName(inComponent: AudioComponent, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func AudioComponentGetDescription(inComponent: AudioComponent, _ outDesc: UnsafeMutablePointer<AudioComponentDescription>) -> OSStatus
func AudioComponentGetVersion(inComponent: AudioComponent, _ outVersion: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioComponentGetIcon(comp: AudioComponent) -> NSImage?
func AudioComponentInstanceNew(inComponent: AudioComponent, _ outInstance: UnsafeMutablePointer<AudioComponentInstance>) -> OSStatus
func AudioComponentInstantiate(inComponent: AudioComponent, _ inOptions: AudioComponentInstantiationOptions, _ inCompletionHandler: (AudioComponentInstance, OSStatus) -> Void)
func AudioComponentInstanceDispose(inInstance: AudioComponentInstance) -> OSStatus
func AudioComponentInstanceGetComponent(inInstance: AudioComponentInstance) -> AudioComponent
func AudioComponentInstanceCanDo(inInstance: AudioComponentInstance, _ inSelectorID: Int16) -> Bool
func AudioComponentRegister(inDesc: UnsafePointer<AudioComponentDescription>, _ inName: CFString, _ inVersion: UInt32, _ inFactory: AudioComponentFactoryFunction) -> AudioComponent
func AudioComponentCopyConfigurationInfo(inComponent: AudioComponent, _ outConfigurationInfo: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
enum AudioComponentValidationResult : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unknown
  case Passed
  case Failed
  case TimedOut
  case UnauthorizedError_Open
  case UnauthorizedError_Init
}
var kAudioComponentConfigurationInfo_ValidationResult: String { get }
func AudioComponentValidate(inComponent: AudioComponent, _ inValidationParameters: CFDictionary?, _ outValidationResult: UnsafeMutablePointer<AudioComponentValidationResult>) -> OSStatus
var kAudioComponentValidationParameter_TimeOut: String { get }
var kAudioComponentValidationParameter_ForceValidation: String { get }
func AudioOutputUnitStart(ci: AudioUnit) -> OSStatus
func AudioOutputUnitStop(ci: AudioUnit) -> OSStatus
var kAudioOutputUnitRange: Int { get }
var kAudioOutputUnitStartSelect: Int { get }
var kAudioOutputUnitStopSelect: Int { get }
typealias AudioOutputUnitStartProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioOutputUnitStopProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
var kAUGroupParameterID_Volume: AudioUnitParameterID { get }
var kAUGroupParameterID_Sustain: AudioUnitParameterID { get }
var kAUGroupParameterID_Sostenuto: AudioUnitParameterID { get }
var kAUGroupParameterID_AllNotesOff: AudioUnitParameterID { get }
var kAUGroupParameterID_ModWheel: AudioUnitParameterID { get }
var kAUGroupParameterID_PitchBend: AudioUnitParameterID { get }
var kAUGroupParameterID_AllSoundOff: AudioUnitParameterID { get }
var kAUGroupParameterID_ResetAllControllers: AudioUnitParameterID { get }
var kAUGroupParameterID_Pan: AudioUnitParameterID { get }
var kAUGroupParameterID_Foot: AudioUnitParameterID { get }
var kAUGroupParameterID_ChannelPressure: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure: AudioUnitParameterID { get }
var kAUGroupParameterID_Expression: AudioUnitParameterID { get }
var kAUGroupParameterID_DataEntry: AudioUnitParameterID { get }
var kAUGroupParameterID_Volume_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_ModWheel_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Pan_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Foot_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Expression_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_DataEntry_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure_FirstKey: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure_LastKey: AudioUnitParameterID { get }
var kPannerParam_Gain: AudioUnitParameterID { get }
var kPannerParam_Azimuth: AudioUnitParameterID { get }
var kPannerParam_Elevation: AudioUnitParameterID { get }
var kPannerParam_Distance: AudioUnitParameterID { get }
var kPannerParam_CoordScale: AudioUnitParameterID { get }
var kPannerParam_RefDistance: AudioUnitParameterID { get }
var kSpatialMixerParam_Azimuth: AudioUnitParameterID { get }
var kSpatialMixerParam_Elevation: AudioUnitParameterID { get }
var kSpatialMixerParam_Distance: AudioUnitParameterID { get }
var kSpatialMixerParam_Gain: AudioUnitParameterID { get }
var kSpatialMixerParam_PlaybackRate: AudioUnitParameterID { get }
var kSpatialMixerParam_Enable: AudioUnitParameterID { get }
var kSpatialMixerParam_MinGain: AudioUnitParameterID { get }
var kSpatialMixerParam_MaxGain: AudioUnitParameterID { get }
var kSpatialMixerParam_ReverbBlend: AudioUnitParameterID { get }
var kSpatialMixerParam_GlobalReverbGain: AudioUnitParameterID { get }
var kSpatialMixerParam_OcclusionAttenuation: AudioUnitParameterID { get }
var kSpatialMixerParam_ObstructionAttenuation: AudioUnitParameterID { get }
var kReverbParam_FilterFrequency: AudioUnitParameterID { get }
var kReverbParam_FilterBandwidth: AudioUnitParameterID { get }
var kReverbParam_FilterGain: AudioUnitParameterID { get }
var kReverbParam_FilterType: AudioUnitParameterID { get }
var kReverbParam_FilterEnable: AudioUnitParameterID { get }
var k3DMixerParam_Azimuth: AudioUnitParameterID { get }
var k3DMixerParam_Elevation: AudioUnitParameterID { get }
var k3DMixerParam_Distance: AudioUnitParameterID { get }
var k3DMixerParam_Gain: AudioUnitParameterID { get }
var k3DMixerParam_PlaybackRate: AudioUnitParameterID { get }
var k3DMixerParam_ReverbBlend: AudioUnitParameterID { get }
var k3DMixerParam_GlobalReverbGain: AudioUnitParameterID { get }
var k3DMixerParam_OcclusionAttenuation: AudioUnitParameterID { get }
var k3DMixerParam_ObstructionAttenuation: AudioUnitParameterID { get }
var k3DMixerParam_MinGain: AudioUnitParameterID { get }
var k3DMixerParam_MaxGain: AudioUnitParameterID { get }
var k3DMixerParam_PreAveragePower: AudioUnitParameterID { get }
var k3DMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var k3DMixerParam_PostAveragePower: AudioUnitParameterID { get }
var k3DMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Volume: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Enable: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Pan: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PreAveragePower: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PostAveragePower: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_Volume: AudioUnitParameterID { get }
var kMatrixMixerParam_Enable: AudioUnitParameterID { get }
var kMatrixMixerParam_PreAveragePower: AudioUnitParameterID { get }
var kMatrixMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_PostAveragePower: AudioUnitParameterID { get }
var kMatrixMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_PreAveragePowerLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PrePeakHoldLevelLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PostAveragePowerLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PostPeakHoldLevelLinear: AudioUnitParameterID { get }
var kHALOutputParam_Volume: AudioUnitParameterID { get }
var kTimePitchParam_Rate: AudioUnitParameterID { get }
var kTimePitchParam_Pitch: AudioUnitParameterID { get }
var kTimePitchParam_EffectBlend: AudioUnitParameterID { get }
var kNewTimePitchParam_Rate: AudioUnitParameterID { get }
var kNewTimePitchParam_Pitch: AudioUnitParameterID { get }
var kNewTimePitchParam_Overlap: AudioUnitParameterID { get }
var kNewTimePitchParam_EnablePeakLocking: AudioUnitParameterID { get }
var kAUSamplerParam_Gain: AudioUnitParameterID { get }
var kAUSamplerParam_CoarseTuning: AudioUnitParameterID { get }
var kAUSamplerParam_FineTuning: AudioUnitParameterID { get }
var kAUSamplerParam_Pan: AudioUnitParameterID { get }
var kBandpassParam_CenterFrequency: AudioUnitParameterID { get }
var kBandpassParam_Bandwidth: AudioUnitParameterID { get }
var kHipassParam_CutoffFrequency: AudioUnitParameterID { get }
var kHipassParam_Resonance: AudioUnitParameterID { get }
var kLowPassParam_CutoffFrequency: AudioUnitParameterID { get }
var kLowPassParam_Resonance: AudioUnitParameterID { get }
var kHighShelfParam_CutOffFrequency: AudioUnitParameterID { get }
var kHighShelfParam_Gain: AudioUnitParameterID { get }
var kAULowShelfParam_CutoffFrequency: AudioUnitParameterID { get }
var kAULowShelfParam_Gain: AudioUnitParameterID { get }
var kParametricEQParam_CenterFreq: AudioUnitParameterID { get }
var kParametricEQParam_Q: AudioUnitParameterID { get }
var kParametricEQParam_Gain: AudioUnitParameterID { get }
var kLimiterParam_AttackTime: AudioUnitParameterID { get }
var kLimiterParam_DecayTime: AudioUnitParameterID { get }
var kLimiterParam_PreGain: AudioUnitParameterID { get }
var kDynamicsProcessorParam_Threshold: AudioUnitParameterID { get }
var kDynamicsProcessorParam_HeadRoom: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ExpansionRatio: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ExpansionThreshold: AudioUnitParameterID { get }
var kDynamicsProcessorParam_AttackTime: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ReleaseTime: AudioUnitParameterID { get }
var kDynamicsProcessorParam_MasterGain: AudioUnitParameterID { get }
var kDynamicsProcessorParam_CompressionAmount: AudioUnitParameterID { get }
var kDynamicsProcessorParam_InputAmplitude: AudioUnitParameterID { get }
var kDynamicsProcessorParam_OutputAmplitude: AudioUnitParameterID { get }
var kVarispeedParam_PlaybackRate: AudioUnitParameterID { get }
var kVarispeedParam_PlaybackCents: AudioUnitParameterID { get }
var kDistortionParam_Delay: AudioUnitParameterID { get }
var kDistortionParam_Decay: AudioUnitParameterID { get }
var kDistortionParam_DelayMix: AudioUnitParameterID { get }
var kDistortionParam_Decimation: AudioUnitParameterID { get }
var kDistortionParam_Rounding: AudioUnitParameterID { get }
var kDistortionParam_DecimationMix: AudioUnitParameterID { get }
var kDistortionParam_LinearTerm: AudioUnitParameterID { get }
var kDistortionParam_SquaredTerm: AudioUnitParameterID { get }
var kDistortionParam_CubicTerm: AudioUnitParameterID { get }
var kDistortionParam_PolynomialMix: AudioUnitParameterID { get }
var kDistortionParam_RingModFreq1: AudioUnitParameterID { get }
var kDistortionParam_RingModFreq2: AudioUnitParameterID { get }
var kDistortionParam_RingModBalance: AudioUnitParameterID { get }
var kDistortionParam_RingModMix: AudioUnitParameterID { get }
var kDistortionParam_SoftClipGain: AudioUnitParameterID { get }
var kDistortionParam_FinalMix: AudioUnitParameterID { get }
var kDelayParam_WetDryMix: AudioUnitParameterID { get }
var kDelayParam_DelayTime: AudioUnitParameterID { get }
var kDelayParam_Feedback: AudioUnitParameterID { get }
var kDelayParam_LopassCutoff: AudioUnitParameterID { get }
var kAUNBandEQParam_GlobalGain: AudioUnitParameterID { get }
var kAUNBandEQParam_BypassBand: AudioUnitParameterID { get }
var kAUNBandEQParam_FilterType: AudioUnitParameterID { get }
var kAUNBandEQParam_Frequency: AudioUnitParameterID { get }
var kAUNBandEQParam_Gain: AudioUnitParameterID { get }
var kAUNBandEQParam_Bandwidth: AudioUnitParameterID { get }
var kAUNBandEQFilterType_Parametric: Int { get }
var kAUNBandEQFilterType_2ndOrderButterworthLowPass: Int { get }
var kAUNBandEQFilterType_2ndOrderButterworthHighPass: Int { get }
var kAUNBandEQFilterType_ResonantLowPass: Int { get }
var kAUNBandEQFilterType_ResonantHighPass: Int { get }
var kAUNBandEQFilterType_BandPass: Int { get }
var kAUNBandEQFilterType_BandStop: Int { get }
var kAUNBandEQFilterType_LowShelf: Int { get }
var kAUNBandEQFilterType_HighShelf: Int { get }
var kAUNBandEQFilterType_ResonantLowShelf: Int { get }
var kAUNBandEQFilterType_ResonantHighShelf: Int { get }
var kNumAUNBandEQFilterTypes: Int { get }
var kRoundTripAACParam_Format: AudioUnitParameterID { get }
var kRoundTripAACParam_EncodingStrategy: AudioUnitParameterID { get }
var kRoundTripAACParam_RateOrQuality: AudioUnitParameterID { get }
var kRoundTripAACParam_BitRate: AudioUnitParameterID { get }
var kRoundTripAACParam_Quality: AudioUnitParameterID { get }
var kRoundTripAACParam_CompressedFormatSampleRate: AudioUnitParameterID { get }
var kGraphicEQParam_NumberOfBands: AudioUnitParameterID { get }
var kReverbParam_DryWetMix: AudioUnitParameterID { get }
var kReverbParam_SmallLargeMix: AudioUnitParameterID { get }
var kReverbParam_SmallSize: AudioUnitParameterID { get }
var kReverbParam_LargeSize: AudioUnitParameterID { get }
var kReverbParam_PreDelay: AudioUnitParameterID { get }
var kReverbParam_LargeDelay: AudioUnitParameterID { get }
var kReverbParam_SmallDensity: AudioUnitParameterID { get }
var kReverbParam_LargeDensity: AudioUnitParameterID { get }
var kReverbParam_LargeDelayRange: AudioUnitParameterID { get }
var kReverbParam_SmallBrightness: AudioUnitParameterID { get }
var kReverbParam_LargeBrightness: AudioUnitParameterID { get }
var kReverbParam_SmallDelayRange: AudioUnitParameterID { get }
var kReverbParam_ModulationRate: AudioUnitParameterID { get }
var kReverbParam_ModulationDepth: AudioUnitParameterID { get }
var kMultibandCompressorParam_Pregain: AudioUnitParameterID { get }
var kMultibandCompressorParam_Postgain: AudioUnitParameterID { get }
var kMultibandCompressorParam_Crossover1: AudioUnitParameterID { get }
var kMultibandCompressorParam_Crossover2: AudioUnitParameterID { get }
var kMultibandCompressorParam_Crossover3: AudioUnitParameterID { get }
var kMultibandCompressorParam_Threshold1: AudioUnitParameterID { get }
var kMultibandCompressorParam_Threshold2: AudioUnitParameterID { get }
var kMultibandCompressorParam_Threshold3: AudioUnitParameterID { get }
var kMultibandCompressorParam_Threshold4: AudioUnitParameterID { get }
var kMultibandCompressorParam_Headroom1: AudioUnitParameterID { get }
var kMultibandCompressorParam_Headroom2: AudioUnitParameterID { get }
var kMultibandCompressorParam_Headroom3: AudioUnitParameterID { get }
var kMultibandCompressorParam_Headroom4: AudioUnitParameterID { get }
var kMultibandCompressorParam_AttackTime: AudioUnitParameterID { get }
var kMultibandCompressorParam_ReleaseTime: AudioUnitParameterID { get }
var kMultibandCompressorParam_EQ1: AudioUnitParameterID { get }
var kMultibandCompressorParam_EQ2: AudioUnitParameterID { get }
var kMultibandCompressorParam_EQ3: AudioUnitParameterID { get }
var kMultibandCompressorParam_EQ4: AudioUnitParameterID { get }
var kMultibandCompressorParam_CompressionAmount1: AudioUnitParameterID { get }
var kMultibandCompressorParam_CompressionAmount2: AudioUnitParameterID { get }
var kMultibandCompressorParam_CompressionAmount3: AudioUnitParameterID { get }
var kMultibandCompressorParam_CompressionAmount4: AudioUnitParameterID { get }
var kMultibandCompressorParam_InputAmplitude1: AudioUnitParameterID { get }
var kMultibandCompressorParam_InputAmplitude2: AudioUnitParameterID { get }
var kMultibandCompressorParam_InputAmplitude3: AudioUnitParameterID { get }
var kMultibandCompressorParam_InputAmplitude4: AudioUnitParameterID { get }
var kMultibandCompressorParam_OutputAmplitude1: AudioUnitParameterID { get }
var kMultibandCompressorParam_OutputAmplitude2: AudioUnitParameterID { get }
var kMultibandCompressorParam_OutputAmplitude3: AudioUnitParameterID { get }
var kMultibandCompressorParam_OutputAmplitude4: AudioUnitParameterID { get }
var kMultibandFilter_LowFilterType: AudioUnitParameterID { get }
var kMultibandFilter_LowFrequency: AudioUnitParameterID { get }
var kMultibandFilter_LowGain: AudioUnitParameterID { get }
var kMultibandFilter_CenterFreq1: AudioUnitParameterID { get }
var kMultibandFilter_CenterGain1: AudioUnitParameterID { get }
var kMultibandFilter_Bandwidth1: AudioUnitParameterID { get }
var kMultibandFilter_CenterFreq2: AudioUnitParameterID { get }
var kMultibandFilter_CenterGain2: AudioUnitParameterID { get }
var kMultibandFilter_Bandwidth2: AudioUnitParameterID { get }
var kMultibandFilter_CenterFreq3: AudioUnitParameterID { get }
var kMultibandFilter_CenterGain3: AudioUnitParameterID { get }
var kMultibandFilter_Bandwidth3: AudioUnitParameterID { get }
var kMultibandFilter_HighFilterType: AudioUnitParameterID { get }
var kMultibandFilter_HighFrequency: AudioUnitParameterID { get }
var kMultibandFilter_HighGain: AudioUnitParameterID { get }
var kRogerBeepParam_InGateThreshold: AudioUnitParameterID { get }
var kRogerBeepParam_InGateThresholdTime: AudioUnitParameterID { get }
var kRogerBeepParam_OutGateThreshold: AudioUnitParameterID { get }
var kRogerBeepParam_OutGateThresholdTime: AudioUnitParameterID { get }
var kRogerBeepParam_Sensitivity: AudioUnitParameterID { get }
var kRogerBeepParam_RogerType: AudioUnitParameterID { get }
var kRogerBeepParam_RogerGain: AudioUnitParameterID { get }
var kStereoMixerParam_Volume: AudioUnitParameterID { get }
var kStereoMixerParam_Pan: AudioUnitParameterID { get }
var kStereoMixerParam_PreAveragePower: AudioUnitParameterID { get }
var kStereoMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var kStereoMixerParam_PostAveragePower: AudioUnitParameterID { get }
var kStereoMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kAUNetReceiveParam_Status: AudioUnitParameterID { get }
var kAUNetReceiveParam_NumParameters: AudioUnitParameterID { get }
var kAUNetSendParam_Status: AudioUnitParameterID { get }
var kAUNetSendParam_NumParameters: AudioUnitParameterID { get }
var kAUNetStatus_NotConnected: Int { get }
var kAUNetStatus_Connected: Int { get }
var kAUNetStatus_Overflow: Int { get }
var kAUNetStatus_Underflow: Int { get }
var kAUNetStatus_Connecting: Int { get }
var kAUNetStatus_Listening: Int { get }
var kMusicDeviceParam_Tuning: AudioUnitParameterID { get }
var kMusicDeviceParam_Volume: AudioUnitParameterID { get }
var kMusicDeviceParam_ReverbVolume: AudioUnitParameterID { get }
var kRandomParam_BoundA: AudioUnitParameterID { get }
var kRandomParam_BoundB: AudioUnitParameterID { get }
var kRandomParam_Curve: AudioUnitParameterID { get }
var kAudioUnitScope_Global: AudioUnitScope { get }
var kAudioUnitScope_Input: AudioUnitScope { get }
var kAudioUnitScope_Output: AudioUnitScope { get }
var kAudioUnitScope_Group: AudioUnitScope { get }
var kAudioUnitScope_Part: AudioUnitScope { get }
var kAudioUnitScope_Note: AudioUnitScope { get }
var kAudioUnitScope_Layer: AudioUnitScope { get }
var kAudioUnitScope_LayerItem: AudioUnitScope { get }
var kAudioUnitProperty_ClassInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_MakeConnection: AudioUnitPropertyID { get }
var kAudioUnitProperty_SampleRate: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterList: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_CPULoad: AudioUnitPropertyID { get }
var kAudioUnitProperty_StreamFormat: AudioUnitPropertyID { get }
var kAudioUnitProperty_ElementCount: AudioUnitPropertyID { get }
var kAudioUnitProperty_Latency: AudioUnitPropertyID { get }
var kAudioUnitProperty_SupportedNumChannels: AudioUnitPropertyID { get }
var kAudioUnitProperty_MaximumFramesPerSlice: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterValueStrings: AudioUnitPropertyID { get }
var kAudioUnitProperty_AudioChannelLayout: AudioUnitPropertyID { get }
var kAudioUnitProperty_TailTime: AudioUnitPropertyID { get }
var kAudioUnitProperty_BypassEffect: AudioUnitPropertyID { get }
var kAudioUnitProperty_LastRenderError: AudioUnitPropertyID { get }
var kAudioUnitProperty_SetRenderCallback: AudioUnitPropertyID { get }
var kAudioUnitProperty_FactoryPresets: AudioUnitPropertyID { get }
var kAudioUnitProperty_RenderQuality: AudioUnitPropertyID { get }
var kAudioUnitProperty_HostCallbacks: AudioUnitPropertyID { get }
var kAudioUnitProperty_InPlaceProcessing: AudioUnitPropertyID { get }
var kAudioUnitProperty_ElementName: AudioUnitPropertyID { get }
var kAudioUnitProperty_SupportedChannelLayoutTags: AudioUnitPropertyID { get }
var kAudioUnitProperty_PresentPreset: AudioUnitPropertyID { get }
var kAudioUnitProperty_DependentParameters: AudioUnitPropertyID { get }
var kAudioUnitProperty_InputSamplesInOutput: AudioUnitPropertyID { get }
var kAudioUnitProperty_ShouldAllocateBuffer: AudioUnitPropertyID { get }
var kAudioUnitProperty_FrequencyResponse: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterHistoryInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_NickName: AudioUnitPropertyID { get }
var kAudioUnitProperty_OfflineRender: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterIDName: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterStringFromValue: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterClumpName: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterValueFromString: AudioUnitPropertyID { get }
var kAudioUnitProperty_ContextName: AudioUnitPropertyID { get }
var kAudioUnitProperty_PresentationLatency: AudioUnitPropertyID { get }
var kAudioUnitProperty_ClassInfoFromDocument: AudioUnitPropertyID { get }
var kAudioUnitProperty_RequestViewController: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParametersForOverview: AudioUnitPropertyID { get }
var kAudioUnitProperty_FastDispatch: AudioUnitPropertyID { get }
var kAudioUnitProperty_SetExternalBuffer: AudioUnitPropertyID { get }
var kAudioUnitProperty_GetUIComponentList: AudioUnitPropertyID { get }
var kAudioUnitProperty_CocoaUI: AudioUnitPropertyID { get }
var kAudioUnitProperty_IconLocation: AudioUnitPropertyID { get }
var kAudioUnitProperty_AUHostIdentifier: AudioUnitPropertyID { get }
var kAudioUnitProperty_MIDIOutputCallbackInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_MIDIOutputCallback: AudioUnitPropertyID { get }
var kAUPresetVersionKey: String { get }
var kAUPresetTypeKey: String { get }
var kAUPresetSubtypeKey: String { get }
var kAUPresetManufacturerKey: String { get }
var kAUPresetDataKey: String { get }
var kAUPresetNameKey: String { get }
var kAUPresetRenderQualityKey: String { get }
var kAUPresetCPULoadKey: String { get }
var kAUPresetElementNameKey: String { get }
var kAUPresetExternalFileRefs: String { get }
var kAUPresetVSTDataKey: String { get }
var kAUPresetVSTPresetKey: String { get }
var kAUPresetMASDataKey: String { get }
var kAUPresetPartKey: String { get }
struct AudioUnitConnection {
  var sourceAudioUnit: AudioUnit
  var sourceOutputNumber: UInt32
  var destInputNumber: UInt32
}
struct AUChannelInfo {
  var inChannels: Int16
  var outChannels: Int16
  init()
  init(inChannels: Int16, outChannels: Int16)
}
struct AudioUnitExternalBuffer {
  var buffer: UnsafeMutablePointer<UInt8>
  var size: UInt32
}
struct AURenderCallbackStruct {
  var inputProc: AURenderCallback
  var inputProcRefCon: UnsafeMutablePointer<Void>
}
struct AUPreset {
  var presetNumber: Int32
  var presetName: Unmanaged<CFString>
}
var kRenderQuality_Max: Int { get }
var kRenderQuality_High: Int { get }
var kRenderQuality_Medium: Int { get }
var kRenderQuality_Low: Int { get }
var kRenderQuality_Min: Int { get }
var kNumberOfResponseFrequencies: Int { get }
struct AudioUnitFrequencyResponseBin {
  var mFrequency: Float64
  var mMagnitude: Float64
  init()
  init(mFrequency: Float64, mMagnitude: Float64)
}
typealias HostCallback_GetBeatAndTempo = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus
typealias HostCallback_GetMusicalTimeLocation = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Float32>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Float64>) -> OSStatus
typealias HostCallback_GetTransportState = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus
typealias HostCallback_GetTransportState2 = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus
struct HostCallbackInfo {
  var hostUserData: UnsafeMutablePointer<Void>
  var beatAndTempoProc: HostCallback_GetBeatAndTempo?
  var musicalTimeLocationProc: HostCallback_GetMusicalTimeLocation?
  var transportStateProc: HostCallback_GetTransportState?
  var transportStateProc2: HostCallback_GetTransportState2?
  init()
  init(hostUserData: UnsafeMutablePointer<Void>, beatAndTempoProc: HostCallback_GetBeatAndTempo?, musicalTimeLocationProc: HostCallback_GetMusicalTimeLocation?, transportStateProc: HostCallback_GetTransportState?, transportStateProc2: HostCallback_GetTransportState2?)
}
struct AUDependentParameter {
  var mScope: AudioUnitScope
  var mParameterID: AudioUnitParameterID
  init()
  init(mScope: AudioUnitScope, mParameterID: AudioUnitParameterID)
}
struct AudioUnitCocoaViewInfo {
  var mCocoaAUViewBundleLocation: Unmanaged<CFURL>
  var mCocoaAUViewClass: (Unmanaged<CFString>?)
}
struct AUHostVersionIdentifier {
  var hostName: Unmanaged<CFString>
  var hostVersion: UInt32
}
typealias AUMIDIOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<AudioTimeStamp>, UInt32, COpaquePointer) -> OSStatus
struct AUMIDIOutputCallbackStruct {
  var midiOutputCallback: AUMIDIOutputCallback
  var userData: UnsafeMutablePointer<Void>
}
struct AUInputSamplesInOutputCallbackStruct {
  var inputToOutputCallback: AUInputSamplesInOutputCallback
  var userData: UnsafeMutablePointer<Void>
}
struct AudioUnitParameterHistoryInfo {
  var updatesPerSecond: Float32
  var historyDurationInSeconds: Float32
  init()
  init(updatesPerSecond: Float32, historyDurationInSeconds: Float32)
}
enum AudioUnitParameterUnit : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Generic
  case Indexed
  case Boolean
  case Percent
  case Seconds
  case SampleFrames
  case Phase
  case Rate
  case Hertz
  case Cents
  case RelativeSemiTones
  case MIDINoteNumber
  case MIDIController
  case Decibels
  case LinearGain
  case Degrees
  case EqualPowerCrossfade
  case MixerFaderCurve1
  case Pan
  case Meters
  case AbsoluteCents
  case Octaves
  case BPM
  case Beats
  case Milliseconds
  case Ratio
  case CustomUnit
}
struct AudioUnitParameterOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Flag_CFNameRelease: AudioUnitParameterOptions { get }
  static var Flag_OmitFromPresets: AudioUnitParameterOptions { get }
  static var Flag_PlotHistory: AudioUnitParameterOptions { get }
  static var Flag_MeterReadOnly: AudioUnitParameterOptions { get }
  static var Flag_DisplayMask: AudioUnitParameterOptions { get }
  static var Flag_DisplaySquareRoot: AudioUnitParameterOptions { get }
  static var Flag_DisplaySquared: AudioUnitParameterOptions { get }
  static var Flag_DisplayCubed: AudioUnitParameterOptions { get }
  static var Flag_DisplayCubeRoot: AudioUnitParameterOptions { get }
  static var Flag_DisplayExponential: AudioUnitParameterOptions { get }
  static var Flag_HasClump: AudioUnitParameterOptions { get }
  static var Flag_ValuesHaveStrings: AudioUnitParameterOptions { get }
  static var Flag_DisplayLogarithmic: AudioUnitParameterOptions { get }
  static var Flag_IsHighResolution: AudioUnitParameterOptions { get }
  static var Flag_NonRealTime: AudioUnitParameterOptions { get }
  static var Flag_CanRamp: AudioUnitParameterOptions { get }
  static var Flag_ExpertMode: AudioUnitParameterOptions { get }
  static var Flag_HasCFNameString: AudioUnitParameterOptions { get }
  static var Flag_IsGlobalMeta: AudioUnitParameterOptions { get }
  static var Flag_IsElementMeta: AudioUnitParameterOptions { get }
  static var Flag_IsReadable: AudioUnitParameterOptions { get }
  static var Flag_IsWritable: AudioUnitParameterOptions { get }
}
struct AudioUnitParameterInfo {
  var name: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var unitName: Unmanaged<CFString>?
  var clumpID: UInt32
  var cfNameString: Unmanaged<CFString>?
  var unit: AudioUnitParameterUnit
  var minValue: AudioUnitParameterValue
  var maxValue: AudioUnitParameterValue
  var defaultValue: AudioUnitParameterValue
  var flags: AudioUnitParameterOptions
  init()
  init(name: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), unitName: Unmanaged<CFString>?, clumpID: UInt32, cfNameString: Unmanaged<CFString>?, unit: AudioUnitParameterUnit, minValue: AudioUnitParameterValue, maxValue: AudioUnitParameterValue, defaultValue: AudioUnitParameterValue, flags: AudioUnitParameterOptions)
}
var kAudioUnitClumpID_System: Int { get }
func GetAudioUnitParameterDisplayType(flags: AudioUnitParameterOptions) -> AudioUnitParameterOptions
func SetAudioUnitParameterDisplayType(flags: AudioUnitParameterOptions, _ displayType: AudioUnitParameterOptions) -> AudioUnitParameterOptions
var kAudioUnitParameterName_Full: Int { get }
struct AudioUnitParameterNameInfo {
  var inID: AudioUnitParameterID
  var inDesiredLength: Int32
  var outName: Unmanaged<CFString>?
  init()
  init(inID: AudioUnitParameterID, inDesiredLength: Int32, outName: Unmanaged<CFString>?)
}
typealias AudioUnitParameterIDName = AudioUnitParameterNameInfo
struct AudioUnitParameterStringFromValue {
  var inParamID: AudioUnitParameterID
  var inValue: UnsafePointer<AudioUnitParameterValue>
  var outString: Unmanaged<CFString>?
}
struct AudioUnitParameterValueFromString {
  var inParamID: AudioUnitParameterID
  var inString: Unmanaged<CFString>
  var outValue: AudioUnitParameterValue
}
var kAudioUnitConfigurationInfo_HasCustomView: String { get }
var kAudioUnitConfigurationInfo_ChannelConfigurations: String { get }
var kAudioUnitConfigurationInfo_InitialInputs: String { get }
var kAudioUnitConfigurationInfo_InitialOutputs: String { get }
var kAudioUnitConfigurationInfo_IconURL: String { get }
var kAudioUnitConfigurationInfo_BusCountWritable: String { get }
var kAudioUnitConfigurationInfo_SupportedChannelLayoutTags: String { get }
var kAudioOutputUnitProperty_IsRunning: AudioUnitPropertyID { get }
var kAudioUnitProperty_AllParameterMIDIMappings: AudioUnitPropertyID { get }
var kAudioUnitProperty_AddParameterMIDIMapping: AudioUnitPropertyID { get }
var kAudioUnitProperty_RemoveParameterMIDIMapping: AudioUnitPropertyID { get }
var kAudioUnitProperty_HotMapParameterMIDIMapping: AudioUnitPropertyID { get }
struct AUParameterMIDIMappingFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AnyChannelFlag: AUParameterMIDIMappingFlags { get }
  static var AnyNoteFlag: AUParameterMIDIMappingFlags { get }
  static var SubRange: AUParameterMIDIMappingFlags { get }
  static var Toggle: AUParameterMIDIMappingFlags { get }
  static var Bipolar: AUParameterMIDIMappingFlags { get }
  static var Bipolar_On: AUParameterMIDIMappingFlags { get }
}
struct AUParameterMIDIMapping {
  var mScope: AudioUnitScope
  var mElement: AudioUnitElement
  var mParameterID: AudioUnitParameterID
  var mFlags: AUParameterMIDIMappingFlags
  var mSubRangeMin: AudioUnitParameterValue
  var mSubRangeMax: AudioUnitParameterValue
  var mStatus: UInt8
  var mData1: UInt8
  var reserved1: UInt8
  var reserved2: UInt8
  var reserved3: UInt32
  init()
  init(mScope: AudioUnitScope, mElement: AudioUnitElement, mParameterID: AudioUnitParameterID, mFlags: AUParameterMIDIMappingFlags, mSubRangeMin: AudioUnitParameterValue, mSubRangeMax: AudioUnitParameterValue, mStatus: UInt8, mData1: UInt8, reserved1: UInt8, reserved2: UInt8, reserved3: UInt32)
}
var kMusicDeviceProperty_MIDIXMLNames: AudioUnitPropertyID { get }
var kMusicDeviceProperty_PartGroup: AudioUnitPropertyID { get }
var kMusicDeviceProperty_DualSchedulingMode: AudioUnitPropertyID { get }
var kMusicDeviceProperty_SupportsStartStopNote: AudioUnitPropertyID { get }
var kMusicDeviceSampleFrameMask_SampleOffset: Int { get }
var kMusicDeviceSampleFrameMask_IsScheduled: Int { get }
var kAudioUnitOfflineProperty_InputSize: AudioUnitPropertyID { get }
var kAudioUnitOfflineProperty_OutputSize: AudioUnitPropertyID { get }
var kAudioUnitOfflineProperty_StartOffset: AudioUnitPropertyID { get }
var kAudioUnitOfflineProperty_PreflightRequirements: AudioUnitPropertyID { get }
var kAudioUnitOfflineProperty_PreflightName: AudioUnitPropertyID { get }
var kOfflinePreflight_NotRequired: Int { get }
var kOfflinePreflight_Optional: Int { get }
var kOfflinePreflight_Required: Int { get }
var kAudioUnitProperty_DistanceAttenuationData: AudioUnitPropertyID { get }
struct AUDistanceAttenuationData {
  var inNumberOfPairs: UInt32
  init()
}
var kAudioUnitMigrateProperty_FromPlugin: AudioUnitPropertyID { get }
var kAudioUnitMigrateProperty_OldAutomation: AudioUnitPropertyID { get }
var kOtherPluginFormat_Undefined: UInt32 { get }
var kOtherPluginFormat_kMAS: UInt32 { get }
var kOtherPluginFormat_kVST: UInt32 { get }
var kOtherPluginFormat_AU: UInt32 { get }
struct AudioUnitOtherPluginDesc {
  var format: UInt32
  var plugin: AudioClassDescription
  init()
  init(format: UInt32, plugin: AudioClassDescription)
}
struct AudioUnitParameterValueTranslation {
  var otherDesc: AudioUnitOtherPluginDesc
  var otherParamID: UInt32
  var otherValue: Float32
  var auParamID: AudioUnitParameterID
  var auValue: AudioUnitParameterValue
  init()
  init(otherDesc: AudioUnitOtherPluginDesc, otherParamID: UInt32, otherValue: Float32, auParamID: AudioUnitParameterID, auValue: AudioUnitParameterValue)
}
struct AudioUnitPresetMAS_SettingData {
  var isStockSetting: UInt32
  var settingID: UInt32
  var dataLen: UInt32
  var data: (UInt8)
  init()
  init(isStockSetting: UInt32, settingID: UInt32, dataLen: UInt32, data: (UInt8))
}
struct AudioUnitPresetMAS_Settings {
  var manufacturerID: UInt32
  var effectID: UInt32
  var variantID: UInt32
  var settingsVersion: UInt32
  var numberOfSettings: UInt32
  var settings: (AudioUnitPresetMAS_SettingData)
  init()
  init(manufacturerID: UInt32, effectID: UInt32, variantID: UInt32, settingsVersion: UInt32, numberOfSettings: UInt32, settings: (AudioUnitPresetMAS_SettingData))
}
var kAudioUnitProperty_SampleRateConverterComplexity: AudioUnitPropertyID { get }
var kAudioUnitSampleRateConverterComplexity_Linear: UInt32 { get }
var kAudioUnitSampleRateConverterComplexity_Normal: UInt32 { get }
var kAudioUnitSampleRateConverterComplexity_Mastering: UInt32 { get }
var kAudioOutputUnitProperty_CurrentDevice: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_ChannelMap: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_EnableIO: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_StartTime: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_SetInputCallback: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_HasIO: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_StartTimestampsAtZero: AudioUnitPropertyID { get }
struct AudioOutputUnitStartAtTimeParams {
  var mTimestamp: AudioTimeStamp
  var mFlags: UInt32
  init()
  init(mTimestamp: AudioTimeStamp, mFlags: UInt32)
}
var kAUVoiceIOProperty_BypassVoiceProcessing: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_VoiceProcessingEnableAGC: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_MuteOutput: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_VoiceProcessingQuality: AudioUnitPropertyID { get }
var kAUNBandEQProperty_NumberOfBands: AudioUnitPropertyID { get }
var kAUNBandEQProperty_MaxNumberOfBands: AudioUnitPropertyID { get }
var kAUNBandEQProperty_BiquadCoefficients: AudioUnitPropertyID { get }
var kAUVoiceIOErr_UnexpectedNumberOfInputChannels: OSStatus { get }
var kAudioUnitProperty_MeteringMode: AudioUnitPropertyID { get }
var kAudioUnitProperty_MatrixLevels: AudioUnitPropertyID { get }
var kAudioUnitProperty_MatrixDimensions: AudioUnitPropertyID { get }
var kAudioUnitProperty_MeterClipping: AudioUnitPropertyID { get }
struct AudioUnitMeterClipping {
  var peakValueSinceLastCall: Float32
  var sawInfinity: DarwinBoolean
  var sawNotANumber: DarwinBoolean
  init()
  init(peakValueSinceLastCall: Float32, sawInfinity: DarwinBoolean, sawNotANumber: DarwinBoolean)
}
var kAudioUnitProperty_ReverbRoomType: AudioUnitPropertyID { get }
var kAudioUnitProperty_UsesInternalReverb: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatializationAlgorithm: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerDistanceParams: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerAttenuationCurve: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerRenderingFlags: AudioUnitPropertyID { get }
enum AUSpatializationAlgorithm : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SpatializationAlgorithm_EqualPowerPanning
  case SpatializationAlgorithm_SphericalHead
  case SpatializationAlgorithm_HRTF
  case SpatializationAlgorithm_SoundField
  case SpatializationAlgorithm_VectorBasedPanning
  case SpatializationAlgorithm_StereoPassThrough
}
enum AUReverbRoomType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ReverbRoomType_SmallRoom
  case ReverbRoomType_MediumRoom
  case ReverbRoomType_LargeRoom
  case ReverbRoomType_MediumHall
  case ReverbRoomType_LargeHall
  case ReverbRoomType_Plate
  case ReverbRoomType_MediumChamber
  case ReverbRoomType_LargeChamber
  case ReverbRoomType_Cathedral
  case ReverbRoomType_LargeRoom2
  case ReverbRoomType_MediumHall2
  case ReverbRoomType_MediumHall3
  case ReverbRoomType_LargeHall2
}
enum AUSpatialMixerAttenuationCurve : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SpatialMixerAttenuationCurve_Power
  case SpatialMixerAttenuationCurve_Exponential
  case SpatialMixerAttenuationCurve_Inverse
  case SpatialMixerAttenuationCurve_Linear
}
struct MixerDistanceParams {
  var mReferenceDistance: Float32
  var mMaxDistance: Float32
  var mMaxAttenuation: Float32
  init()
  init(mReferenceDistance: Float32, mMaxDistance: Float32, mMaxAttenuation: Float32)
}
struct AUSpatialMixerRenderingFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var SpatialMixerRenderingFlags_InterAuralDelay: AUSpatialMixerRenderingFlags { get }
  static var SpatialMixerRenderingFlags_DistanceAttenuation: AUSpatialMixerRenderingFlags { get }
}
var kAudioUnitProperty_3DMixerDistanceParams: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerAttenuationCurve: AudioUnitPropertyID { get }
var kAudioUnitProperty_DopplerShift: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerRenderingFlags: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerDistanceAtten: AudioUnitPropertyID { get }
var kAudioUnitProperty_ReverbPreset: AudioUnitPropertyID { get }
struct AU3DMixerRenderingFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var k3DMixerRenderingFlags_InterAuralDelay: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DopplerShift: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceAttenuation: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceFilter: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceDiffusion: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_LinearDistanceAttenuation: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_ConstantReverbBlend: AU3DMixerRenderingFlags { get }
}
enum AU3DMixerAttenuationCurve : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case k3DMixerAttenuationCurve_Power
  case k3DMixerAttenuationCurve_Exponential
  case k3DMixerAttenuationCurve_Inverse
  case k3DMixerAttenuationCurve_Linear
}
var kAudioUnitProperty_ScheduleAudioSlice: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduleStartTimeStamp: AudioUnitPropertyID { get }
var kAudioUnitProperty_CurrentPlayTime: AudioUnitPropertyID { get }
struct AUScheduledAudioSliceFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ScheduledAudioSliceFlag_Complete: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_BeganToRender: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_BeganToRenderLate: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_Loop: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_Interrupt: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_InterruptAtLoop: AUScheduledAudioSliceFlags { get }
}
typealias ScheduledAudioSliceCompletionProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<ScheduledAudioSlice>) -> Void
struct ScheduledAudioSlice {
  var mTimeStamp: AudioTimeStamp
  var mCompletionProc: ScheduledAudioSliceCompletionProc?
  var mCompletionProcUserData: UnsafeMutablePointer<Void>
  var mFlags: AUScheduledAudioSliceFlags
  var mReserved: UInt32
  var mReserved2: UnsafeMutablePointer<Void>
  var mNumberFrames: UInt32
  var mBufferList: UnsafeMutablePointer<AudioBufferList>
}
var kAudioUnitProperty_ScheduledFileIDs: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileRegion: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFilePrime: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileBufferSizeFrames: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileNumberBuffers: AudioUnitPropertyID { get }
typealias ScheduledAudioFileRegionCompletionProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<ScheduledAudioFileRegion>, OSStatus) -> Void
struct ScheduledAudioFileRegion {
  var mTimeStamp: AudioTimeStamp
  var mCompletionProc: ScheduledAudioFileRegionCompletionProc?
  var mCompletionProcUserData: UnsafeMutablePointer<Void>
  var mAudioFile: COpaquePointer
  var mLoopCount: UInt32
  var mStartFrame: Int64
  var mFramesToPlay: UInt32
}
var kMusicDeviceProperty_UsesInternalReverb: AudioUnitPropertyID { get }
var kMusicDeviceProperty_SoundBankData: AudioUnitPropertyID { get }
var kMusicDeviceProperty_StreamFromDisk: AudioUnitPropertyID { get }
var kMusicDeviceProperty_SoundBankFSRef: AudioUnitPropertyID { get }
var kMusicDeviceProperty_InstrumentName: AudioUnitPropertyID { get }
var kMusicDeviceProperty_InstrumentNumber: AudioUnitPropertyID { get }
var kMusicDeviceProperty_InstrumentCount: AudioUnitPropertyID { get }
var kMusicDeviceProperty_BankName: AudioUnitPropertyID { get }
var kMusicDeviceProperty_SoundBankURL: AudioUnitPropertyID { get }
var kAUMIDISynthProperty_EnablePreload: AudioUnitPropertyID { get }
var kAUSamplerProperty_LoadInstrument: AudioUnitPropertyID { get }
var kAUSamplerProperty_LoadAudioFiles: AudioUnitPropertyID { get }
struct AUSamplerInstrumentData {
  var fileURL: Unmanaged<CFURL>
  var instrumentType: UInt8
  var bankMSB: UInt8
  var bankLSB: UInt8
  var presetID: UInt8
}
var kInstrumentType_DLSPreset: Int { get }
var kInstrumentType_SF2Preset: Int { get }
var kInstrumentType_AUPreset: Int { get }
var kInstrumentType_Audiofile: Int { get }
var kInstrumentType_EXS24: Int { get }
var kAUSampler_DefaultPercussionBankMSB: Int { get }
var kAUSampler_DefaultMelodicBankMSB: Int { get }
var kAUSampler_DefaultBankLSB: Int { get }
var kAudioUnitProperty_DeferredRendererPullSize: AudioUnitPropertyID { get }
var kAudioUnitProperty_DeferredRendererExtraLatency: AudioUnitPropertyID { get }
var kAudioUnitProperty_DeferredRendererWaitFrames: AudioUnitPropertyID { get }
var kAUNetReceiveProperty_Hostname: AudioUnitPropertyID { get }
var kAUNetReceiveProperty_Password: AudioUnitPropertyID { get }
var kAUNetSendProperty_PortNum: AudioUnitPropertyID { get }
var kAUNetSendProperty_TransmissionFormat: AudioUnitPropertyID { get }
var kAUNetSendProperty_TransmissionFormatIndex: AudioUnitPropertyID { get }
var kAUNetSendProperty_ServiceName: AudioUnitPropertyID { get }
var kAUNetSendProperty_Disconnect: AudioUnitPropertyID { get }
var kAUNetSendProperty_Password: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_PCMFloat32: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_PCMInt24: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_PCMInt16: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_Lossless24: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_Lossless16: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_ULaw: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_IMA4: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_128kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_96kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_80kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_64kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_48kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_40kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_32kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_LD_64kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_LD_48kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_LD_40kbpspc: AudioUnitPropertyID { get }
var kAUNetSendPresetFormat_AAC_LD_32kbpspc: AudioUnitPropertyID { get }
var kAUNetSendNumPresetFormats: AudioUnitPropertyID { get }
struct AUNumVersion {
  var nonRelRev: UInt8
  var stage: UInt8
  var minorAndBugRev: UInt8
  var majorRev: UInt8
  init()
  init(nonRelRev: UInt8, stage: UInt8, minorAndBugRev: UInt8, majorRev: UInt8)
}
struct AUHostIdentifier {
  var hostName: Unmanaged<CFString>
  var hostVersion: AUNumVersion
}
var kAudioUnitParameterFlag_Global: Int { get }
var kAudioUnitParameterFlag_Input: Int { get }
var kAudioUnitParameterFlag_Output: Int { get }
var kAudioUnitParameterFlag_Group: Int { get }
var kAudioUnitParameterFlag_HasName: Int { get }
var kAudioUnitProperty_SRCAlgorithm: AudioUnitPropertyID { get }
var kAudioUnitProperty_MIDIControlMapping: AudioUnitPropertyID { get }
var kAudioUnitProperty_CurrentPreset: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterValueName: AudioUnitPropertyID { get }
var kAudioUnitProperty_BusCount: AudioUnitPropertyID { get }
var kAudioOfflineUnitProperty_InputSize: AudioUnitPropertyID { get }
var kAudioOfflineUnitProperty_OutputSize: AudioUnitPropertyID { get }
var kAudioUnitSRCAlgorithm_Polyphase: UInt32 { get }
var kAudioUnitSRCAlgorithm_MediumQuality: UInt32 { get }
struct AudioUnitMIDIControlMapping {
  var midiNRPN: UInt16
  var midiControl: UInt8
  var scope: UInt8
  var element: AudioUnitElement
  var parameter: AudioUnitParameterID
  init()
  init(midiNRPN: UInt16, midiControl: UInt8, scope: UInt8, element: AudioUnitElement, parameter: AudioUnitParameterID)
}
struct AudioUnitParameterValueName {
  var inParamID: AudioUnitParameterID
  var inValue: UnsafePointer<Float32>
  var outName: Unmanaged<CFString>
}
var kMusicDeviceProperty_GroupOutputBus: AudioUnitPropertyID { get }
var kMusicDeviceProperty_SoundBankFSSpec: AudioUnitPropertyID { get }
var kAudioUnitProperty_PannerMode: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpeakerConfiguration: AudioUnitPropertyID { get }
var kSpeakerConfiguration_HeadPhones: Int { get }
var kSpeakerConfiguration_Stereo: Int { get }
var kSpeakerConfiguration_Quad: Int { get }
var kSpeakerConfiguration_5_0: Int { get }
var kSpeakerConfiguration_5_1: Int { get }
struct AUSamplerBankPresetData {
  var bankURL: Unmanaged<CFURL>
  var bankMSB: UInt8
  var bankLSB: UInt8
  var presetID: UInt8
  var reserved: UInt8
}
var kAUSamplerProperty_LoadPresetFromBank: AudioUnitPropertyID { get }
var kAUSamplerProperty_BankAndPreset: AudioUnitPropertyID { get }
typealias MusicDeviceInstrumentID = UInt32
struct MusicDeviceStdNoteParams {
  var argCount: UInt32
  var mPitch: Float32
  var mVelocity: Float32
  init()
  init(argCount: UInt32, mPitch: Float32, mVelocity: Float32)
}
struct NoteParamsControlValue {
  var mID: AudioUnitParameterID
  var mValue: AudioUnitParameterValue
  init()
  init(mID: AudioUnitParameterID, mValue: AudioUnitParameterValue)
}
struct MusicDeviceNoteParams {
  var argCount: UInt32
  var mPitch: Float32
  var mVelocity: Float32
  var mControls: (NoteParamsControlValue)
  init()
  init(argCount: UInt32, mPitch: Float32, mVelocity: Float32, mControls: (NoteParamsControlValue))
}
var kMusicNoteEvent_UseGroupInstrument: UInt32 { get }
var kMusicNoteEvent_Unused: UInt32 { get }
typealias MusicDeviceGroupID = UInt32
typealias NoteInstanceID = UInt32
typealias MusicDeviceComponent = AudioComponentInstance
func MusicDeviceMIDIEvent(inUnit: MusicDeviceComponent, _ inStatus: UInt32, _ inData1: UInt32, _ inData2: UInt32, _ inOffsetSampleFrame: UInt32) -> OSStatus
func MusicDeviceSysEx(inUnit: MusicDeviceComponent, _ inData: UnsafePointer<UInt8>, _ inLength: UInt32) -> OSStatus
func MusicDeviceStartNote(inUnit: MusicDeviceComponent, _ inInstrument: MusicDeviceInstrumentID, _ inGroupID: MusicDeviceGroupID, _ outNoteInstanceID: UnsafeMutablePointer<NoteInstanceID>, _ inOffsetSampleFrame: UInt32, _ inParams: UnsafePointer<MusicDeviceNoteParams>) -> OSStatus
func MusicDeviceStopNote(inUnit: MusicDeviceComponent, _ inGroupID: MusicDeviceGroupID, _ inNoteInstanceID: NoteInstanceID, _ inOffsetSampleFrame: UInt32) -> OSStatus
var kMusicDeviceRange: Int { get }
var kMusicDeviceMIDIEventSelect: Int { get }
var kMusicDeviceSysExSelect: Int { get }
var kMusicDevicePrepareInstrumentSelect: Int { get }
var kMusicDeviceReleaseInstrumentSelect: Int { get }
var kMusicDeviceStartNoteSelect: Int { get }
var kMusicDeviceStopNoteSelect: Int { get }
typealias MusicDeviceMIDIEventProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UInt32, UInt32) -> OSStatus
typealias MusicDeviceSysExProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<UInt8>, UInt32) -> OSStatus
typealias MusicDeviceStartNoteProc = @convention(c) (UnsafeMutablePointer<Void>, MusicDeviceInstrumentID, MusicDeviceGroupID, UnsafeMutablePointer<NoteInstanceID>, UInt32, UnsafePointer<MusicDeviceNoteParams>) -> OSStatus
typealias MusicDeviceStopNoteProc = @convention(c) (UnsafeMutablePointer<Void>, MusicDeviceGroupID, NoteInstanceID, UInt32) -> OSStatus
