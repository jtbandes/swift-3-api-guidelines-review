
var AUDIO_TOOLBOX_VERSION: Int32 { get }
func CAShow(inObject: UnsafeMutablePointer<Void>)
func CAShowFile(inObject: UnsafeMutablePointer<Void>, _ inFile: UnsafeMutablePointer<FILE>)
func CopyNameFromSoundBank(inURL: CFURL, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func CopyInstrumentInfoFromSoundBank(inURL: CFURL, _ outInstrumentInfo: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
var kInstrumentInfoKey_Name: String { get }
var kInstrumentInfoKey_MSB: String { get }
var kInstrumentInfoKey_LSB: String { get }
var kInstrumentInfoKey_Program: String { get }
typealias AUGraph = COpaquePointer
typealias AUNode = Int32
var kAUGraphErr_NodeNotFound: OSStatus { get }
var kAUGraphErr_InvalidConnection: OSStatus { get }
var kAUGraphErr_OutputNodeErr: OSStatus { get }
var kAUGraphErr_CannotDoInCurrentContext: OSStatus { get }
var kAUGraphErr_InvalidAudioUnit: OSStatus { get }
func NewAUGraph(outGraph: UnsafeMutablePointer<AUGraph>) -> OSStatus
func DisposeAUGraph(inGraph: AUGraph) -> OSStatus
func AUGraphAddNode(inGraph: AUGraph, _ inDescription: UnsafePointer<AudioComponentDescription>, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
func AUGraphRemoveNode(inGraph: AUGraph, _ inNode: AUNode) -> OSStatus
func AUGraphGetNodeCount(inGraph: AUGraph, _ outNumberOfNodes: UnsafeMutablePointer<UInt32>) -> OSStatus
func AUGraphGetIndNode(inGraph: AUGraph, _ inIndex: UInt32, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
func AUGraphNodeInfo(inGraph: AUGraph, _ inNode: AUNode, _ outDescription: UnsafeMutablePointer<AudioComponentDescription>, _ outAudioUnit: UnsafeMutablePointer<AudioUnit>) -> OSStatus
var kAUNodeInteraction_Connection: UInt32 { get }
var kAUNodeInteraction_InputCallback: UInt32 { get }
struct AudioUnitNodeConnection {
  var sourceNode: AUNode
  var sourceOutputNumber: UInt32
  var destNode: AUNode
  var destInputNumber: UInt32
  init()
  init(sourceNode: AUNode, sourceOutputNumber: UInt32, destNode: AUNode, destInputNumber: UInt32)
}
typealias AUNodeConnection = AudioUnitNodeConnection
struct AUNodeRenderCallback {
  var destNode: AUNode
  var destInputNumber: AudioUnitElement
  var cback: AURenderCallbackStruct
  init()
  init(destNode: AUNode, destInputNumber: AudioUnitElement, cback: AURenderCallbackStruct)
}
struct AUNodeInteraction {
  struct __Unnamed_union_nodeInteraction {
    var connection: AUNodeConnection
    var inputCallback: AUNodeRenderCallback
    init(connection: AUNodeConnection)
    init(inputCallback: AUNodeRenderCallback)
    init()
  }
  var nodeInteractionType: UInt32
  var nodeInteraction: AUNodeInteraction.__Unnamed_union_nodeInteraction
  init()
  init(nodeInteractionType: UInt32, nodeInteraction: AUNodeInteraction.__Unnamed_union_nodeInteraction)
}
func AUGraphConnectNodeInput(inGraph: AUGraph, _ inSourceNode: AUNode, _ inSourceOutputNumber: UInt32, _ inDestNode: AUNode, _ inDestInputNumber: UInt32) -> OSStatus
func AUGraphSetNodeInputCallback(inGraph: AUGraph, _ inDestNode: AUNode, _ inDestInputNumber: UInt32, _ inInputCallback: UnsafePointer<AURenderCallbackStruct>) -> OSStatus
func AUGraphDisconnectNodeInput(inGraph: AUGraph, _ inDestNode: AUNode, _ inDestInputNumber: UInt32) -> OSStatus
func AUGraphClearConnections(inGraph: AUGraph) -> OSStatus
func AUGraphGetNumberOfInteractions(inGraph: AUGraph, _ outNumInteractions: UnsafeMutablePointer<UInt32>) -> OSStatus
func AUGraphGetInteractionInfo(inGraph: AUGraph, _ inInteractionIndex: UInt32, _ outInteraction: UnsafeMutablePointer<AUNodeInteraction>) -> OSStatus
func AUGraphCountNodeInteractions(inGraph: AUGraph, _ inNode: AUNode, _ outNumInteractions: UnsafeMutablePointer<UInt32>) -> OSStatus
func AUGraphGetNodeInteractions(inGraph: AUGraph, _ inNode: AUNode, _ ioNumInteractions: UnsafeMutablePointer<UInt32>, _ outInteractions: UnsafeMutablePointer<AUNodeInteraction>) -> OSStatus
func AUGraphUpdate(inGraph: AUGraph, _ outIsUpdated: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AUGraphOpen(inGraph: AUGraph) -> OSStatus
func AUGraphClose(inGraph: AUGraph) -> OSStatus
func AUGraphInitialize(inGraph: AUGraph) -> OSStatus
func AUGraphUninitialize(inGraph: AUGraph) -> OSStatus
func AUGraphStart(inGraph: AUGraph) -> OSStatus
func AUGraphStop(inGraph: AUGraph) -> OSStatus
func AUGraphIsOpen(inGraph: AUGraph, _ outIsOpen: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AUGraphIsInitialized(inGraph: AUGraph, _ outIsInitialized: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AUGraphIsRunning(inGraph: AUGraph, _ outIsRunning: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AUGraphGetCPULoad(inGraph: AUGraph, _ outAverageCPULoad: UnsafeMutablePointer<Float32>) -> OSStatus
func AUGraphGetMaxCPULoad(inGraph: AUGraph, _ outMaxLoad: UnsafeMutablePointer<Float32>) -> OSStatus
func AUGraphAddRenderNotify(inGraph: AUGraph, _ inCallback: AURenderCallback, _ inRefCon: UnsafeMutablePointer<Void>) -> OSStatus
func AUGraphRemoveRenderNotify(inGraph: AUGraph, _ inCallback: AURenderCallback, _ inRefCon: UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioConverterRef = COpaquePointer
typealias AudioConverterPropertyID = UInt32
var kAudioConverterPropertyMinimumInputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyMinimumOutputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyMaximumInputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyMaximumInputPacketSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyMaximumOutputPacketSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyCalculateInputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyCalculateOutputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyInputCodecParameters: AudioConverterPropertyID { get }
var kAudioConverterPropertyOutputCodecParameters: AudioConverterPropertyID { get }
var kAudioConverterSampleRateConverterAlgorithm: AudioConverterPropertyID { get }
var kAudioConverterSampleRateConverterComplexity: AudioConverterPropertyID { get }
var kAudioConverterSampleRateConverterQuality: AudioConverterPropertyID { get }
var kAudioConverterSampleRateConverterInitialPhase: AudioConverterPropertyID { get }
var kAudioConverterCodecQuality: AudioConverterPropertyID { get }
var kAudioConverterPrimeMethod: AudioConverterPropertyID { get }
var kAudioConverterPrimeInfo: AudioConverterPropertyID { get }
var kAudioConverterChannelMap: AudioConverterPropertyID { get }
var kAudioConverterDecompressionMagicCookie: AudioConverterPropertyID { get }
var kAudioConverterCompressionMagicCookie: AudioConverterPropertyID { get }
var kAudioConverterEncodeBitRate: AudioConverterPropertyID { get }
var kAudioConverterEncodeAdjustableSampleRate: AudioConverterPropertyID { get }
var kAudioConverterInputChannelLayout: AudioConverterPropertyID { get }
var kAudioConverterOutputChannelLayout: AudioConverterPropertyID { get }
var kAudioConverterApplicableEncodeBitRates: AudioConverterPropertyID { get }
var kAudioConverterAvailableEncodeBitRates: AudioConverterPropertyID { get }
var kAudioConverterApplicableEncodeSampleRates: AudioConverterPropertyID { get }
var kAudioConverterAvailableEncodeSampleRates: AudioConverterPropertyID { get }
var kAudioConverterAvailableEncodeChannelLayoutTags: AudioConverterPropertyID { get }
var kAudioConverterCurrentOutputStreamDescription: AudioConverterPropertyID { get }
var kAudioConverterCurrentInputStreamDescription: AudioConverterPropertyID { get }
var kAudioConverterPropertySettings: AudioConverterPropertyID { get }
var kAudioConverterPropertyBitDepthHint: AudioConverterPropertyID { get }
var kAudioConverterPropertyFormatList: AudioConverterPropertyID { get }
var kAudioConverterPropertyCanResumeFromInterruption: AudioConverterPropertyID { get }
var kAudioConverterQuality_Max: UInt32 { get }
var kAudioConverterQuality_High: UInt32 { get }
var kAudioConverterQuality_Medium: UInt32 { get }
var kAudioConverterQuality_Low: UInt32 { get }
var kAudioConverterQuality_Min: UInt32 { get }
var kAudioConverterSampleRateConverterComplexity_Linear: UInt32 { get }
var kAudioConverterSampleRateConverterComplexity_Normal: UInt32 { get }
var kAudioConverterSampleRateConverterComplexity_Mastering: UInt32 { get }
var kConverterPrimeMethod_Pre: UInt32 { get }
var kConverterPrimeMethod_Normal: UInt32 { get }
var kConverterPrimeMethod_None: UInt32 { get }
struct AudioConverterPrimeInfo {
  var leadingFrames: UInt32
  var trailingFrames: UInt32
  init()
  init(leadingFrames: UInt32, trailingFrames: UInt32)
}
var kAudioConverterErr_FormatNotSupported: OSStatus { get }
var kAudioConverterErr_OperationNotSupported: OSStatus { get }
var kAudioConverterErr_PropertyNotSupported: OSStatus { get }
var kAudioConverterErr_InvalidInputSize: OSStatus { get }
var kAudioConverterErr_InvalidOutputSize: OSStatus { get }
var kAudioConverterErr_UnspecifiedError: OSStatus { get }
var kAudioConverterErr_BadPropertySizeError: OSStatus { get }
var kAudioConverterErr_RequiresPacketDescriptionsError: OSStatus { get }
var kAudioConverterErr_InputSampleRateOutOfRange: OSStatus { get }
var kAudioConverterErr_OutputSampleRateOutOfRange: OSStatus { get }
var kAudioConverterErr_HardwareInUse: OSStatus { get }
var kAudioConverterErr_NoHardwarePermission: OSStatus { get }
func AudioConverterNew(inSourceFormat: UnsafePointer<AudioStreamBasicDescription>, _ inDestinationFormat: UnsafePointer<AudioStreamBasicDescription>, _ outAudioConverter: UnsafeMutablePointer<AudioConverterRef>) -> OSStatus
func AudioConverterNewSpecific(inSourceFormat: UnsafePointer<AudioStreamBasicDescription>, _ inDestinationFormat: UnsafePointer<AudioStreamBasicDescription>, _ inNumberClassDescriptions: UInt32, _ inClassDescriptions: UnsafePointer<AudioClassDescription>, _ outAudioConverter: UnsafeMutablePointer<AudioConverterRef>) -> OSStatus
func AudioConverterDispose(inAudioConverter: AudioConverterRef) -> OSStatus
func AudioConverterReset(inAudioConverter: AudioConverterRef) -> OSStatus
func AudioConverterGetPropertyInfo(inAudioConverter: AudioConverterRef, _ inPropertyID: AudioConverterPropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AudioConverterGetProperty(inAudioConverter: AudioConverterRef, _ inPropertyID: AudioConverterPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioConverterSetProperty(inAudioConverter: AudioConverterRef, _ inPropertyID: AudioConverterPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
typealias AudioConverterInputDataProc = @convention(c) (AudioConverterRef, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Void>) -> OSStatus
func AudioConverterConvertBuffer(inAudioConverter: AudioConverterRef, _ inInputDataSize: UInt32, _ inInputData: UnsafePointer<Void>, _ ioOutputDataSize: UnsafeMutablePointer<UInt32>, _ outOutputData: UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioConverterComplexInputDataProc = @convention(c) (AudioConverterRef, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioBufferList>, UnsafeMutablePointer<UnsafeMutablePointer<AudioStreamPacketDescription>>, UnsafeMutablePointer<Void>) -> OSStatus
func AudioConverterFillComplexBuffer(inAudioConverter: AudioConverterRef, _ inInputDataProc: AudioConverterComplexInputDataProc, _ inInputDataProcUserData: UnsafeMutablePointer<Void>, _ ioOutputDataPacketSize: UnsafeMutablePointer<UInt32>, _ outOutputData: UnsafeMutablePointer<AudioBufferList>, _ outPacketDescription: UnsafeMutablePointer<AudioStreamPacketDescription>) -> OSStatus
func AudioConverterConvertComplexBuffer(inAudioConverter: AudioConverterRef, _ inNumberPCMFrames: UInt32, _ inInputData: UnsafePointer<AudioBufferList>, _ outOutputData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
typealias AudioFileTypeID = UInt32
var kAudioFileAIFFType: AudioFileTypeID { get }
var kAudioFileAIFCType: AudioFileTypeID { get }
var kAudioFileWAVEType: AudioFileTypeID { get }
var kAudioFileSoundDesigner2Type: AudioFileTypeID { get }
var kAudioFileNextType: AudioFileTypeID { get }
var kAudioFileMP3Type: AudioFileTypeID { get }
var kAudioFileMP2Type: AudioFileTypeID { get }
var kAudioFileMP1Type: AudioFileTypeID { get }
var kAudioFileAC3Type: AudioFileTypeID { get }
var kAudioFileAAC_ADTSType: AudioFileTypeID { get }
var kAudioFileMPEG4Type: AudioFileTypeID { get }
var kAudioFileM4AType: AudioFileTypeID { get }
var kAudioFileM4BType: AudioFileTypeID { get }
var kAudioFileCAFType: AudioFileTypeID { get }
var kAudioFile3GPType: AudioFileTypeID { get }
var kAudioFile3GP2Type: AudioFileTypeID { get }
var kAudioFileAMRType: AudioFileTypeID { get }
var kAudioFileUnspecifiedError: OSStatus { get }
var kAudioFileUnsupportedFileTypeError: OSStatus { get }
var kAudioFileUnsupportedDataFormatError: OSStatus { get }
var kAudioFileUnsupportedPropertyError: OSStatus { get }
var kAudioFileBadPropertySizeError: OSStatus { get }
var kAudioFilePermissionsError: OSStatus { get }
var kAudioFileNotOptimizedError: OSStatus { get }
var kAudioFileInvalidChunkError: OSStatus { get }
var kAudioFileDoesNotAllow64BitDataSizeError: OSStatus { get }
var kAudioFileInvalidPacketOffsetError: OSStatus { get }
var kAudioFileInvalidFileError: OSStatus { get }
var kAudioFileOperationNotSupportedError: OSStatus { get }
var kAudioFileNotOpenError: OSStatus { get }
var kAudioFileEndOfFileError: OSStatus { get }
var kAudioFilePositionError: OSStatus { get }
var kAudioFileFileNotFoundError: OSStatus { get }
struct AudioFileFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var EraseFile: AudioFileFlags { get }
  static var DontPageAlignAudioData: AudioFileFlags { get }
}
enum AudioFilePermissions : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case ReadPermission
  case WritePermission
  case ReadWritePermission
}
typealias AudioFileID = COpaquePointer
typealias AudioFilePropertyID = UInt32
var kAudioFileLoopDirection_NoLooping: UInt32 { get }
var kAudioFileLoopDirection_Forward: UInt32 { get }
var kAudioFileLoopDirection_ForwardAndBackward: UInt32 { get }
var kAudioFileLoopDirection_Backward: UInt32 { get }
struct AudioFile_SMPTE_Time {
  var mHours: Int8
  var mMinutes: UInt8
  var mSeconds: UInt8
  var mFrames: UInt8
  var mSubFrameSampleOffset: UInt32
  init()
  init(mHours: Int8, mMinutes: UInt8, mSeconds: UInt8, mFrames: UInt8, mSubFrameSampleOffset: UInt32)
}
var kAudioFileMarkerType_Generic: UInt32 { get }
struct AudioFileMarker {
  var mFramePosition: Float64
  var mName: Unmanaged<CFString>?
  var mMarkerID: Int32
  var mSMPTETime: AudioFile_SMPTE_Time
  var mType: UInt32
  var mReserved: UInt16
  var mChannel: UInt16
  init()
  init(mFramePosition: Float64, mName: Unmanaged<CFString>?, mMarkerID: Int32, mSMPTETime: AudioFile_SMPTE_Time, mType: UInt32, mReserved: UInt16, mChannel: UInt16)
}
struct AudioFileMarkerList {
  var mSMPTE_TimeType: UInt32
  var mNumberMarkers: UInt32
  var mMarkers: (AudioFileMarker)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberMarkers: UInt32, mMarkers: (AudioFileMarker))
}
func NumBytesToNumAudioFileMarkers(inNumBytes: Int) -> Int
func NumAudioFileMarkersToNumBytes(inNumMarkers: Int) -> Int
struct AudioFileRegionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LoopEnable: AudioFileRegionFlags { get }
  static var PlayForward: AudioFileRegionFlags { get }
  static var PlayBackward: AudioFileRegionFlags { get }
}
struct AudioFileRegion {
  var mRegionID: UInt32
  var mName: Unmanaged<CFString>
  var mFlags: AudioFileRegionFlags
  var mNumberMarkers: UInt32
  var mMarkers: (AudioFileMarker)
}
struct AudioFileRegionList {
  var mSMPTE_TimeType: UInt32
  var mNumberRegions: UInt32
  var mRegions: (AudioFileRegion)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberRegions: UInt32, mRegions: (AudioFileRegion))
}
func NextAudioFileRegion(inAFRegionPtr: UnsafePointer<AudioFileRegion>) -> UnsafeMutablePointer<AudioFileRegion>
struct AudioFramePacketTranslation {
  var mFrame: Int64
  var mPacket: Int64
  var mFrameOffsetInPacket: UInt32
  init()
  init(mFrame: Int64, mPacket: Int64, mFrameOffsetInPacket: UInt32)
}
struct AudioBytePacketTranslationFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BytePacketTranslationFlag_IsEstimate: AudioBytePacketTranslationFlags { get }
}
struct AudioBytePacketTranslation {
  var mByte: Int64
  var mPacket: Int64
  var mByteOffsetInPacket: UInt32
  var mFlags: AudioBytePacketTranslationFlags
  init()
  init(mByte: Int64, mPacket: Int64, mByteOffsetInPacket: UInt32, mFlags: AudioBytePacketTranslationFlags)
}
struct AudioFilePacketTableInfo {
  var mNumberValidFrames: Int64
  var mPrimingFrames: Int32
  var mRemainderFrames: Int32
  init()
  init(mNumberValidFrames: Int64, mPrimingFrames: Int32, mRemainderFrames: Int32)
}
var kAFInfoDictionary_Artist: String { get }
var kAFInfoDictionary_Album: String { get }
var kAFInfoDictionary_Tempo: String { get }
var kAFInfoDictionary_KeySignature: String { get }
var kAFInfoDictionary_TimeSignature: String { get }
var kAFInfoDictionary_TrackNumber: String { get }
var kAFInfoDictionary_Year: String { get }
var kAFInfoDictionary_Composer: String { get }
var kAFInfoDictionary_Lyricist: String { get }
var kAFInfoDictionary_Genre: String { get }
var kAFInfoDictionary_Title: String { get }
var kAFInfoDictionary_RecordedDate: String { get }
var kAFInfoDictionary_Comments: String { get }
var kAFInfoDictionary_Copyright: String { get }
var kAFInfoDictionary_SourceEncoder: String { get }
var kAFInfoDictionary_EncodingApplication: String { get }
var kAFInfoDictionary_NominalBitRate: String { get }
var kAFInfoDictionary_ChannelLayout: String { get }
var kAFInfoDictionary_ApproximateDurationInSeconds: String { get }
var kAFInfoDictionary_SourceBitDepth: String { get }
var kAFInfoDictionary_ISRC: String { get }
var kAFInfoDictionary_SubTitle: String { get }
func AudioFileCreateWithURL(inFileRef: CFURL, _ inFileType: AudioFileTypeID, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: AudioFileFlags, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus
func AudioFileOpenURL(inFileRef: CFURL, _ inPermissions: AudioFilePermissions, _ inFileTypeHint: AudioFileTypeID, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus
typealias AudioFile_ReadProc = @convention(c) (UnsafeMutablePointer<Void>, Int64, UInt32, UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFile_WriteProc = @convention(c) (UnsafeMutablePointer<Void>, Int64, UInt32, UnsafePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFile_GetSizeProc = @convention(c) (UnsafeMutablePointer<Void>) -> Int64
typealias AudioFile_SetSizeProc = @convention(c) (UnsafeMutablePointer<Void>, Int64) -> OSStatus
func AudioFileInitializeWithCallbacks(inClientData: UnsafeMutablePointer<Void>, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc, _ inFileType: AudioFileTypeID, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: AudioFileFlags, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus
func AudioFileOpenWithCallbacks(inClientData: UnsafeMutablePointer<Void>, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc?, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc?, _ inFileTypeHint: AudioFileTypeID, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus
func AudioFileClose(inAudioFile: AudioFileID) -> OSStatus
func AudioFileOptimize(inAudioFile: AudioFileID) -> OSStatus
func AudioFileReadBytes(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus
func AudioFileWriteBytes(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafePointer<Void>) -> OSStatus
func AudioFileReadPacketData(inAudioFile: AudioFileID, _ inUseCache: Bool, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus
func AudioFileReadPackets(inAudioFile: AudioFileID, _ inUseCache: Bool, _ outNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus
func AudioFileWritePackets(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inNumBytes: UInt32, _ inPacketDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafePointer<Void>) -> OSStatus
func AudioFileCountUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ outNumberItems: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioFileGetUserDataSize(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ outUserDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioFileGetUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ ioUserDataSize: UnsafeMutablePointer<UInt32>, _ outUserData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioFileSetUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ inUserDataSize: UInt32, _ inUserData: UnsafePointer<Void>) -> OSStatus
func AudioFileRemoveUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32) -> OSStatus
var kAudioFilePropertyFileFormat: AudioFilePropertyID { get }
var kAudioFilePropertyDataFormat: AudioFilePropertyID { get }
var kAudioFilePropertyIsOptimized: AudioFilePropertyID { get }
var kAudioFilePropertyMagicCookieData: AudioFilePropertyID { get }
var kAudioFilePropertyAudioDataByteCount: AudioFilePropertyID { get }
var kAudioFilePropertyAudioDataPacketCount: AudioFilePropertyID { get }
var kAudioFilePropertyMaximumPacketSize: AudioFilePropertyID { get }
var kAudioFilePropertyDataOffset: AudioFilePropertyID { get }
var kAudioFilePropertyChannelLayout: AudioFilePropertyID { get }
var kAudioFilePropertyDeferSizeUpdates: AudioFilePropertyID { get }
var kAudioFilePropertyDataFormatName: AudioFilePropertyID { get }
var kAudioFilePropertyMarkerList: AudioFilePropertyID { get }
var kAudioFilePropertyRegionList: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToFrame: AudioFilePropertyID { get }
var kAudioFilePropertyFrameToPacket: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToByte: AudioFilePropertyID { get }
var kAudioFilePropertyByteToPacket: AudioFilePropertyID { get }
var kAudioFilePropertyChunkIDs: AudioFilePropertyID { get }
var kAudioFilePropertyInfoDictionary: AudioFilePropertyID { get }
var kAudioFilePropertyPacketTableInfo: AudioFilePropertyID { get }
var kAudioFilePropertyFormatList: AudioFilePropertyID { get }
var kAudioFilePropertyPacketSizeUpperBound: AudioFilePropertyID { get }
var kAudioFilePropertyReserveDuration: AudioFilePropertyID { get }
var kAudioFilePropertyEstimatedDuration: AudioFilePropertyID { get }
var kAudioFilePropertyBitRate: AudioFilePropertyID { get }
var kAudioFilePropertyID3Tag: AudioFilePropertyID { get }
var kAudioFilePropertySourceBitDepth: AudioFilePropertyID { get }
var kAudioFilePropertyAlbumArtwork: AudioFilePropertyID { get }
var kAudioFilePropertyAudioTrackCount: AudioFilePropertyID { get }
var kAudioFilePropertyUseAudioTrack: AudioFilePropertyID { get }
func AudioFileGetPropertyInfo(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ outDataSize: UnsafeMutablePointer<UInt32>, _ isWritable: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioFileGetProperty(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioFileSetProperty(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ inDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
var kAudioFileGlobalInfo_ReadableTypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_WritableTypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_FileTypeName: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AvailableStreamDescriptionsForFormat: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AvailableFormatIDs: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllExtensions: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllHFSTypeCodes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllUTIs: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllMIMETypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_ExtensionsForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_HFSTypeCodesForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_UTIsForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_MIMETypesForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForMIMEType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForUTI: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForHFSTypeCode: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForExtension: AudioFilePropertyID { get }
struct AudioFileTypeAndFormatID {
  var mFileType: AudioFileTypeID
  var mFormatID: UInt32
  init()
  init(mFileType: AudioFileTypeID, mFormatID: UInt32)
}
func AudioFileGetGlobalInfoSize(inPropertyID: AudioFilePropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeMutablePointer<Void>, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioFileGetGlobalInfo(inPropertyID: AudioFilePropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeMutablePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
struct AudioFileStreamPropertyFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PropertyIsCached: AudioFileStreamPropertyFlags { get }
  static var CacheProperty: AudioFileStreamPropertyFlags { get }
}
struct AudioFileStreamParseFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Discontinuity: AudioFileStreamParseFlags { get }
}
struct AudioFileStreamSeekFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var OffsetIsEstimated: AudioFileStreamSeekFlags { get }
}
typealias AudioFileStreamPropertyID = UInt32
typealias AudioFileStreamID = COpaquePointer
typealias AudioFileStream_PropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioFileStreamID, AudioFileStreamPropertyID, UnsafeMutablePointer<AudioFileStreamPropertyFlags>) -> Void
typealias AudioFileStream_PacketsProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UnsafePointer<Void>, UnsafeMutablePointer<AudioStreamPacketDescription>) -> Void
var kAudioFileStreamError_UnsupportedFileType: OSStatus { get }
var kAudioFileStreamError_UnsupportedDataFormat: OSStatus { get }
var kAudioFileStreamError_UnsupportedProperty: OSStatus { get }
var kAudioFileStreamError_BadPropertySize: OSStatus { get }
var kAudioFileStreamError_NotOptimized: OSStatus { get }
var kAudioFileStreamError_InvalidPacketOffset: OSStatus { get }
var kAudioFileStreamError_InvalidFile: OSStatus { get }
var kAudioFileStreamError_ValueUnknown: OSStatus { get }
var kAudioFileStreamError_DataUnavailable: OSStatus { get }
var kAudioFileStreamError_IllegalOperation: OSStatus { get }
var kAudioFileStreamError_UnspecifiedError: OSStatus { get }
var kAudioFileStreamError_DiscontinuityCantRecover: OSStatus { get }
var kAudioFileStreamProperty_ReadyToProducePackets: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_FileFormat: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_DataFormat: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_FormatList: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_MagicCookieData: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_AudioDataByteCount: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_AudioDataPacketCount: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_MaximumPacketSize: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_DataOffset: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_ChannelLayout: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_PacketToFrame: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_FrameToPacket: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_PacketToByte: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_ByteToPacket: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_PacketTableInfo: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_PacketSizeUpperBound: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_AverageBytesPerPacket: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_BitRate: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_InfoDictionary: AudioFileStreamPropertyID { get }
func AudioFileStreamOpen(inClientData: UnsafeMutablePointer<Void>, _ inPropertyListenerProc: AudioFileStream_PropertyListenerProc, _ inPacketsProc: AudioFileStream_PacketsProc, _ inFileTypeHint: AudioFileTypeID, _ outAudioFileStream: UnsafeMutablePointer<AudioFileStreamID>) -> OSStatus
func AudioFileStreamParseBytes(inAudioFileStream: AudioFileStreamID, _ inDataByteSize: UInt32, _ inData: UnsafePointer<Void>, _ inFlags: AudioFileStreamParseFlags) -> OSStatus
func AudioFileStreamSeek(inAudioFileStream: AudioFileStreamID, _ inPacketOffset: Int64, _ outDataByteOffset: UnsafeMutablePointer<Int64>, _ ioFlags: UnsafeMutablePointer<AudioFileStreamSeekFlags>) -> OSStatus
func AudioFileStreamGetPropertyInfo(inAudioFileStream: AudioFileStreamID, _ inPropertyID: AudioFileStreamPropertyID, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AudioFileStreamGetProperty(inAudioFileStream: AudioFileStreamID, _ inPropertyID: AudioFileStreamPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioFileStreamSetProperty(inAudioFileStream: AudioFileStreamID, _ inPropertyID: AudioFileStreamPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
func AudioFileStreamClose(inAudioFileStream: AudioFileStreamID) -> OSStatus
typealias AudioFormatPropertyID = UInt32
enum AudioPanningMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case PanningMode_SoundField
  case PanningMode_VectorBasedPanning
}
struct AudioPanningInfo {
  var mPanningMode: AudioPanningMode
  var mCoordinateFlags: UInt32
  var mCoordinates: (Float32, Float32, Float32)
  var mGainScale: Float32
  var mOutputChannelMap: UnsafePointer<AudioChannelLayout>
}
enum AudioBalanceFadeType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case MaxUnityGain
  case EqualPower
}
struct AudioBalanceFade {
  var mLeftRightBalance: Float32
  var mBackFrontFade: Float32
  var mType: AudioBalanceFadeType
  var mChannelLayout: UnsafePointer<AudioChannelLayout>
}
struct AudioFormatInfo {
  var mASBD: AudioStreamBasicDescription
  var mMagicCookie: UnsafePointer<Void>
  var mMagicCookieSize: UInt32
}
struct ExtendedAudioFormatInfo {
  var mASBD: AudioStreamBasicDescription
  var mMagicCookie: UnsafePointer<Void>
  var mMagicCookieSize: UInt32
  var mClassDescription: AudioClassDescription
}
struct AudioFormatListItem {
  var mASBD: AudioStreamBasicDescription
  var mChannelLayoutTag: AudioChannelLayoutTag
  init()
  init(mASBD: AudioStreamBasicDescription, mChannelLayoutTag: AudioChannelLayoutTag)
}
var kAudioFormatProperty_FormatInfo: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatName: AudioFormatPropertyID { get }
var kAudioFormatProperty_EncodeFormatIDs: AudioFormatPropertyID { get }
var kAudioFormatProperty_DecodeFormatIDs: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatList: AudioFormatPropertyID { get }
var kAudioFormatProperty_ASBDFromESDS: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutFromESDS: AudioFormatPropertyID { get }
var kAudioFormatProperty_OutputFormatList: AudioFormatPropertyID { get }
var kAudioFormatProperty_FirstPlayableFormatFromList: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatIsVBR: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatIsExternallyFramed: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatIsEncrypted: AudioFormatPropertyID { get }
var kAudioFormatProperty_Encoders: AudioFormatPropertyID { get }
var kAudioFormatProperty_Decoders: AudioFormatPropertyID { get }
var kAudioFormatProperty_AvailableEncodeBitRates: AudioFormatPropertyID { get }
var kAudioFormatProperty_AvailableEncodeSampleRates: AudioFormatPropertyID { get }
var kAudioFormatProperty_AvailableEncodeChannelLayoutTags: AudioFormatPropertyID { get }
var kAudioFormatProperty_AvailableEncodeNumberChannels: AudioFormatPropertyID { get }
var kAudioFormatProperty_ASBDFromMPEGPacket: AudioFormatPropertyID { get }
var kAudioFormatProperty_BitmapForLayoutTag: AudioFormatPropertyID { get }
var kAudioFormatProperty_MatrixMixMap: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelMap: AudioFormatPropertyID { get }
var kAudioFormatProperty_NumberOfChannelsForLayout: AudioFormatPropertyID { get }
var kAudioFormatProperty_AreChannelLayoutsEquivalent: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutHash: AudioFormatPropertyID { get }
var kAudioFormatProperty_ValidateChannelLayout: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutForTag: AudioFormatPropertyID { get }
var kAudioFormatProperty_TagForChannelLayout: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutName: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutSimpleName: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutForBitmap: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelName: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelShortName: AudioFormatPropertyID { get }
var kAudioFormatProperty_TagsForNumberOfChannels: AudioFormatPropertyID { get }
var kAudioFormatProperty_PanningMatrix: AudioFormatPropertyID { get }
var kAudioFormatProperty_BalanceFade: AudioFormatPropertyID { get }
var kAudioFormatProperty_ID3TagSize: AudioFormatPropertyID { get }
var kAudioFormatProperty_ID3TagToDictionary: AudioFormatPropertyID { get }
var kAudioFormatProperty_HardwareCodecCapabilities: AudioFormatPropertyID { get }
var kAudioDecoderComponentType: UInt32 { get }
var kAudioEncoderComponentType: UInt32 { get }
var kAppleSoftwareAudioCodecManufacturer: UInt32 { get }
var kAppleHardwareAudioCodecManufacturer: UInt32 { get }
func AudioFormatGetPropertyInfo(inPropertyID: AudioFormatPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioFormatGetProperty(inPropertyID: AudioFormatPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
var kAudioFormatUnspecifiedError: OSStatus { get }
var kAudioFormatUnsupportedPropertyError: OSStatus { get }
var kAudioFormatBadPropertySizeError: OSStatus { get }
var kAudioFormatBadSpecifierSizeError: OSStatus { get }
var kAudioFormatUnsupportedDataFormatError: OSStatus { get }
var kAudioFormatUnknownFormatError: OSStatus { get }
typealias AudioQueuePropertyID = UInt32
typealias AudioQueueParameterID = UInt32
typealias AudioQueueParameterValue = Float32
typealias AudioQueueRef = COpaquePointer
typealias AudioQueueTimelineRef = COpaquePointer
var kAudioQueueErr_InvalidBuffer: OSStatus { get }
var kAudioQueueErr_BufferEmpty: OSStatus { get }
var kAudioQueueErr_DisposalPending: OSStatus { get }
var kAudioQueueErr_InvalidProperty: OSStatus { get }
var kAudioQueueErr_InvalidPropertySize: OSStatus { get }
var kAudioQueueErr_InvalidParameter: OSStatus { get }
var kAudioQueueErr_CannotStart: OSStatus { get }
var kAudioQueueErr_InvalidDevice: OSStatus { get }
var kAudioQueueErr_BufferInQueue: OSStatus { get }
var kAudioQueueErr_InvalidRunState: OSStatus { get }
var kAudioQueueErr_InvalidQueueType: OSStatus { get }
var kAudioQueueErr_Permissions: OSStatus { get }
var kAudioQueueErr_InvalidPropertyValue: OSStatus { get }
var kAudioQueueErr_PrimeTimedOut: OSStatus { get }
var kAudioQueueErr_CodecNotFound: OSStatus { get }
var kAudioQueueErr_InvalidCodecAccess: OSStatus { get }
var kAudioQueueErr_QueueInvalidated: OSStatus { get }
var kAudioQueueErr_TooManyTaps: OSStatus { get }
var kAudioQueueErr_InvalidTapContext: OSStatus { get }
var kAudioQueueErr_RecordUnderrun: OSStatus { get }
var kAudioQueueErr_InvalidTapType: OSStatus { get }
var kAudioQueueErr_BufferEnqueuedTwice: OSStatus { get }
var kAudioQueueErr_EnqueueDuringReset: OSStatus { get }
var kAudioQueueErr_InvalidOfflineMode: OSStatus { get }
var kAudioQueueProperty_IsRunning: AudioQueuePropertyID { get }
var kAudioQueueDeviceProperty_SampleRate: AudioQueuePropertyID { get }
var kAudioQueueDeviceProperty_NumberChannels: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentDevice: AudioQueuePropertyID { get }
var kAudioQueueProperty_MagicCookie: AudioQueuePropertyID { get }
var kAudioQueueProperty_MaximumOutputPacketSize: AudioQueuePropertyID { get }
var kAudioQueueProperty_StreamDescription: AudioQueuePropertyID { get }
var kAudioQueueProperty_ChannelLayout: AudioQueuePropertyID { get }
var kAudioQueueProperty_EnableLevelMetering: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentLevelMeter: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentLevelMeterDB: AudioQueuePropertyID { get }
var kAudioQueueProperty_DecodeBufferSizeFrames: AudioQueuePropertyID { get }
var kAudioQueueProperty_ConverterError: AudioQueuePropertyID { get }
var kAudioQueueProperty_EnableTimePitch: AudioQueuePropertyID { get }
var kAudioQueueProperty_TimePitchAlgorithm: AudioQueuePropertyID { get }
var kAudioQueueProperty_TimePitchBypass: AudioQueuePropertyID { get }
var kAudioQueueTimePitchAlgorithm_Spectral: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_TimeDomain: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_Varispeed: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_LowQualityZeroLatency: UInt32 { get }
var kAudioQueueProperty_HardwareCodecPolicy: AudioQueuePropertyID { get }
var kAudioQueueHardwareCodecPolicy_Default: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_UseSoftwareOnly: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_UseHardwareOnly: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_PreferSoftware: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_PreferHardware: UInt32 { get }
var kAudioQueueProperty_ChannelAssignments: AudioQueuePropertyID { get }
var kAudioQueueParam_Volume: AudioQueueParameterID { get }
var kAudioQueueParam_PlayRate: AudioQueueParameterID { get }
var kAudioQueueParam_Pitch: AudioQueueParameterID { get }
var kAudioQueueParam_VolumeRampTime: AudioQueueParameterID { get }
var kAudioQueueParam_Pan: AudioQueueParameterID { get }
struct AudioQueueProcessingTapFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PreEffects: AudioQueueProcessingTapFlags { get }
  static var PostEffects: AudioQueueProcessingTapFlags { get }
  static var Siphon: AudioQueueProcessingTapFlags { get }
  static var StartOfStream: AudioQueueProcessingTapFlags { get }
  static var EndOfStream: AudioQueueProcessingTapFlags { get }
}
struct AudioQueueBuffer {
  var mAudioDataBytesCapacity: UInt32
  var mAudioData: UnsafeMutablePointer<Void>
  var mAudioDataByteSize: UInt32
  var mUserData: UnsafeMutablePointer<Void>
  var mPacketDescriptionCapacity: UInt32
  var mPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>
  var mPacketDescriptionCount: UInt32
}
typealias AudioQueueBufferRef = UnsafeMutablePointer<AudioQueueBuffer>
struct AudioQueueParameterEvent {
  var mID: AudioQueueParameterID
  var mValue: AudioQueueParameterValue
  init()
  init(mID: AudioQueueParameterID, mValue: AudioQueueParameterValue)
}
struct AudioQueueLevelMeterState {
  var mAveragePower: Float32
  var mPeakPower: Float32
  init()
  init(mAveragePower: Float32, mPeakPower: Float32)
}
typealias AudioQueueProcessingTapRef = COpaquePointer
struct AudioQueueChannelAssignment {
  var mDeviceUID: Unmanaged<CFString>
  var mChannelNumber: UInt32
}
typealias AudioQueueOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueueBufferRef) -> Void
typealias AudioQueueInputCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueueBufferRef, UnsafePointer<AudioTimeStamp>, UInt32, UnsafePointer<AudioStreamPacketDescription>) -> Void
typealias AudioQueuePropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueuePropertyID) -> Void
typealias AudioQueueProcessingTapCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueProcessingTapRef, UInt32, UnsafeMutablePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioQueueProcessingTapFlags>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioBufferList>) -> Void
func AudioQueueNewOutput(inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inCallbackProc: AudioQueueOutputCallback, _ inUserData: UnsafeMutablePointer<Void>, _ inCallbackRunLoop: CFRunLoop?, _ inCallbackRunLoopMode: CFString?, _ inFlags: UInt32, _ outAQ: UnsafeMutablePointer<AudioQueueRef>) -> OSStatus
func AudioQueueNewInput(inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inCallbackProc: AudioQueueInputCallback, _ inUserData: UnsafeMutablePointer<Void>, _ inCallbackRunLoop: CFRunLoop?, _ inCallbackRunLoopMode: CFString?, _ inFlags: UInt32, _ outAQ: UnsafeMutablePointer<AudioQueueRef>) -> OSStatus
func AudioQueueDispose(inAQ: AudioQueueRef, _ inImmediate: Bool) -> OSStatus
func AudioQueueAllocateBuffer(inAQ: AudioQueueRef, _ inBufferByteSize: UInt32, _ outBuffer: UnsafeMutablePointer<AudioQueueBufferRef>) -> OSStatus
func AudioQueueAllocateBufferWithPacketDescriptions(inAQ: AudioQueueRef, _ inBufferByteSize: UInt32, _ inNumberPacketDescriptions: UInt32, _ outBuffer: UnsafeMutablePointer<AudioQueueBufferRef>) -> OSStatus
func AudioQueueFreeBuffer(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef) -> OSStatus
func AudioQueueEnqueueBuffer(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef, _ inNumPacketDescs: UInt32, _ inPacketDescs: UnsafePointer<AudioStreamPacketDescription>) -> OSStatus
func AudioQueueEnqueueBufferWithParameters(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef, _ inNumPacketDescs: UInt32, _ inPacketDescs: UnsafePointer<AudioStreamPacketDescription>, _ inTrimFramesAtStart: UInt32, _ inTrimFramesAtEnd: UInt32, _ inNumParamValues: UInt32, _ inParamValues: UnsafePointer<AudioQueueParameterEvent>, _ inStartTime: UnsafePointer<AudioTimeStamp>, _ outActualStartTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
func AudioQueueStart(inAQ: AudioQueueRef, _ inStartTime: UnsafePointer<AudioTimeStamp>) -> OSStatus
func AudioQueuePrime(inAQ: AudioQueueRef, _ inNumberOfFramesToPrepare: UInt32, _ outNumberOfFramesPrepared: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioQueueStop(inAQ: AudioQueueRef, _ inImmediate: Bool) -> OSStatus
func AudioQueuePause(inAQ: AudioQueueRef) -> OSStatus
func AudioQueueFlush(inAQ: AudioQueueRef) -> OSStatus
func AudioQueueReset(inAQ: AudioQueueRef) -> OSStatus
func AudioQueueGetParameter(inAQ: AudioQueueRef, _ inParamID: AudioQueueParameterID, _ outValue: UnsafeMutablePointer<AudioQueueParameterValue>) -> OSStatus
func AudioQueueSetParameter(inAQ: AudioQueueRef, _ inParamID: AudioQueueParameterID, _ inValue: AudioQueueParameterValue) -> OSStatus
func AudioQueueGetProperty(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ outData: UnsafeMutablePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioQueueSetProperty(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inData: UnsafePointer<Void>, _ inDataSize: UInt32) -> OSStatus
func AudioQueueGetPropertySize(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func AudioQueueAddPropertyListener(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inProc: AudioQueuePropertyListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioQueueRemovePropertyListener(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inProc: AudioQueuePropertyListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioQueueCreateTimeline(inAQ: AudioQueueRef, _ outTimeline: UnsafeMutablePointer<AudioQueueTimelineRef>) -> OSStatus
func AudioQueueDisposeTimeline(inAQ: AudioQueueRef, _ inTimeline: AudioQueueTimelineRef) -> OSStatus
func AudioQueueGetCurrentTime(inAQ: AudioQueueRef, _ inTimeline: AudioQueueTimelineRef, _ outTimeStamp: UnsafeMutablePointer<AudioTimeStamp>, _ outTimelineDiscontinuity: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AudioQueueDeviceGetCurrentTime(inAQ: AudioQueueRef, _ outTimeStamp: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
func AudioQueueDeviceTranslateTime(inAQ: AudioQueueRef, _ inTime: UnsafePointer<AudioTimeStamp>, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
func AudioQueueDeviceGetNearestStartTime(inAQ: AudioQueueRef, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus
func AudioQueueSetOfflineRenderFormat(inAQ: AudioQueueRef, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inLayout: UnsafePointer<AudioChannelLayout>) -> OSStatus
func AudioQueueOfflineRender(inAQ: AudioQueueRef, _ inTimestamp: UnsafePointer<AudioTimeStamp>, _ ioBuffer: AudioQueueBufferRef, _ inNumberFrames: UInt32) -> OSStatus
func AudioQueueProcessingTapNew(inAQ: AudioQueueRef, _ inCallback: AudioQueueProcessingTapCallback, _ inClientData: UnsafeMutablePointer<Void>, _ inFlags: AudioQueueProcessingTapFlags, _ outMaxFrames: UnsafeMutablePointer<UInt32>, _ outProcessingFormat: UnsafeMutablePointer<AudioStreamBasicDescription>, _ outAQTap: UnsafeMutablePointer<AudioQueueProcessingTapRef>) -> OSStatus
func AudioQueueProcessingTapDispose(inAQTap: AudioQueueProcessingTapRef) -> OSStatus
func AudioQueueProcessingTapGetSourceAudio(inAQTap: AudioQueueProcessingTapRef, _ inNumberFrames: UInt32, _ ioTimeStamp: UnsafeMutablePointer<AudioTimeStamp>, _ outFlags: UnsafeMutablePointer<AudioQueueProcessingTapFlags>, _ outNumberFrames: UnsafeMutablePointer<UInt32>, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
func AudioQueueProcessingTapGetQueueTime(inAQTap: AudioQueueProcessingTapRef, _ outQueueSampleTime: UnsafeMutablePointer<Float64>, _ outQueueFrameCount: UnsafeMutablePointer<UInt32>) -> OSStatus
var kAudioServicesNoError: OSStatus { get }
var kAudioServicesUnsupportedPropertyError: OSStatus { get }
var kAudioServicesBadPropertySizeError: OSStatus { get }
var kAudioServicesBadSpecifierSizeError: OSStatus { get }
var kAudioServicesSystemSoundUnspecifiedError: OSStatus { get }
var kAudioServicesSystemSoundClientTimedOutError: OSStatus { get }
typealias SystemSoundID = UInt32
typealias AudioServicesPropertyID = UInt32
typealias AudioServicesSystemSoundCompletionProc = @convention(c) (SystemSoundID, UnsafeMutablePointer<Void>) -> Void
var kSystemSoundID_Vibrate: SystemSoundID { get }
var kAudioServicesPropertyIsUISound: AudioServicesPropertyID { get }
var kAudioServicesPropertyCompletePlaybackIfAppDies: AudioServicesPropertyID { get }
func AudioServicesCreateSystemSoundID(inFileURL: CFURL, _ outSystemSoundID: UnsafeMutablePointer<SystemSoundID>) -> OSStatus
func AudioServicesDisposeSystemSoundID(inSystemSoundID: SystemSoundID) -> OSStatus
func AudioServicesPlayAlertSoundWithCompletion(inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)
func AudioServicesPlaySystemSoundWithCompletion(inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)
func AudioServicesGetPropertyInfo(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func AudioServicesGetProperty(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioServicesSetProperty(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
func AudioServicesPlayAlertSound(inSystemSoundID: SystemSoundID)
func AudioServicesPlaySystemSound(inSystemSoundID: SystemSoundID)
func AudioServicesAddSystemSoundCompletion(inSystemSoundID: SystemSoundID, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inCompletionRoutine: AudioServicesSystemSoundCompletionProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
func AudioServicesRemoveSystemSoundCompletion(inSystemSoundID: SystemSoundID)
var kCAF_FileType: UInt32 { get }
var kCAF_FileVersion_Initial: UInt32 { get }
var kCAF_StreamDescriptionChunkID: UInt32 { get }
var kCAF_AudioDataChunkID: UInt32 { get }
var kCAF_ChannelLayoutChunkID: UInt32 { get }
var kCAF_FillerChunkID: UInt32 { get }
var kCAF_MarkerChunkID: UInt32 { get }
var kCAF_RegionChunkID: UInt32 { get }
var kCAF_InstrumentChunkID: UInt32 { get }
var kCAF_MagicCookieID: UInt32 { get }
var kCAF_InfoStringsChunkID: UInt32 { get }
var kCAF_EditCommentsChunkID: UInt32 { get }
var kCAF_PacketTableChunkID: UInt32 { get }
var kCAF_StringsChunkID: UInt32 { get }
var kCAF_UUIDChunkID: UInt32 { get }
var kCAF_PeakChunkID: UInt32 { get }
var kCAF_OverviewChunkID: UInt32 { get }
var kCAF_MIDIChunkID: UInt32 { get }
var kCAF_UMIDChunkID: UInt32 { get }
var kCAF_FormatListID: UInt32 { get }
var kCAF_iXMLChunkID: UInt32 { get }
struct CAFFileHeader {
  var mFileType: UInt32
  var mFileVersion: UInt16
  var mFileFlags: UInt16
  init()
  init(mFileType: UInt32, mFileVersion: UInt16, mFileFlags: UInt16)
}
struct CAFChunkHeader {
  var mChunkType: UInt32
  var mChunkSize: Int64
  init()
  init(mChunkType: UInt32, mChunkSize: Int64)
}
struct CAF_UUID_ChunkHeader {
  var mHeader: CAFChunkHeader
  var mUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(mHeader: CAFChunkHeader, mUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct CAFFormatFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LinearPCMFormatFlagIsFloat: CAFFormatFlags { get }
  static var LinearPCMFormatFlagIsLittleEndian: CAFFormatFlags { get }
}
struct CAFAudioDescription {
  var mSampleRate: Float64
  var mFormatID: UInt32
  var mFormatFlags: CAFFormatFlags
  var mBytesPerPacket: UInt32
  var mFramesPerPacket: UInt32
  var mChannelsPerFrame: UInt32
  var mBitsPerChannel: UInt32
  init()
  init(mSampleRate: Float64, mFormatID: UInt32, mFormatFlags: CAFFormatFlags, mBytesPerPacket: UInt32, mFramesPerPacket: UInt32, mChannelsPerFrame: UInt32, mBitsPerChannel: UInt32)
}
struct CAFAudioFormatListItem {
  var mFormat: CAFAudioDescription
  var mChannelLayoutTag: UInt32
  init()
  init(mFormat: CAFAudioDescription, mChannelLayoutTag: UInt32)
}
struct CAFPacketTableHeader {
  var mNumberPackets: Int64
  var mNumberValidFrames: Int64
  var mPrimingFrames: Int32
  var mRemainderFrames: Int32
  var mPacketDescriptions: (UInt8)
  init()
  init(mNumberPackets: Int64, mNumberValidFrames: Int64, mPrimingFrames: Int32, mRemainderFrames: Int32, mPacketDescriptions: (UInt8))
}
struct CAFDataChunk {
  var mEditCount: UInt32
  var mData: (UInt8)
  init()
  init(mEditCount: UInt32, mData: (UInt8))
}
var kCAFMarkerType_Generic: UInt32 { get }
var kCAFMarkerType_ProgramStart: UInt32 { get }
var kCAFMarkerType_ProgramEnd: UInt32 { get }
var kCAFMarkerType_TrackStart: UInt32 { get }
var kCAFMarkerType_TrackEnd: UInt32 { get }
var kCAFMarkerType_Index: UInt32 { get }
var kCAFMarkerType_RegionStart: UInt32 { get }
var kCAFMarkerType_RegionEnd: UInt32 { get }
var kCAFMarkerType_RegionSyncPoint: UInt32 { get }
var kCAFMarkerType_SelectionStart: UInt32 { get }
var kCAFMarkerType_SelectionEnd: UInt32 { get }
var kCAFMarkerType_EditSourceBegin: UInt32 { get }
var kCAFMarkerType_EditSourceEnd: UInt32 { get }
var kCAFMarkerType_EditDestinationBegin: UInt32 { get }
var kCAFMarkerType_EditDestinationEnd: UInt32 { get }
var kCAFMarkerType_SustainLoopStart: UInt32 { get }
var kCAFMarkerType_SustainLoopEnd: UInt32 { get }
var kCAFMarkerType_ReleaseLoopStart: UInt32 { get }
var kCAFMarkerType_ReleaseLoopEnd: UInt32 { get }
var kCAFMarkerType_SavedPlayPosition: UInt32 { get }
var kCAFMarkerType_Tempo: UInt32 { get }
var kCAFMarkerType_TimeSignature: UInt32 { get }
var kCAFMarkerType_KeySignature: UInt32 { get }
var kCAF_SMPTE_TimeTypeNone: UInt32 { get }
var kCAF_SMPTE_TimeType24: UInt32 { get }
var kCAF_SMPTE_TimeType25: UInt32 { get }
var kCAF_SMPTE_TimeType30Drop: UInt32 { get }
var kCAF_SMPTE_TimeType30: UInt32 { get }
var kCAF_SMPTE_TimeType2997: UInt32 { get }
var kCAF_SMPTE_TimeType2997Drop: UInt32 { get }
var kCAF_SMPTE_TimeType60: UInt32 { get }
var kCAF_SMPTE_TimeType5994: UInt32 { get }
var kCAF_SMPTE_TimeType60Drop: UInt32 { get }
var kCAF_SMPTE_TimeType5994Drop: UInt32 { get }
var kCAF_SMPTE_TimeType50: UInt32 { get }
var kCAF_SMPTE_TimeType2398: UInt32 { get }
struct CAF_SMPTE_Time {
  var mHours: Int8
  var mMinutes: Int8
  var mSeconds: Int8
  var mFrames: Int8
  var mSubFrameSampleOffset: UInt32
  init()
  init(mHours: Int8, mMinutes: Int8, mSeconds: Int8, mFrames: Int8, mSubFrameSampleOffset: UInt32)
}
struct CAFMarker {
  var mType: UInt32
  var mFramePosition: Float64
  var mMarkerID: UInt32
  var mSMPTETime: CAF_SMPTE_Time
  var mChannel: UInt32
  init()
  init(mType: UInt32, mFramePosition: Float64, mMarkerID: UInt32, mSMPTETime: CAF_SMPTE_Time, mChannel: UInt32)
}
struct CAFMarkerChunk {
  var mSMPTE_TimeType: UInt32
  var mNumberMarkers: UInt32
  var mMarkers: (CAFMarker)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberMarkers: UInt32, mMarkers: (CAFMarker))
}
struct CAFRegionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LoopEnable: CAFRegionFlags { get }
  static var PlayForward: CAFRegionFlags { get }
  static var PlayBackward: CAFRegionFlags { get }
}
struct CAFRegion {
  var mRegionID: UInt32
  var mFlags: CAFRegionFlags
  var mNumberMarkers: UInt32
  var mMarkers: (CAFMarker)
  init()
  init(mRegionID: UInt32, mFlags: CAFRegionFlags, mNumberMarkers: UInt32, mMarkers: (CAFMarker))
}
struct CAFRegionChunk {
  var mSMPTE_TimeType: UInt32
  var mNumberRegions: UInt32
  var mRegions: (CAFRegion)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberRegions: UInt32, mRegions: (CAFRegion))
}
struct CAFInstrumentChunk {
  var mBaseNote: Float32
  var mMIDILowNote: UInt8
  var mMIDIHighNote: UInt8
  var mMIDILowVelocity: UInt8
  var mMIDIHighVelocity: UInt8
  var mdBGain: Float32
  var mStartRegionID: UInt32
  var mSustainRegionID: UInt32
  var mReleaseRegionID: UInt32
  var mInstrumentID: UInt32
  init()
  init(mBaseNote: Float32, mMIDILowNote: UInt8, mMIDIHighNote: UInt8, mMIDILowVelocity: UInt8, mMIDIHighVelocity: UInt8, mdBGain: Float32, mStartRegionID: UInt32, mSustainRegionID: UInt32, mReleaseRegionID: UInt32, mInstrumentID: UInt32)
}
struct CAFStringID {
  var mStringID: UInt32
  var mStringStartByteOffset: Int64
  init()
  init(mStringID: UInt32, mStringStartByteOffset: Int64)
}
struct CAFStrings {
  var mNumEntries: UInt32
  var mStringsIDs: (CAFStringID)
  init()
  init(mNumEntries: UInt32, mStringsIDs: (CAFStringID))
}
struct CAFInfoStrings {
  var mNumEntries: UInt32
  init()
  init(mNumEntries: UInt32)
}
struct CAFPositionPeak {
  var mValue: Float32
  var mFrameNumber: UInt64
  init()
  init(mValue: Float32, mFrameNumber: UInt64)
}
struct CAFPeakChunk {
  var mEditCount: UInt32
  var mPeaks: (CAFPositionPeak)
  init()
  init(mEditCount: UInt32, mPeaks: (CAFPositionPeak))
}
struct CAFOverviewSample {
  var mMinValue: Int16
  var mMaxValue: Int16
  init()
  init(mMinValue: Int16, mMaxValue: Int16)
}
struct CAFOverviewChunk {
  var mEditCount: UInt32
  var mNumFramesPerOVWSample: UInt32
  var mData: (CAFOverviewSample)
  init()
  init(mEditCount: UInt32, mNumFramesPerOVWSample: UInt32, mData: (CAFOverviewSample))
}
struct CAFUMIDChunk {
  var mBytes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(mBytes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias ExtAudioFileRef = COpaquePointer
typealias ExtAudioFilePropertyID = UInt32
var kExtAudioFileProperty_FileDataFormat: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileChannelLayout: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientDataFormat: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientChannelLayout: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_CodecManufacturer: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_AudioConverter: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_AudioFile: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileMaxPacketSize: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientMaxPacketSize: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileLengthFrames: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ConverterConfig: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_IOBufferSizeBytes: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_IOBuffer: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_PacketTable: ExtAudioFilePropertyID { get }
var kExtAudioFileError_InvalidProperty: OSStatus { get }
var kExtAudioFileError_InvalidPropertySize: OSStatus { get }
var kExtAudioFileError_NonPCMClientFormat: OSStatus { get }
var kExtAudioFileError_InvalidChannelMap: OSStatus { get }
var kExtAudioFileError_InvalidOperationOrder: OSStatus { get }
var kExtAudioFileError_InvalidDataFormat: OSStatus { get }
var kExtAudioFileError_MaxPacketSizeUnknown: OSStatus { get }
var kExtAudioFileError_InvalidSeek: OSStatus { get }
var kExtAudioFileError_AsyncWriteTooLarge: OSStatus { get }
var kExtAudioFileError_AsyncWriteBufferOverflow: OSStatus { get }
var kExtAudioFileError_CodecUnavailableInputConsumed: OSStatus { get }
var kExtAudioFileError_CodecUnavailableInputNotConsumed: OSStatus { get }
func ExtAudioFileOpenURL(inURL: CFURL, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
func ExtAudioFileWrapAudioFileID(inFileID: AudioFileID, _ inForWriting: Bool, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
func ExtAudioFileCreateWithURL(inURL: CFURL, _ inFileType: AudioFileTypeID, _ inStreamDesc: UnsafePointer<AudioStreamBasicDescription>, _ inChannelLayout: UnsafePointer<AudioChannelLayout>, _ inFlags: UInt32, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
func ExtAudioFileDispose(inExtAudioFile: ExtAudioFileRef) -> OSStatus
func ExtAudioFileRead(inExtAudioFile: ExtAudioFileRef, _ ioNumberFrames: UnsafeMutablePointer<UInt32>, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
func ExtAudioFileWrite(inExtAudioFile: ExtAudioFileRef, _ inNumberFrames: UInt32, _ ioData: UnsafePointer<AudioBufferList>) -> OSStatus
func ExtAudioFileWriteAsync(inExtAudioFile: ExtAudioFileRef, _ inNumberFrames: UInt32, _ ioData: UnsafePointer<AudioBufferList>) -> OSStatus
func ExtAudioFileSeek(inExtAudioFile: ExtAudioFileRef, _ inFrameOffset: Int64) -> OSStatus
func ExtAudioFileTell(inExtAudioFile: ExtAudioFileRef, _ outFrameOffset: UnsafeMutablePointer<Int64>) -> OSStatus
func ExtAudioFileGetPropertyInfo(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func ExtAudioFileGetProperty(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
func ExtAudioFileSetProperty(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
var kMusicEventType_NULL: UInt32 { get }
var kMusicEventType_ExtendedNote: UInt32 { get }
var kMusicEventType_ExtendedTempo: UInt32 { get }
var kMusicEventType_User: UInt32 { get }
var kMusicEventType_Meta: UInt32 { get }
var kMusicEventType_MIDINoteMessage: UInt32 { get }
var kMusicEventType_MIDIChannelMessage: UInt32 { get }
var kMusicEventType_MIDIRawData: UInt32 { get }
var kMusicEventType_Parameter: UInt32 { get }
var kMusicEventType_AUPreset: UInt32 { get }
typealias MusicEventType = UInt32
struct MusicSequenceLoadFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var SMF_PreserveTracks: MusicSequenceLoadFlags { get }
  static var SMF_ChannelsToTracks: MusicSequenceLoadFlags { get }
}
enum MusicSequenceType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Beats
  case Seconds
  case Samples
}
enum MusicSequenceFileTypeID : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case AnyType
  case MIDIType
  case iMelodyType
}
struct MusicSequenceFileFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Default: MusicSequenceFileFlags { get }
  static var EraseFile: MusicSequenceFileFlags { get }
}
typealias MusicTimeStamp = Float64
var kMusicTimeStamp_EndOfTrack: Double { get }
struct MIDINoteMessage {
  var channel: UInt8
  var note: UInt8
  var velocity: UInt8
  var releaseVelocity: UInt8
  var duration: Float32
  init()
  init(channel: UInt8, note: UInt8, velocity: UInt8, releaseVelocity: UInt8, duration: Float32)
}
struct MIDIChannelMessage {
  var status: UInt8
  var data1: UInt8
  var data2: UInt8
  var reserved: UInt8
  init()
  init(status: UInt8, data1: UInt8, data2: UInt8, reserved: UInt8)
}
struct MIDIRawData {
  var length: UInt32
  var data: (UInt8)
  init()
  init(length: UInt32, data: (UInt8))
}
struct MIDIMetaEvent {
  var metaEventType: UInt8
  var unused1: UInt8
  var unused2: UInt8
  var unused3: UInt8
  var dataLength: UInt32
  var data: (UInt8)
  init()
  init(metaEventType: UInt8, unused1: UInt8, unused2: UInt8, unused3: UInt8, dataLength: UInt32, data: (UInt8))
}
struct MusicEventUserData {
  var length: UInt32
  var data: (UInt8)
  init()
  init(length: UInt32, data: (UInt8))
}
struct ExtendedNoteOnEvent {
  var instrumentID: MusicDeviceInstrumentID
  var groupID: MusicDeviceGroupID
  var duration: Float32
  var extendedParams: MusicDeviceNoteParams
  init()
  init(instrumentID: MusicDeviceInstrumentID, groupID: MusicDeviceGroupID, duration: Float32, extendedParams: MusicDeviceNoteParams)
}
struct ParameterEvent {
  var parameterID: AudioUnitParameterID
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var value: AudioUnitParameterValue
  init()
  init(parameterID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement, value: AudioUnitParameterValue)
}
struct ExtendedTempoEvent {
  var bpm: Float64
  init()
  init(bpm: Float64)
}
struct AUPresetEvent {
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var preset: Unmanaged<CFPropertyList>
}
struct CABarBeatTime {
  var bar: Int32
  var beat: UInt16
  var subbeat: UInt16
  var subbeatDivisor: UInt16
  var reserved: UInt16
  init()
  init(bar: Int32, beat: UInt16, subbeat: UInt16, subbeatDivisor: UInt16, reserved: UInt16)
}
typealias MusicPlayer = COpaquePointer
typealias MusicSequence = COpaquePointer
typealias MusicTrack = COpaquePointer
typealias MusicEventIterator = COpaquePointer
typealias MusicSequenceUserCallback = @convention(c) (UnsafeMutablePointer<Void>, MusicSequence, MusicTrack, MusicTimeStamp, UnsafePointer<MusicEventUserData>, MusicTimeStamp, MusicTimeStamp) -> Void
var kAudioToolboxErr_InvalidSequenceType: OSStatus { get }
var kAudioToolboxErr_TrackIndexError: OSStatus { get }
var kAudioToolboxErr_TrackNotFound: OSStatus { get }
var kAudioToolboxErr_EndOfTrack: OSStatus { get }
var kAudioToolboxErr_StartOfTrack: OSStatus { get }
var kAudioToolboxErr_IllegalTrackDestination: OSStatus { get }
var kAudioToolboxErr_NoSequence: OSStatus { get }
var kAudioToolboxErr_InvalidEventType: OSStatus { get }
var kAudioToolboxErr_InvalidPlayerState: OSStatus { get }
var kAudioToolboxErr_CannotDoInCurrentContext: OSStatus { get }
var kAudioToolboxError_NoTrackDestination: OSStatus { get }
var kSequenceTrackProperty_LoopInfo: UInt32 { get }
var kSequenceTrackProperty_OffsetTime: UInt32 { get }
var kSequenceTrackProperty_MuteStatus: UInt32 { get }
var kSequenceTrackProperty_SoloStatus: UInt32 { get }
var kSequenceTrackProperty_AutomatedParameters: UInt32 { get }
var kSequenceTrackProperty_TrackLength: UInt32 { get }
var kSequenceTrackProperty_TimeResolution: UInt32 { get }
struct MusicTrackLoopInfo {
  var loopDuration: MusicTimeStamp
  var numberOfLoops: Int32
  init()
  init(loopDuration: MusicTimeStamp, numberOfLoops: Int32)
}
func NewMusicPlayer(outPlayer: UnsafeMutablePointer<MusicPlayer>) -> OSStatus
func DisposeMusicPlayer(inPlayer: MusicPlayer) -> OSStatus
func MusicPlayerSetSequence(inPlayer: MusicPlayer, _ inSequence: MusicSequence) -> OSStatus
func MusicPlayerGetSequence(inPlayer: MusicPlayer, _ outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus
func MusicPlayerSetTime(inPlayer: MusicPlayer, _ inTime: MusicTimeStamp) -> OSStatus
func MusicPlayerGetTime(inPlayer: MusicPlayer, _ outTime: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
func MusicPlayerGetHostTimeForBeats(inPlayer: MusicPlayer, _ inBeats: MusicTimeStamp, _ outHostTime: UnsafeMutablePointer<UInt64>) -> OSStatus
func MusicPlayerGetBeatsForHostTime(inPlayer: MusicPlayer, _ inHostTime: UInt64, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
func MusicPlayerPreroll(inPlayer: MusicPlayer) -> OSStatus
func MusicPlayerStart(inPlayer: MusicPlayer) -> OSStatus
func MusicPlayerStop(inPlayer: MusicPlayer) -> OSStatus
func MusicPlayerIsPlaying(inPlayer: MusicPlayer, _ outIsPlaying: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func MusicPlayerSetPlayRateScalar(inPlayer: MusicPlayer, _ inScaleRate: Float64) -> OSStatus
func MusicPlayerGetPlayRateScalar(inPlayer: MusicPlayer, _ outScaleRate: UnsafeMutablePointer<Float64>) -> OSStatus
func NewMusicSequence(outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus
func DisposeMusicSequence(inSequence: MusicSequence) -> OSStatus
func MusicSequenceNewTrack(inSequence: MusicSequence, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus
func MusicSequenceDisposeTrack(inSequence: MusicSequence, _ inTrack: MusicTrack) -> OSStatus
func MusicSequenceGetTrackCount(inSequence: MusicSequence, _ outNumberOfTracks: UnsafeMutablePointer<UInt32>) -> OSStatus
func MusicSequenceGetIndTrack(inSequence: MusicSequence, _ inTrackIndex: UInt32, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus
func MusicSequenceGetTrackIndex(inSequence: MusicSequence, _ inTrack: MusicTrack, _ outTrackIndex: UnsafeMutablePointer<UInt32>) -> OSStatus
func MusicSequenceGetTempoTrack(inSequence: MusicSequence, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus
func MusicSequenceSetAUGraph(inSequence: MusicSequence, _ inGraph: AUGraph) -> OSStatus
func MusicSequenceGetAUGraph(inSequence: MusicSequence, _ outGraph: UnsafeMutablePointer<AUGraph>) -> OSStatus
func MusicSequenceSetSequenceType(inSequence: MusicSequence, _ inType: MusicSequenceType) -> OSStatus
func MusicSequenceGetSequenceType(inSequence: MusicSequence, _ outType: UnsafeMutablePointer<MusicSequenceType>) -> OSStatus
func MusicSequenceFileLoad(inSequence: MusicSequence, _ inFileRef: CFURL, _ inFileTypeHint: MusicSequenceFileTypeID, _ inFlags: MusicSequenceLoadFlags) -> OSStatus
func MusicSequenceFileLoadData(inSequence: MusicSequence, _ inData: CFData, _ inFileTypeHint: MusicSequenceFileTypeID, _ inFlags: MusicSequenceLoadFlags) -> OSStatus
func MusicSequenceSetSMPTEResolution(fps: Int8, _ ticks: UInt8) -> Int16
func MusicSequenceGetSMPTEResolution(inRes: Int16, _ fps: UnsafeMutablePointer<Int8>, _ ticks: UnsafeMutablePointer<UInt8>)
func MusicSequenceFileCreate(inSequence: MusicSequence, _ inFileRef: CFURL, _ inFileType: MusicSequenceFileTypeID, _ inFlags: MusicSequenceFileFlags, _ inResolution: Int16) -> OSStatus
func MusicSequenceFileCreateData(inSequence: MusicSequence, _ inFileType: MusicSequenceFileTypeID, _ inFlags: MusicSequenceFileFlags, _ inResolution: Int16, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
func MusicSequenceReverse(inSequence: MusicSequence) -> OSStatus
func MusicSequenceGetSecondsForBeats(inSequence: MusicSequence, _ inBeats: MusicTimeStamp, _ outSeconds: UnsafeMutablePointer<Float64>) -> OSStatus
func MusicSequenceGetBeatsForSeconds(inSequence: MusicSequence, _ inSeconds: Float64, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
func MusicSequenceSetUserCallback(inSequence: MusicSequence, _ inCallback: MusicSequenceUserCallback?, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
func MusicSequenceBeatsToBarBeatTime(inSequence: MusicSequence, _ inBeats: MusicTimeStamp, _ inSubbeatDivisor: UInt32, _ outBarBeatTime: UnsafeMutablePointer<CABarBeatTime>) -> OSStatus
func MusicSequenceBarBeatTimeToBeats(inSequence: MusicSequence, _ inBarBeatTime: UnsafePointer<CABarBeatTime>, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
func MusicSequenceGetInfoDictionary(inSequence: MusicSequence) -> CFDictionary
func MusicTrackGetSequence(inTrack: MusicTrack, _ outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus
func MusicTrackSetDestNode(inTrack: MusicTrack, _ inNode: AUNode) -> OSStatus
func MusicTrackGetDestNode(inTrack: MusicTrack, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
func MusicTrackSetProperty(inTrack: MusicTrack, _ inPropertyID: UInt32, _ inData: UnsafeMutablePointer<Void>, _ inLength: UInt32) -> OSStatus
func MusicTrackGetProperty(inTrack: MusicTrack, _ inPropertyID: UInt32, _ outData: UnsafeMutablePointer<Void>, _ ioLength: UnsafeMutablePointer<UInt32>) -> OSStatus
func MusicTrackMoveEvents(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp, _ inMoveTime: MusicTimeStamp) -> OSStatus
func MusicTrackClear(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp) -> OSStatus
func MusicTrackCut(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp) -> OSStatus
func MusicTrackCopyInsert(inSourceTrack: MusicTrack, _ inSourceStartTime: MusicTimeStamp, _ inSourceEndTime: MusicTimeStamp, _ inDestTrack: MusicTrack, _ inDestInsertTime: MusicTimeStamp) -> OSStatus
func MusicTrackMerge(inSourceTrack: MusicTrack, _ inSourceStartTime: MusicTimeStamp, _ inSourceEndTime: MusicTimeStamp, _ inDestTrack: MusicTrack, _ inDestInsertTime: MusicTimeStamp) -> OSStatus
func MusicTrackNewMIDINoteEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMessage: UnsafePointer<MIDINoteMessage>) -> OSStatus
func MusicTrackNewMIDIChannelEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMessage: UnsafePointer<MIDIChannelMessage>) -> OSStatus
func MusicTrackNewMIDIRawDataEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inRawData: UnsafePointer<MIDIRawData>) -> OSStatus
func MusicTrackNewExtendedNoteEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inInfo: UnsafePointer<ExtendedNoteOnEvent>) -> OSStatus
func MusicTrackNewParameterEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inInfo: UnsafePointer<ParameterEvent>) -> OSStatus
func MusicTrackNewExtendedTempoEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inBPM: Float64) -> OSStatus
func MusicTrackNewMetaEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMetaEvent: UnsafePointer<MIDIMetaEvent>) -> OSStatus
func MusicTrackNewUserEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inUserData: UnsafePointer<MusicEventUserData>) -> OSStatus
func MusicTrackNewAUPresetEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inPresetEvent: UnsafePointer<AUPresetEvent>) -> OSStatus
func NewMusicEventIterator(inTrack: MusicTrack, _ outIterator: UnsafeMutablePointer<MusicEventIterator>) -> OSStatus
func DisposeMusicEventIterator(inIterator: MusicEventIterator) -> OSStatus
func MusicEventIteratorSeek(inIterator: MusicEventIterator, _ inTimeStamp: MusicTimeStamp) -> OSStatus
func MusicEventIteratorNextEvent(inIterator: MusicEventIterator) -> OSStatus
func MusicEventIteratorPreviousEvent(inIterator: MusicEventIterator) -> OSStatus
func MusicEventIteratorGetEventInfo(inIterator: MusicEventIterator, _ outTimeStamp: UnsafeMutablePointer<MusicTimeStamp>, _ outEventType: UnsafeMutablePointer<MusicEventType>, _ outEventData: UnsafeMutablePointer<UnsafePointer<Void>>, _ outEventDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func MusicEventIteratorSetEventInfo(inIterator: MusicEventIterator, _ inEventType: MusicEventType, _ inEventData: UnsafePointer<Void>) -> OSStatus
func MusicEventIteratorSetEventTime(inIterator: MusicEventIterator, _ inTimeStamp: MusicTimeStamp) -> OSStatus
func MusicEventIteratorDeleteEvent(inIterator: MusicEventIterator) -> OSStatus
func MusicEventIteratorHasPreviousEvent(inIterator: MusicEventIterator, _ outHasPrevEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func MusicEventIteratorHasNextEvent(inIterator: MusicEventIterator, _ outHasNextEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func MusicEventIteratorHasCurrentEvent(inIterator: MusicEventIterator, _ outHasCurEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
