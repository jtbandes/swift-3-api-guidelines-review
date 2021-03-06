
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
typealias AudioSampleType = Int16
typealias AudioUnitSampleType = Int32
var kAudioUnitSampleFractionBits: Int32 { get }
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
