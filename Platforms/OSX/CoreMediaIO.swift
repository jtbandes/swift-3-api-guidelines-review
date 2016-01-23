
var kCMIOHardwareNoError: Int { get }
var kCMIOHardwareNotStoppedError: Int { get }
var kCMIOHardwareNotRunningError: Int { get }
var kCMIOHardwareUnspecifiedError: Int { get }
var kCMIOHardwareUnknownPropertyError: Int { get }
var kCMIOHardwareBadPropertySizeError: Int { get }
var kCMIOHardwareIllegalOperationError: Int { get }
var kCMIOHardwareBadObjectError: Int { get }
var kCMIOHardwareBadDeviceError: Int { get }
var kCMIOHardwareBadStreamError: Int { get }
var kCMIOHardwareUnsupportedOperationError: Int { get }
var kCMIOHardwareSuspendedBySystemError: Int { get }
var kCMIODeviceUnsupportedFormatError: Int { get }
var kCMIODevicePermissionsError: Int { get }
var kCMIOPlugInClassID: Int { get }
var kCMIOPlugInPropertyBundleID: Int { get }
typealias CMIOControlID = CMIOObjectID
var kCMIOControlClassID: Int { get }
var kCMIOBooleanControlClassID: Int { get }
var kCMIOSelectorControlClassID: Int { get }
var kCMIOFeatureControlClassID: Int { get }
var kCMIOJackControlClassID: Int { get }
var kCMIODirectionControlClassID: Int { get }
var kCMIODataSourceControlClassID: Int { get }
var kCMIODataDestinationControlClassID: Int { get }
var kCMIOBlackLevelControlClassID: Int { get }
var kCMIOWhiteLevelControlClassID: Int { get }
var kCMIOHueControlClassID: Int { get }
var kCMIOSaturationControlClassID: Int { get }
var kCMIOContrastControlClassID: Int { get }
var kCMIOSharpnessControlClassID: Int { get }
var kCMIOBrightnessControlClassID: Int { get }
var kCMIOGainControlClassID: Int { get }
var kCMIOIrisControlClassID: Int { get }
var kCMIOShutterControlClassID: Int { get }
var kCMIOExposureControlClassID: Int { get }
var kCMIOWhiteBalanceUControlClassID: Int { get }
var kCMIOWhiteBalanceVControlClassID: Int { get }
var kCMIOWhiteBalanceControlClassID: Int { get }
var kCMIOGammaControlClassID: Int { get }
var kCMIOTemperatureControlClassID: Int { get }
var kCMIOZoomControlClassID: Int { get }
var kCMIOFocusControlClassID: Int { get }
var kCMIOPanControlClassID: Int { get }
var kCMIOTiltControlClassID: Int { get }
var kCMIOOpticalFilterClassID: Int { get }
var kCMIOBacklightCompensationControlClassID: Int { get }
var kCMIOPowerLineFrequencyControlClassID: Int { get }
var kCMIONoiseReductionControlClassID: Int { get }
var kCMIOControlPropertyScope: Int { get }
var kCMIOControlPropertyElement: Int { get }
var kCMIOControlPropertyVariant: Int { get }
var kCMIOBooleanControlPropertyValue: Int { get }
var kCMIOSelectorControlPropertyCurrentItem: Int { get }
var kCMIOSelectorControlPropertyAvailableItems: Int { get }
var kCMIOSelectorControlPropertyItemName: Int { get }
var kCMIOFeatureControlPropertyOnOff: Int { get }
var kCMIOFeatureControlPropertyAutomaticManual: Int { get }
var kCMIOFeatureControlPropertyAbsoluteNative: Int { get }
var kCMIOFeatureControlPropertyTune: Int { get }
var kCMIOFeatureControlPropertyNativeValue: Int { get }
var kCMIOFeatureControlPropertyAbsoluteValue: Int { get }
var kCMIOFeatureControlPropertyNativeRange: Int { get }
var kCMIOFeatureControlPropertyAbsoluteRange: Int { get }
var kCMIOFeatureControlPropertyConvertNativeToAbsolute: Int { get }
var kCMIOFeatureControlPropertyConvertAbsoluteToNative: Int { get }
var kCMIOFeatureControlPropertyAbsoluteUnitName: Int { get }
var kCMIOExposureControlPropertyRegionOfInterest: Int { get }
var kCMIOExposureControlPropertyLockThreshold: Int { get }
var kCMIOExposureControlPropertyUnlockThreshold: Int { get }
var kCMIOExposureControlPropertyTarget: Int { get }
var kCMIOExposureControlPropertyConvergenceSpeed: Int { get }
var kCMIOExposureControlPropertyStability: Int { get }
var kCMIOExposureControlPropertyStable: Int { get }
var kCMIOExposureControlPropertyIntegrationTime: Int { get }
var kCMIOExposureControlPropertyMaximumGain: Int { get }
typealias CMIODeviceID = CMIOObjectID
typealias CMIODevicePropertyID = CMIOObjectPropertySelector
struct CMIODeviceStreamConfiguration {
  var mNumberStreams: UInt32
  init()
}
struct CMIODeviceAVCCommand {
  var mCommand: UnsafeMutablePointer<UInt8>
  var mCommandLength: UInt32
  var mResponse: UnsafeMutablePointer<UInt8>
  var mResponseLength: UInt32
  var mResponseUsed: UInt32
  init()
  init(mCommand: UnsafeMutablePointer<UInt8>, mCommandLength: UInt32, mResponse: UnsafeMutablePointer<UInt8>, mResponseLength: UInt32, mResponseUsed: UInt32)
}
struct CMIODeviceRS422Command {
  var mCommand: UnsafeMutablePointer<UInt8>
  var mCommandLength: UInt32
  var mResponse: UnsafeMutablePointer<UInt8>
  var mResponseLength: UInt32
  var mResponseUsed: UInt32
  init()
  init(mCommand: UnsafeMutablePointer<UInt8>, mCommandLength: UInt32, mResponse: UnsafeMutablePointer<UInt8>, mResponseLength: UInt32, mResponseUsed: UInt32)
}
typealias CMIODeviceGetSMPTETimeProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt64>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<UInt32>) -> OSStatus
struct CMIODeviceSMPTETimeCallback {
  var mGetSMPTETimeProc: CMIODeviceGetSMPTETimeProc!
  var mRefCon: UnsafeMutablePointer<Void>
  init()
  init(mGetSMPTETimeProc: CMIODeviceGetSMPTETimeProc!, mRefCon: UnsafeMutablePointer<Void>)
}
var kCMIODevicePropertyScopeInput: Int { get }
var kCMIODevicePropertyScopeOutput: Int { get }
var kCMIODevicePropertyScopePlayThrough: Int { get }
var kCMIODeviceClassID: Int { get }
var kCMIODeviceUnknown: Int { get }
var kCMIOAVCDeviceType_Unknown: Int { get }
var kCMIOAVCDeviceType_DV_NTSC: Int { get }
var kCMIOAVCDeviceType_DV_PAL: Int { get }
var kCMIOAVCDeviceType_DVCPro_NTSC: Int { get }
var kCMIOAVCDeviceType_DVCPro_PAL: Int { get }
var kCMIOAVCDeviceType_DVCPro50_NTSC: Int { get }
var kCMIOAVCDeviceType_DVCPro50_PAL: Int { get }
var kCMIOAVCDeviceType_DVCPro100_NTSC: Int { get }
var kCMIOAVCDeviceType_DVCPro100_PAL: Int { get }
var kCMIOAVCDeviceType_DVCPro100_720p: Int { get }
var kCMIOAVCDeviceType_DVCProHD_1080i50: Int { get }
var kCMIOAVCDeviceType_DVCProHD_1080i60: Int { get }
var kCMIOAVCDeviceType_MPEG2: Int { get }
var kCMIODeviceAVCSignalModeSD525_60: Int { get }
var kCMIODeviceAVCSignalModeSDL525_60: Int { get }
var kCMIODeviceAVCSignalModeHD1125_60: Int { get }
var kCMIODeviceAVCSignalModeSD625_50: Int { get }
var kCMIODeviceAVCSignalModeSDL625_50: Int { get }
var kCMIODeviceAVCSignalModeHD1250_50: Int { get }
var kCMIODeviceAVCSignalModeMPEG25Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeHDV1_60: Int { get }
var kCMIODeviceAVCSignalModeMPEG12Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeMPEG6Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeMPEG25Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeHDV1_50: Int { get }
var kCMIODeviceAVCSignalModeMPEG12Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeMPEG6Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeDVHS: Int { get }
var kCMIODeviceAVCSignalModeVHSNTSC: Int { get }
var kCMIODeviceAVCSignalModeVHSMPAL: Int { get }
var kCMIODeviceAVCSignalModeVHSPAL: Int { get }
var kCMIODeviceAVCSignalModeVHSNPAL: Int { get }
var kCMIODeviceAVCSignalModeVHSSECAM: Int { get }
var kCMIODeviceAVCSignalModeVHSMESECAM: Int { get }
var kCMIODeviceAVCSignalModeSVHS525_60: Int { get }
var kCMIODeviceAVCSignalModeSVHS625_50: Int { get }
var kCMIODeviceAVCSignalMode8mmNTSC: Int { get }
var kCMIODeviceAVCSignalMode8mmPAL: Int { get }
var kCMIODeviceAVCSignalModeHi8NTSC: Int { get }
var kCMIODeviceAVCSignalModeHi8PAL: Int { get }
var kCMIODeviceAVCSignalModeMicroMV12Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeMicroMV6Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeMicroMV12Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeMicroMV6Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeAudio: Int { get }
var kCMIODeviceAVCSignalModeHDV2_60: Int { get }
var kCMIODeviceAVCSignalModeHDV2_50: Int { get }
var kCMIODeviceAVCSignalModeDVCPro25_625_50: Int { get }
var kCMIODeviceAVCSignalModeDVCPro25_525_60: Int { get }
var kCMIODeviceAVCSignalModeDVCPro50_625_50: Int { get }
var kCMIODeviceAVCSignalModeDVCPro50_525_60: Int { get }
var kCMIODeviceAVCSignalModeDVCPro100_50: Int { get }
var kCMIODeviceAVCSignalModeDVCPro100_60: Int { get }
var kCMIODevicePropertyPlugIn: Int { get }
var kCMIODevicePropertyDeviceUID: Int { get }
var kCMIODevicePropertyModelUID: Int { get }
var kCMIODevicePropertyTransportType: Int { get }
var kCMIODevicePropertyDeviceIsAlive: Int { get }
var kCMIODevicePropertyDeviceHasChanged: Int { get }
var kCMIODevicePropertyDeviceIsRunning: Int { get }
var kCMIODevicePropertyDeviceIsRunningSomewhere: Int { get }
var kCMIODevicePropertyDeviceCanBeDefaultDevice: Int { get }
var kCMIODevicePropertyHogMode: Int { get }
var kCMIODevicePropertyLatency: Int { get }
var kCMIODevicePropertyStreams: Int { get }
var kCMIODevicePropertyStreamConfiguration: Int { get }
var kCMIODevicePropertyDeviceMaster: Int { get }
var kCMIODevicePropertyExcludeNonDALAccess: Int { get }
var kCMIODevicePropertyClientSyncDiscontinuity: Int { get }
var kCMIODevicePropertySMPTETimeCallback: Int { get }
var kCMIODevicePropertyCanProcessAVCCommand: Int { get }
var kCMIODevicePropertyAVCDeviceType: Int { get }
var kCMIODevicePropertyAVCDeviceSignalMode: Int { get }
var kCMIODevicePropertyCanProcessRS422Command: Int { get }
var kCMIODevicePropertyLinkedCoreAudioDeviceUID: Int { get }
var kCMIODevicePropertyVideoDigitizerComponents: Int { get }
var kCMIODevicePropertySuspendedByUser: Int { get }
var kCMIODevicePropertyLinkedAndSyncedCoreAudioDeviceUID: Int { get }
var kCMIODevicePropertyIIDCInitialUnitSpace: Int { get }
var kCMIODevicePropertyIIDCCSRData: Int { get }
var kCMIODevicePropertyCanSwitchFrameRatesWithoutFrameDrops: Int { get }
func CMIODeviceStartStream(deviceID: CMIODeviceID, _ streamID: CMIOStreamID) -> OSStatus
func CMIODeviceStopStream(deviceID: CMIODeviceID, _ streamID: CMIOStreamID) -> OSStatus
func CMIODeviceProcessAVCCommand(deviceID: CMIODeviceID, _ ioAVCCommand: UnsafeMutablePointer<CMIODeviceAVCCommand>) -> OSStatus
func CMIODeviceProcessRS422Command(deviceID: CMIODeviceID, _ ioRS422Command: UnsafeMutablePointer<CMIODeviceRS422Command>) -> OSStatus
typealias CMIOObjectPropertySelector = UInt32
typealias CMIOObjectPropertyScope = UInt32
typealias CMIOObjectPropertyElement = UInt32
struct CMIOObjectPropertyAddress {
  var mSelector: CMIOObjectPropertySelector
  var mScope: CMIOObjectPropertyScope
  var mElement: CMIOObjectPropertyElement
  init()
  init(mSelector: CMIOObjectPropertySelector, mScope: CMIOObjectPropertyScope, mElement: CMIOObjectPropertyElement)
}
var kCMIOObjectPropertySelectorWildcard: UInt32 { get }
var kCMIOObjectPropertyScopeWildcard: UInt32 { get }
var kCMIOObjectPropertyElementWildcard: UInt32 { get }
typealias CMIOClassID = UInt32
typealias CMIOObjectID = UInt32
typealias CMIOObjectPropertyListenerProc = @convention(c) (CMIOObjectID, UInt32, UnsafePointer<CMIOObjectPropertyAddress>, UnsafeMutablePointer<Void>) -> OSStatus
typealias CMIOObjectPropertyListenerBlock = (UInt32, UnsafePointer<CMIOObjectPropertyAddress>) -> Void
var kCMIOObjectPropertyScopeGlobal: Int { get }
var kCMIOObjectPropertyElementMaster: Int { get }
var kCMIOObjectClassID: Int { get }
var kCMIOObjectClassIDWildcard: Int { get }
var kCMIOObjectUnknown: Int { get }
var kCMIOObjectPropertyClass: Int { get }
var kCMIOObjectPropertyOwner: Int { get }
var kCMIOObjectPropertyCreator: Int { get }
var kCMIOObjectPropertyName: Int { get }
var kCMIOObjectPropertyManufacturer: Int { get }
var kCMIOObjectPropertyElementName: Int { get }
var kCMIOObjectPropertyElementCategoryName: Int { get }
var kCMIOObjectPropertyElementNumberName: Int { get }
var kCMIOObjectPropertyOwnedObjects: Int { get }
var kCMIOObjectPropertyListenerAdded: Int { get }
var kCMIOObjectPropertyListenerRemoved: Int { get }
func CMIOObjectShow(objectID: CMIOObjectID)
func CMIOObjectHasProperty(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>) -> Bool
func CMIOObjectIsPropertySettable(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ isSettable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func CMIOObjectGetPropertyDataSize(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ qualifierDataSize: UInt32, _ qualifierData: UnsafePointer<Void>, _ dataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func CMIOObjectGetPropertyData(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ qualifierDataSize: UInt32, _ qualifierData: UnsafePointer<Void>, _ dataSize: UInt32, _ dataUsed: UnsafeMutablePointer<UInt32>, _ data: UnsafeMutablePointer<Void>) -> OSStatus
func CMIOObjectSetPropertyData(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ qualifierDataSize: UInt32, _ qualifierData: UnsafePointer<Void>, _ dataSize: UInt32, _ data: UnsafePointer<Void>) -> OSStatus
func CMIOObjectAddPropertyListener(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ listener: CMIOObjectPropertyListenerProc!, _ clientData: UnsafeMutablePointer<Void>) -> OSStatus
func CMIOObjectRemovePropertyListener(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ listener: CMIOObjectPropertyListenerProc!, _ clientData: UnsafeMutablePointer<Void>) -> OSStatus
func CMIOObjectAddPropertyListenerBlock(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ dispatchQueue: dispatch_queue_t!, _ listener: CMIOObjectPropertyListenerBlock!) -> OSStatus
func CMIOObjectRemovePropertyListenerBlock(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ dispatchQueue: dispatch_queue_t!, _ listener: CMIOObjectPropertyListenerBlock!) -> OSStatus
typealias CMIOStreamID = CMIOObjectID
typealias CMIODeviceStreamQueueAlteredProc = @convention(c) (CMIOStreamID, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
struct CMIOStreamDeck {
  var mStatus: UInt32
  var mState: UInt32
  var mState2: UInt32
  init()
  init(mStatus: UInt32, mState: UInt32, mState2: UInt32)
}
var kCMIOStreamClassID: Int { get }
var kCMIOStreamUnknown: Int { get }
var kCMIODeckStatusBusy: Int { get }
var kCMIODeckStatusLocal: Int { get }
var kCMIODeckStatusNotThreaded: Int { get }
var kCMIODeckStatusTapeInserted: Int { get }
var kCMIODeckStatusOpcode: Int { get }
var kCMIODeckStatusSearchingForDevice: Int { get }
var kCMIODeckStatusNoDevice: Int { get }
var kCMIODeckStateStop: Int { get }
var kCMIODeckStatePlay: Int { get }
var kCMIODeckStatePause: Int { get }
var kCMIODeckStatePlaySlow: Int { get }
var kCMIODeckStateReverseSlow: Int { get }
var kCMIODeckStatePlayReverse: Int { get }
var kCMIODeckStateFastForward: Int { get }
var kCMIODeckStateFastRewind: Int { get }
var kCMIODeckShuttleReverseHighSpeed: Int { get }
var kCMIODeckShuttleReverseFastest: Int { get }
var kCMIODeckShuttleReverseFaster: Int { get }
var kCMIODeckShuttleReverseFast: Int { get }
var kCMIODeckShuttleReverse1x: Int { get }
var kCMIODeckShuttleReverseSlow3: Int { get }
var kCMIODeckShuttleReverseSlow2: Int { get }
var kCMIODeckShuttleReverseSlow1: Int { get }
var kCMIODeckShuttleReverseSlowest: Int { get }
var kCMIODeckShuttlePlayPreviousFrame: Int { get }
var kCMIODeckShuttlePause: Int { get }
var kCMIODeckShuttlePlayNextFrame: Int { get }
var kCMIODeckShuttlePlaySlowest: Int { get }
var kCMIODeckShuttlePlaySlow1: Int { get }
var kCMIODeckShuttlePlaySlow2: Int { get }
var kCMIODeckShuttlePlaySlow3: Int { get }
var kCMIODeckShuttlePlay1x: Int { get }
var kCMIODeckShuttlePlayFast: Int { get }
var kCMIODeckShuttlePlayFaster: Int { get }
var kCMIODeckShuttlePlayFastest: Int { get }
var kCMIODeckShuttlePlayHighSpeed: Int { get }
var kCMIOStreamPropertyDirection: Int { get }
var kCMIOStreamPropertyTerminalType: Int { get }
var kCMIOStreamPropertyStartingChannel: Int { get }
var kCMIOStreamPropertyLatency: Int { get }
var kCMIOStreamPropertyFormatDescription: Int { get }
var kCMIOStreamPropertyFormatDescriptions: Int { get }
var kCMIOStreamPropertyStillImage: Int { get }
var kCMIOStreamPropertyStillImageFormatDescriptions: Int { get }
var kCMIOStreamPropertyFrameRate: Int { get }
var kCMIOStreamPropertyMinimumFrameRate: Int { get }
var kCMIOStreamPropertyFrameRates: Int { get }
var kCMIOStreamPropertyFrameRateRanges: Int { get }
var kCMIOStreamPropertyNoDataTimeoutInMSec: Int { get }
var kCMIOStreamPropertyDeviceSyncTimeoutInMSec: Int { get }
var kCMIOStreamPropertyNoDataEventCount: Int { get }
var kCMIOStreamPropertyOutputBufferUnderrunCount: Int { get }
var kCMIOStreamPropertyOutputBufferRepeatCount: Int { get }
var kCMIOStreamPropertyOutputBufferQueueSize: Int { get }
var kCMIOStreamPropertyOutputBuffersRequiredForStartup: Int { get }
var kCMIOStreamPropertyOutputBuffersNeededForThrottledPlayback: Int { get }
var kCMIOStreamPropertyFirstOutputPresentationTimeStamp: Int { get }
var kCMIOStreamPropertyEndOfData: Int { get }
var kCMIOStreamPropertyClock: Int { get }
var kCMIOStreamPropertyCanProcessDeckCommand: Int { get }
var kCMIOStreamPropertyDeck: Int { get }
var kCMIOStreamPropertyDeckFrameNumber: Int { get }
var kCMIOStreamPropertyDeckDropness: Int { get }
var kCMIOStreamPropertyDeckThreaded: Int { get }
var kCMIOStreamPropertyDeckLocal: Int { get }
var kCMIOStreamPropertyDeckCueing: Int { get }
var kCMIOStreamPropertyInitialPresentationTimeStampForLinkedAndSyncedAudio: Int { get }
var kCMIOStreamPropertyScheduledOutputNotificationProc: Int { get }
var kCMIOStreamPropertyPreferredFormatDescription: Int { get }
var kCMIOStreamPropertyPreferredFrameRate: Int { get }
func CMIOStreamCopyBufferQueue(streamID: CMIOStreamID, _ queueAlteredProc: CMIODeviceStreamQueueAlteredProc!, _ queueAlteredRefCon: UnsafeMutablePointer<Void>, _ queue: UnsafeMutablePointer<Unmanaged<CMSimpleQueue>?>) -> OSStatus
func CMIOStreamDeckPlay(streamID: CMIOStreamID) -> OSStatus
func CMIOStreamDeckStop(streamID: CMIOStreamID) -> OSStatus
func CMIOStreamDeckJog(streamID: CMIOStreamID, _ speed: Int32) -> OSStatus
func CMIOStreamDeckCueTo(streamID: CMIOStreamID, _ frameNumber: UInt64, _ playOnCue: Bool) -> OSStatus
func CMIOStreamClockCreate(allocator: CFAllocator!, _ clockName: CFString!, _ sourceIdentifier: UnsafePointer<Void>, _ getTimeCallMinimumInterval: CMTime, _ numberOfEventsForRateSmoothing: UInt32, _ numberOfAveragesForRateSmoothing: UInt32, _ clock: UnsafeMutablePointer<Unmanaged<AnyObject>?>) -> OSStatus
func CMIOStreamClockPostTimingEvent(eventTime: CMTime, _ hostTime: UInt64, _ resynchronize: Bool, _ clock: AnyObject!) -> OSStatus
func CMIOStreamClockInvalidate(clock: AnyObject!) -> OSStatus
func CMIOStreamClockConvertHostTimeToDeviceTime(hostTime: UInt64, _ clock: AnyObject!) -> CMTime
typealias CMIOStreamScheduledOutputNotificationProc = @convention(c) (UInt64, UInt64, UnsafeMutablePointer<Void>) -> Void
struct CMIOStreamScheduledOutputNotificationProcAndRefCon {
  var scheduledOutputNotificationProc: CMIOStreamScheduledOutputNotificationProc!
  var scheduledOutputNotificationRefCon: UnsafeMutablePointer<Void>
  init()
  init(scheduledOutputNotificationProc: CMIOStreamScheduledOutputNotificationProc!, scheduledOutputNotificationRefCon: UnsafeMutablePointer<Void>)
}
typealias CMIOHardwarePropertyID = CMIOObjectPropertySelector
var kCMIOSystemObjectClassID: Int { get }
var kCMIOObjectSystemObject: Int { get }
var kCMIOHardwarePropertyProcessIsMaster: Int { get }
var kCMIOHardwarePropertyIsInitingOrExiting: Int { get }
var kCMIOHardwarePropertyDevices: Int { get }
var kCMIOHardwarePropertyDefaultInputDevice: Int { get }
var kCMIOHardwarePropertyDefaultOutputDevice: Int { get }
var kCMIOHardwarePropertyDeviceForUID: Int { get }
var kCMIOHardwarePropertySleepingIsAllowed: Int { get }
var kCMIOHardwarePropertyUnloadingIsAllowed: Int { get }
var kCMIOHardwarePropertyPlugInForBundleID: Int { get }
var kCMIOHardwarePropertyUserSessionIsActiveOrHeadless: Int { get }
var kCMIOHardwarePropertySuspendedBySystem: Int { get }
var kCMIOHardwarePropertyAllowScreenCaptureDevices: Int { get }
