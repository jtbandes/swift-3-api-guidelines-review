
let AVCoreAnimationBeginTimeAtZero: CFTimeInterval
let AVLayerVideoGravityResizeAspect: String
let AVLayerVideoGravityResizeAspectFill: String
let AVLayerVideoGravityResize: String
class AVAsset : Object, Copying, AVAsynchronousKeyValueLoading {
  convenience init(url URL: URL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func statusOfValueForKey(key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVAsset {
  var providesPreciseDurationAndTiming: Bool { get }
  func cancelLoading()
}
extension AVAsset {
  var referenceRestrictions: AVAssetReferenceRestrictions { get }
}
struct AVAssetReferenceRestrictions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ForbidNone: AVAssetReferenceRestrictions { get }
  static var ForbidRemoteReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var ForbidLocalReferenceToRemote: AVAssetReferenceRestrictions { get }
  static var ForbidCrossSiteReference: AVAssetReferenceRestrictions { get }
  static var ForbidLocalReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var ForbidAll: AVAssetReferenceRestrictions { get }
}
extension AVAsset {
  var tracks: [AVAssetTrack] { get }
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVAssetTrack?
  func tracksWithMediaType(mediaType: String) -> [AVAssetTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVAssetTrack]
  var trackGroups: [AVAssetTrackGroup] { get }
}
extension AVAsset {
  var creationDate: AVMetadataItem? { get }
  var lyrics: String? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataForFormat(format: String) -> [AVMetadataItem]
}
extension AVAsset {
  var availableChapterLocales: [Locale] { get }
  func chapterMetadataGroupsWithTitleLocale(locale: Locale, containingItemsWithCommonKeys commonKeys: [String]?) -> [AVTimedMetadataGroup]
  func chapterMetadataGroupsBestMatchingPreferredLanguages(preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  var availableMediaCharacteristicsWithMediaSelectionOptions: [String] { get }
  func mediaSelectionGroupForMediaCharacteristic(mediaCharacteristic: String) -> AVMediaSelectionGroup?
  var preferredMediaSelection: AVMediaSelection { get }
}
extension AVAsset {
  var hasProtectedContent: Bool { get }
}
extension AVAsset {
  var canContainFragments: Bool { get }
  var containsFragments: Bool { get }
}
extension AVAsset {
  var isPlayable: Bool { get }
  var isExportable: Bool { get }
  var isReadable: Bool { get }
  var isComposable: Bool { get }
  var isCompatibleWithSavedPhotosAlbum: Bool { get }
  var isCompatibleWithAirPlayVideo: Bool { get }
}
let AVURLAssetPreferPreciseDurationAndTimingKey: String
let AVURLAssetReferenceRestrictionsKey: String
let AVURLAssetHTTPCookiesKey: String
class AVURLAsset : AVAsset {
  class func audiovisualTypes() -> [String]
  class func audiovisualMIMETypes() -> [String]
  class func isPlayableExtendedMIMEType(extendedMIMEType: String) -> Bool
  init(url URL: URL, options: [String : AnyObject]? = [:])
  @NSCopying var url: URL { get }
  convenience init(url URL: URL)
}
extension AVURLAsset {
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  func compatibleTrackFor(compositionTrack: AVCompositionTrack) -> AVAssetTrack?
}
let AVAssetDurationDidChangeNotification: String
let AVAssetChapterMetadataGroupsDidChangeNotification: String
let AVAssetMediaSelectionGroupsDidChangeNotification: String
protocol AVFragmentMinding {
}
extension AVFragmentedAsset {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVFragmentedAssetTrack?
  func tracksWithMediaType(mediaType: String) -> [AVFragmentedAssetTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVFragmentedAssetTrack]
}
let AVAssetDownloadTaskMinimumRequiredMediaBitrateKey: String
let AVAssetDownloadTaskMediaSelectionKey: String
class AVAssetDownloadTask : URLSessionTask {
  var urlAsset: AVURLAsset { get }
  var destinationURL: URL { get }
  var options: [String : AnyObject]? { get }
  var loadedTimeRanges: [Value] { get }
  init()
}
protocol AVAssetDownloadDelegate : URLSessionTaskDelegate {
  optional func urlSession(session: URLSession, assetDownloadTask: AVAssetDownloadTask, didLoad timeRange: CMTimeRange, totalTimeRangesLoaded loadedTimeRanges: [Value], timeRangeExpectedToLoad: CMTimeRange)
  optional func urlSession(session: URLSession, assetDownloadTask: AVAssetDownloadTask, didResolve resolvedMediaSelection: AVMediaSelection)
}
class AVAssetDownloadURLSession : URLSession {
   init(configuration: URLSessionConfiguration, assetDownloadDelegate delegate: AVAssetDownloadDelegate?, delegateQueue: OperationQueue?)
  func assetDownloadTaskWith(URLAsset: AVURLAsset, destinationURL: URL, options: [String : AnyObject]? = [:]) -> AVAssetDownloadTask?
  init()
}
let AVAssetExportPresetLowQuality: String
let AVAssetExportPresetMediumQuality: String
let AVAssetExportPresetHighestQuality: String
let AVAssetExportPreset640x480: String
let AVAssetExportPreset960x540: String
let AVAssetExportPreset1280x720: String
let AVAssetExportPreset1920x1080: String
let AVAssetExportPreset3840x2160: String
let AVAssetExportPresetAppleM4A: String
let AVAssetExportPresetPassthrough: String
enum AVAssetExportSessionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Waiting
  case Exporting
  case Completed
  case Failed
  case Cancelled
}
class AVAssetExportSession : Object {
  init?(asset: AVAsset, presetName: String)
  var presetName: String { get }
  var asset: AVAsset { get }
  var outputFileType: String?
  @NSCopying var outputURL: URL?
  var shouldOptimizeForNetworkUse: Bool
  var status: AVAssetExportSessionStatus { get }
  var error: Error? { get }
  func exportAsynchronouslyWithCompletionHandler(handler: () -> Void)
  var progress: Float { get }
  func cancelExport()
}
extension AVAssetExportSession {
  class func allExportPresets() -> [String]
  class func exportPresetsCompatibleWith(asset: AVAsset) -> [String]
  class func determineCompatibilityOfExportPreset(presetName: String, withAsset asset: AVAsset, outputFileType: String?, completionHandler handler: (Bool) -> Void)
}
extension AVAssetExportSession {
  var supportedFileTypes: [String] { get }
  func determineCompatibleFileTypesWithCompletionHandler(handler: ([String]) -> Void)
}
extension AVAssetExportSession {
  var timeRange: CMTimeRange
  var maxDuration: CMTime { get }
  var estimatedOutputFileLength: Int64 { get }
  var fileLengthLimit: Int64
}
extension AVAssetExportSession {
  var metadata: [AVMetadataItem]?
  var metadataItemFilter: AVMetadataItemFilter?
}
extension AVAssetExportSession {
  var audioTimePitchAlgorithm: String
  @NSCopying var audioMix: AVAudioMix?
  @NSCopying var videoComposition: AVVideoComposition?
  var customVideoCompositor: AVVideoCompositing? { get }
}
extension AVAssetExportSession {
  var canPerformMultiplePassesOverSourceMediaData: Bool
  @NSCopying var directoryForTemporaryFiles: URL?
}
let AVAssetImageGeneratorApertureModeCleanAperture: String
let AVAssetImageGeneratorApertureModeProductionAperture: String
let AVAssetImageGeneratorApertureModeEncodedPixels: String
enum AVAssetImageGeneratorResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Succeeded
  case Failed
  case Cancelled
}
class AVAssetImageGenerator : Object {
  var asset: AVAsset { get }
  var appliesPreferredTrackTransform: Bool
  var maximumSize: CGSize
  var apertureMode: String?
  @NSCopying var videoComposition: AVVideoComposition?
  var customVideoCompositor: AVVideoCompositing? { get }
  var requestedTimeToleranceBefore: CMTime
  var requestedTimeToleranceAfter: CMTime
  init(asset: AVAsset)
  func copyCGImageAt(requestedTime: CMTime, actualTime: UnsafeMutablePointer<CMTime>) throws -> CGImage
  func generateCGImagesAsynchronouslyForTimes(requestedTimes: [Value], completionHandler handler: AVAssetImageGeneratorCompletionHandler)
  func cancelAllCGImageGeneration()
}
typealias AVAssetImageGeneratorCompletionHandler = (CMTime, CGImage?, CMTime, AVAssetImageGeneratorResult, Error?) -> Void
enum AVAssetReaderStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Reading
  case Completed
  case Failed
  case Cancelled
}
class AVAssetReader : Object {
  init(asset: AVAsset) throws
  var asset: AVAsset { get }
  var status: AVAssetReaderStatus { get }
  var error: Error? { get }
  var timeRange: CMTimeRange
  var outputs: [AVAssetReaderOutput] { get }
  func canAddOutput(output: AVAssetReaderOutput) -> Bool
  func addOutput(output: AVAssetReaderOutput)
  func startReading() -> Bool
  func cancelReading()
}
class AVAssetReaderOutput : Object {
  var mediaType: String { get }
  var alwaysCopiesSampleData: Bool
  func copyNextSampleBuffer() -> CMSampleBuffer?
  init()
}
extension AVAssetReaderOutput {
  var supportsRandomAccess: Bool
  func resetForReadingTimeRanges(timeRanges: [Value])
  func markConfigurationAsFinal()
}
class AVAssetReaderTrackOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack, outputSettings: [String : AnyObject]?)
  var track: AVAssetTrack { get }
  var outputSettings: [String : AnyObject]? { get }
  var audioTimePitchAlgorithm: String
}
class AVAssetReaderAudioMixOutput : AVAssetReaderOutput {
  init(audioTracks: [AVAssetTrack], audioSettings: [String : AnyObject]?)
  var audioTracks: [AVAssetTrack] { get }
  var audioSettings: [String : AnyObject]? { get }
  @NSCopying var audioMix: AVAudioMix?
  var audioTimePitchAlgorithm: String
}
class AVAssetReaderVideoCompositionOutput : AVAssetReaderOutput {
  init(videoTracks: [AVAssetTrack], videoSettings: [String : AnyObject]?)
  var videoTracks: [AVAssetTrack] { get }
  var videoSettings: [String : AnyObject]? { get }
  @NSCopying var videoComposition: AVVideoComposition?
  var customVideoCompositor: AVVideoCompositing? { get }
}
class AVAssetReaderOutputMetadataAdaptor : Object {
  init(assetReaderTrackOutput trackOutput: AVAssetReaderTrackOutput)
  var assetReaderTrackOutput: AVAssetReaderTrackOutput { get }
  func nextTimedMetadataGroup() -> AVTimedMetadataGroup?
}
class AVAssetReaderSampleReferenceOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack)
  var track: AVAssetTrack { get }
}
class AVAssetResourceLoader : Object {
  func setDelegate(delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
}
protocol AVAssetResourceLoaderDelegate : ObjectProtocol {
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: URLAuthenticationChallenge) -> Bool
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: URLAuthenticationChallenge)
}
class AVAssetResourceLoadingRequest : Object {
  var request: URLRequest { get }
  var isFinished: Bool { get }
  var isCancelled: Bool { get }
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @NSCopying var response: URLResponse?
  @NSCopying var redirect: URLRequest?
  func finishLoading()
  func finishLoadingWithError(error: Error?)
}
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
class AVAssetResourceLoadingContentInformationRequest : Object {
  var contentType: String?
  var contentLength: Int64
  var isByteRangeAccessSupported: Bool
  @NSCopying var renewalDate: Date?
}
class AVAssetResourceLoadingDataRequest : Object {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respondWith(data: Data)
}
extension AVAssetResourceLoader {
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestDataForApp(appIdentifier: Data, contentIdentifier: Data, options: [String : AnyObject]? = [:]) throws -> Data
  func persistentContentKeyFromKeyVendorResponse(keyVendorResponse: Data, options: [String : AnyObject]? = [:], error outError: ErrorPointer) -> Data
}
let AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey: String
extension AVAssetResourceLoadingRequest {
}
class AVAssetTrack : Object, Copying, AVAsynchronousKeyValueLoading {
  weak var asset: @sil_weak AVAsset? { get }
  var trackID: CMPersistentTrackID { get }
  func copy(zone zone: Zone = nil) -> AnyObject
  func statusOfValueForKey(key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVAssetTrack {
  var mediaType: String { get }
  var formatDescriptions: [AnyObject] { get }
  var isPlayable: Bool { get }
  var isEnabled: Bool { get }
  var isSelfContained: Bool { get }
  var totalSampleDataLength: Int64 { get }
  func hasMediaCharacteristic(mediaCharacteristic: String) -> Bool
}
extension AVAssetTrack {
  var timeRange: CMTimeRange { get }
  var naturalTimeScale: CMTimeScale { get }
  var estimatedDataRate: Float { get }
}
extension AVAssetTrack {
  var languageCode: String { get }
  var extendedLanguageTag: String { get }
}
extension AVAssetTrack {
  var naturalSize: CGSize { get }
  var preferredTransform: CGAffineTransform { get }
}
extension AVAssetTrack {
  var preferredVolume: Float { get }
}
extension AVAssetTrack {
  var nominalFrameRate: Float { get }
  var minFrameDuration: CMTime { get }
  var requiresFrameReordering: Bool { get }
}
extension AVAssetTrack {
  var segments: [AVAssetTrackSegment] { get }
  func segmentForTrack(trackTime: CMTime) -> AVAssetTrackSegment?
  func samplePresentationTimeForTrack(trackTime: CMTime) -> CMTime
}
extension AVAssetTrack {
  var commonMetadata: [AVMetadataItem] { get }
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataForFormat(format: String) -> [AVMetadataItem]
}
extension AVAssetTrack {
  var availableTrackAssociationTypes: [String] { get }
  func associatedTracksOfType(trackAssociationType: String) -> [AVAssetTrack]
}
let AVTrackAssociationTypeAudioFallback: String
let AVTrackAssociationTypeChapterList: String
let AVTrackAssociationTypeForcedSubtitlesOnly: String
let AVTrackAssociationTypeSelectionFollower: String
let AVTrackAssociationTypeTimecode: String
let AVTrackAssociationTypeMetadataReferent: String
let AVAssetTrackTimeRangeDidChangeNotification: String
let AVAssetTrackSegmentsDidChangeNotification: String
let AVAssetTrackTrackAssociationsDidChangeNotification: String
class AVAssetTrackGroup : Object, Copying {
  var trackIDs: [Number] { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AVAssetTrackSegment : Object {
  var timeMapping: CMTimeMapping { get }
  var isEmpty: Bool { get }
}
enum AVAssetWriterStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Writing
  case Completed
  case Failed
  case Cancelled
}
class AVAssetWriter : Object {
  init(url outputURL: URL, fileType outputFileType: String) throws
  @NSCopying var outputURL: URL { get }
  var outputFileType: String { get }
  var availableMediaTypes: [String] { get }
  var status: AVAssetWriterStatus { get }
  var error: Error? { get }
  var metadata: [AVMetadataItem]
  var shouldOptimizeForNetworkUse: Bool
  @NSCopying var directoryForTemporaryFiles: URL?
  var inputs: [AVAssetWriterInput] { get }
  func canApplyOutputSettings(outputSettings: [String : AnyObject]?, forMediaType mediaType: String) -> Bool
  func canAddInput(input: AVAssetWriterInput) -> Bool
  func addInput(input: AVAssetWriterInput)
  func startWriting() -> Bool
  func startSessionAtSourceTime(startTime: CMTime)
  func endSessionAtSourceTime(endTime: CMTime)
  func cancelWriting()
  func finishWritingWithCompletionHandler(handler: () -> Void)
}
extension AVAssetWriter {
  var movieFragmentInterval: CMTime
  var overallDurationHint: CMTime
  var movieTimeScale: CMTimeScale
}
extension AVAssetWriter {
  func canAddInputGroup(inputGroup: AVAssetWriterInputGroup) -> Bool
  func addInputGroup(inputGroup: AVAssetWriterInputGroup)
  var inputGroups: [AVAssetWriterInputGroup] { get }
}
class AVAssetWriterInputGroup : AVMediaSelectionGroup {
  init(inputs: [AVAssetWriterInput], defaultInput: AVAssetWriterInput?)
  var inputs: [AVAssetWriterInput] { get }
  var defaultInput: AVAssetWriterInput? { get }
}
class AVAssetWriterInput : Object {
  convenience init(mediaType: String, outputSettings: [String : AnyObject]?)
  init(mediaType: String, outputSettings: [String : AnyObject]?, sourceFormatHint: CMFormatDescription?)
  var mediaType: String { get }
  var outputSettings: [String : AnyObject]? { get }
  var sourceFormatHint: CMFormatDescription? { get }
  var metadata: [AVMetadataItem]
  var isReadyForMoreMediaData: Bool { get }
  var expectsMediaDataInRealTime: Bool
  func requestMediaDataWhenReadyOn(queue: dispatch_queue_t, usingBlock block: () -> Void)
  func append(sampleBuffer: CMSampleBuffer) -> Bool
  func markAsFinished()
}
extension AVAssetWriterInput {
  var languageCode: String?
  var extendedLanguageTag: String?
}
extension AVAssetWriterInput {
  var naturalSize: CGSize
  var transform: CGAffineTransform
}
extension AVAssetWriterInput {
  var preferredVolume: Float
}
extension AVAssetWriterInput {
  var marksOutputTrackAsEnabled: Bool
  var mediaTimeScale: CMTimeScale
  var preferredMediaChunkDuration: CMTime
  var preferredMediaChunkAlignment: Int
  @NSCopying var sampleReferenceBaseURL: URL?
}
extension AVAssetWriterInput {
  func canAddTrackAssociationWithTrackOf(input: AVAssetWriterInput, type trackAssociationType: String) -> Bool
  func addTrackAssociationWithTrackOf(input: AVAssetWriterInput, type trackAssociationType: String)
}
extension AVAssetWriterInput {
  var performsMultiPassEncodingIfSupported: Bool
  var canPerformMultiplePasses: Bool { get }
  var currentPassDescription: AVAssetWriterInputPassDescription? { get }
  func respondToEachPassDescriptionOn(queue: dispatch_queue_t, usingBlock block: dispatch_block_t)
  func markCurrentPassAsFinished()
}
class AVAssetWriterInputPassDescription : Object {
  var sourceTimeRanges: [Value] { get }
}
class AVAssetWriterInputPixelBufferAdaptor : Object {
  init(assetWriterInput input: AVAssetWriterInput, sourcePixelBufferAttributes: [String : AnyObject]? = [:])
  var assetWriterInput: AVAssetWriterInput { get }
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }
  var pixelBufferPool: CVPixelBufferPool? { get }
  func append(pixelBuffer: CVPixelBuffer, withPresentationTime presentationTime: CMTime) -> Bool
}
class AVAssetWriterInputMetadataAdaptor : Object {
  init(assetWriterInput input: AVAssetWriterInput)
  var assetWriterInput: AVAssetWriterInput { get }
  func append(timedMetadataGroup: AVTimedMetadataGroup) -> Bool
}
enum AVKeyValueStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Loading
  case Loaded
  case Failed
  case Cancelled
}
protocol AVAsynchronousKeyValueLoading {
  func statusOfValueForKey(key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}
class AVAudioBuffer : Object, Copying, MutableCopying {
  var format: AVAudioFormat { get }
  var audioBufferList: UnsafePointer<AudioBufferList> { get }
  var mutableAudioBufferList: UnsafeMutablePointer<AudioBufferList> { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class AVAudioPCMBuffer : AVAudioBuffer {
  init(pcmFormat format: AVAudioFormat, frameCapacity: AVAudioFrameCount)
  var frameCapacity: AVAudioFrameCount { get }
  var frameLength: AVAudioFrameCount
  var stride: Int { get }
  var floatChannelData: UnsafePointer<UnsafeMutablePointer<Float>> { get }
  var int16ChannelData: UnsafePointer<UnsafeMutablePointer<Int16>> { get }
  var int32ChannelData: UnsafePointer<UnsafeMutablePointer<Int32>> { get }
  convenience init()
}
class AVAudioCompressedBuffer : AVAudioBuffer {
  init(format: AVAudioFormat, packetCapacity: AVAudioPacketCount, maximumPacketSize: Int)
  init(format: AVAudioFormat, packetCapacity: AVAudioPacketCount)
  var packetCapacity: AVAudioPacketCount { get }
  var packetCount: AVAudioPacketCount
  var maximumPacketSize: Int { get }
  var data: UnsafeMutablePointer<Void> { get }
  var packetDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription> { get }
  init()
}
class AVAudioChannelLayout : Object, SecureCoding {
  convenience init(layoutTag: AudioChannelLayoutTag)
  init(layout: UnsafePointer<AudioChannelLayout>)
  func isEqual(object: AnyObject) -> Bool
  var layoutTag: AudioChannelLayoutTag { get }
  var layout: UnsafePointer<AudioChannelLayout> { get }
  var channelCount: AVAudioChannelCount { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class AVAudioConnectionPoint : Object {
  init(node: AVAudioNode, bus: AVAudioNodeBus)
  weak var node: @sil_weak AVAudioNode? { get }
  var bus: AVAudioNodeBus { get }
  convenience init()
}
enum AVAudioConverterPrimeMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Pre
  case Normal
  case None
}
struct AVAudioConverterPrimeInfo {
  var leadingFrames: AVAudioFrameCount
  var trailingFrames: AVAudioFrameCount
  init()
  init(leadingFrames: AVAudioFrameCount, trailingFrames: AVAudioFrameCount)
}
enum AVAudioConverterInputStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case HaveData
  case NoDataNow
  case EndOfStream
}
enum AVAudioConverterOutputStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case HaveData
  case InputRanDry
  case EndOfStream
  case Error
}
typealias AVAudioConverterInputBlock = (AVAudioPacketCount, UnsafeMutablePointer<AVAudioConverterInputStatus>) -> AVAudioBuffer?
class AVAudioConverter : Object {
  init(from fromFormat: AVAudioFormat, to toFormat: AVAudioFormat)
  func reset()
  var inputFormat: AVAudioFormat { get }
  var outputFormat: AVAudioFormat { get }
  var channelMap: [Number]
  var magicCookie: Data?
  var downmix: Bool
  var dither: Bool
  var sampleRateConverterQuality: Int
  var sampleRateConverterAlgorithm: String
  var primeMethod: AVAudioConverterPrimeMethod
  var primeInfo: AVAudioConverterPrimeInfo
  func convertTo(outputBuffer: AVAudioPCMBuffer, from inputBuffer: AVAudioPCMBuffer) throws
  func convertTo(outputBuffer: AVAudioBuffer, error outError: ErrorPointer, withInputFrom inputBlock: AVAudioConverterInputBlock) -> AVAudioConverterOutputStatus
  init()
}
extension AVAudioConverter {
  var bitRate: Int
  var bitRateStrategy: String?
  var maximumOutputPacketSize: Int { get }
  var availableEncodeBitRates: [Number]? { get }
  var applicableEncodeBitRates: [Number]? { get }
  var availableEncodeSampleRates: [Number]? { get }
  var applicableEncodeSampleRates: [Number]? { get }
  var availableEncodeChannelLayoutTags: [Number]? { get }
}
class AVAudioEngine : Object {
  init()
  func attach(node: AVAudioNode)
  func detach(node: AVAudioNode)
  func connect(node1: AVAudioNode, to node2: AVAudioNode, fromBus bus1: AVAudioNodeBus, toBus bus2: AVAudioNodeBus, format: AVAudioFormat?)
  func connect(node1: AVAudioNode, to node2: AVAudioNode, format: AVAudioFormat?)
  func connect(sourceNode: AVAudioNode, to destNodes: [AVAudioConnectionPoint], fromBus sourceBus: AVAudioNodeBus, format: AVAudioFormat?)
  func disconnectNodeInput(node: AVAudioNode, bus: AVAudioNodeBus)
  func disconnectNodeInput(node: AVAudioNode)
  func disconnectNodeOutput(node: AVAudioNode, bus: AVAudioNodeBus)
  func disconnectNodeOutput(node: AVAudioNode)
  func prepare()
  func start() throws
  func pause()
  func reset()
  func stop()
  func inputConnectionPointFor(node: AVAudioNode, inputBus bus: AVAudioNodeBus) -> AVAudioConnectionPoint?
  func outputConnectionPointsFor(node: AVAudioNode, outputBus bus: AVAudioNodeBus) -> [AVAudioConnectionPoint]
  var musicSequence: MusicSequence
  var outputNode: AVAudioOutputNode { get }
  var inputNode: AVAudioInputNode? { get }
  var mainMixerNode: AVAudioMixerNode { get }
  var isRunning: Bool { get }
}
let AVAudioEngineConfigurationChangeNotification: String
enum AVAudioEnvironmentDistanceAttenuationModel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Exponential
  case Inverse
  case Linear
}
class AVAudioEnvironmentDistanceAttenuationParameters : Object {
  var distanceAttenuationModel: AVAudioEnvironmentDistanceAttenuationModel
  var referenceDistance: Float
  var maximumDistance: Float
  var rolloffFactor: Float
  init()
}
class AVAudioEnvironmentReverbParameters : Object {
  var enable: Bool
  var level: Float
  var filterParameters: AVAudioUnitEQFilterParameters { get }
  func loadFactoryReverbPreset(preset: AVAudioUnitReverbPreset)
  init()
}
class AVAudioEnvironmentNode : AVAudioNode, AVAudioMixing {
  var outputVolume: Float
  var nextAvailableInputBus: AVAudioNodeBus { get }
  var listenerPosition: AVAudio3DPoint
  var listenerVectorOrientation: AVAudio3DVectorOrientation
  var listenerAngularOrientation: AVAudio3DAngularOrientation
  var distanceAttenuationParameters: AVAudioEnvironmentDistanceAttenuationParameters { get }
  var reverbParameters: AVAudioEnvironmentReverbParameters { get }
  var applicableRenderingAlgorithms: [Number] { get }
  init()
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float
  var pan: Float
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  var rate: Float
  var reverbBlend: Float
  var obstruction: Float
  var occlusion: Float
  var position: AVAudio3DPoint
}
class AVAudioFile : Object {
  init(forReading fileURL: URL) throws
  init(forReading fileURL: URL, commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws
  init(forWriting fileURL: URL, settings: [String : AnyObject]) throws
  init(forWriting fileURL: URL, settings: [String : AnyObject], commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws
  func readInto(buffer: AVAudioPCMBuffer) throws
  func readInto(buffer: AVAudioPCMBuffer, frameCount frames: AVAudioFrameCount) throws
  func writeFrom(buffer: AVAudioPCMBuffer) throws
  var url: URL { get }
  var fileFormat: AVAudioFormat { get }
  var processingFormat: AVAudioFormat { get }
  var length: AVAudioFramePosition { get }
  var framePosition: AVAudioFramePosition
  init()
}
enum AVAudioCommonFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OtherFormat
  case PCMFormatFloat32
  case PCMFormatFloat64
  case PCMFormatInt16
  case PCMFormatInt32
}
class AVAudioFormat : Object, SecureCoding {
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>)
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>, channelLayout layout: AVAudioChannelLayout?)
  init(standardFormatWithSampleRate sampleRate: Double, channels: AVAudioChannelCount)
  init(standardFormatWithSampleRate sampleRate: Double, channelLayout layout: AVAudioChannelLayout)
  init(commonFormat format: AVAudioCommonFormat, sampleRate: Double, channels: AVAudioChannelCount, interleaved: Bool)
  init(commonFormat format: AVAudioCommonFormat, sampleRate: Double, interleaved: Bool, channelLayout layout: AVAudioChannelLayout)
  init(settings: [String : AnyObject])
  init(cmAudioFormatDescription formatDescription: CMAudioFormatDescription)
  func isEqual(object: AnyObject) -> Bool
  var isStandard: Bool { get }
  var commonFormat: AVAudioCommonFormat { get }
  var channelCount: AVAudioChannelCount { get }
  var sampleRate: Double { get }
  var isInterleaved: Bool { get }
  var streamDescription: UnsafePointer<AudioStreamBasicDescription> { get }
  var channelLayout: AVAudioChannelLayout? { get }
  var settings: [String : AnyObject] { get }
  var formatDescription: CMAudioFormatDescription { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class AVAudioIONode : AVAudioNode {
  var presentationLatency: TimeInterval { get }
  var audioUnit: AudioUnit { get }
  init()
}
class AVAudioInputNode : AVAudioIONode, AVAudioMixing {
  init()
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float
  var pan: Float
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  var rate: Float
  var reverbBlend: Float
  var obstruction: Float
  var occlusion: Float
  var position: AVAudio3DPoint
}
class AVAudioOutputNode : AVAudioIONode {
  init()
}
class AVAudioMix : Object, Copying, MutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class AVMutableAudioMix : AVAudioMix {
  var inputParameters: [AVAudioMixInputParameters]
  init()
}
class AVAudioMixInputParameters : Object, Copying, MutableCopying {
  var trackID: CMPersistentTrackID { get }
  var audioTimePitchAlgorithm: String? { get }
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRampFor(time: CMTime, startVolume: UnsafeMutablePointer<Float>, endVolume: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track: AVAssetTrack?)
  var trackID: CMPersistentTrackID
  var audioTimePitchAlgorithm: String?
  var audioTapProcessor: MTAudioProcessingTap?
  func setVolumeRampFromStartVolume(startVolume: Float, toEndVolume endVolume: Float, timeRange: CMTimeRange)
  func setVolume(volume: Float, at time: CMTime)
  init()
}
class AVAudioMixerNode : AVAudioNode, AVAudioMixing {
  var outputVolume: Float
  var nextAvailableInputBus: AVAudioNodeBus { get }
  init()
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float
  var pan: Float
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  var rate: Float
  var reverbBlend: Float
  var obstruction: Float
  var occlusion: Float
  var position: AVAudio3DPoint
}
protocol AVAudioMixing : AVAudioStereoMixing, AVAudio3DMixing {
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float { get set }
}
protocol AVAudioStereoMixing : ObjectProtocol {
  var pan: Float { get set }
}
enum AVAudio3DMixingRenderingAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EqualPowerPanning
  case SphericalHead
  case HRTF
  case SoundField
  case StereoPassThrough
}
protocol AVAudio3DMixing : ObjectProtocol {
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm { get set }
  var rate: Float { get set }
  var reverbBlend: Float { get set }
  var obstruction: Float { get set }
  var occlusion: Float { get set }
  var position: AVAudio3DPoint { get set }
}
class AVAudioMixingDestination : Object, AVAudioMixing {
  var connectionPoint: AVAudioConnectionPoint { get }
  init()
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float
  var pan: Float
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  var rate: Float
  var reverbBlend: Float
  var obstruction: Float
  var occlusion: Float
  var position: AVAudio3DPoint
}
typealias AVAudioNodeTapBlock = (AVAudioPCMBuffer, AVAudioTime) -> Void
class AVAudioNode : Object {
  func reset()
  func inputFormatForBus(bus: AVAudioNodeBus) -> AVAudioFormat
  func outputFormatForBus(bus: AVAudioNodeBus) -> AVAudioFormat
  func nameForInputBus(bus: AVAudioNodeBus) -> String
  func nameForOutputBus(bus: AVAudioNodeBus) -> String
  func installTapOnBus(bus: AVAudioNodeBus, bufferSize: AVAudioFrameCount, format: AVAudioFormat?, block tapBlock: AVAudioNodeTapBlock)
  func removeTapOnBus(bus: AVAudioNodeBus)
  var engine: AVAudioEngine? { get }
  var numberOfInputs: Int { get }
  var numberOfOutputs: Int { get }
  var lastRenderTime: AVAudioTime? { get }
  init()
}
class AVAudioPlayer : Object {
  init(contentsOf url: URL) throws
  init(data: Data) throws
  init(contentsOf url: URL, fileTypeHint utiString: String?) throws
  init(data: Data, fileTypeHint utiString: String?) throws
  func prepareToPlay() -> Bool
  func play() -> Bool
  func playAtTime(time: TimeInterval) -> Bool
  func pause()
  func stop()
  var isPlaying: Bool { get }
  var numberOfChannels: Int { get }
  var duration: TimeInterval { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioPlayerDelegate?
  var url: URL? { get }
  var data: Data? { get }
  var pan: Float
  var volume: Float
  var enableRate: Bool
  var rate: Float
  var currentTime: TimeInterval
  var deviceCurrentTime: TimeInterval { get }
  var numberOfLoops: Int
  var settings: [String : AnyObject] { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPowerForChannel(channelNumber: Int) -> Float
  func averagePowerForChannel(channelNumber: Int) -> Float
  var channelAssignments: [Number]?
  init()
}
protocol AVAudioPlayerDelegate : ObjectProtocol {
  optional func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool)
  optional func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: Error?)
  optional func audioPlayerBeginInterruption(player: AVAudioPlayer)
  optional func audioPlayerEndInterruption(player: AVAudioPlayer, withOptions flags: Int)
}
struct AVAudioPlayerNodeBufferOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Loops: AVAudioPlayerNodeBufferOptions { get }
  static var Interrupts: AVAudioPlayerNodeBufferOptions { get }
  static var InterruptsAtLoop: AVAudioPlayerNodeBufferOptions { get }
}
class AVAudioPlayerNode : AVAudioNode, AVAudioMixing {
  func scheduleBuffer(buffer: AVAudioPCMBuffer, completionHandler: AVAudioNodeCompletionHandler? = nil)
  func scheduleBuffer(buffer: AVAudioPCMBuffer, at when: AVAudioTime?, options: AVAudioPlayerNodeBufferOptions = [], completionHandler: AVAudioNodeCompletionHandler? = nil)
  func scheduleFile(file: AVAudioFile, at when: AVAudioTime?, completionHandler: AVAudioNodeCompletionHandler? = nil)
  func scheduleSegment(file: AVAudioFile, startingFrame startFrame: AVAudioFramePosition, frameCount numberFrames: AVAudioFrameCount, at when: AVAudioTime?, completionHandler: AVAudioNodeCompletionHandler? = nil)
  func stop()
  func prepareWithFrameCount(frameCount: AVAudioFrameCount)
  func play()
  func playAt(when: AVAudioTime?)
  func pause()
  func nodeTimeForPlayerTime(playerTime: AVAudioTime) -> AVAudioTime?
  func playerTimeForNodeTime(nodeTime: AVAudioTime) -> AVAudioTime?
  var isPlaying: Bool { get }
  init()
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float
  var pan: Float
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  var rate: Float
  var reverbBlend: Float
  var obstruction: Float
  var occlusion: Float
  var position: AVAudio3DPoint
}
let AVAudioTimePitchAlgorithmLowQualityZeroLatency: String
let AVAudioTimePitchAlgorithmTimeDomain: String
let AVAudioTimePitchAlgorithmSpectral: String
let AVAudioTimePitchAlgorithmVarispeed: String
class AVAudioRecorder : Object {
  init(url: URL, settings: [String : AnyObject]) throws
  func prepareToRecord() -> Bool
  func record() -> Bool
  func recordAtTime(time: TimeInterval) -> Bool
  func recordForDuration(duration: TimeInterval) -> Bool
  func recordAtTime(time: TimeInterval, forDuration duration: TimeInterval) -> Bool
  func pause()
  func stop()
  func deleteRecording() -> Bool
  var isRecording: Bool { get }
  var url: URL { get }
  var settings: [String : AnyObject] { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioRecorderDelegate?
  var currentTime: TimeInterval { get }
  var deviceCurrentTime: TimeInterval { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPowerForChannel(channelNumber: Int) -> Float
  func averagePowerForChannel(channelNumber: Int) -> Float
  var channelAssignments: [Number]?
  init()
}
protocol AVAudioRecorderDelegate : ObjectProtocol {
  optional func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool)
  optional func audioRecorderEncodeErrorDidOccur(recorder: AVAudioRecorder, error: Error?)
  optional func audioRecorderBeginInterruption(recorder: AVAudioRecorder)
  optional func audioRecorderEndInterruption(recorder: AVAudioRecorder, withOptions flags: Int)
}
typealias AVMusicTimeStamp = Float64
struct AVMusicSequenceLoadOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SMF_PreserveTracks: AVMusicSequenceLoadOptions { get }
  static var SMF_ChannelsToTracks: AVMusicSequenceLoadOptions { get }
}
struct _AVBeatRange {
  var start: AVMusicTimeStamp
  var length: AVMusicTimeStamp
  init()
  init(start: AVMusicTimeStamp, length: AVMusicTimeStamp)
}
typealias AVBeatRange = _AVBeatRange
func AVMakeBeatRange(startBeat: AVMusicTimeStamp, _ lengthInBeats: AVMusicTimeStamp) -> AVBeatRange
class AVAudioSequencer : Object {
  init()
  init(audioEngine engine: AVAudioEngine)
  func loadFrom(fileURL: URL, options: AVMusicSequenceLoadOptions = []) throws
  func loadFrom(data: Data, options: AVMusicSequenceLoadOptions = []) throws
  func writeTo(fileURL: URL, smpteResolution resolution: Int, replaceExisting replace: Bool) throws
  func dataWithSMPTEResolution(SMPTEResolution: Int, error outError: ErrorPointer) -> Data
  func secondsForBeats(beats: AVMusicTimeStamp) -> TimeInterval
  func beatsForSeconds(seconds: TimeInterval) -> AVMusicTimeStamp
  var tracks: [AVMusicTrack] { get }
  var tempoTrack: AVMusicTrack { get }
  var userInfo: [String : AnyObject] { get }
}
extension AVAudioSequencer {
  var currentPositionInSeconds: TimeInterval
  var currentPositionInBeats: TimeInterval
  var isPlaying: Bool { get }
  var rate: Float
  func hostTimeForBeats(inBeats: AVMusicTimeStamp, error outError: ErrorPointer) -> UInt64
  func beatsForHostTime(inHostTime: UInt64, error outError: ErrorPointer) -> AVMusicTimeStamp
  func prepareToPlay()
  func start() throws
  func stop()
}
class AVMusicTrack : Object {
  var destinationAudioUnit: AVAudioUnit?
  var destinationMIDIEndpoint: MIDIEndpointRef
  var loopRange: AVBeatRange
  var isLoopingEnabled: Bool
  var numberOfLoops: Int
  var offsetTime: AVMusicTimeStamp
  var isMuted: Bool
  var isSoloed: Bool
  var lengthInBeats: AVMusicTimeStamp
  var lengthInSeconds: TimeInterval
  var timeResolution: Int { get }
  init()
}
enum AVMusicTrackLoopCount : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forever
}
struct AVAudioSessionInterruptionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ShouldResume: AVAudioSessionInterruptionOptions { get }
}
struct AVAudioSessionSetActiveOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NotifyOthersOnDeactivation: AVAudioSessionSetActiveOptions { get }
}
enum AVAudioSessionPortOverride : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Speaker
}
enum AVAudioSessionRouteChangeReason : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case NewDeviceAvailable
  case OldDeviceUnavailable
  case CategoryChange
  case Override
  case WakeFromSleep
  case NoSuitableRouteForCategory
  case RouteConfigurationChange
}
struct AVAudioSessionCategoryOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MixWithOthers: AVAudioSessionCategoryOptions { get }
  static var DuckOthers: AVAudioSessionCategoryOptions { get }
  static var AllowBluetooth: AVAudioSessionCategoryOptions { get }
  static var DefaultToSpeaker: AVAudioSessionCategoryOptions { get }
  static var InterruptSpokenAudioAndMixWithOthers: AVAudioSessionCategoryOptions { get }
}
enum AVAudioSessionInterruptionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Began
  case Ended
}
enum AVAudioSessionSilenceSecondaryAudioHintType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Begin
  case End
}
struct AVAudioSessionRecordPermission : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Undetermined: AVAudioSessionRecordPermission { get }
  static var Denied: AVAudioSessionRecordPermission { get }
  static var Granted: AVAudioSessionRecordPermission { get }
}
enum AVAudioSessionErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CodeNone
  case CodeMediaServicesFailed
  case CodeIsBusy
  case CodeIncompatibleCategory
  case CodeCannotInterruptOthers
  case CodeMissingEntitlement
  case CodeSiriIsRecording
  case CodeCannotStartPlaying
  case CodeCannotStartRecording
  case CodeBadParam
  case InsufficientPriority
  case CodeResourceNotAvailable
  case CodeUnspecified
}
class AVAudioSession : Object {
  class func sharedInstance() -> AVAudioSession
  func setActive(active: Bool) throws
  func setActive(active: Bool, withOptions options: AVAudioSessionSetActiveOptions = []) throws
  var availableCategories: [String] { get }
  func setCategory(category: String) throws
  func setCategory(category: String, withOptions options: AVAudioSessionCategoryOptions = []) throws
  var category: String { get }
  func recordPermission() -> AVAudioSessionRecordPermission
  func requestRecordPermission(response: PermissionBlock)
  var categoryOptions: AVAudioSessionCategoryOptions { get }
  var availableModes: [String] { get }
  func setMode(mode: String) throws
  var mode: String { get }
  func overrideOutputAudioPort(portOverride: AVAudioSessionPortOverride) throws
  var isOtherAudioPlaying: Bool { get }
  var secondaryAudioShouldBeSilencedHint: Bool { get }
  var currentRoute: AVAudioSessionRouteDescription { get }
  func setPreferredInput(inPort: AVAudioSessionPortDescription?) throws
  var preferredInput: AVAudioSessionPortDescription? { get }
  var availableInputs: [AVAudioSessionPortDescription]? { get }
  init()
}
typealias PermissionBlock = (Bool) -> Void
extension AVAudioSession {
  func setPreferredSampleRate(sampleRate: Double) throws
  var preferredSampleRate: Double { get }
  func setPreferredIOBufferDuration(duration: TimeInterval) throws
  var preferredIOBufferDuration: TimeInterval { get }
  func setPreferredInputNumberOfChannels(count: Int) throws
  var preferredInputNumberOfChannels: Int { get }
  func setPreferredOutputNumberOfChannels(count: Int) throws
  var preferredOutputNumberOfChannels: Int { get }
  var maximumInputNumberOfChannels: Int { get }
  var maximumOutputNumberOfChannels: Int { get }
  func setInputGain(gain: Float) throws
  var inputGain: Float { get }
  var isInputGainSettable: Bool { get }
  var isInputAvailable: Bool { get }
  var inputDataSources: [AVAudioSessionDataSourceDescription]? { get }
  var inputDataSource: AVAudioSessionDataSourceDescription? { get }
  func setInputDataSource(dataSource: AVAudioSessionDataSourceDescription?) throws
  var outputDataSources: [AVAudioSessionDataSourceDescription]? { get }
  var outputDataSource: AVAudioSessionDataSourceDescription? { get }
  func setOutputDataSource(dataSource: AVAudioSessionDataSourceDescription?) throws
  var sampleRate: Double { get }
  var inputNumberOfChannels: Int { get }
  var outputNumberOfChannels: Int { get }
  var outputVolume: Float { get }
  var inputLatency: TimeInterval { get }
  var outputLatency: TimeInterval { get }
  var ioBufferDuration: TimeInterval { get }
}
extension AVAudioSession {
}
let AVAudioSessionInterruptionNotification: String
let AVAudioSessionRouteChangeNotification: String
let AVAudioSessionMediaServicesWereLostNotification: String
let AVAudioSessionMediaServicesWereResetNotification: String
let AVAudioSessionSilenceSecondaryAudioHintNotification: String
let AVAudioSessionInterruptionTypeKey: String
let AVAudioSessionInterruptionOptionKey: String
let AVAudioSessionRouteChangeReasonKey: String
let AVAudioSessionRouteChangePreviousRouteKey: String
let AVAudioSessionSilenceSecondaryAudioHintTypeKey: String
let AVAudioSessionCategoryAmbient: String
let AVAudioSessionCategorySoloAmbient: String
let AVAudioSessionCategoryPlayback: String
let AVAudioSessionCategoryRecord: String
let AVAudioSessionCategoryPlayAndRecord: String
let AVAudioSessionCategoryAudioProcessing: String
let AVAudioSessionCategoryMultiRoute: String
let AVAudioSessionModeDefault: String
let AVAudioSessionModeVoiceChat: String
let AVAudioSessionModeGameChat: String
let AVAudioSessionModeVideoRecording: String
let AVAudioSessionModeMeasurement: String
let AVAudioSessionModeMoviePlayback: String
let AVAudioSessionModeVideoChat: String
let AVAudioSessionModeSpokenAudio: String
let AVAudioSessionPortLineIn: String
let AVAudioSessionPortBuiltInMic: String
let AVAudioSessionPortHeadsetMic: String
let AVAudioSessionPortLineOut: String
let AVAudioSessionPortHeadphones: String
let AVAudioSessionPortBluetoothA2DP: String
let AVAudioSessionPortBuiltInReceiver: String
let AVAudioSessionPortBuiltInSpeaker: String
let AVAudioSessionPortHDMI: String
let AVAudioSessionPortAirPlay: String
let AVAudioSessionPortBluetoothLE: String
let AVAudioSessionPortBluetoothHFP: String
let AVAudioSessionPortUSBAudio: String
let AVAudioSessionPortCarAudio: String
let AVAudioSessionLocationUpper: String
let AVAudioSessionLocationLower: String
let AVAudioSessionOrientationTop: String
let AVAudioSessionOrientationBottom: String
let AVAudioSessionOrientationFront: String
let AVAudioSessionOrientationBack: String
let AVAudioSessionOrientationLeft: String
let AVAudioSessionOrientationRight: String
let AVAudioSessionPolarPatternOmnidirectional: String
let AVAudioSessionPolarPatternCardioid: String
let AVAudioSessionPolarPatternSubcardioid: String
class AVAudioSessionChannelDescription : Object {
  var channelName: String { get }
  var owningPortUID: String { get }
  var channelNumber: Int { get }
  var channelLabel: AudioChannelLabel { get }
  init()
}
class AVAudioSessionPortDescription : Object {
  var portType: String { get }
  var portName: String { get }
  var uid: String { get }
  var channels: [AVAudioSessionChannelDescription]? { get }
  var dataSources: [AVAudioSessionDataSourceDescription]? { get }
  var selectedDataSource: AVAudioSessionDataSourceDescription? { get }
  var preferredDataSource: AVAudioSessionDataSourceDescription? { get }
  func setPreferredDataSource(dataSource: AVAudioSessionDataSourceDescription?) throws
  init()
}
class AVAudioSessionRouteDescription : Object {
  var inputs: [AVAudioSessionPortDescription] { get }
  var outputs: [AVAudioSessionPortDescription] { get }
  init()
}
class AVAudioSessionDataSourceDescription : Object {
  var dataSourceID: Number { get }
  var dataSourceName: String { get }
  var location: String? { get }
  var orientation: String? { get }
  var supportedPolarPatterns: [String]? { get }
  var selectedPolarPattern: String? { get }
  var preferredPolarPattern: String? { get }
  func setPreferredPolarPattern(pattern: String?) throws
  init()
}
protocol AVAudioSessionDelegate : ObjectProtocol {
  optional func beginInterruption()
  optional func endInterruptionWithFlags(flags: Int)
  optional func endInterruption()
  optional func inputIsAvailableChanged(isInputAvailable: Bool)
}
var AVAudioSessionInterruptionFlags_ShouldResume: Int { get }
var AVAudioSessionSetActiveFlags_NotifyOthersOnDeactivation: Int { get }
let AVFormatIDKey: String
let AVSampleRateKey: String
let AVNumberOfChannelsKey: String
let AVLinearPCMBitDepthKey: String
let AVLinearPCMIsBigEndianKey: String
let AVLinearPCMIsFloatKey: String
let AVLinearPCMIsNonInterleaved: String
let AVEncoderAudioQualityKey: String
let AVEncoderAudioQualityForVBRKey: String
let AVEncoderBitRateKey: String
let AVEncoderBitRatePerChannelKey: String
let AVEncoderBitRateStrategyKey: String
let AVEncoderBitDepthHintKey: String
let AVSampleRateConverterAlgorithmKey: String
let AVSampleRateConverterAudioQualityKey: String
let AVChannelLayoutKey: String
let AVAudioBitRateStrategy_Constant: String
let AVAudioBitRateStrategy_LongTermAverage: String
let AVAudioBitRateStrategy_VariableConstrained: String
let AVAudioBitRateStrategy_Variable: String
let AVSampleRateConverterAlgorithm_Normal: String
let AVSampleRateConverterAlgorithm_Mastering: String
enum AVAudioQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Min
  case Low
  case Medium
  case High
  case Max
}
class AVAudioTime : Object {
  init(audioTimeStamp ts: UnsafePointer<AudioTimeStamp>, sampleRate: Double)
  init(hostTime: UInt64)
  init(sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  init(hostTime: UInt64, sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  class func hostTimeForSeconds(seconds: TimeInterval) -> UInt64
  class func secondsForHostTime(hostTime: UInt64) -> TimeInterval
  func extrapolateTimeFromAnchor(anchorTime: AVAudioTime) -> AVAudioTime
  var isHostTimeValid: Bool { get }
  var hostTime: UInt64 { get }
  var isSampleTimeValid: Bool { get }
  var sampleTime: AVAudioFramePosition { get }
  var sampleRate: Double { get }
  var audioTimeStamp: AudioTimeStamp { get }
  init()
}
typealias AVAudioFramePosition = Int64
typealias AVAudioFrameCount = UInt32
typealias AVAudioPacketCount = UInt32
typealias AVAudioChannelCount = UInt32
typealias AVAudioNodeCompletionHandler = () -> Void
typealias AVAudioNodeBus = Int
struct AVAudio3DPoint {
  var x: Float
  var y: Float
  var z: Float
  init()
  init(x: Float, y: Float, z: Float)
}
func AVAudioMake3DPoint(x: Float, _ y: Float, _ z: Float) -> AVAudio3DPoint
typealias AVAudio3DVector = AVAudio3DPoint
func AVAudioMake3DVector(x: Float, _ y: Float, _ z: Float) -> AVAudio3DVector
struct AVAudio3DVectorOrientation {
  var forward: AVAudio3DVector
  var up: AVAudio3DVector
  init()
  init(forward: AVAudio3DVector, up: AVAudio3DVector)
}
func AVAudioMake3DVectorOrientation(forward: AVAudio3DVector, _ up: AVAudio3DVector) -> AVAudio3DVectorOrientation
struct AVAudio3DAngularOrientation {
  var yaw: Float
  var pitch: Float
  var roll: Float
  init()
  init(yaw: Float, pitch: Float, roll: Float)
}
func AVAudioMake3DAngularOrientation(yaw: Float, _ pitch: Float, _ roll: Float) -> AVAudio3DAngularOrientation
class AVAudioUnit : AVAudioNode {
  class func instantiateWith(audioComponentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = [], completionHandler: (AVAudioUnit?, Error?) -> Void)
  func loadPresetAt(url: URL) throws
  var audioComponentDescription: AudioComponentDescription { get }
  var audioUnit: AudioUnit { get }
  var auAudioUnit: AUAudioUnit { get }
  var name: String { get }
  var manufacturerName: String { get }
  var version: Int { get }
  init()
}
let AVAudioUnitTypeOutput: String
let AVAudioUnitTypeMusicDevice: String
let AVAudioUnitTypeMusicEffect: String
let AVAudioUnitTypeFormatConverter: String
let AVAudioUnitTypeEffect: String
let AVAudioUnitTypeMixer: String
let AVAudioUnitTypePanner: String
let AVAudioUnitTypeGenerator: String
let AVAudioUnitTypeOfflineEffect: String
let AVAudioUnitTypeMIDIProcessor: String
let AVAudioUnitManufacturerNameApple: String
class AVAudioUnitComponent : Object {
  var name: String { get }
  var typeName: String { get }
  var localizedTypeName: String { get }
  var manufacturerName: String { get }
  var version: Int { get }
  var versionString: String { get }
  var isSandboxSafe: Bool { get }
  var hasMIDIInput: Bool { get }
  var hasMIDIOutput: Bool { get }
  var audioComponent: AudioComponent { get }
  var allTagNames: [String] { get }
  var audioComponentDescription: AudioComponentDescription { get }
  init()
}
let AVAudioUnitComponentTagsDidChangeNotification: String
class AVAudioUnitComponentManager : Object {
  var tagNames: [String] { get }
  var standardLocalizedTagNames: [String] { get }
  class func shared() -> Self
  func componentsMatching(predicate: Predicate) -> [AVAudioUnitComponent]
  func componentsPassingTest(testHandler: (AVAudioUnitComponent, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [AVAudioUnitComponent]
  func componentsMatching(desc: AudioComponentDescription) -> [AVAudioUnitComponent]
  init()
}
class AVAudioUnitDelay : AVAudioUnitEffect {
  var delayTime: TimeInterval
  var feedback: Float
  var lowPassCutoff: Float
  var wetDryMix: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
enum AVAudioUnitDistortionPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DrumsBitBrush
  case DrumsBufferBeats
  case DrumsLoFi
  case MultiBrokenSpeaker
  case MultiCellphoneConcert
  case MultiDecimated1
  case MultiDecimated2
  case MultiDecimated3
  case MultiDecimated4
  case MultiDistortedFunk
  case MultiDistortedCubed
  case MultiDistortedSquared
  case MultiEcho1
  case MultiEcho2
  case MultiEchoTight1
  case MultiEchoTight2
  case MultiEverythingIsBroken
  case SpeechAlienChatter
  case SpeechCosmicInterference
  case SpeechGoldenPi
  case SpeechRadioTower
  case SpeechWaves
}
class AVAudioUnitDistortion : AVAudioUnitEffect {
  func loadFactoryPreset(preset: AVAudioUnitDistortionPreset)
  var preGain: Float
  var wetDryMix: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
enum AVAudioUnitEQFilterType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Parametric
  case LowPass
  case HighPass
  case ResonantLowPass
  case ResonantHighPass
  case BandPass
  case BandStop
  case LowShelf
  case HighShelf
  case ResonantLowShelf
  case ResonantHighShelf
}
class AVAudioUnitEQFilterParameters : Object {
  var filterType: AVAudioUnitEQFilterType
  var frequency: Float
  var bandwidth: Float
  var gain: Float
  var bypass: Bool
  init()
}
class AVAudioUnitEQ : AVAudioUnitEffect {
  init(numberOfBands: Int)
  var bands: [AVAudioUnitEQFilterParameters] { get }
  var globalGain: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
class AVAudioUnitEffect : AVAudioUnit {
  init(audioComponentDescription: AudioComponentDescription)
  var bypass: Bool
  init()
}
class AVAudioUnitGenerator : AVAudioUnit, AVAudioMixing {
  init(audioComponentDescription: AudioComponentDescription)
  var bypass: Bool
  init()
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float
  var pan: Float
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  var rate: Float
  var reverbBlend: Float
  var obstruction: Float
  var occlusion: Float
  var position: AVAudio3DPoint
}
class AVAudioUnitMIDIInstrument : AVAudioUnit, AVAudioMixing {
  init(audioComponentDescription description: AudioComponentDescription)
  func startNote(note: UInt8, withVelocity velocity: UInt8, onChannel channel: UInt8)
  func stopNote(note: UInt8, onChannel channel: UInt8)
  func sendController(controller: UInt8, withValue value: UInt8, onChannel channel: UInt8)
  func sendPitchBend(pitchbend: UInt16, onChannel channel: UInt8)
  func sendPressure(pressure: UInt8, onChannel channel: UInt8)
  func sendPressureForKey(key: UInt8, withValue value: UInt8, onChannel channel: UInt8)
  func sendProgramChange(program: UInt8, onChannel channel: UInt8)
  func sendProgramChange(program: UInt8, bankMSB: UInt8, bankLSB: UInt8, onChannel channel: UInt8)
  func sendMIDIEvent(midiStatus: UInt8, data1: UInt8, data2: UInt8)
  func sendMIDIEvent(midiStatus: UInt8, data1: UInt8)
  func sendMIDISysExEvent(midiData: Data)
  init()
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float
  var pan: Float
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  var rate: Float
  var reverbBlend: Float
  var obstruction: Float
  var occlusion: Float
  var position: AVAudio3DPoint
}
enum AVAudioUnitReverbPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SmallRoom
  case MediumRoom
  case LargeRoom
  case MediumHall
  case LargeHall
  case Plate
  case MediumChamber
  case LargeChamber
  case Cathedral
  case LargeRoom2
  case MediumHall2
  case MediumHall3
  case LargeHall2
}
class AVAudioUnitReverb : AVAudioUnitEffect {
  func loadFactoryPreset(preset: AVAudioUnitReverbPreset)
  var wetDryMix: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
class AVAudioUnitSampler : AVAudioUnitMIDIInstrument {
  func loadSoundBankInstrumentAt(bankURL: URL, program: UInt8, bankMSB: UInt8, bankLSB: UInt8) throws
  func loadInstrumentAt(instrumentURL: URL) throws
  func loadAudioFilesAtURLs(audioFiles: [URL]) throws
  var stereoPan: Float
  var masterGain: Float
  var globalTuning: Float
  init(audioComponentDescription description: AudioComponentDescription)
  init()
}
class AVAudioUnitTimeEffect : AVAudioUnit {
  init(audioComponentDescription: AudioComponentDescription)
  var bypass: Bool
  init()
}
class AVAudioUnitTimePitch : AVAudioUnitTimeEffect {
  var rate: Float
  var pitch: Float
  var overlap: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
class AVAudioUnitVarispeed : AVAudioUnitTimeEffect {
  var rate: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
let AVCaptureDeviceWasConnectedNotification: String
let AVCaptureDeviceWasDisconnectedNotification: String
let AVCaptureDeviceSubjectAreaDidChangeNotification: String
class AVCaptureDevice : Object {
  class func devices() -> [AnyObject]!
  class func devicesWithMediaType(mediaType: String!) -> [AnyObject]!
  class func defaultDeviceWithMediaType(mediaType: String!) -> AVCaptureDevice!
   init!(uniqueID deviceUniqueID: String!)
  var uniqueID: String! { get }
  var modelID: String! { get }
  var localizedName: String! { get }
  func hasMediaType(mediaType: String!) -> Bool
  func lockForConfiguration() throws
  func unlockForConfiguration()
  func supportsAVCaptureSessionPreset(preset: String!) -> Bool
  var isConnected: Bool { get }
  var formats: [AnyObject]! { get }
  var activeFormat: AVCaptureDeviceFormat!
  var activeVideoMinFrameDuration: CMTime
  var activeVideoMaxFrameDuration: CMTime
  init()
}
enum AVCaptureDevicePosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Back
  case Front
}
extension AVCaptureDevice {
  var position: AVCaptureDevicePosition { get }
}
enum AVCaptureFlashMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case On
  case Auto
}
extension AVCaptureDevice {
  var hasFlash: Bool { get }
  var isFlashAvailable: Bool { get }
  var isFlashActive: Bool { get }
  func isFlashModeSupported(flashMode: AVCaptureFlashMode) -> Bool
  var flashMode: AVCaptureFlashMode
}
enum AVCaptureTorchMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case On
  case Auto
}
let AVCaptureMaxAvailableTorchLevel: Float
extension AVCaptureDevice {
  var hasTorch: Bool { get }
  var isTorchAvailable: Bool { get }
  var isTorchActive: Bool { get }
  var torchLevel: Float { get }
  func isTorchModeSupported(torchMode: AVCaptureTorchMode) -> Bool
  var torchMode: AVCaptureTorchMode
  func setTorchModeOnWithLevel(torchLevel: Float) throws
}
enum AVCaptureFocusMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoFocus
  case ContinuousAutoFocus
}
enum AVCaptureAutoFocusRangeRestriction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Near
  case Far
}
extension AVCaptureDevice {
  func isFocusModeSupported(focusMode: AVCaptureFocusMode) -> Bool
  var focusMode: AVCaptureFocusMode
  var isFocusPointOfInterestSupported: Bool { get }
  var focusPointOfInterest: CGPoint
  var isAdjustingFocus: Bool { get }
  var isAutoFocusRangeRestrictionSupported: Bool { get }
  var autoFocusRangeRestriction: AVCaptureAutoFocusRangeRestriction
  var isSmoothAutoFocusSupported: Bool { get }
  var isSmoothAutoFocusEnabled: Bool
  var lensPosition: Float { get }
  func setFocusModeLockedWithLensPosition(lensPosition: Float, completionHandler handler: ((CMTime) -> Void)!)
}
let AVCaptureLensPositionCurrent: Float
enum AVCaptureExposureMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoExpose
  case ContinuousAutoExposure
  case Custom
}
extension AVCaptureDevice {
  func isExposureModeSupported(exposureMode: AVCaptureExposureMode) -> Bool
  var exposureMode: AVCaptureExposureMode
  var isExposurePointOfInterestSupported: Bool { get }
  var exposurePointOfInterest: CGPoint
  var isAdjustingExposure: Bool { get }
  var lensAperture: Float { get }
  var exposureDuration: CMTime { get }
  var iso: Float { get }
  func setExposureModeCustomWithDuration(duration: CMTime, iso ISO: Float, completionHandler handler: ((CMTime) -> Void)!)
  var exposureTargetOffset: Float { get }
  var exposureTargetBias: Float { get }
  var minExposureTargetBias: Float { get }
  var maxExposureTargetBias: Float { get }
  func setExposureTargetBias(bias: Float, completionHandler handler: ((CMTime) -> Void)!)
}
let AVCaptureExposureDurationCurrent: CMTime
let AVCaptureISOCurrent: Float
let AVCaptureExposureTargetBiasCurrent: Float
enum AVCaptureWhiteBalanceMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoWhiteBalance
  case ContinuousAutoWhiteBalance
}
struct AVCaptureWhiteBalanceGains {
  var redGain: Float
  var greenGain: Float
  var blueGain: Float
  init()
  init(redGain: Float, greenGain: Float, blueGain: Float)
}
struct AVCaptureWhiteBalanceChromaticityValues {
  var x: Float
  var y: Float
  init()
  init(x: Float, y: Float)
}
struct AVCaptureWhiteBalanceTemperatureAndTintValues {
  var temperature: Float
  var tint: Float
  init()
  init(temperature: Float, tint: Float)
}
extension AVCaptureDevice {
  func isWhiteBalanceModeSupported(whiteBalanceMode: AVCaptureWhiteBalanceMode) -> Bool
  var whiteBalanceMode: AVCaptureWhiteBalanceMode
  var isAdjustingWhiteBalance: Bool { get }
  var deviceWhiteBalanceGains: AVCaptureWhiteBalanceGains { get }
  var grayWorldDeviceWhiteBalanceGains: AVCaptureWhiteBalanceGains { get }
  var maxWhiteBalanceGain: Float { get }
  func setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains(whiteBalanceGains: AVCaptureWhiteBalanceGains, completionHandler handler: ((CMTime) -> Void)!)
  func chromaticityValuesForDeviceWhiteBalanceGains(whiteBalanceGains: AVCaptureWhiteBalanceGains) -> AVCaptureWhiteBalanceChromaticityValues
  func deviceWhiteBalanceGainsFor(chromaticityValues: AVCaptureWhiteBalanceChromaticityValues) -> AVCaptureWhiteBalanceGains
  func temperatureAndTintValuesForDeviceWhiteBalanceGains(whiteBalanceGains: AVCaptureWhiteBalanceGains) -> AVCaptureWhiteBalanceTemperatureAndTintValues
  func deviceWhiteBalanceGainsFor(tempAndTintValues: AVCaptureWhiteBalanceTemperatureAndTintValues) -> AVCaptureWhiteBalanceGains
}
let AVCaptureWhiteBalanceGainsCurrent: AVCaptureWhiteBalanceGains
extension AVCaptureDevice {
  var isSubjectAreaChangeMonitoringEnabled: Bool
}
extension AVCaptureDevice {
  var isLowLightBoostSupported: Bool { get }
  var isLowLightBoostEnabled: Bool { get }
  var automaticallyEnablesLowLightBoostWhenAvailable: Bool
}
extension AVCaptureDevice {
  var videoZoomFactor: CGFloat
  func rampToVideoZoomFactor(factor: CGFloat, withRate rate: Float)
  var isRampingVideoZoom: Bool { get }
  func cancelVideoZoomRamp()
}
enum AVAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
extension AVCaptureDevice {
  class func authorizationStatusForMediaType(mediaType: String!) -> AVAuthorizationStatus
  class func requestAccessForMediaType(mediaType: String!, completionHandler handler: ((Bool) -> Void)!)
}
extension AVCaptureDevice {
  var automaticallyAdjustsVideoHDREnabled: Bool
  var isVideoHDREnabled: Bool
}
class AVFrameRateRange : Object {
  var minFrameRate: Float64 { get }
  var maxFrameRate: Float64 { get }
  var maxFrameDuration: CMTime { get }
  var minFrameDuration: CMTime { get }
  init()
}
enum AVCaptureVideoStabilizationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case Standard
  case Cinematic
  case Auto
}
enum AVCaptureAutoFocusSystem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ContrastDetection
  case PhaseDetection
}
class AVCaptureDeviceFormat : Object {
  var mediaType: String! { get }
  var formatDescription: CMFormatDescription! { get }
  var videoSupportedFrameRateRanges: [AnyObject]! { get }
  var videoFieldOfView: Float { get }
  var isVideoBinned: Bool { get }
  func isVideoStabilizationModeSupported(videoStabilizationMode: AVCaptureVideoStabilizationMode) -> Bool
  var isVideoStabilizationSupported: Bool { get }
  var videoMaxZoomFactor: CGFloat { get }
  var videoZoomFactorUpscaleThreshold: CGFloat { get }
  var minExposureDuration: CMTime { get }
  var maxExposureDuration: CMTime { get }
  var minISO: Float { get }
  var maxISO: Float { get }
  var isVideoHDRSupported: Bool { get }
  var highResolutionStillImageDimensions: CMVideoDimensions { get }
  var autoFocusSystem: AVCaptureAutoFocusSystem { get }
  init()
}
class AVCaptureInput : Object {
  var ports: [AnyObject]! { get }
  init()
}
let AVCaptureInputPortFormatDescriptionDidChangeNotification: String
class AVCaptureInputPort : Object {
  var input: AVCaptureInput! { get }
  var mediaType: String! { get }
  var formatDescription: CMFormatDescription! { get }
  var isEnabled: Bool
  var clock: CMClock! { get }
  init()
}
class AVCaptureDeviceInput : AVCaptureInput {
  init(device: AVCaptureDevice!) throws
  var device: AVCaptureDevice! { get }
  init()
}
class AVCaptureMetadataInput : AVCaptureInput {
  init!(formatDescription desc: CMMetadataFormatDescription!, clock: CMClock!)
  func append(metadata: AVTimedMetadataGroup!) throws
  init()
}
class AVCaptureOutput : Object {
  var connections: [AnyObject]! { get }
  func connectionWithMediaType(mediaType: String!) -> AVCaptureConnection!
  func transformedMetadataObjectFor(metadataObject: AVMetadataObject!, connection: AVCaptureConnection!) -> AVMetadataObject!
  func metadataOutputRectOfInterestFor(rectInOutputCoordinates: CGRect) -> CGRect
  func rectForMetadataOutputRectOfInterest(rectInMetadataOutputCoordinates: CGRect) -> CGRect
  init()
}
class AVCaptureVideoDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  var videoSettings: [Object : AnyObject]!
  func recommendedVideoSettingsForAssetWriterWithOutputFileType(outputFileType: String!) -> [Object : AnyObject]!
  var availableVideoCVPixelFormatTypes: [AnyObject]! { get }
  var availableVideoCodecTypes: [AnyObject]! { get }
  var alwaysDiscardsLateVideoFrames: Bool
  init()
}
protocol AVCaptureVideoDataOutputSampleBufferDelegate : ObjectProtocol {
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didDrop sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
class AVCaptureAudioDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  func recommendedAudioSettingsForAssetWriterWithOutputFileType(outputFileType: String!) -> [Object : AnyObject]!
  init()
}
protocol AVCaptureAudioDataOutputSampleBufferDelegate : ObjectProtocol {
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
class AVCaptureFileOutput : AVCaptureOutput {
  var outputFileURL: URL! { get }
  func startRecordingToOutputFileURL(outputFileURL: URL!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)
  func stopRecording()
  var isRecording: Bool { get }
  var recordedDuration: CMTime { get }
  var recordedFileSize: Int64 { get }
  var maxRecordedDuration: CMTime
  var maxRecordedFileSize: Int64
  var minFreeDiskSpaceLimit: Int64
  init()
}
protocol AVCaptureFileOutputRecordingDelegate : ObjectProtocol {
  optional func capture(captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAt fileURL: URL!, fromConnections connections: [AnyObject]!)
  func capture(captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAt outputFileURL: URL!, fromConnections connections: [AnyObject]!, error: Error!)
}
class AVCaptureMovieFileOutput : AVCaptureFileOutput {
  var movieFragmentInterval: CMTime
  var metadata: [AnyObject]!
  func recordsVideoOrientationAndMirroringChangesAsMetadataTrackFor(connection: AVCaptureConnection!) -> Bool
  func setRecordsVideoOrientationAndMirroringChanges(doRecordChanges: Bool, asMetadataTrackFor connection: AVCaptureConnection!)
  init()
}
class AVCaptureStillImageOutput : AVCaptureOutput {
  var outputSettings: [Object : AnyObject]!
  var availableImageDataCVPixelFormatTypes: [AnyObject]! { get }
  var availableImageDataCodecTypes: [AnyObject]! { get }
  var isStillImageStabilizationSupported: Bool { get }
  var automaticallyEnablesStillImageStabilizationWhenAvailable: Bool
  var isStillImageStabilizationActive: Bool { get }
  var isHighResolutionStillImageOutputEnabled: Bool
  var isCapturingStillImage: Bool { get }
  func captureStillImageAsynchronouslyFrom(connection: AVCaptureConnection!, completionHandler handler: ((CMSampleBuffer!, Error!) -> Void)!)
  class func jpegStillImageNSDataRepresentation(jpegSampleBuffer: CMSampleBuffer!) -> Data!
  init()
}
class AVCaptureBracketedStillImageSettings : Object {
  init()
}
class AVCaptureManualExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func manualExposureSettingsWithExposureDuration(duration: CMTime, iso ISO: Float) -> Self!
  var exposureDuration: CMTime { get }
  var iso: Float { get }
  init()
}
class AVCaptureAutoExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func autoExposureSettingsWithExposureTargetBias(exposureTargetBias: Float) -> Self!
  var exposureTargetBias: Float { get }
  init()
}
extension AVCaptureStillImageOutput {
  var maxBracketedCaptureStillImageCount: Int { get }
  var isLensStabilizationDuringBracketedCaptureSupported: Bool { get }
  var isLensStabilizationDuringBracketedCaptureEnabled: Bool
  func prepareToCaptureStillImageBracketFrom(connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((Bool, Error!) -> Void)!)
  func captureStillImageBracketAsynchronouslyFrom(connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((CMSampleBuffer!, AVCaptureBracketedStillImageSettings!, Error!) -> Void)!)
}
class AVCaptureMetadataOutput : AVCaptureOutput {
  func setMetadataObjectsDelegate(objectsDelegate: AVCaptureMetadataOutputObjectsDelegate!, queue objectsCallbackQueue: dispatch_queue_t!)
  var metadataObjectsDelegate: AVCaptureMetadataOutputObjectsDelegate! { get }
  var metadataObjectsCallbackQueue: dispatch_queue_t! { get }
  var availableMetadataObjectTypes: [AnyObject]! { get }
  var metadataObjectTypes: [AnyObject]!
  var rectOfInterest: CGRect
  init()
}
protocol AVCaptureMetadataOutputObjectsDelegate : ObjectProtocol {
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, from connection: AVCaptureConnection!)
}
let AVCaptureSessionRuntimeErrorNotification: String
let AVCaptureSessionErrorKey: String
let AVCaptureSessionDidStartRunningNotification: String
let AVCaptureSessionDidStopRunningNotification: String
let AVCaptureSessionWasInterruptedNotification: String
enum AVCaptureSessionInterruptionReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case VideoDeviceNotAvailableInBackground
  case AudioDeviceInUseByAnotherClient
  case VideoDeviceInUseByAnotherClient
  case VideoDeviceNotAvailableWithMultipleForegroundApps
}
let AVCaptureSessionInterruptionReasonKey: String
let AVCaptureSessionInterruptionEndedNotification: String
enum AVCaptureVideoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case PortraitUpsideDown
  case LandscapeRight
  case LandscapeLeft
}
let AVCaptureSessionPresetPhoto: String
let AVCaptureSessionPresetHigh: String
let AVCaptureSessionPresetMedium: String
let AVCaptureSessionPresetLow: String
let AVCaptureSessionPreset352x288: String
let AVCaptureSessionPreset640x480: String
let AVCaptureSessionPreset1280x720: String
let AVCaptureSessionPreset1920x1080: String
let AVCaptureSessionPreset3840x2160: String
let AVCaptureSessionPresetiFrame960x540: String
let AVCaptureSessionPresetiFrame1280x720: String
let AVCaptureSessionPresetInputPriority: String
class AVCaptureSession : Object {
  func canSetSessionPreset(preset: String!) -> Bool
  var sessionPreset: String!
  var inputs: [AnyObject]! { get }
  func canAddInput(input: AVCaptureInput!) -> Bool
  func addInput(input: AVCaptureInput!)
  func removeInput(input: AVCaptureInput!)
  var outputs: [AnyObject]! { get }
  func canAddOutput(output: AVCaptureOutput!) -> Bool
  func addOutput(output: AVCaptureOutput!)
  func removeOutput(output: AVCaptureOutput!)
  func addInputWithNoConnections(input: AVCaptureInput!)
  func addOutputWithNoConnections(output: AVCaptureOutput!)
  func canAdd(connection: AVCaptureConnection!) -> Bool
  func add(connection: AVCaptureConnection!)
  func remove(connection: AVCaptureConnection!)
  func beginConfiguration()
  func commitConfiguration()
  var isRunning: Bool { get }
  var isInterrupted: Bool { get }
  var usesApplicationAudioSession: Bool
  var automaticallyConfiguresApplicationAudioSession: Bool
  func startRunning()
  func stopRunning()
  var masterClock: CMClock! { get }
  init()
}
class AVCaptureConnection : Object {
  init!(inputPorts ports: [AnyObject]!, output: AVCaptureOutput!)
  init!(inputPort port: AVCaptureInputPort!, videoPreviewLayer layer: AVCaptureVideoPreviewLayer!)
  var inputPorts: [AnyObject]! { get }
  var output: AVCaptureOutput! { get }
  var videoPreviewLayer: AVCaptureVideoPreviewLayer! { get }
  var isEnabled: Bool
  var isActive: Bool { get }
  var audioChannels: [AnyObject]! { get }
  var isVideoMirroringSupported: Bool { get }
  var isVideoMirrored: Bool
  var automaticallyAdjustsVideoMirroring: Bool
  var isVideoOrientationSupported: Bool { get }
  var videoOrientation: AVCaptureVideoOrientation
  var videoMaxScaleAndCropFactor: CGFloat { get }
  var videoScaleAndCropFactor: CGFloat
  var preferredVideoStabilizationMode: AVCaptureVideoStabilizationMode
  var activeVideoStabilizationMode: AVCaptureVideoStabilizationMode { get }
  var isVideoStabilizationSupported: Bool { get }
  var isVideoStabilizationEnabled: Bool { get }
  var enablesVideoStabilizationWhenAvailable: Bool
  init()
}
class AVCaptureAudioChannel : Object {
  var averagePowerLevel: Float { get }
  var peakHoldLevel: Float { get }
  init()
}
class AVCaptureVideoPreviewLayer : CALayer {
  init!(session: AVCaptureSession!)
  init!(sessionWithNoConnection session: AVCaptureSession!)
  var session: AVCaptureSession!
  func setSessionWithNoConnection(session: AVCaptureSession!)
  var connection: AVCaptureConnection! { get }
  var videoGravity: String!
  func captureDevicePointOfInterestFor(pointInLayer: CGPoint) -> CGPoint
  func pointForCaptureDevicePointOfInterest(captureDevicePointOfInterest: CGPoint) -> CGPoint
  func metadataOutputRectOfInterestFor(rectInLayerCoordinates: CGRect) -> CGRect
  func rectForMetadataOutputRectOfInterest(rectInMetadataOutputCoordinates: CGRect) -> CGRect
  func transformedMetadataObjectFor(metadataObject: AVMetadataObject!) -> AVMetadataObject!
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
class AVComposition : AVAsset, MutableCopying {
  var tracks: [AVCompositionTrack] { get }
  var naturalSize: CGSize { get }
  var urlAssetInitializationOptions: [String : AnyObject] { get }
  convenience init(url URL: URL)
  init()
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
extension AVComposition {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVCompositionTrack?
  func tracksWithMediaType(mediaType: String) -> [AVCompositionTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVCompositionTrack]
}
class AVMutableComposition : AVComposition {
  var tracks: [AVMutableCompositionTrack] { get }
  var naturalSize: CGSize
  convenience init(urlAssetInitializationOptions URLAssetInitializationOptions: [String : AnyObject]? = [:])
  convenience init(url URL: URL)
  init()
}
extension AVMutableComposition {
  func insert(timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime) throws
  func insertEmpty(timeRange: CMTimeRange)
  func remove(timeRange: CMTimeRange)
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableComposition {
  func addMutableTrackWithMediaType(mediaType: String, preferredTrackID: CMPersistentTrackID) -> AVMutableCompositionTrack
  func removeTrack(track: AVCompositionTrack)
  func mutableTrackCompatibleWith(track: AVAssetTrack) -> AVMutableCompositionTrack?
}
extension AVMutableComposition {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVMutableCompositionTrack?
  func tracksWithMediaType(mediaType: String) -> [AVMutableCompositionTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVMutableCompositionTrack]
}
class AVCompositionTrack : AVAssetTrack {
  var segments: [AVCompositionTrackSegment] { get }
}
class AVMutableCompositionTrack : AVCompositionTrack {
  var naturalTimeScale: CMTimeScale
  var languageCode: String?
  var extendedLanguageTag: String?
  var preferredTransform: CGAffineTransform
  var preferredVolume: Float
  var segments: [AVCompositionTrackSegment]!
  func insertTimeRange(timeRange: CMTimeRange, of track: AVAssetTrack, at startTime: CMTime) throws
  func insertTimeRanges(timeRanges: [Value], of tracks: [AVAssetTrack], at startTime: CMTime) throws
  func insertEmptyTimeRange(timeRange: CMTimeRange)
  func removeTimeRange(timeRange: CMTimeRange)
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
  func validateSegments(trackSegments: [AVCompositionTrackSegment]) throws
}
class AVCompositionTrackSegment : AVAssetTrackSegment {
  init(url URL: URL, trackID: CMPersistentTrackID, sourceTimeRange: CMTimeRange, targetTimeRange: CMTimeRange)
  init(timeRange: CMTimeRange)
  var isEmpty: Bool { get }
  var sourceURL: URL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
let AVFoundationErrorDomain: String
let AVErrorDeviceKey: String
let AVErrorTimeKey: String
let AVErrorFileSizeKey: String
let AVErrorPIDKey: String
let AVErrorRecordingSuccessfullyFinishedKey: String
let AVErrorMediaTypeKey: String
let AVErrorMediaSubTypeKey: String
let AVErrorPresentationTimeStampKey: String
let AVErrorPersistentTrackIDKey: String
let AVErrorFileTypeKey: String
enum AVError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case OutOfMemory
  case SessionNotRunning
  case DeviceAlreadyUsedByAnotherSession
  case NoDataCaptured
  case SessionConfigurationChanged
  case DiskFull
  case DeviceWasDisconnected
  case MediaChanged
  case MaximumDurationReached
  case MaximumFileSizeReached
  case MediaDiscontinuity
  case MaximumNumberOfSamplesForFileFormatReached
  case DeviceNotConnected
  case DeviceInUseByAnotherApplication
  case DeviceLockedForConfigurationByAnotherProcess
  case SessionWasInterrupted
  case MediaServicesWereReset
  case ExportFailed
  case DecodeFailed
  case InvalidSourceMedia
  case FileAlreadyExists
  case CompositionTrackSegmentsNotContiguous
  case InvalidCompositionTrackSegmentDuration
  case InvalidCompositionTrackSegmentSourceStartTime
  case InvalidCompositionTrackSegmentSourceDuration
  case FileFormatNotRecognized
  case FileFailedToParse
  case MaximumStillImageCaptureRequestsExceeded
  case ContentIsProtected
  case NoImageAtTime
  case DecoderNotFound
  case EncoderNotFound
  case ContentIsNotAuthorized
  case ApplicationIsNotAuthorized
  case DeviceIsNotAvailableInBackground
  case OperationNotSupportedForAsset
  case DecoderTemporarilyUnavailable
  case EncoderTemporarilyUnavailable
  case InvalidVideoComposition
  case ReferenceForbiddenByReferencePolicy
  case InvalidOutputURLPathExtension
  case ScreenCaptureFailed
  case DisplayWasDisabled
  case TorchLevelUnavailable
  case OperationInterrupted
  case IncompatibleAsset
  case FailedToLoadMediaData
  case ServerIncorrectlyConfigured
  case ApplicationIsNotAuthorizedToUseDevice
  case FailedToParse
  case FileTypeDoesNotSupportSampleReferences
  case UndecodableMediaData
  case AirPlayControllerRequiresInternet
  case AirPlayReceiverRequiresInternet
  case VideoCompositorFailed
  case RecordingAlreadyInProgress
}
extension AVError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
typealias AVMIDIPlayerCompletionHandler = () -> Void
class AVMIDIPlayer : Object {
  init(contentsOf inURL: URL, soundBankURL bankURL: URL?) throws
  init(data: Data, soundBankURL bankURL: URL?) throws
  func prepareToPlay()
  func play(completionHandler: AVMIDIPlayerCompletionHandler? = nil)
  func stop()
  var duration: TimeInterval { get }
  var isPlaying: Bool { get }
  var rate: Float
  var currentPosition: TimeInterval
  init()
}
let AVMediaTypeVideo: String
let AVMediaTypeAudio: String
let AVMediaTypeText: String
let AVMediaTypeClosedCaption: String
let AVMediaTypeSubtitle: String
let AVMediaTypeTimecode: String
let AVMediaTypeMetadata: String
let AVMediaTypeMuxed: String
let AVMediaTypeMetadataObject: String
let AVMediaCharacteristicVisual: String
let AVMediaCharacteristicAudible: String
let AVMediaCharacteristicLegible: String
let AVMediaCharacteristicFrameBased: String
let AVMediaCharacteristicIsMainProgramContent: String
let AVMediaCharacteristicIsAuxiliaryContent: String
let AVMediaCharacteristicContainsOnlyForcedSubtitles: String
let AVMediaCharacteristicTranscribesSpokenDialogForAccessibility: String
let AVMediaCharacteristicDescribesMusicAndSoundForAccessibility: String
let AVMediaCharacteristicEasyToRead: String
let AVMediaCharacteristicDescribesVideoForAccessibility: String
let AVMediaCharacteristicLanguageTranslation: String
let AVMediaCharacteristicDubbedTranslation: String
let AVMediaCharacteristicVoiceOverTranslation: String
let AVFileTypeQuickTimeMovie: String
let AVFileTypeMPEG4: String
let AVFileTypeAppleM4V: String
let AVFileTypeAppleM4A: String
let AVFileType3GPP: String
let AVFileType3GPP2: String
let AVFileTypeCoreAudioFormat: String
let AVFileTypeWAVE: String
let AVFileTypeAIFF: String
let AVFileTypeAIFC: String
let AVFileTypeAMR: String
let AVFileTypeMPEGLayer3: String
let AVFileTypeSunAU: String
let AVFileTypeAC3: String
let AVFileTypeEnhancedAC3: String
let AVStreamingKeyDeliveryContentKeyType: String
let AVStreamingKeyDeliveryPersistentContentKeyType: String
class AVMediaSelection : Object, Copying, MutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomaticallyTo(mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  init()
}
class AVMediaSelectionGroup : Object, Copying {
  var options: [AVMediaSelectionOption] { get }
  var defaultOption: AVMediaSelectionOption? { get }
  var allowsEmptySelection: Bool { get }
  func mediaSelectionOptionWithPropertyList(plist: AnyObject) -> AVMediaSelectionOption?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension AVMediaSelectionGroup {
  class func playableMediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withLocale locale: Locale) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
}
class AVMediaSelectionOption : Object, Copying {
  var mediaType: String { get }
  var mediaSubTypes: [Number] { get }
  func hasMediaCharacteristic(mediaCharacteristic: String) -> Bool
  var isPlayable: Bool { get }
  var extendedLanguageTag: String? { get }
  var locale: Locale? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataForFormat(format: String) -> [AVMetadataItem]
  func associatedMediaSelectionOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func propertyList() -> AnyObject
  func displayNameWith(locale: Locale) -> String
  var displayName: String { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
let AVMetadataKeySpaceCommon: String
let AVMetadataCommonKeyTitle: String
let AVMetadataCommonKeyCreator: String
let AVMetadataCommonKeySubject: String
let AVMetadataCommonKeyDescription: String
let AVMetadataCommonKeyPublisher: String
let AVMetadataCommonKeyContributor: String
let AVMetadataCommonKeyCreationDate: String
let AVMetadataCommonKeyLastModifiedDate: String
let AVMetadataCommonKeyType: String
let AVMetadataCommonKeyFormat: String
let AVMetadataCommonKeyIdentifier: String
let AVMetadataCommonKeySource: String
let AVMetadataCommonKeyLanguage: String
let AVMetadataCommonKeyRelation: String
let AVMetadataCommonKeyLocation: String
let AVMetadataCommonKeyCopyrights: String
let AVMetadataCommonKeyAlbumName: String
let AVMetadataCommonKeyAuthor: String
let AVMetadataCommonKeyArtist: String
let AVMetadataCommonKeyArtwork: String
let AVMetadataCommonKeyMake: String
let AVMetadataCommonKeyModel: String
let AVMetadataCommonKeySoftware: String
let AVMetadataFormatQuickTimeUserData: String
let AVMetadataKeySpaceQuickTimeUserData: String
let AVMetadataQuickTimeUserDataKeyAlbum: String
let AVMetadataQuickTimeUserDataKeyArranger: String
let AVMetadataQuickTimeUserDataKeyArtist: String
let AVMetadataQuickTimeUserDataKeyAuthor: String
let AVMetadataQuickTimeUserDataKeyChapter: String
let AVMetadataQuickTimeUserDataKeyComment: String
let AVMetadataQuickTimeUserDataKeyComposer: String
let AVMetadataQuickTimeUserDataKeyCopyright: String
let AVMetadataQuickTimeUserDataKeyCreationDate: String
let AVMetadataQuickTimeUserDataKeyDescription: String
let AVMetadataQuickTimeUserDataKeyDirector: String
let AVMetadataQuickTimeUserDataKeyDisclaimer: String
let AVMetadataQuickTimeUserDataKeyEncodedBy: String
let AVMetadataQuickTimeUserDataKeyFullName: String
let AVMetadataQuickTimeUserDataKeyGenre: String
let AVMetadataQuickTimeUserDataKeyHostComputer: String
let AVMetadataQuickTimeUserDataKeyInformation: String
let AVMetadataQuickTimeUserDataKeyKeywords: String
let AVMetadataQuickTimeUserDataKeyMake: String
let AVMetadataQuickTimeUserDataKeyModel: String
let AVMetadataQuickTimeUserDataKeyOriginalArtist: String
let AVMetadataQuickTimeUserDataKeyOriginalFormat: String
let AVMetadataQuickTimeUserDataKeyOriginalSource: String
let AVMetadataQuickTimeUserDataKeyPerformers: String
let AVMetadataQuickTimeUserDataKeyProducer: String
let AVMetadataQuickTimeUserDataKeyPublisher: String
let AVMetadataQuickTimeUserDataKeyProduct: String
let AVMetadataQuickTimeUserDataKeySoftware: String
let AVMetadataQuickTimeUserDataKeySpecialPlaybackRequirements: String
let AVMetadataQuickTimeUserDataKeyTrack: String
let AVMetadataQuickTimeUserDataKeyWarning: String
let AVMetadataQuickTimeUserDataKeyWriter: String
let AVMetadataQuickTimeUserDataKeyURLLink: String
let AVMetadataQuickTimeUserDataKeyLocationISO6709: String
let AVMetadataQuickTimeUserDataKeyTrackName: String
let AVMetadataQuickTimeUserDataKeyCredits: String
let AVMetadataQuickTimeUserDataKeyPhonogramRights: String
let AVMetadataQuickTimeUserDataKeyTaggedCharacteristic: String
let AVMetadataFormatISOUserData: String
let AVMetadataKeySpaceISOUserData: String
let AVMetadataISOUserDataKeyCopyright: String
let AVMetadataISOUserDataKeyTaggedCharacteristic: String
let AVMetadata3GPUserDataKeyCopyright: String
let AVMetadata3GPUserDataKeyAuthor: String
let AVMetadata3GPUserDataKeyPerformer: String
let AVMetadata3GPUserDataKeyGenre: String
let AVMetadata3GPUserDataKeyRecordingYear: String
let AVMetadata3GPUserDataKeyLocation: String
let AVMetadata3GPUserDataKeyTitle: String
let AVMetadata3GPUserDataKeyDescription: String
let AVMetadata3GPUserDataKeyCollection: String
let AVMetadata3GPUserDataKeyUserRating: String
let AVMetadata3GPUserDataKeyThumbnail: String
let AVMetadata3GPUserDataKeyAlbumAndTrack: String
let AVMetadata3GPUserDataKeyKeywordList: String
let AVMetadata3GPUserDataKeyMediaClassification: String
let AVMetadata3GPUserDataKeyMediaRating: String
let AVMetadataFormatQuickTimeMetadata: String
let AVMetadataKeySpaceQuickTimeMetadata: String
let AVMetadataQuickTimeMetadataKeyAuthor: String
let AVMetadataQuickTimeMetadataKeyComment: String
let AVMetadataQuickTimeMetadataKeyCopyright: String
let AVMetadataQuickTimeMetadataKeyCreationDate: String
let AVMetadataQuickTimeMetadataKeyDirector: String
let AVMetadataQuickTimeMetadataKeyDisplayName: String
let AVMetadataQuickTimeMetadataKeyInformation: String
let AVMetadataQuickTimeMetadataKeyKeywords: String
let AVMetadataQuickTimeMetadataKeyProducer: String
let AVMetadataQuickTimeMetadataKeyPublisher: String
let AVMetadataQuickTimeMetadataKeyAlbum: String
let AVMetadataQuickTimeMetadataKeyArtist: String
let AVMetadataQuickTimeMetadataKeyArtwork: String
let AVMetadataQuickTimeMetadataKeyDescription: String
let AVMetadataQuickTimeMetadataKeySoftware: String
let AVMetadataQuickTimeMetadataKeyYear: String
let AVMetadataQuickTimeMetadataKeyGenre: String
let AVMetadataQuickTimeMetadataKeyiXML: String
let AVMetadataQuickTimeMetadataKeyLocationISO6709: String
let AVMetadataQuickTimeMetadataKeyMake: String
let AVMetadataQuickTimeMetadataKeyModel: String
let AVMetadataQuickTimeMetadataKeyArranger: String
let AVMetadataQuickTimeMetadataKeyEncodedBy: String
let AVMetadataQuickTimeMetadataKeyOriginalArtist: String
let AVMetadataQuickTimeMetadataKeyPerformer: String
let AVMetadataQuickTimeMetadataKeyComposer: String
let AVMetadataQuickTimeMetadataKeyCredits: String
let AVMetadataQuickTimeMetadataKeyPhonogramRights: String
let AVMetadataQuickTimeMetadataKeyCameraIdentifier: String
let AVMetadataQuickTimeMetadataKeyCameraFrameReadoutTime: String
let AVMetadataQuickTimeMetadataKeyTitle: String
let AVMetadataQuickTimeMetadataKeyCollectionUser: String
let AVMetadataQuickTimeMetadataKeyRatingUser: String
let AVMetadataQuickTimeMetadataKeyLocationName: String
let AVMetadataQuickTimeMetadataKeyLocationBody: String
let AVMetadataQuickTimeMetadataKeyLocationNote: String
let AVMetadataQuickTimeMetadataKeyLocationRole: String
let AVMetadataQuickTimeMetadataKeyLocationDate: String
let AVMetadataQuickTimeMetadataKeyDirectionFacing: String
let AVMetadataQuickTimeMetadataKeyDirectionMotion: String
let AVMetadataQuickTimeMetadataKeyContentIdentifier: String
let AVMetadataFormatiTunesMetadata: String
let AVMetadataKeySpaceiTunes: String
let AVMetadataiTunesMetadataKeyAlbum: String
let AVMetadataiTunesMetadataKeyArtist: String
let AVMetadataiTunesMetadataKeyUserComment: String
let AVMetadataiTunesMetadataKeyCoverArt: String
let AVMetadataiTunesMetadataKeyCopyright: String
let AVMetadataiTunesMetadataKeyReleaseDate: String
let AVMetadataiTunesMetadataKeyEncodedBy: String
let AVMetadataiTunesMetadataKeyPredefinedGenre: String
let AVMetadataiTunesMetadataKeyUserGenre: String
let AVMetadataiTunesMetadataKeySongName: String
let AVMetadataiTunesMetadataKeyTrackSubTitle: String
let AVMetadataiTunesMetadataKeyEncodingTool: String
let AVMetadataiTunesMetadataKeyComposer: String
let AVMetadataiTunesMetadataKeyAlbumArtist: String
let AVMetadataiTunesMetadataKeyAccountKind: String
let AVMetadataiTunesMetadataKeyAppleID: String
let AVMetadataiTunesMetadataKeyArtistID: String
let AVMetadataiTunesMetadataKeySongID: String
let AVMetadataiTunesMetadataKeyDiscCompilation: String
let AVMetadataiTunesMetadataKeyDiscNumber: String
let AVMetadataiTunesMetadataKeyGenreID: String
let AVMetadataiTunesMetadataKeyGrouping: String
let AVMetadataiTunesMetadataKeyPlaylistID: String
let AVMetadataiTunesMetadataKeyContentRating: String
let AVMetadataiTunesMetadataKeyBeatsPerMin: String
let AVMetadataiTunesMetadataKeyTrackNumber: String
let AVMetadataiTunesMetadataKeyArtDirector: String
let AVMetadataiTunesMetadataKeyArranger: String
let AVMetadataiTunesMetadataKeyAuthor: String
let AVMetadataiTunesMetadataKeyLyrics: String
let AVMetadataiTunesMetadataKeyAcknowledgement: String
let AVMetadataiTunesMetadataKeyConductor: String
let AVMetadataiTunesMetadataKeyDescription: String
let AVMetadataiTunesMetadataKeyDirector: String
let AVMetadataiTunesMetadataKeyEQ: String
let AVMetadataiTunesMetadataKeyLinerNotes: String
let AVMetadataiTunesMetadataKeyRecordCompany: String
let AVMetadataiTunesMetadataKeyOriginalArtist: String
let AVMetadataiTunesMetadataKeyPhonogramRights: String
let AVMetadataiTunesMetadataKeyProducer: String
let AVMetadataiTunesMetadataKeyPerformer: String
let AVMetadataiTunesMetadataKeyPublisher: String
let AVMetadataiTunesMetadataKeySoundEngineer: String
let AVMetadataiTunesMetadataKeySoloist: String
let AVMetadataiTunesMetadataKeyCredits: String
let AVMetadataiTunesMetadataKeyThanks: String
let AVMetadataiTunesMetadataKeyOnlineExtras: String
let AVMetadataiTunesMetadataKeyExecProducer: String
let AVMetadataFormatID3Metadata: String
let AVMetadataKeySpaceID3: String
let AVMetadataID3MetadataKeyAudioEncryption: String
let AVMetadataID3MetadataKeyAttachedPicture: String
let AVMetadataID3MetadataKeyAudioSeekPointIndex: String
let AVMetadataID3MetadataKeyComments: String
let AVMetadataID3MetadataKeyCommercial: String
let AVMetadataID3MetadataKeyCommerical: String
let AVMetadataID3MetadataKeyEncryption: String
let AVMetadataID3MetadataKeyEqualization: String
let AVMetadataID3MetadataKeyEqualization2: String
let AVMetadataID3MetadataKeyEventTimingCodes: String
let AVMetadataID3MetadataKeyGeneralEncapsulatedObject: String
let AVMetadataID3MetadataKeyGroupIdentifier: String
let AVMetadataID3MetadataKeyInvolvedPeopleList_v23: String
let AVMetadataID3MetadataKeyLink: String
let AVMetadataID3MetadataKeyMusicCDIdentifier: String
let AVMetadataID3MetadataKeyMPEGLocationLookupTable: String
let AVMetadataID3MetadataKeyOwnership: String
let AVMetadataID3MetadataKeyPrivate: String
let AVMetadataID3MetadataKeyPlayCounter: String
let AVMetadataID3MetadataKeyPopularimeter: String
let AVMetadataID3MetadataKeyPositionSynchronization: String
let AVMetadataID3MetadataKeyRecommendedBufferSize: String
let AVMetadataID3MetadataKeyRelativeVolumeAdjustment: String
let AVMetadataID3MetadataKeyRelativeVolumeAdjustment2: String
let AVMetadataID3MetadataKeyReverb: String
let AVMetadataID3MetadataKeySeek: String
let AVMetadataID3MetadataKeySignature: String
let AVMetadataID3MetadataKeySynchronizedLyric: String
let AVMetadataID3MetadataKeySynchronizedTempoCodes: String
let AVMetadataID3MetadataKeyAlbumTitle: String
let AVMetadataID3MetadataKeyBeatsPerMinute: String
let AVMetadataID3MetadataKeyComposer: String
let AVMetadataID3MetadataKeyContentType: String
let AVMetadataID3MetadataKeyCopyright: String
let AVMetadataID3MetadataKeyDate: String
let AVMetadataID3MetadataKeyEncodingTime: String
let AVMetadataID3MetadataKeyPlaylistDelay: String
let AVMetadataID3MetadataKeyOriginalReleaseTime: String
let AVMetadataID3MetadataKeyRecordingTime: String
let AVMetadataID3MetadataKeyReleaseTime: String
let AVMetadataID3MetadataKeyTaggingTime: String
let AVMetadataID3MetadataKeyEncodedBy: String
let AVMetadataID3MetadataKeyLyricist: String
let AVMetadataID3MetadataKeyFileType: String
let AVMetadataID3MetadataKeyTime: String
let AVMetadataID3MetadataKeyInvolvedPeopleList_v24: String
let AVMetadataID3MetadataKeyContentGroupDescription: String
let AVMetadataID3MetadataKeyTitleDescription: String
let AVMetadataID3MetadataKeySubTitle: String
let AVMetadataID3MetadataKeyInitialKey: String
let AVMetadataID3MetadataKeyLanguage: String
let AVMetadataID3MetadataKeyLength: String
let AVMetadataID3MetadataKeyMusicianCreditsList: String
let AVMetadataID3MetadataKeyMediaType: String
let AVMetadataID3MetadataKeyMood: String
let AVMetadataID3MetadataKeyOriginalAlbumTitle: String
let AVMetadataID3MetadataKeyOriginalFilename: String
let AVMetadataID3MetadataKeyOriginalLyricist: String
let AVMetadataID3MetadataKeyOriginalArtist: String
let AVMetadataID3MetadataKeyOriginalReleaseYear: String
let AVMetadataID3MetadataKeyFileOwner: String
let AVMetadataID3MetadataKeyLeadPerformer: String
let AVMetadataID3MetadataKeyBand: String
let AVMetadataID3MetadataKeyConductor: String
let AVMetadataID3MetadataKeyModifiedBy: String
let AVMetadataID3MetadataKeyPartOfASet: String
let AVMetadataID3MetadataKeyProducedNotice: String
let AVMetadataID3MetadataKeyPublisher: String
let AVMetadataID3MetadataKeyTrackNumber: String
let AVMetadataID3MetadataKeyRecordingDates: String
let AVMetadataID3MetadataKeyInternetRadioStationName: String
let AVMetadataID3MetadataKeyInternetRadioStationOwner: String
let AVMetadataID3MetadataKeySize: String
let AVMetadataID3MetadataKeyAlbumSortOrder: String
let AVMetadataID3MetadataKeyPerformerSortOrder: String
let AVMetadataID3MetadataKeyTitleSortOrder: String
let AVMetadataID3MetadataKeyInternationalStandardRecordingCode: String
let AVMetadataID3MetadataKeyEncodedWith: String
let AVMetadataID3MetadataKeySetSubtitle: String
let AVMetadataID3MetadataKeyYear: String
let AVMetadataID3MetadataKeyUserText: String
let AVMetadataID3MetadataKeyUniqueFileIdentifier: String
let AVMetadataID3MetadataKeyTermsOfUse: String
let AVMetadataID3MetadataKeyUnsynchronizedLyric: String
let AVMetadataID3MetadataKeyCommercialInformation: String
let AVMetadataID3MetadataKeyCopyrightInformation: String
let AVMetadataID3MetadataKeyOfficialAudioFileWebpage: String
let AVMetadataID3MetadataKeyOfficialArtistWebpage: String
let AVMetadataID3MetadataKeyOfficialAudioSourceWebpage: String
let AVMetadataID3MetadataKeyOfficialInternetRadioStationHomepage: String
let AVMetadataID3MetadataKeyPayment: String
let AVMetadataID3MetadataKeyOfficialPublisherWebpage: String
let AVMetadataID3MetadataKeyUserURL: String
let AVMetadataKeySpaceIcy: String
let AVMetadataIcyMetadataKeyStreamTitle: String
let AVMetadataIcyMetadataKeyStreamURL: String
let AVMetadataFormatHLSMetadata: String
let AVMetadataExtraAttributeValueURIKey: String
let AVMetadataExtraAttributeBaseURIKey: String
let AVMetadataExtraAttributeInfoKey: String
let AVMetadataCommonIdentifierTitle: String
let AVMetadataCommonIdentifierCreator: String
let AVMetadataCommonIdentifierSubject: String
let AVMetadataCommonIdentifierDescription: String
let AVMetadataCommonIdentifierPublisher: String
let AVMetadataCommonIdentifierContributor: String
let AVMetadataCommonIdentifierCreationDate: String
let AVMetadataCommonIdentifierLastModifiedDate: String
let AVMetadataCommonIdentifierType: String
let AVMetadataCommonIdentifierFormat: String
let AVMetadataCommonIdentifierAssetIdentifier: String
let AVMetadataCommonIdentifierSource: String
let AVMetadataCommonIdentifierLanguage: String
let AVMetadataCommonIdentifierRelation: String
let AVMetadataCommonIdentifierLocation: String
let AVMetadataCommonIdentifierCopyrights: String
let AVMetadataCommonIdentifierAlbumName: String
let AVMetadataCommonIdentifierAuthor: String
let AVMetadataCommonIdentifierArtist: String
let AVMetadataCommonIdentifierArtwork: String
let AVMetadataCommonIdentifierMake: String
let AVMetadataCommonIdentifierModel: String
let AVMetadataCommonIdentifierSoftware: String
let AVMetadataIdentifierQuickTimeUserDataAlbum: String
let AVMetadataIdentifierQuickTimeUserDataArranger: String
let AVMetadataIdentifierQuickTimeUserDataArtist: String
let AVMetadataIdentifierQuickTimeUserDataAuthor: String
let AVMetadataIdentifierQuickTimeUserDataChapter: String
let AVMetadataIdentifierQuickTimeUserDataComment: String
let AVMetadataIdentifierQuickTimeUserDataComposer: String
let AVMetadataIdentifierQuickTimeUserDataCopyright: String
let AVMetadataIdentifierQuickTimeUserDataCreationDate: String
let AVMetadataIdentifierQuickTimeUserDataDescription: String
let AVMetadataIdentifierQuickTimeUserDataDirector: String
let AVMetadataIdentifierQuickTimeUserDataDisclaimer: String
let AVMetadataIdentifierQuickTimeUserDataEncodedBy: String
let AVMetadataIdentifierQuickTimeUserDataFullName: String
let AVMetadataIdentifierQuickTimeUserDataGenre: String
let AVMetadataIdentifierQuickTimeUserDataHostComputer: String
let AVMetadataIdentifierQuickTimeUserDataInformation: String
let AVMetadataIdentifierQuickTimeUserDataKeywords: String
let AVMetadataIdentifierQuickTimeUserDataMake: String
let AVMetadataIdentifierQuickTimeUserDataModel: String
let AVMetadataIdentifierQuickTimeUserDataOriginalArtist: String
let AVMetadataIdentifierQuickTimeUserDataOriginalFormat: String
let AVMetadataIdentifierQuickTimeUserDataOriginalSource: String
let AVMetadataIdentifierQuickTimeUserDataPerformers: String
let AVMetadataIdentifierQuickTimeUserDataProducer: String
let AVMetadataIdentifierQuickTimeUserDataPublisher: String
let AVMetadataIdentifierQuickTimeUserDataProduct: String
let AVMetadataIdentifierQuickTimeUserDataSoftware: String
let AVMetadataIdentifierQuickTimeUserDataSpecialPlaybackRequirements: String
let AVMetadataIdentifierQuickTimeUserDataTrack: String
let AVMetadataIdentifierQuickTimeUserDataWarning: String
let AVMetadataIdentifierQuickTimeUserDataWriter: String
let AVMetadataIdentifierQuickTimeUserDataURLLink: String
let AVMetadataIdentifierQuickTimeUserDataLocationISO6709: String
let AVMetadataIdentifierQuickTimeUserDataTrackName: String
let AVMetadataIdentifierQuickTimeUserDataCredits: String
let AVMetadataIdentifierQuickTimeUserDataPhonogramRights: String
let AVMetadataIdentifierQuickTimeUserDataTaggedCharacteristic: String
let AVMetadataIdentifierISOUserDataCopyright: String
let AVMetadataIdentifierISOUserDataTaggedCharacteristic: String
let AVMetadataIdentifier3GPUserDataCopyright: String
let AVMetadataIdentifier3GPUserDataAuthor: String
let AVMetadataIdentifier3GPUserDataPerformer: String
let AVMetadataIdentifier3GPUserDataGenre: String
let AVMetadataIdentifier3GPUserDataRecordingYear: String
let AVMetadataIdentifier3GPUserDataLocation: String
let AVMetadataIdentifier3GPUserDataTitle: String
let AVMetadataIdentifier3GPUserDataDescription: String
let AVMetadataIdentifier3GPUserDataCollection: String
let AVMetadataIdentifier3GPUserDataUserRating: String
let AVMetadataIdentifier3GPUserDataThumbnail: String
let AVMetadataIdentifier3GPUserDataAlbumAndTrack: String
let AVMetadataIdentifier3GPUserDataKeywordList: String
let AVMetadataIdentifier3GPUserDataMediaClassification: String
let AVMetadataIdentifier3GPUserDataMediaRating: String
let AVMetadataIdentifierQuickTimeMetadataAuthor: String
let AVMetadataIdentifierQuickTimeMetadataComment: String
let AVMetadataIdentifierQuickTimeMetadataCopyright: String
let AVMetadataIdentifierQuickTimeMetadataCreationDate: String
let AVMetadataIdentifierQuickTimeMetadataDirector: String
let AVMetadataIdentifierQuickTimeMetadataDisplayName: String
let AVMetadataIdentifierQuickTimeMetadataInformation: String
let AVMetadataIdentifierQuickTimeMetadataKeywords: String
let AVMetadataIdentifierQuickTimeMetadataProducer: String
let AVMetadataIdentifierQuickTimeMetadataPublisher: String
let AVMetadataIdentifierQuickTimeMetadataAlbum: String
let AVMetadataIdentifierQuickTimeMetadataArtist: String
let AVMetadataIdentifierQuickTimeMetadataArtwork: String
let AVMetadataIdentifierQuickTimeMetadataDescription: String
let AVMetadataIdentifierQuickTimeMetadataSoftware: String
let AVMetadataIdentifierQuickTimeMetadataYear: String
let AVMetadataIdentifierQuickTimeMetadataGenre: String
let AVMetadataIdentifierQuickTimeMetadataiXML: String
let AVMetadataIdentifierQuickTimeMetadataLocationISO6709: String
let AVMetadataIdentifierQuickTimeMetadataMake: String
let AVMetadataIdentifierQuickTimeMetadataModel: String
let AVMetadataIdentifierQuickTimeMetadataArranger: String
let AVMetadataIdentifierQuickTimeMetadataEncodedBy: String
let AVMetadataIdentifierQuickTimeMetadataOriginalArtist: String
let AVMetadataIdentifierQuickTimeMetadataPerformer: String
let AVMetadataIdentifierQuickTimeMetadataComposer: String
let AVMetadataIdentifierQuickTimeMetadataCredits: String
let AVMetadataIdentifierQuickTimeMetadataPhonogramRights: String
let AVMetadataIdentifierQuickTimeMetadataCameraIdentifier: String
let AVMetadataIdentifierQuickTimeMetadataCameraFrameReadoutTime: String
let AVMetadataIdentifierQuickTimeMetadataTitle: String
let AVMetadataIdentifierQuickTimeMetadataCollectionUser: String
let AVMetadataIdentifierQuickTimeMetadataRatingUser: String
let AVMetadataIdentifierQuickTimeMetadataLocationName: String
let AVMetadataIdentifierQuickTimeMetadataLocationBody: String
let AVMetadataIdentifierQuickTimeMetadataLocationNote: String
let AVMetadataIdentifierQuickTimeMetadataLocationRole: String
let AVMetadataIdentifierQuickTimeMetadataLocationDate: String
let AVMetadataIdentifierQuickTimeMetadataDirectionFacing: String
let AVMetadataIdentifierQuickTimeMetadataDirectionMotion: String
let AVMetadataIdentifierQuickTimeMetadataPreferredAffineTransform: String
let AVMetadataIdentifierQuickTimeMetadataDetectedFace: String
let AVMetadataIdentifierQuickTimeMetadataVideoOrientation: String
let AVMetadataIdentifierQuickTimeMetadataContentIdentifier: String
let AVMetadataIdentifieriTunesMetadataAlbum: String
let AVMetadataIdentifieriTunesMetadataArtist: String
let AVMetadataIdentifieriTunesMetadataUserComment: String
let AVMetadataIdentifieriTunesMetadataCoverArt: String
let AVMetadataIdentifieriTunesMetadataCopyright: String
let AVMetadataIdentifieriTunesMetadataReleaseDate: String
let AVMetadataIdentifieriTunesMetadataEncodedBy: String
let AVMetadataIdentifieriTunesMetadataPredefinedGenre: String
let AVMetadataIdentifieriTunesMetadataUserGenre: String
let AVMetadataIdentifieriTunesMetadataSongName: String
let AVMetadataIdentifieriTunesMetadataTrackSubTitle: String
let AVMetadataIdentifieriTunesMetadataEncodingTool: String
let AVMetadataIdentifieriTunesMetadataComposer: String
let AVMetadataIdentifieriTunesMetadataAlbumArtist: String
let AVMetadataIdentifieriTunesMetadataAccountKind: String
let AVMetadataIdentifieriTunesMetadataAppleID: String
let AVMetadataIdentifieriTunesMetadataArtistID: String
let AVMetadataIdentifieriTunesMetadataSongID: String
let AVMetadataIdentifieriTunesMetadataDiscCompilation: String
let AVMetadataIdentifieriTunesMetadataDiscNumber: String
let AVMetadataIdentifieriTunesMetadataGenreID: String
let AVMetadataIdentifieriTunesMetadataGrouping: String
let AVMetadataIdentifieriTunesMetadataPlaylistID: String
let AVMetadataIdentifieriTunesMetadataContentRating: String
let AVMetadataIdentifieriTunesMetadataBeatsPerMin: String
let AVMetadataIdentifieriTunesMetadataTrackNumber: String
let AVMetadataIdentifieriTunesMetadataArtDirector: String
let AVMetadataIdentifieriTunesMetadataArranger: String
let AVMetadataIdentifieriTunesMetadataAuthor: String
let AVMetadataIdentifieriTunesMetadataLyrics: String
let AVMetadataIdentifieriTunesMetadataAcknowledgement: String
let AVMetadataIdentifieriTunesMetadataConductor: String
let AVMetadataIdentifieriTunesMetadataDescription: String
let AVMetadataIdentifieriTunesMetadataDirector: String
let AVMetadataIdentifieriTunesMetadataEQ: String
let AVMetadataIdentifieriTunesMetadataLinerNotes: String
let AVMetadataIdentifieriTunesMetadataRecordCompany: String
let AVMetadataIdentifieriTunesMetadataOriginalArtist: String
let AVMetadataIdentifieriTunesMetadataPhonogramRights: String
let AVMetadataIdentifieriTunesMetadataProducer: String
let AVMetadataIdentifieriTunesMetadataPerformer: String
let AVMetadataIdentifieriTunesMetadataPublisher: String
let AVMetadataIdentifieriTunesMetadataSoundEngineer: String
let AVMetadataIdentifieriTunesMetadataSoloist: String
let AVMetadataIdentifieriTunesMetadataCredits: String
let AVMetadataIdentifieriTunesMetadataThanks: String
let AVMetadataIdentifieriTunesMetadataOnlineExtras: String
let AVMetadataIdentifieriTunesMetadataExecProducer: String
let AVMetadataIdentifierID3MetadataAudioEncryption: String
let AVMetadataIdentifierID3MetadataAttachedPicture: String
let AVMetadataIdentifierID3MetadataAudioSeekPointIndex: String
let AVMetadataIdentifierID3MetadataComments: String
let AVMetadataIdentifierID3MetadataCommercial: String
let AVMetadataIdentifierID3MetadataCommerical: String
let AVMetadataIdentifierID3MetadataEncryption: String
let AVMetadataIdentifierID3MetadataEqualization: String
let AVMetadataIdentifierID3MetadataEqualization2: String
let AVMetadataIdentifierID3MetadataEventTimingCodes: String
let AVMetadataIdentifierID3MetadataGeneralEncapsulatedObject: String
let AVMetadataIdentifierID3MetadataGroupIdentifier: String
let AVMetadataIdentifierID3MetadataInvolvedPeopleList_v23: String
let AVMetadataIdentifierID3MetadataLink: String
let AVMetadataIdentifierID3MetadataMusicCDIdentifier: String
let AVMetadataIdentifierID3MetadataMPEGLocationLookupTable: String
let AVMetadataIdentifierID3MetadataOwnership: String
let AVMetadataIdentifierID3MetadataPrivate: String
let AVMetadataIdentifierID3MetadataPlayCounter: String
let AVMetadataIdentifierID3MetadataPopularimeter: String
let AVMetadataIdentifierID3MetadataPositionSynchronization: String
let AVMetadataIdentifierID3MetadataRecommendedBufferSize: String
let AVMetadataIdentifierID3MetadataRelativeVolumeAdjustment: String
let AVMetadataIdentifierID3MetadataRelativeVolumeAdjustment2: String
let AVMetadataIdentifierID3MetadataReverb: String
let AVMetadataIdentifierID3MetadataSeek: String
let AVMetadataIdentifierID3MetadataSignature: String
let AVMetadataIdentifierID3MetadataSynchronizedLyric: String
let AVMetadataIdentifierID3MetadataSynchronizedTempoCodes: String
let AVMetadataIdentifierID3MetadataAlbumTitle: String
let AVMetadataIdentifierID3MetadataBeatsPerMinute: String
let AVMetadataIdentifierID3MetadataComposer: String
let AVMetadataIdentifierID3MetadataContentType: String
let AVMetadataIdentifierID3MetadataCopyright: String
let AVMetadataIdentifierID3MetadataDate: String
let AVMetadataIdentifierID3MetadataEncodingTime: String
let AVMetadataIdentifierID3MetadataPlaylistDelay: String
let AVMetadataIdentifierID3MetadataOriginalReleaseTime: String
let AVMetadataIdentifierID3MetadataRecordingTime: String
let AVMetadataIdentifierID3MetadataReleaseTime: String
let AVMetadataIdentifierID3MetadataTaggingTime: String
let AVMetadataIdentifierID3MetadataEncodedBy: String
let AVMetadataIdentifierID3MetadataLyricist: String
let AVMetadataIdentifierID3MetadataFileType: String
let AVMetadataIdentifierID3MetadataTime: String
let AVMetadataIdentifierID3MetadataInvolvedPeopleList_v24: String
let AVMetadataIdentifierID3MetadataContentGroupDescription: String
let AVMetadataIdentifierID3MetadataTitleDescription: String
let AVMetadataIdentifierID3MetadataSubTitle: String
let AVMetadataIdentifierID3MetadataInitialKey: String
let AVMetadataIdentifierID3MetadataLanguage: String
let AVMetadataIdentifierID3MetadataLength: String
let AVMetadataIdentifierID3MetadataMusicianCreditsList: String
let AVMetadataIdentifierID3MetadataMediaType: String
let AVMetadataIdentifierID3MetadataMood: String
let AVMetadataIdentifierID3MetadataOriginalAlbumTitle: String
let AVMetadataIdentifierID3MetadataOriginalFilename: String
let AVMetadataIdentifierID3MetadataOriginalLyricist: String
let AVMetadataIdentifierID3MetadataOriginalArtist: String
let AVMetadataIdentifierID3MetadataOriginalReleaseYear: String
let AVMetadataIdentifierID3MetadataFileOwner: String
let AVMetadataIdentifierID3MetadataLeadPerformer: String
let AVMetadataIdentifierID3MetadataBand: String
let AVMetadataIdentifierID3MetadataConductor: String
let AVMetadataIdentifierID3MetadataModifiedBy: String
let AVMetadataIdentifierID3MetadataPartOfASet: String
let AVMetadataIdentifierID3MetadataProducedNotice: String
let AVMetadataIdentifierID3MetadataPublisher: String
let AVMetadataIdentifierID3MetadataTrackNumber: String
let AVMetadataIdentifierID3MetadataRecordingDates: String
let AVMetadataIdentifierID3MetadataInternetRadioStationName: String
let AVMetadataIdentifierID3MetadataInternetRadioStationOwner: String
let AVMetadataIdentifierID3MetadataSize: String
let AVMetadataIdentifierID3MetadataAlbumSortOrder: String
let AVMetadataIdentifierID3MetadataPerformerSortOrder: String
let AVMetadataIdentifierID3MetadataTitleSortOrder: String
let AVMetadataIdentifierID3MetadataInternationalStandardRecordingCode: String
let AVMetadataIdentifierID3MetadataEncodedWith: String
let AVMetadataIdentifierID3MetadataSetSubtitle: String
let AVMetadataIdentifierID3MetadataYear: String
let AVMetadataIdentifierID3MetadataUserText: String
let AVMetadataIdentifierID3MetadataUniqueFileIdentifier: String
let AVMetadataIdentifierID3MetadataTermsOfUse: String
let AVMetadataIdentifierID3MetadataUnsynchronizedLyric: String
let AVMetadataIdentifierID3MetadataCommercialInformation: String
let AVMetadataIdentifierID3MetadataCopyrightInformation: String
let AVMetadataIdentifierID3MetadataOfficialAudioFileWebpage: String
let AVMetadataIdentifierID3MetadataOfficialArtistWebpage: String
let AVMetadataIdentifierID3MetadataOfficialAudioSourceWebpage: String
let AVMetadataIdentifierID3MetadataOfficialInternetRadioStationHomepage: String
let AVMetadataIdentifierID3MetadataPayment: String
let AVMetadataIdentifierID3MetadataOfficialPublisherWebpage: String
let AVMetadataIdentifierID3MetadataUserURL: String
let AVMetadataIdentifierIcyMetadataStreamTitle: String
let AVMetadataIdentifierIcyMetadataStreamURL: String
class AVMetadataItem : Object, AVAsynchronousKeyValueLoading, Copying, MutableCopying {
  var identifier: String? { get }
  var extendedLanguageTag: String? { get }
  @NSCopying var locale: Locale? { get }
  var time: CMTime { get }
  var duration: CMTime { get }
  var dataType: String? { get }
  @NSCopying var value: protocol<Copying, ObjectProtocol>? { get }
  var extraAttributes: [String : AnyObject]? { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
extension AVMetadataItem {
  @NSCopying var startDate: Date? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: Number? { get }
  var dateValue: Date? { get }
  var dataValue: Data? { get }
}
extension AVMetadataItem {
  func statusOfValueForKey(key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVMetadataItem {
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredByIdentifier identifier: String) -> [AVMetadataItem]
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredBy metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  class func identifierForKey(key: AnyObject, keySpace: String) -> String?
  class func keySpaceForIdentifier(identifier: String) -> String?
  class func keyForIdentifier(identifier: String) -> AnyObject?
  @NSCopying var key: protocol<Copying, ObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
class AVMutableMetadataItem : AVMetadataItem {
  var identifier: String?
  var extendedLanguageTag: String?
  @NSCopying var locale: Locale?
  var time: CMTime
  var duration: CMTime
  var dataType: String?
  @NSCopying var value: protocol<Copying, ObjectProtocol>?
  var extraAttributes: [String : AnyObject]?
  init()
}
extension AVMutableMetadataItem {
  @NSCopying var startDate: Date?
}
extension AVMutableMetadataItem {
  var keySpace: String?
  @NSCopying var key: protocol<Copying, ObjectProtocol>?
}
extension AVMetadataItem {
   init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
class AVMetadataItemValueRequest : Object {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respondWithValue(value: protocol<Copying, ObjectProtocol>)
  func respondWithError(error: Error)
  init()
}
class AVMetadataItemFilter : Object {
  class func forSharing() -> AVMetadataItemFilter
  init()
}
extension AVMetadataItem {
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], withLocale locale: Locale) -> [AVMetadataItem]
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace: String?) -> [AVMetadataItem]
}
class AVMetadataObject : Object {
  var time: CMTime { get }
  var duration: CMTime { get }
  var bounds: CGRect { get }
  var type: String! { get }
  init()
}
let AVMetadataObjectTypeFace: String
class AVMetadataFaceObject : AVMetadataObject, Copying {
  var faceID: Int { get }
  var hasRollAngle: Bool { get }
  var rollAngle: CGFloat { get }
  var hasYawAngle: Bool { get }
  var yawAngle: CGFloat { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
let AVMetadataObjectTypeUPCECode: String
let AVMetadataObjectTypeCode39Code: String
let AVMetadataObjectTypeCode39Mod43Code: String
let AVMetadataObjectTypeEAN13Code: String
let AVMetadataObjectTypeEAN8Code: String
let AVMetadataObjectTypeCode93Code: String
let AVMetadataObjectTypeCode128Code: String
let AVMetadataObjectTypePDF417Code: String
let AVMetadataObjectTypeQRCode: String
let AVMetadataObjectTypeAztecCode: String
let AVMetadataObjectTypeInterleaved2of5Code: String
let AVMetadataObjectTypeITF14Code: String
let AVMetadataObjectTypeDataMatrixCode: String
class AVMetadataMachineReadableCodeObject : AVMetadataObject {
  var corners: [AnyObject]! { get }
  var stringValue: String! { get }
  init()
}
let AVOutputSettingsPreset640x480: String
let AVOutputSettingsPreset960x540: String
let AVOutputSettingsPreset1280x720: String
let AVOutputSettingsPreset1920x1080: String
let AVOutputSettingsPreset3840x2160: String
class AVOutputSettingsAssistant : Object {
  class func availableOutputSettingsPresets() -> [String]
  convenience init?(preset presetIdentifier: String)
  var audioSettings: [String : AnyObject]? { get }
  var videoSettings: [String : AnyObject]? { get }
  var outputFileType: String { get }
}
extension AVOutputSettingsAssistant {
  var sourceAudioFormat: CMAudioFormatDescription?
  var sourceVideoFormat: CMVideoFormatDescription?
  var sourceVideoAverageFrameDuration: CMTime
  var sourceVideoMinFrameDuration: CMTime
}
enum AVPlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
class AVPlayer : Object {
  init(url URL: URL)
  init(playerItem item: AVPlayerItem)
  var status: AVPlayerStatus { get }
  var error: Error? { get }
  init()
}
extension AVPlayer {
  var rate: Float
  func play()
  func pause()
}
extension AVPlayer {
  var currentItem: AVPlayerItem? { get }
  func replaceCurrentItemWith(item: AVPlayerItem?)
  var actionAtItemEnd: AVPlayerActionAtItemEnd
}
enum AVPlayerActionAtItemEnd : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Advance
  case Pause
  case None
}
extension AVPlayer {
  func currentTime() -> CMTime
  func seekTo(date: Date)
  func seekTo(date: Date, completionHandler: (Bool) -> Void)
  func seekTo(time: CMTime)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  func seekTo(time: CMTime, completionHandler: (Bool) -> Void)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
}
extension AVPlayer {
  func setRate(rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  func prerollAtRate(rate: Float, completionHandler: ((Bool) -> Void)? = nil)
  func cancelPendingPrerolls()
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserverForInterval(interval: CMTime, queue: dispatch_queue_t?, usingBlock block: (CMTime) -> Void) -> AnyObject
  func addBoundaryTimeObserverForTimes(times: [Value], queue: dispatch_queue_t?, usingBlock block: () -> Void) -> AnyObject
  func removeTimeObserver(observer: AnyObject)
}
extension AVPlayer {
  var volume: Float
  var isMuted: Bool
  var isClosedCaptionDisplayEnabled: Bool
}
extension AVPlayer {
  var appliesMediaSelectionCriteriaAutomatically: Bool
  func setMediaSelectionCriteria(criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: String)
  func mediaSelectionCriteriaForMediaCharacteristic(mediaCharacteristic: String) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {
}
extension AVPlayer {
  var allowsExternalPlayback: Bool
  var isExternalPlaybackActive: Bool { get }
  var usesExternalPlaybackWhileExternalScreenIsActive: Bool
  var externalPlaybackVideoGravity: String
}
extension AVPlayer {
}
extension AVPlayer {
  var outputObscuredDueToInsufficientExternalProtection: Bool { get }
}
class AVQueuePlayer : AVPlayer {
  init(items: [AVPlayerItem])
  func items() -> [AVPlayerItem]
  func advanceToNextItem()
  func canInsertItem(item: AVPlayerItem, after afterItem: AVPlayerItem?) -> Bool
  func insertItem(item: AVPlayerItem, after afterItem: AVPlayerItem?)
  func removeItem(item: AVPlayerItem)
  func removeAllItems()
  init(url URL: URL)
  init(playerItem item: AVPlayerItem)
  init()
}
let AVPlayerItemTimeJumpedNotification: String
let AVPlayerItemDidPlayToEndTimeNotification: String
let AVPlayerItemFailedToPlayToEndTimeNotification: String
let AVPlayerItemPlaybackStalledNotification: String
let AVPlayerItemNewAccessLogEntryNotification: String
let AVPlayerItemNewErrorLogEntryNotification: String
let AVPlayerItemFailedToPlayToEndTimeErrorKey: String
enum AVPlayerItemStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
class AVPlayerItem : Object, Copying {
  convenience init(url URL: URL)
  convenience init(asset: AVAsset)
  init(asset: AVAsset, automaticallyLoadedAssetKeys: [String]?)
  var status: AVPlayerItemStatus { get }
  var error: Error? { get }
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension AVPlayerItem {
  var asset: AVAsset { get }
  var tracks: [AVPlayerItemTrack] { get }
  var duration: CMTime { get }
  var presentationSize: CGSize { get }
  var timedMetadata: [AVMetadataItem]? { get }
  var automaticallyLoadedAssetKeys: [String] { get }
}
extension AVPlayerItem {
  var canPlayFastForward: Bool { get }
  var canPlaySlowForward: Bool { get }
  var canPlayReverse: Bool { get }
  var canPlaySlowReverse: Bool { get }
  var canPlayFastReverse: Bool { get }
  var canStepForward: Bool { get }
  var canStepBackward: Bool { get }
}
extension AVPlayerItem {
  func currentTime() -> CMTime
  var forwardPlaybackEndTime: CMTime
  var reversePlaybackEndTime: CMTime
  var seekableTimeRanges: [Value] { get }
  func seekTo(time: CMTime)
  func seekTo(time: CMTime, completionHandler: (Bool) -> Void)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
  func cancelPendingSeeks()
  func currentDate() -> Date?
  func seekTo(date: Date) -> Bool
  func seekTo(date: Date, completionHandler: (Bool) -> Void) -> Bool
  func stepByCount(stepCount: Int)
  var timebase: CMTimebase? { get }
}
extension AVPlayerItem {
  @NSCopying var videoComposition: AVVideoComposition?
  var customVideoCompositor: AVVideoCompositing? { get }
  var seekingWaitsForVideoCompositionRendering: Bool
  var textStyleRules: [AVTextStyleRule]?
}
extension AVPlayerItem {
  var audioTimePitchAlgorithm: String
  @NSCopying var audioMix: AVAudioMix?
}
extension AVPlayerItem {
  var loadedTimeRanges: [Value] { get }
  var isPlaybackLikelyToKeepUp: Bool { get }
  var isPlaybackBufferFull: Bool { get }
  var isPlaybackBufferEmpty: Bool { get }
  var canUseNetworkResourcesForLiveStreamingWhilePaused: Bool
}
extension AVPlayerItem {
  var preferredPeakBitRate: Double
}
extension AVPlayerItem {
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  func selectMediaOptionAutomaticallyIn(mediaSelectionGroup: AVMediaSelectionGroup)
  func selectedMediaOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  var currentMediaSelection: AVMediaSelection { get }
}
extension AVPlayerItem {
  func accessLog() -> AVPlayerItemAccessLog?
  func errorLog() -> AVPlayerItemErrorLog?
}
extension AVPlayerItem {
  func addOutput(output: AVPlayerItemOutput)
  func removeOutput(output: AVPlayerItemOutput)
  var outputs: [AVPlayerItemOutput] { get }
}
class AVPlayerItemAccessLog : Object, Copying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemAccessLogEvent] { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AVPlayerItemErrorLog : Object, Copying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemErrorLogEvent] { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AVPlayerItemAccessLogEvent : Object, Copying {
  var numberOfMediaRequests: Int { get }
  var playbackStartDate: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var numberOfServerAddressChanges: Int { get }
  var playbackSessionID: String? { get }
  var playbackStartOffset: TimeInterval { get }
  var segmentsDownloadedDuration: TimeInterval { get }
  var durationWatched: TimeInterval { get }
  var numberOfStalls: Int { get }
  var numberOfBytesTransferred: Int64 { get }
  var transferDuration: TimeInterval { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  var startupTime: TimeInterval { get }
  var downloadOverdue: Int { get }
  var observedMaxBitrate: Double { get }
  var observedMinBitrate: Double { get }
  var observedBitrateStandardDeviation: Double { get }
  var playbackType: String? { get }
  var mediaRequestsWWAN: Int { get }
  var switchBitrate: Double { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AVPlayerItemErrorLogEvent : Object, Copying {
  var date: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var playbackSessionID: String? { get }
  var errorStatusCode: Int { get }
  var errorDomain: String { get }
  var errorComment: String? { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AVPlayerItemOutput : Object {
  func itemTimeForHostTime(hostTimeInSeconds: CFTimeInterval) -> CMTime
  func itemTimeForMachAbsoluteTime(machAbsoluteTime: Int64) -> CMTime
  var suppressesPlayerRendering: Bool
  init()
}
class AVPlayerItemVideoOutput : AVPlayerItemOutput {
  init(pixelBufferAttributes: [String : AnyObject]? = [:])
  func hasNewPixelBufferForItemTime(itemTime: CMTime) -> Bool
  func copyPixelBufferForItemTime(itemTime: CMTime, itemTimeForDisplay outItemTimeForDisplay: UnsafeMutablePointer<CMTime>) -> CVPixelBuffer?
  func setDelegate(delegate: AVPlayerItemOutputPullDelegate?, queue delegateQueue: dispatch_queue_t?)
  func requestNotificationOfMediaDataChangeWithAdvanceInterval(interval: TimeInterval)
  unowned(unsafe) var delegate: @sil_unmanaged AVPlayerItemOutputPullDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  convenience init()
}
protocol AVPlayerItemOutputPullDelegate : ObjectProtocol {
  optional func outputMediaDataWillChange(sender: AVPlayerItemOutput)
  optional func outputSequenceWasFlushed(output: AVPlayerItemOutput)
}
class AVPlayerItemLegibleOutput : AVPlayerItemOutput {
  func setDelegate(delegate: AVPlayerItemLegibleOutputPushDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVPlayerItemLegibleOutputPushDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  var advanceIntervalForDelegateInvocation: TimeInterval
  init()
}
extension AVPlayerItemLegibleOutput {
  init(mediaSubtypesForNativeRepresentation subtypes: [Number])
}
extension AVPlayerItemLegibleOutput {
  var textStylingResolution: String
}
let AVPlayerItemLegibleOutputTextStylingResolutionDefault: String
let AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly: String
protocol AVPlayerItemLegibleOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  optional func legibleOutput(output: AVPlayerItemLegibleOutput, didOutputAttributedStrings strings: [AttributedString], nativeSampleBuffers nativeSamples: [AnyObject], forItemTime itemTime: CMTime)
}
protocol AVPlayerItemOutputPushDelegate : ObjectProtocol {
  optional func outputSequenceWasFlushed(output: AVPlayerItemOutput)
}
class AVPlayerItemMetadataOutput : AVPlayerItemOutput {
  init(identifiers: [String]?)
  func setDelegate(delegate: AVPlayerItemMetadataOutputPushDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVPlayerItemMetadataOutputPushDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  var advanceIntervalForDelegateInvocation: TimeInterval
  convenience init()
}
protocol AVPlayerItemMetadataOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  optional func metadataOutput(output: AVPlayerItemMetadataOutput, didOutputTimedMetadataGroups groups: [AVTimedMetadataGroup], from track: AVPlayerItemTrack)
}
class AVPlayerItemTrack : Object {
  var assetTrack: AVAssetTrack { get }
  var isEnabled: Bool
  var currentVideoFrameRate: Float { get }
  init()
}
class AVPlayerLayer : CALayer {
   init(player: AVPlayer?)
  var player: AVPlayer?
  var videoGravity: String
  var isReadyForDisplay: Bool { get }
  var videoRect: CGRect { get }
  var pixelBufferAttributes: [String : AnyObject]?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
class AVPlayerMediaSelectionCriteria : Object {
  var preferredLanguages: [String]? { get }
  var preferredMediaCharacteristics: [String]? { get }
  init(preferredLanguages: [String]?, preferredMediaCharacteristics: [String]?)
  init()
}
enum AVQueuedSampleBufferRenderingStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Rendering
  case Failed
}
let AVSampleBufferDisplayLayerFailedToDecodeNotification: String
let AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey: String
class AVSampleBufferDisplayLayer : CALayer {
  var controlTimebase: CMTimebase?
  var videoGravity: String
  var status: AVQueuedSampleBufferRenderingStatus { get }
  var error: Error? { get }
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
extension AVSampleBufferDisplayLayer {
  func enqueueSampleBuffer(sampleBuffer: CMSampleBuffer)
  func flush()
  func flushAndRemoveImage()
  var isReadyForMoreMediaData: Bool { get }
  func requestMediaDataWhenReadyOn(queue: dispatch_queue_t, usingBlock block: () -> Void)
  func stopRequestingMediaData()
}
enum AVSpeechBoundary : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case Word
}
enum AVSpeechSynthesisVoiceQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Enhanced
}
let AVSpeechUtteranceMinimumSpeechRate: Float
let AVSpeechUtteranceMaximumSpeechRate: Float
let AVSpeechUtteranceDefaultSpeechRate: Float
let AVSpeechSynthesisVoiceIdentifierAlex: String
class AVSpeechSynthesisVoice : Object, SecureCoding {
  class func speechVoices() -> [AVSpeechSynthesisVoice]
  class func currentLanguageCode() -> String
   init?(language languageCode: String?)
   init?(identifier: String)
  var language: String { get }
  var identifier: String { get }
  var name: String { get }
  var quality: AVSpeechSynthesisVoiceQuality { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class AVSpeechUtterance : Object, Copying, SecureCoding {
  init(string: String)
  var voice: AVSpeechSynthesisVoice?
  var speechString: String { get }
  var rate: Float
  var pitchMultiplier: Float
  var volume: Float
  var preUtteranceDelay: TimeInterval
  var postUtteranceDelay: TimeInterval
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class AVSpeechSynthesizer : Object {
  unowned(unsafe) var delegate: @sil_unmanaged AVSpeechSynthesizerDelegate?
  var isSpeaking: Bool { get }
  var isPaused: Bool { get }
  func speak(utterance: AVSpeechUtterance)
  func stopSpeakingAt(boundary: AVSpeechBoundary) -> Bool
  func pauseSpeakingAt(boundary: AVSpeechBoundary) -> Bool
  func continueSpeaking() -> Bool
  init()
}
protocol AVSpeechSynthesizerDelegate : ObjectProtocol {
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didFinishSpeechUtterance utterance: AVSpeechUtterance)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didPause utterance: AVSpeechUtterance)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance)
}
class AVSynchronizedLayer : CALayer {
   init(playerItem: AVPlayerItem)
  var playerItem: AVPlayerItem?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
class AVTextStyleRule : Object, Copying {
  class func propertyListFor(textStyleRules: [AVTextStyleRule]) -> AnyObject
  class func textStyleRulesFromPropertyList(plist: AnyObject) -> [AVTextStyleRule]?
  convenience init?(textMarkupAttributes: [String : AnyObject] = [:])
  init?(textMarkupAttributes: [String : AnyObject] = [:], textSelector: String?)
  var textMarkupAttributes: [String : AnyObject] { get }
  var textSelector: String? { get }
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension Value {
   init(cmTime time: CMTime)
  var cmTimeValue: CMTime { get }
   init(cmTimeRange timeRange: CMTimeRange)
  var cmTimeRangeValue: CMTimeRange { get }
   init(cmTimeMapping timeMapping: CMTimeMapping)
  var cmTimeMappingValue: CMTimeMapping { get }
}
extension Coder {
  func encode(time: CMTime, forKey key: String)
  func decodeCMTimeForKey(key: String) -> CMTime
  func encode(timeRange: CMTimeRange, forKey key: String)
  func decodeCMTimeRangeForKey(key: String) -> CMTimeRange
  func encode(timeMapping: CMTimeMapping, forKey key: String)
  func decodeCMTimeMappingForKey(key: String) -> CMTimeMapping
}
class AVMetadataGroup : Object {
  var items: [AVMetadataItem] { get }
  init()
}
class AVTimedMetadataGroup : AVMetadataGroup, Copying, MutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
  var items: [AVMetadataItem] { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
extension AVTimedMetadataGroup {
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
  var timeRange: CMTimeRange
  var items: [AVMetadataItem]
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  init?(sampleBuffer: CMSampleBuffer)
  init()
}
class AVDateRangeMetadataGroup : AVMetadataGroup, Copying, MutableCopying {
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  @NSCopying var startDate: Date { get }
  @NSCopying var endDate: Date? { get }
  var items: [AVMetadataItem] { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
  @NSCopying var startDate: Date
  @NSCopying var endDate: Date?
  var items: [AVMetadataItem]
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  init()
}
func AVMakeRectWithAspectRatioInsideRect(aspectRatio: CGSize, _ boundingRect: CGRect) -> CGRect
struct AVPixelAspectRatio {
  var horizontalSpacing: Int
  var verticalSpacing: Int
  init()
  init(horizontalSpacing: Int, verticalSpacing: Int)
}
struct AVEdgeWidths {
  var left: CGFloat
  var top: CGFloat
  var right: CGFloat
  var bottom: CGFloat
  init()
  init(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat)
}
class AVVideoCompositionRenderContext : Object {
  var size: CGSize { get }
  var renderTransform: CGAffineTransform { get }
  var renderScale: Float { get }
  var pixelAspectRatio: AVPixelAspectRatio { get }
  var edgeWidths: AVEdgeWidths { get }
  var highQualityRendering: Bool { get }
  var videoComposition: AVVideoComposition { get }
  func newPixelBuffer() -> CVPixelBuffer?
  init()
}
protocol AVVideoCompositing : ObjectProtocol {
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }
  var requiredPixelBufferAttributesForRenderContext: [String : AnyObject] { get }
  func renderContextChanged(newRenderContext: AVVideoCompositionRenderContext)
  func start(asyncVideoCompositionRequest: AVAsynchronousVideoCompositionRequest)
  optional func cancelAllPendingVideoCompositionRequests()
}
class AVAsynchronousVideoCompositionRequest : Object, Copying {
  var renderContext: AVVideoCompositionRenderContext { get }
  var compositionTime: CMTime { get }
  var sourceTrackIDs: [Number] { get }
  var videoCompositionInstruction: AVVideoCompositionInstructionProtocol { get }
  func sourceFrameByTrackID(trackID: CMPersistentTrackID) -> CVPixelBuffer?
  func finishWithComposedVideoFrame(composedVideoFrame: CVPixelBuffer)
  func finishWithError(error: Error)
  func finishCancelledRequest()
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AVAsynchronousCIImageFilteringRequest : Object, Copying {
  var renderSize: CGSize { get }
  var compositionTime: CMTime { get }
  func finishWithError(error: Error)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol AVVideoCompositionInstructionProtocol : ObjectProtocol {
  var timeRange: CMTimeRange { get }
  var enablePostProcessing: Bool { get }
  var containsTweening: Bool { get }
  var requiredSourceTrackIDs: [Value]? { get }
  var passthroughTrackID: CMPersistentTrackID { get }
}
class AVVideoComposition : Object, Copying, MutableCopying {
   init(propertiesOf asset: AVAsset)
  var customVideoCompositorClass: AnyObject.Type? { get }
  var frameDuration: CMTime { get }
  var renderSize: CGSize { get }
  var renderScale: Float { get }
  var instructions: [AVVideoCompositionInstructionProtocol] { get }
  var animationTool: AVVideoCompositionCoreAnimationTool? { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
extension AVVideoComposition {
   init(asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
class AVMutableVideoComposition : AVVideoComposition {
   init(propertiesOf asset: AVAsset)
  var customVideoCompositorClass: AnyObject.Type?
  var frameDuration: CMTime
  var renderSize: CGSize
  var renderScale: Float
  var instructions: [AVVideoCompositionInstructionProtocol]
  var animationTool: AVVideoCompositionCoreAnimationTool?
  init()
}
extension AVMutableVideoComposition {
   init(asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
class AVVideoCompositionInstruction : Object, SecureCoding, Copying, MutableCopying, AVVideoCompositionInstructionProtocol {
  var timeRange: CMTimeRange { get }
  var backgroundColor: CGColor? { get }
  var layerInstructions: [AVVideoCompositionLayerInstruction] { get }
  var enablePostProcessing: Bool { get }
  var requiredSourceTrackIDs: [Value] { get }
  var passthroughTrackID: CMPersistentTrackID { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  var containsTweening: Bool { get }
}
class AVMutableVideoCompositionInstruction : AVVideoCompositionInstruction {
  var timeRange: CMTimeRange
  var backgroundColor: CGColor?
  var layerInstructions: [AVVideoCompositionLayerInstruction]
  var enablePostProcessing: Bool
  init()
  init?(coder aDecoder: Coder)
}
class AVVideoCompositionLayerInstruction : Object, SecureCoding, Copying, MutableCopying {
  var trackID: CMPersistentTrackID { get }
  func getTransformRampFor(time: CMTime, start startTransform: UnsafeMutablePointer<CGAffineTransform>, end endTransform: UnsafeMutablePointer<CGAffineTransform>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  func getOpacityRampFor(time: CMTime, startOpacity: UnsafeMutablePointer<Float>, endOpacity: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  func getCropRectangleRampFor(time: CMTime, startCropRectangle: UnsafeMutablePointer<CGRect>, endCropRectangle: UnsafeMutablePointer<CGRect>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
class AVMutableVideoCompositionLayerInstruction : AVVideoCompositionLayerInstruction {
  convenience init(assetTrack track: AVAssetTrack)
  var trackID: CMPersistentTrackID
  func setTransformRampFromStart(startTransform: CGAffineTransform, toEnd endTransform: CGAffineTransform, timeRange: CMTimeRange)
  func setTransform(transform: CGAffineTransform, at time: CMTime)
  func setOpacityRampFromStartOpacity(startOpacity: Float, toEndOpacity endOpacity: Float, timeRange: CMTimeRange)
  func setOpacity(opacity: Float, at time: CMTime)
  func setCropRectangleRampFromStartCropRectangle(startCropRectangle: CGRect, toEndCropRectangle endCropRectangle: CGRect, timeRange: CMTimeRange)
  func setCropRectangle(cropRectangle: CGRect, at time: CMTime)
  init()
  init?(coder aDecoder: Coder)
}
class AVVideoCompositionCoreAnimationTool : Object {
  convenience init(additionalLayer layer: CALayer, asTrackID trackID: CMPersistentTrackID)
  convenience init(postProcessingAsVideoLayer videoLayer: CALayer, in animationLayer: CALayer)
  convenience init(postProcessingAsVideoLayers videoLayers: [CALayer], in animationLayer: CALayer)
  init()
}
extension AVAsset {
  func unusedTrackID() -> CMPersistentTrackID
}
extension AVVideoComposition {
  func isValidFor(asset: AVAsset?, timeRange: CMTimeRange, validationDelegate: AVVideoCompositionValidationHandling?) -> Bool
}
protocol AVVideoCompositionValidationHandling : ObjectProtocol {
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidValueForKey key: String) -> Bool
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingEmpty timeRange: CMTimeRange) -> Bool
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTimeRangeIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol) -> Bool
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTrackIDIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol, layerInstruction: AVVideoCompositionLayerInstruction, asset: AVAsset) -> Bool
}
let AVVideoCodecKey: String
let AVVideoCodecH264: String
let AVVideoCodecJPEG: String
let AVVideoWidthKey: String
let AVVideoHeightKey: String
let AVVideoPixelAspectRatioKey: String
let AVVideoPixelAspectRatioHorizontalSpacingKey: String
let AVVideoPixelAspectRatioVerticalSpacingKey: String
let AVVideoCleanApertureKey: String
let AVVideoCleanApertureWidthKey: String
let AVVideoCleanApertureHeightKey: String
let AVVideoCleanApertureHorizontalOffsetKey: String
let AVVideoCleanApertureVerticalOffsetKey: String
let AVVideoScalingModeKey: String
let AVVideoScalingModeFit: String
let AVVideoScalingModeResize: String
let AVVideoScalingModeResizeAspect: String
let AVVideoScalingModeResizeAspectFill: String
let AVVideoCompressionPropertiesKey: String
let AVVideoAverageBitRateKey: String
let AVVideoQualityKey: String
let AVVideoMaxKeyFrameIntervalKey: String
let AVVideoMaxKeyFrameIntervalDurationKey: String
let AVVideoAllowFrameReorderingKey: String
let AVVideoProfileLevelKey: String
let AVVideoProfileLevelH264Baseline30: String
let AVVideoProfileLevelH264Baseline31: String
let AVVideoProfileLevelH264Baseline41: String
let AVVideoProfileLevelH264BaselineAutoLevel: String
let AVVideoProfileLevelH264Main30: String
let AVVideoProfileLevelH264Main31: String
let AVVideoProfileLevelH264Main32: String
let AVVideoProfileLevelH264Main41: String
let AVVideoProfileLevelH264MainAutoLevel: String
let AVVideoProfileLevelH264High40: String
let AVVideoProfileLevelH264High41: String
let AVVideoProfileLevelH264HighAutoLevel: String
let AVVideoH264EntropyModeKey: String
let AVVideoH264EntropyModeCAVLC: String
let AVVideoH264EntropyModeCABAC: String
let AVVideoExpectedSourceFrameRateKey: String
let AVVideoAverageNonDroppableFrameRateKey: String
