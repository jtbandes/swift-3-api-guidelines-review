
var kAudioObjectSystemObject: Int32 { get }
typealias AudioObjectPropertyListenerProc = @convention(c) (AudioObjectID, UInt32, UnsafePointer<AudioObjectPropertyAddress>, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioObjectPropertyListenerBlock = (UInt32, UnsafePointer<AudioObjectPropertyAddress>) -> Void
var kAudioObjectPropertyCreator: AudioObjectPropertySelector { get }
var kAudioObjectPropertyListenerAdded: AudioObjectPropertySelector { get }
var kAudioObjectPropertyListenerRemoved: AudioObjectPropertySelector { get }
func AudioObjectShow(inObjectID: AudioObjectID)
func AudioObjectHasProperty(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>) -> Bool
func AudioObjectIsPropertySettable(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ outIsSettable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AudioObjectGetPropertyDataSize(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioObjectGetPropertyData(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioObjectSetPropertyData(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ inDataSize: UInt32, _ inData: UnsafePointer<Void>) -> OSStatus
func AudioObjectAddPropertyListener(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioObjectRemovePropertyListener(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioObjectAddPropertyListenerBlock(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inDispatchQueue: dispatch_queue_t?, _ inListener: AudioObjectPropertyListenerBlock) -> OSStatus
func AudioObjectRemovePropertyListenerBlock(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inDispatchQueue: dispatch_queue_t?, _ inListener: AudioObjectPropertyListenerBlock) -> OSStatus
var kAudioSystemObjectClassID: AudioClassID { get }
enum AudioHardwarePowerHint : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case FavorSavingPower
}
var kAudioHardwarePropertyDevices: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultInputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultOutputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultSystemOutputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateUIDToDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyMixStereoToMono: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPlugInList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateBundleIDToPlugIn: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTransportManagerList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateBundleIDToTransportManager: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBoxList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateUIDToBox: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyProcessIsMaster: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyIsInitingOrExiting: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUserIDChanged: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyProcessIsAudible: AudioObjectPropertySelector { get }
var kAudioHardwarePropertySleepingIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUnloadingIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyHogModeIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUserSessionIsActiveOrHeadless: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyServiceRestarted: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPowerHint: AudioObjectPropertySelector { get }
func AudioHardwareUnload() -> OSStatus
func AudioHardwareCreateAggregateDevice(inDescription: CFDictionary, _ outDeviceID: UnsafeMutablePointer<AudioObjectID>) -> OSStatus
func AudioHardwareDestroyAggregateDevice(inDeviceID: AudioObjectID) -> OSStatus
var kAudioPlugInCreateAggregateDevice: AudioObjectPropertySelector { get }
var kAudioPlugInDestroyAggregateDevice: AudioObjectPropertySelector { get }
var kAudioTransportManagerCreateEndPointDevice: AudioObjectPropertySelector { get }
var kAudioTransportManagerDestroyEndPointDevice: AudioObjectPropertySelector { get }
typealias AudioDeviceIOProc = @convention(c) (AudioObjectID, UnsafePointer<AudioTimeStamp>, UnsafePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioDeviceIOBlock = (UnsafePointer<AudioTimeStamp>, UnsafePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>) -> Void
typealias AudioDeviceIOProcID = AudioDeviceIOProc
struct AudioHardwareIOProcStreamUsage {
  var mIOProc: UnsafeMutablePointer<Void>
  var mNumberStreams: UInt32
  var mStreamIsOn: (UInt32)
}
var kAudioDeviceStartTimeIsInputFlag: UInt32 { get }
var kAudioDeviceStartTimeDontConsultDeviceFlag: UInt32 { get }
var kAudioDeviceStartTimeDontConsultHALFlag: UInt32 { get }
var kAudioDevicePropertyPlugIn: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceHasChanged: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceIsRunningSomewhere: AudioObjectPropertySelector { get }
var kAudioDeviceProcessorOverload: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOStoppedAbnormally: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHogMode: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferFrameSize: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferFrameSizeRange: AudioObjectPropertySelector { get }
var kAudioDevicePropertyUsesVariableBufferFrameSizes: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOCycleUsage: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamConfiguration: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOProcStreamUsage: AudioObjectPropertySelector { get }
var kAudioDevicePropertyActualSampleRate: AudioObjectPropertySelector { get }
var kAudioDevicePropertyJackIsConnected: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStereoPan: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStereoPanChannels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyMute: AudioObjectPropertySelector { get }
var kAudioDevicePropertySolo: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPhantomPower: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPhaseInvert: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClipLight: AudioObjectPropertySelector { get }
var kAudioDevicePropertyTalkback: AudioObjectPropertySelector { get }
var kAudioDevicePropertyListenback: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSource: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSources: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceKindForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSource: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSources: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceKindForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThru: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruSolo: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruStereoPan: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruStereoPanChannels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestination: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinations: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinationNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevel: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevelNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSetting: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettings: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettingNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubMute: AudioObjectPropertySelector { get }
func AudioDeviceCreateIOProcID(inDevice: AudioObjectID, _ inProc: AudioDeviceIOProc, _ inClientData: UnsafeMutablePointer<Void>, _ outIOProcID: UnsafeMutablePointer<AudioDeviceIOProcID?>) -> OSStatus
func AudioDeviceCreateIOProcIDWithBlock(outIOProcID: UnsafeMutablePointer<AudioDeviceIOProcID?>, _ inDevice: AudioObjectID, _ inDispatchQueue: dispatch_queue_t?, _ inIOBlock: AudioDeviceIOBlock) -> OSStatus
func AudioDeviceDestroyIOProcID(inDevice: AudioObjectID, _ inIOProcID: AudioDeviceIOProcID) -> OSStatus
func AudioDeviceStart(inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?) -> OSStatus
func AudioDeviceStartAtTime(inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus
func AudioDeviceStop(inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?) -> OSStatus
func AudioDeviceGetCurrentTime(inDevice: AudioObjectID, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
func AudioDeviceTranslateTime(inDevice: AudioObjectID, _ inTime: UnsafePointer<AudioTimeStamp>, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
func AudioDeviceGetNearestStartTime(inDevice: AudioObjectID, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus
var kAudioAggregateDeviceClassID: AudioClassID { get }
var kAudioAggregateDeviceUIDKey: String { get }
var kAudioAggregateDeviceNameKey: String { get }
var kAudioAggregateDeviceSubDeviceListKey: String { get }
var kAudioAggregateDeviceMasterSubDeviceKey: String { get }
var kAudioAggregateDeviceIsPrivateKey: String { get }
var kAudioAggregateDeviceIsStackedKey: String { get }
var kAudioAggregateDevicePropertyFullSubDeviceList: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyActiveSubDeviceList: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyComposition: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyMasterSubDevice: AudioObjectPropertySelector { get }
var kAudioSubDeviceClassID: AudioClassID { get }
var kAudioSubDeviceDriftCompensationMinQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationLowQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationMediumQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationHighQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationMaxQuality: UInt32 { get }
var kAudioSubDeviceUIDKey: String { get }
var kAudioSubDeviceNameKey: String { get }
var kAudioSubDeviceInputChannelsKey: String { get }
var kAudioSubDeviceOutputChannelsKey: String { get }
var kAudioSubDeviceExtraInputLatencyKey: String { get }
var kAudioSubDeviceExtraOutputLatencyKey: String { get }
var kAudioSubDeviceDriftCompensationKey: String { get }
var kAudioSubDeviceDriftCompensationQualityKey: String { get }
var kAudioSubDevicePropertyExtraLatency: AudioObjectPropertySelector { get }
var kAudioSubDevicePropertyDriftCompensation: AudioObjectPropertySelector { get }
var kAudioSubDevicePropertyDriftCompensationQuality: AudioObjectPropertySelector { get }
typealias AudioObjectID = UInt32
typealias AudioClassID = UInt32
typealias AudioObjectPropertySelector = UInt32
typealias AudioObjectPropertyScope = UInt32
typealias AudioObjectPropertyElement = UInt32
struct AudioObjectPropertyAddress {
  var mSelector: AudioObjectPropertySelector
  var mScope: AudioObjectPropertyScope
  var mElement: AudioObjectPropertyElement
  init()
  init(mSelector: AudioObjectPropertySelector, mScope: AudioObjectPropertyScope, mElement: AudioObjectPropertyElement)
}
var kAudioHardwareNoError: OSStatus { get }
var kAudioHardwareNotRunningError: OSStatus { get }
var kAudioHardwareUnspecifiedError: OSStatus { get }
var kAudioHardwareUnknownPropertyError: OSStatus { get }
var kAudioHardwareBadPropertySizeError: OSStatus { get }
var kAudioHardwareIllegalOperationError: OSStatus { get }
var kAudioHardwareBadObjectError: OSStatus { get }
var kAudioHardwareBadDeviceError: OSStatus { get }
var kAudioHardwareBadStreamError: OSStatus { get }
var kAudioHardwareUnsupportedOperationError: OSStatus { get }
var kAudioDeviceUnsupportedFormatError: OSStatus { get }
var kAudioDevicePermissionsError: OSStatus { get }
var kAudioObjectUnknown: AudioObjectID { get }
var kAudioObjectPropertyScopeGlobal: AudioObjectPropertyScope { get }
var kAudioObjectPropertyScopeInput: AudioObjectPropertyScope { get }
var kAudioObjectPropertyScopeOutput: AudioObjectPropertyScope { get }
var kAudioObjectPropertyScopePlayThrough: AudioObjectPropertyScope { get }
var kAudioObjectPropertyElementMaster: AudioObjectPropertyScope { get }
var kAudioObjectPropertySelectorWildcard: AudioObjectPropertySelector { get }
var kAudioObjectPropertyScopeWildcard: AudioObjectPropertyScope { get }
var kAudioObjectPropertyElementWildcard: AudioObjectPropertyElement { get }
var kAudioObjectClassIDWildcard: AudioClassID { get }
var kAudioObjectClassID: AudioClassID { get }
var kAudioObjectPropertyBaseClass: AudioObjectPropertySelector { get }
var kAudioObjectPropertyClass: AudioObjectPropertySelector { get }
var kAudioObjectPropertyOwner: AudioObjectPropertySelector { get }
var kAudioObjectPropertyName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyModelName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyManufacturer: AudioObjectPropertySelector { get }
var kAudioObjectPropertyElementName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyElementCategoryName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyElementNumberName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyOwnedObjects: AudioObjectPropertySelector { get }
var kAudioObjectPropertyIdentify: AudioObjectPropertySelector { get }
var kAudioObjectPropertySerialNumber: AudioObjectPropertySelector { get }
var kAudioObjectPropertyFirmwareVersion: AudioObjectPropertySelector { get }
var kAudioPlugInClassID: AudioClassID { get }
var kAudioPlugInPropertyBundleID: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyDeviceList: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyTranslateUIDToDevice: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyBoxList: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyTranslateUIDToBox: AudioObjectPropertySelector { get }
var kAudioTransportManagerClassID: AudioClassID { get }
var kAudioTransportManagerPropertyEndPointList: AudioObjectPropertySelector { get }
var kAudioTransportManagerPropertyTranslateUIDToEndPoint: AudioObjectPropertySelector { get }
var kAudioTransportManagerPropertyTransportType: AudioObjectPropertySelector { get }
var kAudioBoxClassID: AudioClassID { get }
var kAudioBoxPropertyBoxUID: AudioObjectPropertySelector { get }
var kAudioBoxPropertyTransportType: AudioObjectPropertySelector { get }
var kAudioBoxPropertyHasAudio: AudioObjectPropertySelector { get }
var kAudioBoxPropertyHasVideo: AudioObjectPropertySelector { get }
var kAudioBoxPropertyHasMIDI: AudioObjectPropertySelector { get }
var kAudioBoxPropertyIsProtected: AudioObjectPropertySelector { get }
var kAudioBoxPropertyAcquired: AudioObjectPropertySelector { get }
var kAudioBoxPropertyAcquisitionFailed: AudioObjectPropertySelector { get }
var kAudioBoxPropertyDeviceList: AudioObjectPropertySelector { get }
var kAudioDeviceClassID: AudioClassID { get }
var kAudioDeviceTransportTypeUnknown: UInt32 { get }
var kAudioDeviceTransportTypeBuiltIn: UInt32 { get }
var kAudioDeviceTransportTypeAggregate: UInt32 { get }
var kAudioDeviceTransportTypeVirtual: UInt32 { get }
var kAudioDeviceTransportTypePCI: UInt32 { get }
var kAudioDeviceTransportTypeUSB: UInt32 { get }
var kAudioDeviceTransportTypeFireWire: UInt32 { get }
var kAudioDeviceTransportTypeBluetooth: UInt32 { get }
var kAudioDeviceTransportTypeBluetoothLE: UInt32 { get }
var kAudioDeviceTransportTypeHDMI: UInt32 { get }
var kAudioDeviceTransportTypeDisplayPort: UInt32 { get }
var kAudioDeviceTransportTypeAirPlay: UInt32 { get }
var kAudioDeviceTransportTypeAVB: UInt32 { get }
var kAudioDeviceTransportTypeThunderbolt: UInt32 { get }
var kAudioDevicePropertyConfigurationApplication: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceUID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyModelUID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyTransportType: AudioObjectPropertySelector { get }
var kAudioDevicePropertyRelatedDevices: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockDomain: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceIsAlive: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceIsRunning: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceCanBeDefaultDevice: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceCanBeDefaultSystemDevice: AudioObjectPropertySelector { get }
var kAudioDevicePropertyLatency: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreams: AudioObjectPropertySelector { get }
var kAudioObjectPropertyControlList: AudioObjectPropertySelector { get }
var kAudioDevicePropertySafetyOffset: AudioObjectPropertySelector { get }
var kAudioDevicePropertyNominalSampleRate: AudioObjectPropertySelector { get }
var kAudioDevicePropertyAvailableNominalSampleRates: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIcon: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIsHidden: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPreferredChannelsForStereo: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPreferredChannelLayout: AudioObjectPropertySelector { get }
var kAudioEndPointDeviceClassID: AudioClassID { get }
var kAudioEndPointDeviceUIDKey: String { get }
var kAudioEndPointDeviceNameKey: String { get }
var kAudioEndPointDeviceEndPointListKey: String { get }
var kAudioEndPointDeviceMasterEndPointKey: String { get }
var kAudioEndPointDeviceIsPrivateKey: String { get }
var kAudioEndPointDevicePropertyComposition: AudioObjectPropertySelector { get }
var kAudioEndPointDevicePropertyEndPointList: AudioObjectPropertySelector { get }
var kAudioEndPointDevicePropertyIsPrivate: AudioObjectPropertySelector { get }
var kAudioEndPointClassID: AudioClassID { get }
var kAudioEndPointUIDKey: String { get }
var kAudioEndPointNameKey: String { get }
var kAudioEndPointInputChannelsKey: String { get }
var kAudioEndPointOutputChannelsKey: String { get }
struct AudioStreamRangedDescription {
  var mFormat: AudioStreamBasicDescription
  var mSampleRateRange: AudioValueRange
  init()
  init(mFormat: AudioStreamBasicDescription, mSampleRateRange: AudioValueRange)
}
var kAudioStreamClassID: AudioClassID { get }
var kAudioStreamTerminalTypeUnknown: UInt32 { get }
var kAudioStreamTerminalTypeLine: UInt32 { get }
var kAudioStreamTerminalTypeDigitalAudioInterface: UInt32 { get }
var kAudioStreamTerminalTypeSpeaker: UInt32 { get }
var kAudioStreamTerminalTypeHeadphones: UInt32 { get }
var kAudioStreamTerminalTypeLFESpeaker: UInt32 { get }
var kAudioStreamTerminalTypeReceiverSpeaker: UInt32 { get }
var kAudioStreamTerminalTypeMicrophone: UInt32 { get }
var kAudioStreamTerminalTypeHeadsetMicrophone: UInt32 { get }
var kAudioStreamTerminalTypeReceiverMicrophone: UInt32 { get }
var kAudioStreamTerminalTypeTTY: UInt32 { get }
var kAudioStreamTerminalTypeHDMI: UInt32 { get }
var kAudioStreamTerminalTypeDisplayPort: UInt32 { get }
var kAudioStreamPropertyIsActive: AudioObjectPropertySelector { get }
var kAudioStreamPropertyDirection: AudioObjectPropertySelector { get }
var kAudioStreamPropertyTerminalType: AudioObjectPropertySelector { get }
var kAudioStreamPropertyStartingChannel: AudioObjectPropertySelector { get }
var kAudioStreamPropertyLatency: AudioObjectPropertySelector { get }
var kAudioStreamPropertyVirtualFormat: AudioObjectPropertySelector { get }
var kAudioStreamPropertyAvailableVirtualFormats: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormat: AudioObjectPropertySelector { get }
var kAudioStreamPropertyAvailablePhysicalFormats: AudioObjectPropertySelector { get }
var kAudioControlClassID: AudioClassID { get }
var kAudioControlPropertyScope: AudioObjectPropertySelector { get }
var kAudioControlPropertyElement: AudioObjectPropertySelector { get }
var kAudioSliderControlClassID: AudioClassID { get }
var kAudioSliderControlPropertyValue: AudioObjectPropertySelector { get }
var kAudioSliderControlPropertyRange: AudioObjectPropertySelector { get }
var kAudioLevelControlClassID: AudioClassID { get }
var kAudioVolumeControlClassID: AudioClassID { get }
var kAudioLFEVolumeControlClassID: AudioClassID { get }
var kAudioLevelControlPropertyScalarValue: AudioObjectPropertySelector { get }
var kAudioLevelControlPropertyDecibelValue: AudioObjectPropertySelector { get }
var kAudioLevelControlPropertyDecibelRange: AudioObjectPropertySelector { get }
var kAudioLevelControlPropertyConvertScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioLevelControlPropertyConvertDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioBooleanControlClassID: AudioClassID { get }
var kAudioMuteControlClassID: AudioClassID { get }
var kAudioSoloControlClassID: AudioClassID { get }
var kAudioJackControlClassID: AudioClassID { get }
var kAudioLFEMuteControlClassID: AudioClassID { get }
var kAudioPhantomPowerControlClassID: AudioClassID { get }
var kAudioPhaseInvertControlClassID: AudioClassID { get }
var kAudioClipLightControlClassID: AudioClassID { get }
var kAudioTalkbackControlClassID: AudioClassID { get }
var kAudioListenbackControlClassID: AudioClassID { get }
var kAudioBooleanControlPropertyValue: AudioObjectPropertySelector { get }
var kAudioSelectorControlClassID: AudioClassID { get }
var kAudioDataSourceControlClassID: AudioClassID { get }
var kAudioDataDestinationControlClassID: AudioClassID { get }
var kAudioClockSourceControlClassID: AudioClassID { get }
var kAudioLineLevelControlClassID: AudioClassID { get }
var kAudioHighPassFilterControlClassID: AudioClassID { get }
var kAudioSelectorControlPropertyCurrentItem: AudioObjectPropertySelector { get }
var kAudioSelectorControlPropertyAvailableItems: AudioObjectPropertySelector { get }
var kAudioSelectorControlPropertyItemName: AudioObjectPropertySelector { get }
var kAudioSelectorControlPropertyItemKind: AudioObjectPropertySelector { get }
var kAudioSelectorControlItemKindSpacer: UInt32 { get }
var kAudioClockSourceItemKindInternal: UInt32 { get }
var kAudioStereoPanControlClassID: AudioClassID { get }
var kAudioStereoPanControlPropertyValue: AudioObjectPropertySelector { get }
var kAudioStereoPanControlPropertyPanningChannels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyScopeInput: AudioObjectPropertyScope { get }
var kAudioDevicePropertyScopeOutput: AudioObjectPropertyScope { get }
var kAudioDevicePropertyScopePlayThrough: AudioObjectPropertyScope { get }
var kAudioPropertyWildcardPropertyID: AudioObjectPropertySelector { get }
var kAudioPropertyWildcardSection: UInt8 { get }
var kAudioPropertyWildcardChannel: AudioObjectPropertyElement { get }
var kAudioISubOwnerControlClassID: AudioClassID { get }
var kAudioLevelControlPropertyDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
enum AudioLevelControlTransferFunction : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TranferFunctionLinear
  case TranferFunction1Over3
  case TranferFunction1Over2
  case TranferFunction3Over4
  case TranferFunction3Over2
  case TranferFunction2Over1
  case TranferFunction3Over1
  case TranferFunction4Over1
  case TranferFunction5Over1
  case TranferFunction6Over1
  case TranferFunction7Over1
  case TranferFunction8Over1
  case TranferFunction9Over1
  case TranferFunction10Over1
  case TranferFunction11Over1
  case TranferFunction12Over1
}
typealias AudioHardwarePropertyID = AudioObjectPropertySelector
typealias AudioHardwarePropertyListenerProc = @convention(c) (AudioHardwarePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioHardwareRunLoopMode: String { get }
var kAudioHardwarePropertyRunLoop: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDeviceForUID: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPlugInForBundleID: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeScalar: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
typealias AudioDeviceID = AudioObjectID
typealias AudioDevicePropertyID = AudioObjectPropertySelector
typealias AudioDevicePropertyListenerProc = @convention(c) (AudioDeviceID, UInt32, DarwinBoolean, AudioDevicePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioDeviceUnknown: AudioObjectID { get }
var kAudioDeviceTransportTypeAutoAggregate: UInt32 { get }
var kAudioDevicePropertyVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDriverShouldOwniSub: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceManufacturer: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceManufacturerCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyRegisterBufferList: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferSize: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferSizeRange: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelCategoryName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelCategoryNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNumberName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNumberNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertySupportsMixing: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormat: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormats: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormatSupported: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormatMatch: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinationNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevelNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettingNameForID: AudioObjectPropertySelector { get }
typealias AudioStreamID = AudioObjectID
typealias AudioStreamPropertyListenerProc = @convention(c) (AudioStreamID, UInt32, AudioDevicePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioStreamUnknown: AudioObjectID { get }
var kAudioStreamPropertyOwningDevice: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormats: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormatSupported: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormatMatch: AudioObjectPropertySelector { get }
var kAudioBootChimeVolumeControlClassID: AudioClassID { get }
var kAudioControlPropertyVariant: AudioObjectPropertySelector { get }
var kAudioClockSourceControlPropertyItemKind: AudioObjectPropertySelector { get }
var COREAUDIOTYPES_VERSION: Int32 { get }
var CA_PREFER_FIXED_POINT: Int32 { get }
var kAudio_UnimplementedError: OSStatus { get }
var kAudio_FileNotFoundError: OSStatus { get }
var kAudio_FilePermissionError: OSStatus { get }
var kAudio_TooManyFilesOpenError: OSStatus { get }
var kAudio_BadFilePathError: OSStatus { get }
var kAudio_ParamError: OSStatus { get }
var kAudio_MemFullError: OSStatus { get }
struct AudioValueRange {
  var mMinimum: Float64
  var mMaximum: Float64
  init()
  init(mMinimum: Float64, mMaximum: Float64)
}
struct AudioValueTranslation {
  var mInputData: UnsafeMutablePointer<Void>
  var mInputDataSize: UInt32
  var mOutputData: UnsafeMutablePointer<Void>
  var mOutputDataSize: UInt32
}
struct AudioBuffer {
  var mNumberChannels: UInt32
  var mDataByteSize: UInt32
  var mData: UnsafeMutablePointer<Void>
  init()
  init(mNumberChannels: UInt32, mDataByteSize: UInt32, mData: UnsafeMutablePointer<Void>)
}
extension AudioBuffer {
  /// Initialize an `AudioBuffer` from an
  /// `UnsafeMutableBufferPointer<Element>`.
  init<Element>(_ typedBuffer: UnsafeMutableBufferPointer<Element>, numberOfChannels: Int)
}
struct AudioBufferList {
  var mNumberBuffers: UInt32
  var mBuffers: (AudioBuffer)
  init()
  init(mNumberBuffers: UInt32, mBuffers: (AudioBuffer))
}
extension AudioBufferList {
  /// - Returns: the size in bytes of an `AudioBufferList` that can hold up to
  ///   `maximumBuffers` `AudioBuffer`s.
  static func sizeInBytes(maximumBuffers maximumBuffers: Int) -> Int
  /// Allocate an `AudioBufferList` with a capacity for the specified number of
  /// `AudioBuffer`s.
  ///
  /// The `count` property of the new `AudioBufferList` is initialized to
  /// `maximumBuffers`.
  ///
  /// The memory should be freed with `free()`.
  static func allocate(maximumBuffers maximumBuffers: Int) -> UnsafeMutableAudioBufferListPointer
}
typealias AudioSampleType = Float32
typealias AudioUnitSampleType = Float32
typealias AudioFormatID = UInt32
typealias AudioFormatFlags = UInt32
struct AudioStreamBasicDescription {
  var mSampleRate: Float64
  var mFormatID: AudioFormatID
  var mFormatFlags: AudioFormatFlags
  var mBytesPerPacket: UInt32
  var mFramesPerPacket: UInt32
  var mBytesPerFrame: UInt32
  var mChannelsPerFrame: UInt32
  var mBitsPerChannel: UInt32
  var mReserved: UInt32
  init()
  init(mSampleRate: Float64, mFormatID: AudioFormatID, mFormatFlags: AudioFormatFlags, mBytesPerPacket: UInt32, mFramesPerPacket: UInt32, mBytesPerFrame: UInt32, mChannelsPerFrame: UInt32, mBitsPerChannel: UInt32, mReserved: UInt32)
}
let kAudioStreamAnyRate: Float64
var kAudioFormatLinearPCM: AudioFormatID { get }
var kAudioFormatAC3: AudioFormatID { get }
var kAudioFormat60958AC3: AudioFormatID { get }
var kAudioFormatAppleIMA4: AudioFormatID { get }
var kAudioFormatMPEG4AAC: AudioFormatID { get }
var kAudioFormatMPEG4CELP: AudioFormatID { get }
var kAudioFormatMPEG4HVXC: AudioFormatID { get }
var kAudioFormatMPEG4TwinVQ: AudioFormatID { get }
var kAudioFormatMACE3: AudioFormatID { get }
var kAudioFormatMACE6: AudioFormatID { get }
var kAudioFormatULaw: AudioFormatID { get }
var kAudioFormatALaw: AudioFormatID { get }
var kAudioFormatQDesign: AudioFormatID { get }
var kAudioFormatQDesign2: AudioFormatID { get }
var kAudioFormatQUALCOMM: AudioFormatID { get }
var kAudioFormatMPEGLayer1: AudioFormatID { get }
var kAudioFormatMPEGLayer2: AudioFormatID { get }
var kAudioFormatMPEGLayer3: AudioFormatID { get }
var kAudioFormatTimeCode: AudioFormatID { get }
var kAudioFormatMIDIStream: AudioFormatID { get }
var kAudioFormatParameterValueStream: AudioFormatID { get }
var kAudioFormatAppleLossless: AudioFormatID { get }
var kAudioFormatMPEG4AAC_HE: AudioFormatID { get }
var kAudioFormatMPEG4AAC_LD: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD_SBR: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD_V2: AudioFormatID { get }
var kAudioFormatMPEG4AAC_HE_V2: AudioFormatID { get }
var kAudioFormatMPEG4AAC_Spatial: AudioFormatID { get }
var kAudioFormatAMR: AudioFormatID { get }
var kAudioFormatAMR_WB: AudioFormatID { get }
var kAudioFormatAudible: AudioFormatID { get }
var kAudioFormatiLBC: AudioFormatID { get }
var kAudioFormatDVIIntelIMA: AudioFormatID { get }
var kAudioFormatMicrosoftGSM: AudioFormatID { get }
var kAudioFormatAES3: AudioFormatID { get }
var kAudioFormatEnhancedAC3: AudioFormatID { get }
var kAudioFormatFlagIsFloat: AudioFormatFlags { get }
var kAudioFormatFlagIsBigEndian: AudioFormatFlags { get }
var kAudioFormatFlagIsSignedInteger: AudioFormatFlags { get }
var kAudioFormatFlagIsPacked: AudioFormatFlags { get }
var kAudioFormatFlagIsAlignedHigh: AudioFormatFlags { get }
var kAudioFormatFlagIsNonInterleaved: AudioFormatFlags { get }
var kAudioFormatFlagIsNonMixable: AudioFormatFlags { get }
var kAudioFormatFlagsAreAllClear: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsFloat: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsBigEndian: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsSignedInteger: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsPacked: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsAlignedHigh: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsNonInterleaved: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsNonMixable: AudioFormatFlags { get }
var kLinearPCMFormatFlagsSampleFractionShift: AudioFormatFlags { get }
var kLinearPCMFormatFlagsSampleFractionMask: AudioFormatFlags { get }
var kLinearPCMFormatFlagsAreAllClear: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_16BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_20BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_24BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_32BitSourceData: AudioFormatFlags { get }
var kAudioFormatFlagsNativeEndian: AudioFormatFlags { get }
var kAudioFormatFlagsCanonical: AudioFormatFlags { get }
var kAudioFormatFlagsAudioUnitCanonical: AudioFormatFlags { get }
var kAudioFormatFlagsNativeFloatPacked: AudioFormatFlags { get }
struct AudioStreamPacketDescription {
  var mStartOffset: Int64
  var mVariableFramesInPacket: UInt32
  var mDataByteSize: UInt32
  init()
  init(mStartOffset: Int64, mVariableFramesInPacket: UInt32, mDataByteSize: UInt32)
}
enum SMPTETimeType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Type24
  case Type25
  case Type30Drop
  case Type30
  case Type2997
  case Type2997Drop
  case Type60
  case Type5994
  case Type60Drop
  case Type5994Drop
  case Type50
  case Type2398
}
struct SMPTETimeFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Unknown: SMPTETimeFlags { get }
  static var Valid: SMPTETimeFlags { get }
  static var Running: SMPTETimeFlags { get }
}
struct SMPTETime {
  var mSubframes: Int16
  var mSubframeDivisor: Int16
  var mCounter: UInt32
  var mType: SMPTETimeType
  var mFlags: SMPTETimeFlags
  var mHours: Int16
  var mMinutes: Int16
  var mSeconds: Int16
  var mFrames: Int16
  init()
  init(mSubframes: Int16, mSubframeDivisor: Int16, mCounter: UInt32, mType: SMPTETimeType, mFlags: SMPTETimeFlags, mHours: Int16, mMinutes: Int16, mSeconds: Int16, mFrames: Int16)
}
struct AudioTimeStampFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NothingValid: AudioTimeStampFlags { get }
  static var SampleTimeValid: AudioTimeStampFlags { get }
  static var HostTimeValid: AudioTimeStampFlags { get }
  static var RateScalarValid: AudioTimeStampFlags { get }
  static var WordClockTimeValid: AudioTimeStampFlags { get }
  static var SMPTETimeValid: AudioTimeStampFlags { get }
  static var SampleHostTimeValid: AudioTimeStampFlags { get }
}
struct AudioTimeStamp {
  var mSampleTime: Float64
  var mHostTime: UInt64
  var mRateScalar: Float64
  var mWordClockTime: UInt64
  var mSMPTETime: SMPTETime
  var mFlags: AudioTimeStampFlags
  var mReserved: UInt32
  init()
  init(mSampleTime: Float64, mHostTime: UInt64, mRateScalar: Float64, mWordClockTime: UInt64, mSMPTETime: SMPTETime, mFlags: AudioTimeStampFlags, mReserved: UInt32)
}
struct AudioClassDescription {
  var mType: OSType
  var mSubType: OSType
  var mManufacturer: OSType
  init()
  init(mType: OSType, mSubType: OSType, mManufacturer: OSType)
}
typealias AudioChannelLabel = UInt32
typealias AudioChannelLayoutTag = UInt32
var kAudioChannelLabel_Unknown: AudioChannelLabel { get }
var kAudioChannelLabel_Unused: AudioChannelLabel { get }
var kAudioChannelLabel_UseCoordinates: AudioChannelLabel { get }
var kAudioChannelLabel_Left: AudioChannelLabel { get }
var kAudioChannelLabel_Right: AudioChannelLabel { get }
var kAudioChannelLabel_Center: AudioChannelLabel { get }
var kAudioChannelLabel_LFEScreen: AudioChannelLabel { get }
var kAudioChannelLabel_LeftSurround: AudioChannelLabel { get }
var kAudioChannelLabel_RightSurround: AudioChannelLabel { get }
var kAudioChannelLabel_LeftCenter: AudioChannelLabel { get }
var kAudioChannelLabel_RightCenter: AudioChannelLabel { get }
var kAudioChannelLabel_CenterSurround: AudioChannelLabel { get }
var kAudioChannelLabel_LeftSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_RightSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_TopCenterSurround: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightLeft: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightCenter: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightRight: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackLeft: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackCenter: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackRight: AudioChannelLabel { get }
var kAudioChannelLabel_RearSurroundLeft: AudioChannelLabel { get }
var kAudioChannelLabel_RearSurroundRight: AudioChannelLabel { get }
var kAudioChannelLabel_LeftWide: AudioChannelLabel { get }
var kAudioChannelLabel_RightWide: AudioChannelLabel { get }
var kAudioChannelLabel_LFE2: AudioChannelLabel { get }
var kAudioChannelLabel_LeftTotal: AudioChannelLabel { get }
var kAudioChannelLabel_RightTotal: AudioChannelLabel { get }
var kAudioChannelLabel_HearingImpaired: AudioChannelLabel { get }
var kAudioChannelLabel_Narration: AudioChannelLabel { get }
var kAudioChannelLabel_Mono: AudioChannelLabel { get }
var kAudioChannelLabel_DialogCentricMix: AudioChannelLabel { get }
var kAudioChannelLabel_CenterSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_Haptic: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_W: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_X: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_Y: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_Z: AudioChannelLabel { get }
var kAudioChannelLabel_MS_Mid: AudioChannelLabel { get }
var kAudioChannelLabel_MS_Side: AudioChannelLabel { get }
var kAudioChannelLabel_XY_X: AudioChannelLabel { get }
var kAudioChannelLabel_XY_Y: AudioChannelLabel { get }
var kAudioChannelLabel_HeadphonesLeft: AudioChannelLabel { get }
var kAudioChannelLabel_HeadphonesRight: AudioChannelLabel { get }
var kAudioChannelLabel_ClickTrack: AudioChannelLabel { get }
var kAudioChannelLabel_ForeignLanguage: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_0: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_1: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_2: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_3: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_4: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_5: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_6: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_7: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_8: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_9: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_10: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_11: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_12: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_13: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_14: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_15: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_65535: AudioChannelLabel { get }
struct AudioChannelBitmap : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Bit_Left: AudioChannelBitmap { get }
  static var Bit_Right: AudioChannelBitmap { get }
  static var Bit_Center: AudioChannelBitmap { get }
  static var Bit_LFEScreen: AudioChannelBitmap { get }
  static var Bit_LeftSurround: AudioChannelBitmap { get }
  static var Bit_RightSurround: AudioChannelBitmap { get }
  static var Bit_LeftCenter: AudioChannelBitmap { get }
  static var Bit_RightCenter: AudioChannelBitmap { get }
  static var Bit_CenterSurround: AudioChannelBitmap { get }
  static var Bit_LeftSurroundDirect: AudioChannelBitmap { get }
  static var Bit_RightSurroundDirect: AudioChannelBitmap { get }
  static var Bit_TopCenterSurround: AudioChannelBitmap { get }
  static var Bit_VerticalHeightLeft: AudioChannelBitmap { get }
  static var Bit_VerticalHeightCenter: AudioChannelBitmap { get }
  static var Bit_VerticalHeightRight: AudioChannelBitmap { get }
  static var Bit_TopBackLeft: AudioChannelBitmap { get }
  static var Bit_TopBackCenter: AudioChannelBitmap { get }
  static var Bit_TopBackRight: AudioChannelBitmap { get }
}
struct AudioChannelFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AllOff: AudioChannelFlags { get }
  static var RectangularCoordinates: AudioChannelFlags { get }
  static var SphericalCoordinates: AudioChannelFlags { get }
  static var Meters: AudioChannelFlags { get }
}
enum AudioChannelCoordinateIndex : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Coordinates_LeftRight
  case Coordinates_BackFront
  case Coordinates_DownUp
  static var Coordinates_Azimuth: AudioChannelCoordinateIndex { get }
  static var Coordinates_Elevation: AudioChannelCoordinateIndex { get }
  static var Coordinates_Distance: AudioChannelCoordinateIndex { get }
}
var kAudioChannelLayoutTag_UseChannelDescriptions: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_UseChannelBitmap: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Mono: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Stereo: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_StereoHeadphones: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MatrixStereo: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MidSide: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_XY: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Binaural: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Ambisonic_B_Format: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Quadraphonic: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Pentagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Hexagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Octagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Cube: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_1_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_2_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_3_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_3_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_4_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_4_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Emagic_Default_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_SMPTE_DTV: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_1_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_2_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_4_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_3: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_4: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_5: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_6: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_7: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_8: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_9: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_10: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_11: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_12: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_13: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_14: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_15: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_16: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_17: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_18: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_19: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_20: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_4: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_8: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_0_Front: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_1_Front: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_Quadraphonic: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_4_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_5_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_5_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_6_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_6_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_Octagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_TMH_10_2_std: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_TMH_10_2_full: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_1_0_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_0_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_2_1_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_1_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC_6_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC_7_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_E: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_F: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_G: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_H: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_4_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DiscreteInOrder: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Unknown: AudioChannelLayoutTag { get }
struct AudioChannelDescription {
  var mChannelLabel: AudioChannelLabel
  var mChannelFlags: AudioChannelFlags
  var mCoordinates: (Float32, Float32, Float32)
  init()
  init(mChannelLabel: AudioChannelLabel, mChannelFlags: AudioChannelFlags, mCoordinates: (Float32, Float32, Float32))
}
struct AudioChannelLayout {
  var mChannelLayoutTag: AudioChannelLayoutTag
  var mChannelBitmap: AudioChannelBitmap
  var mNumberChannelDescriptions: UInt32
  var mChannelDescriptions: (AudioChannelDescription)
  init()
  init(mChannelLayoutTag: AudioChannelLayoutTag, mChannelBitmap: AudioChannelBitmap, mNumberChannelDescriptions: UInt32, mChannelDescriptions: (AudioChannelDescription))
}
func AudioChannelLayoutTag_GetNumberOfChannels(inLayoutTag: AudioChannelLayoutTag) -> UInt32
enum MPEG4ObjectID : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AAC_Main
  case AAC_LC
  case AAC_SSR
  case AAC_LTP
  case AAC_SBR
  case AAC_Scalable
  case TwinVQ
  case CELP
  case HVXC
}
func AudioGetCurrentHostTime() -> UInt64
func AudioGetHostClockFrequency() -> Float64
func AudioGetHostClockMinimumTimeDelta() -> UInt32
func AudioConvertHostTimeToNanos(inHostTime: UInt64) -> UInt64
func AudioConvertNanosToHostTime(inNanos: UInt64) -> UInt64
