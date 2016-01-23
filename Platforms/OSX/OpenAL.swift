
var ALC_MAC_OSX_CONVERT_DATA_UPON_LOADING: Int32 { get }
typealias alcMacOSXRenderingQualityProcPtr = @convention(c) (ALint) -> Void
typealias alMacOSXRenderChannelCountProcPtr = @convention(c) (ALint) -> Void
typealias alcMacOSXMixerMaxiumumBussesProcPtr = @convention(c) (ALint) -> Void
typealias alcMacOSXMixerOutputRateProcPtr = @convention(c) (ALdouble) -> Void
typealias alcMacOSXGetRenderingQualityProcPtr = @convention(c) () -> ALint
typealias alMacOSXGetRenderChannelCountProcPtr = @convention(c) () -> ALint
typealias alcMacOSXGetMixerMaxiumumBussesProcPtr = @convention(c) () -> ALint
typealias alcMacOSXGetMixerOutputRateProcPtr = @convention(c) () -> ALdouble
typealias alSourceRenderingQualityProcPtr = @convention(c) (ALuint, ALint) -> Void
typealias alSourceGetRenderingQualityProcPtr = @convention(c) (ALuint) -> ALint
typealias alBufferDataStaticProcPtr = @convention(c) (ALint, ALenum, UnsafePointer<Void>, ALsizei, ALsizei) -> Void
var AL_QUEUE_HAS_LOOPED: Int32 { get }
typealias alSourceNotificationProc = @convention(c) (ALuint, ALuint, UnsafeMutablePointer<Void>) -> Void
typealias alSourceAddNotificationProcPtr = @convention(c) (ALuint, ALuint, alSourceNotificationProc, UnsafeMutablePointer<Void>) -> ALenum
typealias alSourceRemoveNotificationProcPtr = @convention(c) (ALuint, ALuint, alSourceNotificationProc, UnsafeMutablePointer<Void>) -> Void
typealias alcASAGetSourceProcPtr = @convention(c) (ALuint, ALuint, UnsafeMutablePointer<Void>, UnsafeMutablePointer<ALuint>) -> ALenum
typealias alcASASetSourceProcPtr = @convention(c) (ALuint, ALuint, UnsafeMutablePointer<Void>, ALuint) -> ALenum
typealias alcASAGetListenerProcPtr = @convention(c) (ALuint, UnsafeMutablePointer<Void>, UnsafeMutablePointer<ALuint>) -> ALenum
typealias alcASASetListenerProcPtr = @convention(c) (ALuint, UnsafeMutablePointer<Void>, ALuint) -> ALenum
var ALC_ASA_REVERB_ROOM_TYPE_SmallRoom: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_MediumRoom: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_LargeRoom: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_MediumHall: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_LargeHall: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_Plate: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_MediumChamber: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_LargeChamber: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_Cathedral: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_LargeRoom2: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_MediumHall2: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_MediumHall3: Int32 { get }
var ALC_ASA_REVERB_ROOM_TYPE_LargeHall2: Int32 { get }
var ALC_ASA_REVERB_QUALITY_Max: Int32 { get }
var ALC_ASA_REVERB_QUALITY_High: Int32 { get }
var ALC_ASA_REVERB_QUALITY_Medium: Int32 { get }
var ALC_ASA_REVERB_QUALITY_Low: Int32 { get }
var ALC_ASA_REVERB_QUALITY_Min: Int32 { get }
var ALC_ASA_ROGER_BEEP_TYPE_quindartone: Int32 { get }
var ALC_ASA_ROGER_BEEP_TYPE_whitenoise: Int32 { get }
var ALC_ASA_ROGER_BEEP_TYPE_walkietalkie: Int32 { get }
var ALC_ASA_ROGER_BEEP_SENSITIVITY_Light: Int32 { get }
var ALC_ASA_ROGER_BEEP_SENSITIVITY_Medium: Int32 { get }
var ALC_ASA_ROGER_BEEP_SENSITIVITY_Heavy: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_BitBrush: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_BufferBeats: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_LoFi: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_BrokenSpeaker: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_Cellphone: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_Decimated1: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_Decimated2: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_Decimated3: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_Decimated4: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_DistortedFunk: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_DistortionCubed: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_DistortionSquared: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_Echo1: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_Echo2: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_EchoTight1: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_EchoTight2: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_EverythingBroken: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_AlienChatter: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_CosmicInteference: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_GoldenPi: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_RadioTower: Int32 { get }
var ALC_ASA_DISTORTION_TYPE_Waves: Int32 { get }
typealias alcOutputCapturerPrepareProcPtr = @convention(c) (ALCuint, ALCenum, ALCsizei) -> Void
typealias alcOutputCapturerStartProcPtr = @convention(c) () -> Void
typealias alcOutputCapturerStopProcPtr = @convention(c) () -> Void
typealias alcOutputCapturerAvailableSamplesProcPtr = @convention(c) () -> ALint
typealias alcOutputCapturerSamplesProcPtr = @convention(c) (UnsafeMutablePointer<Void>, ALCsizei) -> Void
var AL_INVALID: Int32 { get }
var AL_ILLEGAL_ENUM: Int32 { get }
var AL_ILLEGAL_COMMAND: Int32 { get }
typealias ALboolean = Int8
typealias ALchar = Int8
typealias ALbyte = Int8
typealias ALubyte = UInt8
typealias ALshort = Int16
typealias ALushort = UInt16
typealias ALint = Int32
typealias ALuint = UInt32
typealias ALsizei = Int32
typealias ALenum = Int32
typealias ALfloat = Float
typealias ALdouble = Double
var AL_NONE: Int32 { get }
var AL_FALSE: Int32 { get }
var AL_TRUE: Int32 { get }
var AL_SOURCE_RELATIVE: Int32 { get }
var AL_CONE_INNER_ANGLE: Int32 { get }
var AL_CONE_OUTER_ANGLE: Int32 { get }
var AL_PITCH: Int32 { get }
var AL_POSITION: Int32 { get }
var AL_DIRECTION: Int32 { get }
var AL_VELOCITY: Int32 { get }
var AL_LOOPING: Int32 { get }
var AL_BUFFER: Int32 { get }
var AL_GAIN: Int32 { get }
var AL_MIN_GAIN: Int32 { get }
var AL_MAX_GAIN: Int32 { get }
var AL_ORIENTATION: Int32 { get }
var AL_SOURCE_STATE: Int32 { get }
var AL_INITIAL: Int32 { get }
var AL_PLAYING: Int32 { get }
var AL_PAUSED: Int32 { get }
var AL_STOPPED: Int32 { get }
var AL_BUFFERS_QUEUED: Int32 { get }
var AL_BUFFERS_PROCESSED: Int32 { get }
var AL_SEC_OFFSET: Int32 { get }
var AL_SAMPLE_OFFSET: Int32 { get }
var AL_BYTE_OFFSET: Int32 { get }
var AL_SOURCE_TYPE: Int32 { get }
var AL_STATIC: Int32 { get }
var AL_STREAMING: Int32 { get }
var AL_UNDETERMINED: Int32 { get }
var AL_FORMAT_MONO8: Int32 { get }
var AL_FORMAT_MONO16: Int32 { get }
var AL_FORMAT_STEREO8: Int32 { get }
var AL_FORMAT_STEREO16: Int32 { get }
var AL_REFERENCE_DISTANCE: Int32 { get }
var AL_ROLLOFF_FACTOR: Int32 { get }
var AL_CONE_OUTER_GAIN: Int32 { get }
var AL_MAX_DISTANCE: Int32 { get }
var AL_FREQUENCY: Int32 { get }
var AL_BITS: Int32 { get }
var AL_CHANNELS: Int32 { get }
var AL_SIZE: Int32 { get }
var AL_UNUSED: Int32 { get }
var AL_PENDING: Int32 { get }
var AL_PROCESSED: Int32 { get }
var AL_NO_ERROR: Int32 { get }
var AL_INVALID_NAME: Int32 { get }
var AL_INVALID_ENUM: Int32 { get }
var AL_INVALID_VALUE: Int32 { get }
var AL_INVALID_OPERATION: Int32 { get }
var AL_OUT_OF_MEMORY: Int32 { get }
var AL_VENDOR: Int32 { get }
var AL_VERSION: Int32 { get }
var AL_RENDERER: Int32 { get }
var AL_EXTENSIONS: Int32 { get }
var AL_DOPPLER_FACTOR: Int32 { get }
var AL_DOPPLER_VELOCITY: Int32 { get }
var AL_SPEED_OF_SOUND: Int32 { get }
var AL_DISTANCE_MODEL: Int32 { get }
var AL_INVERSE_DISTANCE: Int32 { get }
var AL_INVERSE_DISTANCE_CLAMPED: Int32 { get }
var AL_LINEAR_DISTANCE: Int32 { get }
var AL_LINEAR_DISTANCE_CLAMPED: Int32 { get }
var AL_EXPONENT_DISTANCE: Int32 { get }
var AL_EXPONENT_DISTANCE_CLAMPED: Int32 { get }
func alEnable(capability: ALenum)
func alDisable(capability: ALenum)
func alIsEnabled(capability: ALenum) -> ALboolean
func alGetString(param: ALenum) -> UnsafePointer<ALchar>
func alGetBooleanv(param: ALenum, _ data: UnsafeMutablePointer<ALboolean>)
func alGetIntegerv(param: ALenum, _ data: UnsafeMutablePointer<ALint>)
func alGetFloatv(param: ALenum, _ data: UnsafeMutablePointer<ALfloat>)
func alGetDoublev(param: ALenum, _ data: UnsafeMutablePointer<ALdouble>)
func alGetBoolean(param: ALenum) -> ALboolean
func alGetInteger(param: ALenum) -> ALint
func alGetFloat(param: ALenum) -> ALfloat
func alGetDouble(param: ALenum) -> ALdouble
func alGetError() -> ALenum
func alIsExtensionPresent(extname: UnsafePointer<ALchar>) -> ALboolean
func alGetProcAddress(fname: UnsafePointer<ALchar>) -> UnsafeMutablePointer<Void>
func alGetEnumValue(ename: UnsafePointer<ALchar>) -> ALenum
func alListenerf(param: ALenum, _ value: ALfloat)
func alListener3f(param: ALenum, _ value1: ALfloat, _ value2: ALfloat, _ value3: ALfloat)
func alListenerfv(param: ALenum, _ values: UnsafePointer<ALfloat>)
func alListeneri(param: ALenum, _ value: ALint)
func alListener3i(param: ALenum, _ value1: ALint, _ value2: ALint, _ value3: ALint)
func alListeneriv(param: ALenum, _ values: UnsafePointer<ALint>)
func alGetListenerf(param: ALenum, _ value: UnsafeMutablePointer<ALfloat>)
func alGetListener3f(param: ALenum, _ value1: UnsafeMutablePointer<ALfloat>, _ value2: UnsafeMutablePointer<ALfloat>, _ value3: UnsafeMutablePointer<ALfloat>)
func alGetListenerfv(param: ALenum, _ values: UnsafeMutablePointer<ALfloat>)
func alGetListeneri(param: ALenum, _ value: UnsafeMutablePointer<ALint>)
func alGetListener3i(param: ALenum, _ value1: UnsafeMutablePointer<ALint>, _ value2: UnsafeMutablePointer<ALint>, _ value3: UnsafeMutablePointer<ALint>)
func alGetListeneriv(param: ALenum, _ values: UnsafeMutablePointer<ALint>)
func alGenSources(n: ALsizei, _ sources: UnsafeMutablePointer<ALuint>)
func alDeleteSources(n: ALsizei, _ sources: UnsafePointer<ALuint>)
func alIsSource(sid: ALuint) -> ALboolean
func alSourcef(sid: ALuint, _ param: ALenum, _ value: ALfloat)
func alSource3f(sid: ALuint, _ param: ALenum, _ value1: ALfloat, _ value2: ALfloat, _ value3: ALfloat)
func alSourcefv(sid: ALuint, _ param: ALenum, _ values: UnsafePointer<ALfloat>)
func alSourcei(sid: ALuint, _ param: ALenum, _ value: ALint)
func alSource3i(sid: ALuint, _ param: ALenum, _ value1: ALint, _ value2: ALint, _ value3: ALint)
func alSourceiv(sid: ALuint, _ param: ALenum, _ values: UnsafePointer<ALint>)
func alGetSourcef(sid: ALuint, _ param: ALenum, _ value: UnsafeMutablePointer<ALfloat>)
func alGetSource3f(sid: ALuint, _ param: ALenum, _ value1: UnsafeMutablePointer<ALfloat>, _ value2: UnsafeMutablePointer<ALfloat>, _ value3: UnsafeMutablePointer<ALfloat>)
func alGetSourcefv(sid: ALuint, _ param: ALenum, _ values: UnsafeMutablePointer<ALfloat>)
func alGetSourcei(sid: ALuint, _ param: ALenum, _ value: UnsafeMutablePointer<ALint>)
func alGetSource3i(sid: ALuint, _ param: ALenum, _ value1: UnsafeMutablePointer<ALint>, _ value2: UnsafeMutablePointer<ALint>, _ value3: UnsafeMutablePointer<ALint>)
func alGetSourceiv(sid: ALuint, _ param: ALenum, _ values: UnsafeMutablePointer<ALint>)
func alSourcePlayv(ns: ALsizei, _ sids: UnsafePointer<ALuint>)
func alSourceStopv(ns: ALsizei, _ sids: UnsafePointer<ALuint>)
func alSourceRewindv(ns: ALsizei, _ sids: UnsafePointer<ALuint>)
func alSourcePausev(ns: ALsizei, _ sids: UnsafePointer<ALuint>)
func alSourcePlay(sid: ALuint)
func alSourceStop(sid: ALuint)
func alSourceRewind(sid: ALuint)
func alSourcePause(sid: ALuint)
func alSourceQueueBuffers(sid: ALuint, _ numEntries: ALsizei, _ bids: UnsafePointer<ALuint>)
func alSourceUnqueueBuffers(sid: ALuint, _ numEntries: ALsizei, _ bids: UnsafeMutablePointer<ALuint>)
func alGenBuffers(n: ALsizei, _ buffers: UnsafeMutablePointer<ALuint>)
func alDeleteBuffers(n: ALsizei, _ buffers: UnsafePointer<ALuint>)
func alIsBuffer(bid: ALuint) -> ALboolean
func alBufferData(bid: ALuint, _ format: ALenum, _ data: UnsafePointer<Void>, _ size: ALsizei, _ freq: ALsizei)
func alBufferf(bid: ALuint, _ param: ALenum, _ value: ALfloat)
func alBuffer3f(bid: ALuint, _ param: ALenum, _ value1: ALfloat, _ value2: ALfloat, _ value3: ALfloat)
func alBufferfv(bid: ALuint, _ param: ALenum, _ values: UnsafePointer<ALfloat>)
func alBufferi(bid: ALuint, _ param: ALenum, _ value: ALint)
func alBuffer3i(bid: ALuint, _ param: ALenum, _ value1: ALint, _ value2: ALint, _ value3: ALint)
func alBufferiv(bid: ALuint, _ param: ALenum, _ values: UnsafePointer<ALint>)
func alGetBufferf(bid: ALuint, _ param: ALenum, _ value: UnsafeMutablePointer<ALfloat>)
func alGetBuffer3f(bid: ALuint, _ param: ALenum, _ value1: UnsafeMutablePointer<ALfloat>, _ value2: UnsafeMutablePointer<ALfloat>, _ value3: UnsafeMutablePointer<ALfloat>)
func alGetBufferfv(bid: ALuint, _ param: ALenum, _ values: UnsafeMutablePointer<ALfloat>)
func alGetBufferi(bid: ALuint, _ param: ALenum, _ value: UnsafeMutablePointer<ALint>)
func alGetBuffer3i(bid: ALuint, _ param: ALenum, _ value1: UnsafeMutablePointer<ALint>, _ value2: UnsafeMutablePointer<ALint>, _ value3: UnsafeMutablePointer<ALint>)
func alGetBufferiv(bid: ALuint, _ param: ALenum, _ values: UnsafeMutablePointer<ALint>)
func alDopplerFactor(value: ALfloat)
func alDopplerVelocity(value: ALfloat)
func alSpeedOfSound(value: ALfloat)
func alDistanceModel(distanceModel: ALenum)
typealias LPALENABLE = @convention(c) (ALenum) -> Void
typealias LPALDISABLE = @convention(c) (ALenum) -> Void
typealias LPALISENABLED = @convention(c) (ALenum) -> ALboolean
typealias LPALGETSTRING = @convention(c) (ALenum) -> UnsafePointer<ALchar>
typealias LPALGETBOOLEANV = @convention(c) (ALenum, UnsafeMutablePointer<ALboolean>) -> Void
typealias LPALGETINTEGERV = @convention(c) (ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETFLOATV = @convention(c) (ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETDOUBLEV = @convention(c) (ALenum, UnsafeMutablePointer<ALdouble>) -> Void
typealias LPALGETBOOLEAN = @convention(c) (ALenum) -> ALboolean
typealias LPALGETINTEGER = @convention(c) (ALenum) -> ALint
typealias LPALGETFLOAT = @convention(c) (ALenum) -> ALfloat
typealias LPALGETDOUBLE = @convention(c) (ALenum) -> ALdouble
typealias LPALGETERROR = @convention(c) () -> ALenum
typealias LPALISEXTENSIONPRESENT = @convention(c) (UnsafePointer<ALchar>) -> ALboolean
typealias LPALGETPROCADDRESS = @convention(c) (UnsafePointer<ALchar>) -> UnsafeMutablePointer<Void>
typealias LPALGETENUMVALUE = @convention(c) (UnsafePointer<ALchar>) -> ALenum
typealias LPALLISTENERF = @convention(c) (ALenum, ALfloat) -> Void
typealias LPALLISTENER3F = @convention(c) (ALenum, ALfloat, ALfloat, ALfloat) -> Void
typealias LPALLISTENERFV = @convention(c) (ALenum, UnsafePointer<ALfloat>) -> Void
typealias LPALLISTENERI = @convention(c) (ALenum, ALint) -> Void
typealias LPALLISTENER3I = @convention(c) (ALenum, ALint, ALint, ALint) -> Void
typealias LPALLISTENERIV = @convention(c) (ALenum, UnsafePointer<ALint>) -> Void
typealias LPALGETLISTENERF = @convention(c) (ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETLISTENER3F = @convention(c) (ALenum, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETLISTENERFV = @convention(c) (ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETLISTENERI = @convention(c) (ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETLISTENER3I = @convention(c) (ALenum, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETLISTENERIV = @convention(c) (ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGENSOURCES = @convention(c) (ALsizei, UnsafeMutablePointer<ALuint>) -> Void
typealias LPALDELETESOURCES = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALISSOURCE = @convention(c) (ALuint) -> ALboolean
typealias LPALSOURCEF = @convention(c) (ALuint, ALenum, ALfloat) -> Void
typealias LPALSOURCE3F = @convention(c) (ALuint, ALenum, ALfloat, ALfloat, ALfloat) -> Void
typealias LPALSOURCEFV = @convention(c) (ALuint, ALenum, UnsafePointer<ALfloat>) -> Void
typealias LPALSOURCEI = @convention(c) (ALuint, ALenum, ALint) -> Void
typealias LPALSOURCE3I = @convention(c) (ALuint, ALenum, ALint, ALint, ALint) -> Void
typealias LPALSOURCEIV = @convention(c) (ALuint, ALenum, UnsafePointer<ALint>) -> Void
typealias LPALGETSOURCEF = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETSOURCE3F = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETSOURCEFV = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETSOURCEI = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETSOURCE3I = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETSOURCEIV = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALSOURCEPLAYV = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCESTOPV = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCEREWINDV = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCEPAUSEV = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCEPLAY = @convention(c) (ALuint) -> Void
typealias LPALSOURCESTOP = @convention(c) (ALuint) -> Void
typealias LPALSOURCEREWIND = @convention(c) (ALuint) -> Void
typealias LPALSOURCEPAUSE = @convention(c) (ALuint) -> Void
typealias LPALSOURCEQUEUEBUFFERS = @convention(c) (ALuint, ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCEUNQUEUEBUFFERS = @convention(c) (ALuint, ALsizei, UnsafeMutablePointer<ALuint>) -> Void
typealias LPALGENBUFFERS = @convention(c) (ALsizei, UnsafeMutablePointer<ALuint>) -> Void
typealias LPALDELETEBUFFERS = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALISBUFFER = @convention(c) (ALuint) -> ALboolean
typealias LPALBUFFERDATA = @convention(c) (ALuint, ALenum, UnsafePointer<Void>, ALsizei, ALsizei) -> Void
typealias LPALBUFFERF = @convention(c) (ALuint, ALenum, ALfloat) -> Void
typealias LPALBUFFER3F = @convention(c) (ALuint, ALenum, ALfloat, ALfloat, ALfloat) -> Void
typealias LPALBUFFERFV = @convention(c) (ALuint, ALenum, UnsafePointer<ALfloat>) -> Void
typealias LPALBUFFERI = @convention(c) (ALuint, ALenum, ALint) -> Void
typealias LPALBUFFER3I = @convention(c) (ALuint, ALenum, ALint, ALint, ALint) -> Void
typealias LPALBUFFERIV = @convention(c) (ALuint, ALenum, UnsafePointer<ALint>) -> Void
typealias LPALGETBUFFERF = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETBUFFER3F = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETBUFFERFV = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETBUFFERI = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETBUFFER3I = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETBUFFERIV = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALDOPPLERFACTOR = @convention(c) (ALfloat) -> Void
typealias LPALDOPPLERVELOCITY = @convention(c) (ALfloat) -> Void
typealias LPALSPEEDOFSOUND = @convention(c) (ALfloat) -> Void
typealias LPALDISTANCEMODEL = @convention(c) (ALenum) -> Void
var ALC_INVALID: Int32 { get }
var ALC_VERSION_0_1: Int32 { get }
typealias ALCboolean = Int8
typealias ALCchar = Int8
typealias ALCbyte = Int8
typealias ALCubyte = UInt8
typealias ALCshort = Int16
typealias ALCushort = UInt16
typealias ALCint = Int32
typealias ALCuint = UInt32
typealias ALCsizei = Int32
typealias ALCenum = Int32
typealias ALCfloat = Float
typealias ALCdouble = Double
var ALC_FALSE: Int32 { get }
var ALC_TRUE: Int32 { get }
var ALC_FREQUENCY: Int32 { get }
var ALC_REFRESH: Int32 { get }
var ALC_SYNC: Int32 { get }
var ALC_MONO_SOURCES: Int32 { get }
var ALC_STEREO_SOURCES: Int32 { get }
var ALC_NO_ERROR: Int32 { get }
var ALC_INVALID_DEVICE: Int32 { get }
var ALC_INVALID_CONTEXT: Int32 { get }
var ALC_INVALID_ENUM: Int32 { get }
var ALC_INVALID_VALUE: Int32 { get }
var ALC_OUT_OF_MEMORY: Int32 { get }
var ALC_DEFAULT_DEVICE_SPECIFIER: Int32 { get }
var ALC_DEVICE_SPECIFIER: Int32 { get }
var ALC_EXTENSIONS: Int32 { get }
var ALC_MAJOR_VERSION: Int32 { get }
var ALC_MINOR_VERSION: Int32 { get }
var ALC_ATTRIBUTES_SIZE: Int32 { get }
var ALC_ALL_ATTRIBUTES: Int32 { get }
var ALC_DEFAULT_ALL_DEVICES_SPECIFIER: Int32 { get }
var ALC_ALL_DEVICES_SPECIFIER: Int32 { get }
var ALC_CAPTURE_DEVICE_SPECIFIER: Int32 { get }
var ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER: Int32 { get }
var ALC_CAPTURE_SAMPLES: Int32 { get }
func alcCreateContext(device: COpaquePointer, _ attrlist: UnsafePointer<ALCint>) -> COpaquePointer
func alcMakeContextCurrent(context: COpaquePointer) -> ALCboolean
func alcProcessContext(context: COpaquePointer)
func alcSuspendContext(context: COpaquePointer)
func alcDestroyContext(context: COpaquePointer)
func alcGetCurrentContext() -> COpaquePointer
func alcGetContextsDevice(context: COpaquePointer) -> COpaquePointer
func alcOpenDevice(devicename: UnsafePointer<ALCchar>) -> COpaquePointer
func alcCloseDevice(device: COpaquePointer) -> ALCboolean
func alcGetError(device: COpaquePointer) -> ALCenum
func alcIsExtensionPresent(device: COpaquePointer, _ extname: UnsafePointer<ALCchar>) -> ALCboolean
func alcGetProcAddress(device: COpaquePointer, _ funcname: UnsafePointer<ALCchar>) -> UnsafeMutablePointer<Void>
func alcGetEnumValue(device: COpaquePointer, _ enumname: UnsafePointer<ALCchar>) -> ALCenum
func alcGetString(device: COpaquePointer, _ param: ALCenum) -> UnsafePointer<ALCchar>
func alcGetIntegerv(device: COpaquePointer, _ param: ALCenum, _ size: ALCsizei, _ data: UnsafeMutablePointer<ALCint>)
func alcCaptureOpenDevice(devicename: UnsafePointer<ALCchar>, _ frequency: ALCuint, _ format: ALCenum, _ buffersize: ALCsizei) -> COpaquePointer
func alcCaptureCloseDevice(device: COpaquePointer) -> ALCboolean
func alcCaptureStart(device: COpaquePointer)
func alcCaptureStop(device: COpaquePointer)
func alcCaptureSamples(device: COpaquePointer, _ buffer: UnsafeMutablePointer<Void>, _ samples: ALCsizei)
typealias LPALCCREATECONTEXT = @convention(c) (COpaquePointer, UnsafePointer<ALCint>) -> COpaquePointer
typealias LPALCMAKECONTEXTCURRENT = @convention(c) (COpaquePointer) -> ALCboolean
typealias LPALCPROCESSCONTEXT = @convention(c) (COpaquePointer) -> Void
typealias LPALCSUSPENDCONTEXT = @convention(c) (COpaquePointer) -> Void
typealias LPALCDESTROYCONTEXT = @convention(c) (COpaquePointer) -> Void
typealias LPALCGETCURRENTCONTEXT = @convention(c) () -> COpaquePointer
typealias LPALCGETCONTEXTSDEVICE = @convention(c) (COpaquePointer) -> COpaquePointer
typealias LPALCOPENDEVICE = @convention(c) (UnsafePointer<ALCchar>) -> COpaquePointer
typealias LPALCCLOSEDEVICE = @convention(c) (COpaquePointer) -> ALCboolean
typealias LPALCGETERROR = @convention(c) (COpaquePointer) -> ALCenum
typealias LPALCISEXTENSIONPRESENT = @convention(c) (COpaquePointer, UnsafePointer<ALCchar>) -> ALCboolean
typealias LPALCGETPROCADDRESS = @convention(c) (COpaquePointer, UnsafePointer<ALCchar>) -> UnsafeMutablePointer<Void>
typealias LPALCGETENUMVALUE = @convention(c) (COpaquePointer, UnsafePointer<ALCchar>) -> ALCenum
typealias LPALCGETSTRING = @convention(c) (COpaquePointer, ALCenum) -> UnsafePointer<ALCchar>
typealias LPALCGETINTEGERV = @convention(c) (COpaquePointer, ALCenum, ALCsizei, UnsafeMutablePointer<ALCint>) -> Void
typealias LPALCCAPTUREOPENDEVICE = @convention(c) (UnsafePointer<ALCchar>, ALCuint, ALCenum, ALCsizei) -> COpaquePointer
typealias LPALCCAPTURECLOSEDEVICE = @convention(c) (COpaquePointer) -> ALCboolean
typealias LPALCCAPTURESTART = @convention(c) (COpaquePointer) -> Void
typealias LPALCCAPTURESTOP = @convention(c) (COpaquePointer) -> Void
typealias LPALCCAPTURESAMPLES = @convention(c) (COpaquePointer, UnsafeMutablePointer<Void>, ALCsizei) -> Void
