
var kFFAPIMajorRev: Int { get }
var kFFAPIMinorAndBugRev: Int { get }
var kFFAPIStage: Int { get }
var kFFAPINonRelRev: Int { get }
struct FFCONSTANTFORCE {
  var lMagnitude: LONG
  init()
  init(lMagnitude: LONG)
}
typealias PFFCONSTANTFORCE = UnsafeMutablePointer<FFCONSTANTFORCE>
struct FFRAMPFORCE {
  var lStart: LONG
  var lEnd: LONG
  init()
  init(lStart: LONG, lEnd: LONG)
}
typealias PFFRAMPFORCE = UnsafeMutablePointer<FFRAMPFORCE>
struct FFPERIODIC {
  var dwMagnitude: DWORD
  var lOffset: LONG
  var dwPhase: DWORD
  var dwPeriod: DWORD
  init()
  init(dwMagnitude: DWORD, lOffset: LONG, dwPhase: DWORD, dwPeriod: DWORD)
}
typealias PFFPERIODIC = UnsafeMutablePointer<FFPERIODIC>
struct FFCONDITION {
  var lOffset: LONG
  var lPositiveCoefficient: LONG
  var lNegativeCoefficient: LONG
  var dwPositiveSaturation: DWORD
  var dwNegativeSaturation: DWORD
  var lDeadBand: LONG
  init()
  init(lOffset: LONG, lPositiveCoefficient: LONG, lNegativeCoefficient: LONG, dwPositiveSaturation: DWORD, dwNegativeSaturation: DWORD, lDeadBand: LONG)
}
typealias PFFCONDITION = UnsafeMutablePointer<FFCONDITION>
struct FFCUSTOMFORCE {
  var cChannels: DWORD
  var dwSamplePeriod: DWORD
  var cSamples: DWORD
  var rglForceData: LPLONG
  init()
  init(cChannels: DWORD, dwSamplePeriod: DWORD, cSamples: DWORD, rglForceData: LPLONG)
}
typealias PFFCUSTOMFORCE = UnsafeMutablePointer<FFCUSTOMFORCE>
struct FFENVELOPE {
  var dwSize: DWORD
  var dwAttackLevel: DWORD
  var dwAttackTime: DWORD
  var dwFadeLevel: DWORD
  var dwFadeTime: DWORD
  init()
  init(dwSize: DWORD, dwAttackLevel: DWORD, dwAttackTime: DWORD, dwFadeLevel: DWORD, dwFadeTime: DWORD)
}
typealias PFFENVELOPE = UnsafeMutablePointer<FFENVELOPE>
struct FFEFFECT {
  var dwSize: DWORD
  var dwFlags: DWORD
  var dwDuration: DWORD
  var dwSamplePeriod: DWORD
  var dwGain: DWORD
  var dwTriggerButton: DWORD
  var dwTriggerRepeatInterval: DWORD
  var cAxes: DWORD
  var rgdwAxes: LPDWORD
  var rglDirection: LPLONG
  var lpEnvelope: PFFENVELOPE
  var cbTypeSpecificParams: DWORD
  var lpvTypeSpecificParams: UnsafeMutablePointer<Void>
  var dwStartDelay: DWORD
  init()
  init(dwSize: DWORD, dwFlags: DWORD, dwDuration: DWORD, dwSamplePeriod: DWORD, dwGain: DWORD, dwTriggerButton: DWORD, dwTriggerRepeatInterval: DWORD, cAxes: DWORD, rgdwAxes: LPDWORD, rglDirection: LPLONG, lpEnvelope: PFFENVELOPE, cbTypeSpecificParams: DWORD, lpvTypeSpecificParams: UnsafeMutablePointer<Void>, dwStartDelay: DWORD)
}
typealias PFFEFFECT = UnsafeMutablePointer<FFEFFECT>
struct FFEFFESCAPE {
  var dwSize: DWORD
  var dwCommand: DWORD
  var lpvInBuffer: UnsafeMutablePointer<Void>
  var cbInBuffer: DWORD
  var lpvOutBuffer: UnsafeMutablePointer<Void>
  var cbOutBuffer: DWORD
  init()
  init(dwSize: DWORD, dwCommand: DWORD, lpvInBuffer: UnsafeMutablePointer<Void>, cbInBuffer: DWORD, lpvOutBuffer: UnsafeMutablePointer<Void>, cbOutBuffer: DWORD)
}
typealias PFFEFFESCAPE = UnsafeMutablePointer<FFEFFESCAPE>
struct FFCAPABILITIES {
  var ffSpecVer: NumVersion
  var supportedEffects: UInt32
  var emulatedEffects: UInt32
  var subType: UInt32
  var numFfAxes: UInt32
  var ffAxes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var storageCapacity: UInt32
  var playbackCapacity: UInt32
  var firmwareVer: NumVersion
  var hardwareVer: NumVersion
  var driverVer: NumVersion
  init()
  init(ffSpecVer: NumVersion, supportedEffects: UInt32, emulatedEffects: UInt32, subType: UInt32, numFfAxes: UInt32, ffAxes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), storageCapacity: UInt32, playbackCapacity: UInt32, firmwareVer: NumVersion, hardwareVer: NumVersion, driverVer: NumVersion)
}
typealias PFFCAPABILITIES = UnsafeMutablePointer<FFCAPABILITIES>
struct __FFDHIDDEN {
  init()
}
typealias FFDeviceObjectReference = UnsafeMutablePointer<__FFDHIDDEN>
struct __FFEHIDDEN {
  init()
}
typealias FFEffectObjectReference = UnsafeMutablePointer<__FFEHIDDEN>
func FFCreateDevice(hidDevice: io_service_t, _ pDeviceReference: UnsafeMutablePointer<FFDeviceObjectReference>) -> HRESULT
func FFReleaseDevice(deviceReference: FFDeviceObjectReference) -> HRESULT
func FFIsForceFeedback(hidDevice: io_service_t) -> HRESULT
func FFDeviceCreateEffect(deviceReference: FFDeviceObjectReference, _ uuidRef: CFUUID!, _ pEffectDefinition: UnsafeMutablePointer<FFEFFECT>, _ pEffectReference: UnsafeMutablePointer<FFEffectObjectReference>) -> HRESULT
func FFDeviceReleaseEffect(deviceReference: FFDeviceObjectReference, _ effectReference: FFEffectObjectReference) -> HRESULT
func FFDeviceEscape(deviceReference: FFDeviceObjectReference, _ pFFEffectEscape: UnsafeMutablePointer<FFEFFESCAPE>) -> HRESULT
func FFDeviceGetForceFeedbackState(deviceReference: FFDeviceObjectReference, _ pFFState: UnsafeMutablePointer<FFState>) -> HRESULT
func FFDeviceSendForceFeedbackCommand(deviceReference: FFDeviceObjectReference, _ flags: FFCommandFlag) -> HRESULT
func FFDeviceSetForceFeedbackProperty(deviceReference: FFDeviceObjectReference, _ property: FFProperty, _ pValue: UnsafeMutablePointer<Void>) -> HRESULT
func FFDeviceGetForceFeedbackProperty(deviceReference: FFDeviceObjectReference, _ property: FFProperty, _ pValue: UnsafeMutablePointer<Void>, _ valueSize: IOByteCount) -> HRESULT
func FFDeviceSetCooperativeLevel(deviceReference: FFDeviceObjectReference, _ taskIdentifier: UnsafeMutablePointer<Void>, _ flags: FFCooperativeLevelFlag) -> HRESULT
func FFDeviceGetForceFeedbackCapabilities(deviceReference: FFDeviceObjectReference, _ pFFCapabilities: UnsafeMutablePointer<FFCAPABILITIES>) -> HRESULT
func FFEffectDownload(effectReference: FFEffectObjectReference) -> HRESULT
func FFEffectEscape(effectReference: FFEffectObjectReference, _ pFFEffectEscape: UnsafeMutablePointer<FFEFFESCAPE>) -> HRESULT
func FFEffectGetEffectStatus(effectReference: FFEffectObjectReference, _ pFlags: UnsafeMutablePointer<FFEffectStatusFlag>) -> HRESULT
func FFEffectGetParameters(effectReference: FFEffectObjectReference, _ pFFEffect: UnsafeMutablePointer<FFEFFECT>, _ flags: FFEffectParameterFlag) -> HRESULT
func FFEffectSetParameters(effectReference: FFEffectObjectReference, _ pFFEffect: UnsafeMutablePointer<FFEFFECT>, _ flags: FFEffectParameterFlag) -> HRESULT
func FFEffectStart(effectReference: FFEffectObjectReference, _ iterations: UInt32, _ flags: FFEffectStartFlag) -> HRESULT
func FFEffectStop(effectReference: FFEffectObjectReference) -> HRESULT
func FFEffectUnload(effectReference: FFEffectObjectReference) -> HRESULT
typealias DWORD = UInt32
typealias LPDWORD = UnsafeMutablePointer<DWORD>
typealias LONG = Int32
typealias LPLONG = UnsafeMutablePointer<LONG>
var FF_INFINITE: UInt { get }
var FF_DEGREES: Int32 { get }
var FF_FFNOMINALMAX: Int32 { get }
var FF_SECONDS: Int32 { get }
var FFEFF_OBJECTOFFSETS: UInt { get }
var FFEFF_CARTESIAN: Int { get }
var FFEFF_POLAR: Int { get }
var FFEFF_SPHERICAL: Int { get }
typealias FFCoordinateSystemFlag = UInt32
var FFEP_DURATION: UInt32 { get }
var FFEP_SAMPLEPERIOD: UInt32 { get }
var FFEP_GAIN: UInt32 { get }
var FFEP_TRIGGERBUTTON: UInt32 { get }
var FFEP_TRIGGERREPEATINTERVAL: UInt32 { get }
var FFEP_AXES: UInt32 { get }
var FFEP_DIRECTION: UInt32 { get }
var FFEP_ENVELOPE: UInt32 { get }
var FFEP_TYPESPECIFICPARAMS: UInt32 { get }
var FFEP_STARTDELAY: UInt32 { get }
var FFEP_ALLPARAMS: UInt32 { get }
var FFEP_START: UInt32 { get }
var FFEP_NORESTART: UInt32 { get }
var FFEP_NODOWNLOAD: UInt32 { get }
var FFEB_NOTRIGGER: UInt32 { get }
typealias FFEffectParameterFlag = UInt32
var FFES_SOLO: UInt32 { get }
var FFES_NODOWNLOAD: UInt32 { get }
typealias FFEffectStartFlag = UInt32
var FFEGES_NOTPLAYING: Int { get }
var FFEGES_PLAYING: Int { get }
var FFEGES_EMULATED: Int { get }
typealias FFEffectStatusFlag = UInt32
var FFSFFC_RESET: Int { get }
var FFSFFC_STOPALL: Int { get }
var FFSFFC_PAUSE: Int { get }
var FFSFFC_CONTINUE: Int { get }
var FFSFFC_SETACTUATORSON: Int { get }
var FFSFFC_SETACTUATORSOFF: Int { get }
typealias FFCommandFlag = UInt32
var FFGFFS_EMPTY: UInt32 { get }
var FFGFFS_STOPPED: UInt32 { get }
var FFGFFS_PAUSED: UInt32 { get }
var FFGFFS_ACTUATORSON: UInt32 { get }
var FFGFFS_ACTUATORSOFF: UInt32 { get }
var FFGFFS_POWERON: UInt32 { get }
var FFGFFS_POWEROFF: UInt32 { get }
var FFGFFS_SAFETYSWITCHON: UInt32 { get }
var FFGFFS_SAFETYSWITCHOFF: UInt32 { get }
var FFGFFS_USERFFSWITCHON: UInt32 { get }
var FFGFFS_USERFFSWITCHOFF: UInt32 { get }
var FFGFFS_DEVICELOST: UInt32 { get }
typealias FFState = UInt32
var FFJOFS_X: Int32 { get }
var FFJOFS_Y: Int32 { get }
var FFJOFS_Z: Int32 { get }
var FFJOFS_RX: Int32 { get }
var FFJOFS_RY: Int32 { get }
var FFJOFS_RZ: Int32 { get }
var FFPROP_FFGAIN: Int { get }
var FFPROP_AUTOCENTER: Int { get }
typealias FFProperty = UInt32
var FFSCL_EXCLUSIVE: Int { get }
var FFSCL_NONEXCLUSIVE: Int { get }
var FFSCL_FOREGROUND: Int { get }
var FFSCL_BACKGROUND: Int { get }
typealias FFCooperativeLevelFlag = UInt32
var FFCAP_ET_CONSTANTFORCE: Int { get }
var FFCAP_ET_RAMPFORCE: Int { get }
var FFCAP_ET_SQUARE: Int { get }
var FFCAP_ET_SINE: Int { get }
var FFCAP_ET_TRIANGLE: Int { get }
var FFCAP_ET_SAWTOOTHUP: Int { get }
var FFCAP_ET_SAWTOOTHDOWN: Int { get }
var FFCAP_ET_SPRING: Int { get }
var FFCAP_ET_DAMPER: Int { get }
var FFCAP_ET_INERTIA: Int { get }
var FFCAP_ET_FRICTION: Int { get }
var FFCAP_ET_CUSTOMFORCE: Int { get }
typealias FFCapabilitiesEffectType = UInt32
var FFCAP_ST_KINESTHETIC: Int { get }
var FFCAP_ST_VIBRATION: Int { get }
typealias FFCapabilitiesEffectSubType = UInt32
var E_PENDING: Int { get }
var FFERR_DEVICEFULL: Int { get }
var FFERR_MOREDATA: Int { get }
var FFERR_NOTDOWNLOADED: Int { get }
var FFERR_HASEFFECTS: Int { get }
var FFERR_INCOMPLETEEFFECT: Int { get }
var FFERR_EFFECTPLAYING: Int { get }
var FFERR_UNPLUGGED: Int { get }
var FFERR_INVALIDDOWNLOADID: Int { get }
var FFERR_DEVICEPAUSED: Int { get }
var FFERR_INTERNAL: Int { get }
var FFERR_EFFECTTYPEMISMATCH: Int { get }
var FFERR_UNSUPPORTEDAXIS: Int { get }
var FFERR_NOTINITIALIZED: Int { get }
var FFERR_EFFECTTYPENOTSUPPORTED: Int { get }
var FFERR_DEVICERELEASED: Int { get }
