
/// Category for creating language options from AV types
extension AVMediaSelectionOption {
  /// Will create a language option from the AVMediaSelectionOption
  /// Returns nil if the AVMediaSelectionOption does not represent an Audible or Legible selection option.
  func makeNowPlayingInfoLanguageOption() -> MPNowPlayingInfoLanguageOption?
}
extension AVMediaSelectionGroup {
  /// Will create a language option group from the AVMediaSelectionGroup
  /// Any AVMediaSelectionOptions in the AVMediaSelectionGroup not representing
  /// Audible or Legible selection options will be ignored.
  func makeNowPlayingInfoLanguageOptionGroup() -> MPNowPlayingInfoLanguageOptionGroup
}
/// MPContentItem represents high-level metadata for a particular media item for
/// representation outside the client application. Examples of media items that a
/// developer might want to represent include song files, streaming audio URLs,
/// or radio stations.
class MPContentItem : NSObject {
  /// A unique identifier for this content item. (Required)
  var identifier: String { get }
  /// A title for this item. Usually this would be the track name, if representing
  /// a song, the episode name of a podcast, etc.
  var title: String?
  /// A subtitle for this item. If this were representing a song, this would
  /// usually be the artist or composer.
  var subtitle: String?
  /// Artwork for this item. Examples of artwork for a content item are the album
  /// cover for a song, or a movie poster for a movie.
  var artwork: MPMediaItemArtwork?
  /// Represents whether the content item is a container of other content items.
  /// An example of a container content item might be an album, which contains
  /// multiple songs.
  var container: Bool
  /// Represents whether this content item is playable or not. A content item can
  /// be both a container, and playable. For example, a container item like a
  /// playlist might be set as playable if the app would like to provide the
  /// option of playing the playlist's tracks in order when selected.
  var playable: Bool
  /// Represents the current playback progress of the item.
  /// 0.0 = not watched/listened/viewed, 1.0 = fully watched/listened/viewed
  /// Default is -1.0 (no progress indicator shown)
  var playbackProgress: Float
  /// Designated initializer. A unique identifier is required to identify the item
  /// for later use.
  init(identifier: String)
  convenience init()
}
typealias MPMediaEntityPersistentID = UInt64
class MPMediaEntity : NSObject, NSSecureCoding {
  class func canFilterByProperty(property: String) -> Bool
  func enumerateValuesForProperties(properties: Set<String>, usingBlock block: (String, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  subscript (key: AnyObject) -> AnyObject? { get }
  func valueForProperty(property: String) -> AnyObject?
  var persistentID: MPMediaEntityPersistentID { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let MPMediaEntityPropertyPersistentID: String
struct MPMediaType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Music: MPMediaType { get }
  static var Podcast: MPMediaType { get }
  static var AudioBook: MPMediaType { get }
  static var AudioITunesU: MPMediaType { get }
  static var AnyAudio: MPMediaType { get }
  static var Movie: MPMediaType { get }
  static var TVShow: MPMediaType { get }
  static var VideoPodcast: MPMediaType { get }
  static var MusicVideo: MPMediaType { get }
  static var VideoITunesU: MPMediaType { get }
  static var HomeVideo: MPMediaType { get }
  static var AnyVideo: MPMediaType { get }
  static var Any: MPMediaType { get }
}
class MPMediaItem : MPMediaEntity {
  var persistentID: MPMediaEntityPersistentID { get }
  var mediaType: MPMediaType { get }
  var title: String? { get }
  var albumTitle: String? { get }
  var albumPersistentID: MPMediaEntityPersistentID { get }
  var artist: String? { get }
  var artistPersistentID: MPMediaEntityPersistentID { get }
  var albumArtist: String? { get }
  var albumArtistPersistentID: MPMediaEntityPersistentID { get }
  var genre: String? { get }
  var genrePersistentID: MPMediaEntityPersistentID { get }
  var composer: String? { get }
  var composerPersistentID: MPMediaEntityPersistentID { get }
  var playbackDuration: NSTimeInterval { get }
  var albumTrackNumber: Int { get }
  var albumTrackCount: Int { get }
  var discNumber: Int { get }
  var discCount: Int { get }
  var artwork: MPMediaItemArtwork? { get }
  var lyrics: String? { get }
  var compilation: Bool { get }
  var releaseDate: NSDate? { get }
  var beatsPerMinute: Int { get }
  var comments: String? { get }
  var assetURL: NSURL? { get }
  var cloudItem: Bool { get }
  var protectedAsset: Bool { get }
  var podcastTitle: String? { get }
  var podcastPersistentID: MPMediaEntityPersistentID { get }
  var playCount: Int { get }
  var skipCount: Int { get }
  var rating: Int { get }
  var lastPlayedDate: NSDate? { get }
  var userGrouping: String? { get }
  var bookmarkTime: NSTimeInterval { get }
  init()
  init?(coder aDecoder: NSCoder)
}
let MPMediaItemPropertyPersistentID: String
let MPMediaItemPropertyMediaType: String
let MPMediaItemPropertyTitle: String
let MPMediaItemPropertyAlbumTitle: String
let MPMediaItemPropertyAlbumPersistentID: String
let MPMediaItemPropertyArtist: String
let MPMediaItemPropertyArtistPersistentID: String
let MPMediaItemPropertyAlbumArtist: String
let MPMediaItemPropertyAlbumArtistPersistentID: String
let MPMediaItemPropertyGenre: String
let MPMediaItemPropertyGenrePersistentID: String
let MPMediaItemPropertyComposer: String
let MPMediaItemPropertyComposerPersistentID: String
let MPMediaItemPropertyPlaybackDuration: String
let MPMediaItemPropertyAlbumTrackNumber: String
let MPMediaItemPropertyAlbumTrackCount: String
let MPMediaItemPropertyDiscNumber: String
let MPMediaItemPropertyDiscCount: String
let MPMediaItemPropertyArtwork: String
let MPMediaItemPropertyLyrics: String
let MPMediaItemPropertyIsCompilation: String
let MPMediaItemPropertyReleaseDate: String
let MPMediaItemPropertyBeatsPerMinute: String
let MPMediaItemPropertyComments: String
let MPMediaItemPropertyAssetURL: String
let MPMediaItemPropertyIsCloudItem: String
let MPMediaItemPropertyHasProtectedAsset: String
let MPMediaItemPropertyPodcastTitle: String
let MPMediaItemPropertyPodcastPersistentID: String
let MPMediaItemPropertyPlayCount: String
let MPMediaItemPropertySkipCount: String
let MPMediaItemPropertyRating: String
let MPMediaItemPropertyLastPlayedDate: String
let MPMediaItemPropertyUserGrouping: String
let MPMediaItemPropertyBookmarkTime: String
class MPMediaItemArtwork : NSObject {
  init(image: UIImage)
  func imageWithSize(size: CGSize) -> UIImage?
  var bounds: CGRect { get }
  var imageCropRect: CGRect { get }
  convenience init()
}
class MPMediaItemCollection : MPMediaEntity {
  init(items: [MPMediaItem])
  var items: [MPMediaItem] { get }
  var representativeItem: MPMediaItem? { get }
  var count: Int { get }
  var mediaTypes: MPMediaType { get }
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class MPMediaLibrary : NSObject, NSSecureCoding {
  class func defaultMediaLibrary() -> MPMediaLibrary
  var lastModifiedDate: NSDate { get }
  func beginGeneratingLibraryChangeNotifications()
  func endGeneratingLibraryChangeNotifications()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let MPMediaLibraryDidChangeNotification: String
class MPMediaPickerController : UIViewController {
  init(mediaTypes: MPMediaType)
  var mediaTypes: MPMediaType { get }
  weak var delegate: @sil_weak MPMediaPickerControllerDelegate?
  var allowsPickingMultipleItems: Bool
  var showsCloudItems: Bool
  var showsItemsWithProtectedAssets: Bool
  var prompt: String?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol MPMediaPickerControllerDelegate : NSObjectProtocol {
  optional func mediaPicker(mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection)
  optional func mediaPickerDidCancel(mediaPicker: MPMediaPickerController)
}
protocol MPMediaPlayback {
  func prepareToPlay()
  var isPreparedToPlay: Bool { get }
  func play()
  func pause()
  func stop()
  var currentPlaybackTime: NSTimeInterval { get set }
  var currentPlaybackRate: Float { get set }
  func beginSeekingForward()
  func beginSeekingBackward()
  func endSeeking()
}
let MPMediaPlaybackIsPreparedToPlayDidChangeNotification: String
struct MPMediaPlaylistAttribute : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MPMediaPlaylistAttribute { get }
  static var OnTheGo: MPMediaPlaylistAttribute { get }
  static var Smart: MPMediaPlaylistAttribute { get }
  static var Genius: MPMediaPlaylistAttribute { get }
}
class MPMediaPlaylist : MPMediaItemCollection {
  var persistentID: MPMediaEntityPersistentID { get }
  var name: String? { get }
  var playlistAttributes: MPMediaPlaylistAttribute { get }
  var seedItems: [MPMediaItem]? { get }
  init(items: [MPMediaItem])
  convenience init()
  init?(coder aDecoder: NSCoder)
}
let MPMediaPlaylistPropertyPersistentID: String
let MPMediaPlaylistPropertyName: String
let MPMediaPlaylistPropertyPlaylistAttributes: String
let MPMediaPlaylistPropertySeedItems: String
enum MPMediaGrouping : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Title
  case Album
  case Artist
  case AlbumArtist
  case Composer
  case Genre
  case Playlist
  case PodcastTitle
}
class MPMediaQuery : NSObject, NSSecureCoding, NSCopying {
  init(filterPredicates: Set<MPMediaPredicate>?)
  var filterPredicates: Set<MPMediaPredicate>?
  func addFilterPredicate(predicate: MPMediaPredicate)
  func removeFilterPredicate(predicate: MPMediaPredicate)
  var items: [MPMediaItem]? { get }
  var collections: [MPMediaItemCollection]? { get }
  var groupingType: MPMediaGrouping
  var itemSections: [MPMediaQuerySection]? { get }
  var collectionSections: [MPMediaQuerySection]? { get }
  class func albumsQuery() -> MPMediaQuery
  class func artistsQuery() -> MPMediaQuery
  class func songsQuery() -> MPMediaQuery
  class func playlistsQuery() -> MPMediaQuery
  class func podcastsQuery() -> MPMediaQuery
  class func audiobooksQuery() -> MPMediaQuery
  class func compilationsQuery() -> MPMediaQuery
  class func composersQuery() -> MPMediaQuery
  class func genresQuery() -> MPMediaQuery
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class MPMediaPredicate : NSObject, NSSecureCoding {
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum MPMediaPredicateComparison : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EqualTo
  case Contains
}
class MPMediaPropertyPredicate : MPMediaPredicate {
   init(value: AnyObject?, forProperty property: String)
   init(value: AnyObject?, forProperty property: String, comparisonType: MPMediaPredicateComparison)
  var property: String { get }
  @NSCopying var value: AnyObject? { get }
  var comparisonType: MPMediaPredicateComparison { get }
  init()
  init?(coder aDecoder: NSCoder)
}
extension MPMediaItem {
  class func persistentIDPropertyForGroupingType(groupingType: MPMediaGrouping) -> String
  class func titlePropertyForGroupingType(groupingType: MPMediaGrouping) -> String
}
class MPMediaQuerySection : NSObject, NSSecureCoding, NSCopying {
  var title: String { get }
  var range: NSRange { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum MPMovieScalingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case AspectFit
  case AspectFill
  case Fill
}
enum MPMoviePlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Playing
  case Paused
  case Interrupted
  case SeekingForward
  case SeekingBackward
}
struct MPMovieLoadState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Unknown: MPMovieLoadState { get }
  static var Playable: MPMovieLoadState { get }
  static var PlaythroughOK: MPMovieLoadState { get }
  static var Stalled: MPMovieLoadState { get }
}
enum MPMovieRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case One
}
enum MPMovieControlStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Embedded
  case Fullscreen
  static var Default: MPMovieControlStyle { get }
}
enum MPMovieFinishReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PlaybackEnded
  case PlaybackError
  case UserExited
}
struct MPMovieMediaTypeMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MPMovieMediaTypeMask { get }
  static var Video: MPMovieMediaTypeMask { get }
  static var Audio: MPMovieMediaTypeMask { get }
}
enum MPMovieSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case File
  case Streaming
}
class MPMoviePlayerController : NSObject, MPMediaPlayback {
  init!(contentURL url: NSURL!)
  @NSCopying var contentURL: NSURL!
  var view: UIView! { get }
  var backgroundView: UIView! { get }
  var playbackState: MPMoviePlaybackState { get }
  var loadState: MPMovieLoadState { get }
  var controlStyle: MPMovieControlStyle
  var repeatMode: MPMovieRepeatMode
  var shouldAutoplay: Bool
  var fullscreen: Bool
  func setFullscreen(fullscreen: Bool, animated: Bool)
  var scalingMode: MPMovieScalingMode
  var readyForDisplay: Bool { get }
  convenience init()
  func prepareToPlay()
  var isPreparedToPlay: Bool { get }
  func play()
  func pause()
  func stop()
  var currentPlaybackTime: NSTimeInterval
  var currentPlaybackRate: Float
  func beginSeekingForward()
  func beginSeekingBackward()
  func endSeeking()
}
extension MPMoviePlayerController {
  var movieMediaTypes: MPMovieMediaTypeMask { get }
  var movieSourceType: MPMovieSourceType
  var duration: NSTimeInterval { get }
  var playableDuration: NSTimeInterval { get }
  var naturalSize: CGSize { get }
  var initialPlaybackTime: NSTimeInterval
  var endPlaybackTime: NSTimeInterval
  var allowsAirPlay: Bool
  var airPlayVideoActive: Bool { get }
}
let MPMoviePlayerScalingModeDidChangeNotification: String
let MPMoviePlayerPlaybackDidFinishNotification: String
let MPMoviePlayerPlaybackDidFinishReasonUserInfoKey: String
let MPMoviePlayerPlaybackStateDidChangeNotification: String
let MPMoviePlayerLoadStateDidChangeNotification: String
let MPMoviePlayerNowPlayingMovieDidChangeNotification: String
let MPMoviePlayerWillEnterFullscreenNotification: String
let MPMoviePlayerDidEnterFullscreenNotification: String
let MPMoviePlayerWillExitFullscreenNotification: String
let MPMoviePlayerDidExitFullscreenNotification: String
let MPMoviePlayerFullscreenAnimationDurationUserInfoKey: String
let MPMoviePlayerFullscreenAnimationCurveUserInfoKey: String
let MPMoviePlayerIsAirPlayVideoActiveDidChangeNotification: String
let MPMoviePlayerReadyForDisplayDidChangeNotification: String
let MPMovieMediaTypesAvailableNotification: String
let MPMovieSourceTypeAvailableNotification: String
let MPMovieDurationAvailableNotification: String
let MPMovieNaturalSizeAvailableNotification: String
enum MPMovieTimeOption : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NearestKeyFrame
  case Exact
}
extension MPMoviePlayerController {
  func requestThumbnailImagesAtTimes(playbackTimes: [AnyObject]!, timeOption option: MPMovieTimeOption)
  func cancelAllThumbnailImageRequests()
}
let MPMoviePlayerThumbnailImageRequestDidFinishNotification: String
let MPMoviePlayerThumbnailImageKey: String
let MPMoviePlayerThumbnailTimeKey: String
let MPMoviePlayerThumbnailErrorKey: String
extension MPMoviePlayerController {
  var timedMetadata: [AnyObject]! { get }
}
class MPTimedMetadata : NSObject {
  var key: String! { get }
  var keyspace: String! { get }
  var value: AnyObject! { get }
  var timestamp: NSTimeInterval { get }
  var allMetadata: [NSObject : AnyObject]! { get }
  init()
}
let MPMoviePlayerTimedMetadataUpdatedNotification: String
let MPMoviePlayerTimedMetadataUserInfoKey: String
let MPMoviePlayerTimedMetadataKeyName: String
let MPMoviePlayerTimedMetadataKeyInfo: String
let MPMoviePlayerTimedMetadataKeyMIMEType: String
let MPMoviePlayerTimedMetadataKeyDataType: String
let MPMoviePlayerTimedMetadataKeyLanguageCode: String
extension MPMoviePlayerController {
  var accessLog: MPMovieAccessLog! { get }
  var errorLog: MPMovieErrorLog! { get }
}
class MPMovieAccessLog : NSObject, NSCopying {
  var extendedLogData: NSData! { get }
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AnyObject]! { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class MPMovieErrorLog : NSObject, NSCopying {
  var extendedLogData: NSData! { get }
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AnyObject]! { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class MPMovieAccessLogEvent : NSObject, NSCopying {
  var numberOfSegmentsDownloaded: Int { get }
  var playbackStartDate: NSDate! { get }
  var URI: String! { get }
  var serverAddress: String! { get }
  var numberOfServerAddressChanges: Int { get }
  var playbackSessionID: String! { get }
  var playbackStartOffset: NSTimeInterval { get }
  var segmentsDownloadedDuration: NSTimeInterval { get }
  var durationWatched: NSTimeInterval { get }
  var numberOfStalls: Int { get }
  var numberOfBytesTransferred: Int64 { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class MPMovieErrorLogEvent : NSObject, NSCopying {
  var date: NSDate! { get }
  var URI: String! { get }
  var serverAddress: String! { get }
  var playbackSessionID: String! { get }
  var errorStatusCode: Int { get }
  var errorDomain: String! { get }
  var errorComment: String! { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension MPMoviePlayerController {
}
class MPMoviePlayerViewController : UIViewController {
  init!(contentURL: NSURL!)
  var moviePlayer: MPMoviePlayerController! { get }
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension UIViewController {
  func presentMoviePlayerViewControllerAnimated(moviePlayerViewController: MPMoviePlayerViewController!)
  func dismissMoviePlayerViewControllerAnimated()
}
enum MPMusicPlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Playing
  case Paused
  case Interrupted
  case SeekingForward
  case SeekingBackward
}
enum MPMusicRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case One
  case All
}
enum MPMusicShuffleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Off
  case Songs
  case Albums
}
class MPMusicPlayerController : NSObject, MPMediaPlayback {
  /// Playing media items with the applicationMusicPlayer will restore the user's Music state after the application quits.
  class func applicationMusicPlayer() -> MPMusicPlayerController
  /// Playing media items with the systemMusicPlayer will replace the user's current Music state.
  class func systemMusicPlayer() -> MPMusicPlayerController
  class func iPodMusicPlayer() -> MPMusicPlayerController
  init()
  func prepareToPlay()
  var isPreparedToPlay: Bool { get }
  func play()
  func pause()
  func stop()
  var currentPlaybackTime: NSTimeInterval
  var currentPlaybackRate: Float
  func beginSeekingForward()
  func beginSeekingBackward()
  func endSeeking()
}
extension MPMusicPlayerController {
  var playbackState: MPMusicPlaybackState { get }
  var repeatMode: MPMusicRepeatMode
  var shuffleMode: MPMusicShuffleMode
  @NSCopying var nowPlayingItem: MPMediaItem?
  var indexOfNowPlayingItem: Int { get }
  func setQueueWithQuery(query: MPMediaQuery)
  func setQueueWithItemCollection(itemCollection: MPMediaItemCollection)
  func skipToNextItem()
  func skipToBeginning()
  func skipToPreviousItem()
  func beginGeneratingPlaybackNotifications()
  func endGeneratingPlaybackNotifications()
}
let MPMusicPlayerControllerPlaybackStateDidChangeNotification: String
let MPMusicPlayerControllerNowPlayingItemDidChangeNotification: String
let MPMusicPlayerControllerVolumeDidChangeNotification: String
class MPNowPlayingInfoCenter : NSObject {
  class func defaultCenter() -> MPNowPlayingInfoCenter
  var nowPlayingInfo: [String : AnyObject]?
  init()
}
let MPNowPlayingInfoPropertyElapsedPlaybackTime: String
let MPNowPlayingInfoPropertyPlaybackRate: String
let MPNowPlayingInfoPropertyDefaultPlaybackRate: String
let MPNowPlayingInfoPropertyPlaybackQueueIndex: String
let MPNowPlayingInfoPropertyPlaybackQueueCount: String
let MPNowPlayingInfoPropertyChapterNumber: String
let MPNowPlayingInfoPropertyChapterCount: String
let MPNowPlayingInfoPropertyAvailableLanguageOptions: String
let MPNowPlayingInfoPropertyCurrentLanguageOptions: String
let MPLanguageOptionCharacteristicIsMainProgramContent: String
let MPLanguageOptionCharacteristicIsAuxiliaryContent: String
let MPLanguageOptionCharacteristicContainsOnlyForcedSubtitles: String
let MPLanguageOptionCharacteristicTranscribesSpokenDialog: String
let MPLanguageOptionCharacteristicDescribesMusicAndSound: String
let MPLanguageOptionCharacteristicEasyToRead: String
let MPLanguageOptionCharacteristicDescribesVideo: String
let MPLanguageOptionCharacteristicLanguageTranslation: String
let MPLanguageOptionCharacteristicDubbedTranslation: String
let MPLanguageOptionCharacteristicVoiceOverTranslation: String
enum MPNowPlayingInfoLanguageOptionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Audible
  case Legible
}
/// Represents a single language option option.
class MPNowPlayingInfoLanguageOption : NSObject {
  init(type languageOptionType: MPNowPlayingInfoLanguageOptionType, languageTag: String, characteristics languageOptionCharacteristics: [String]?, displayName: String, identifier: String)
  /// Represents a special case that is used to
  /// represent the best legible language option based on system preferences.
  /// See AVPlayerItem-selectMediaOptionAutomaticallyInMediaSelectionGroup
  func isAutomaticLegibleLanguageOption() -> Bool
  /// Represents a special case that is used to
  /// represent the best audible language option based on system preferences.
  /// See AVPlayerItem-selectMediaOptionAutomaticallyInMediaSelectionGroup
  func isAutomaticAudibleLanguageOption() -> Bool
  /// The type of language option.
  var languageOptionType: MPNowPlayingInfoLanguageOptionType { get }
  /// The IETF BCP 47 language tag.
  /// A nil languageTag reprsents that this option should be disabled.
  /// A languageTag with the value of MPLangaugeOptionAutoLangaugeTag represents
  /// that the best langauge based on the system preferences should be used.
  var languageTag: String? { get }
  /// Characteristics describing the content of the language options.
  /// See the LanguageOptionCharacteristics for the most commonly used values.
  var languageOptionCharacteristics: [String]? { get }
  /// A user presentable display name for this option.
  var displayName: String? { get }
  /// A unique identifier representing this option.
  var identifier: String? { get }
  init()
}
class MPNowPlayingInfoLanguageOptionGroup : NSObject {
  init(languageOptions: [MPNowPlayingInfoLanguageOption], defaultLanguageOption: MPNowPlayingInfoLanguageOption?, allowEmptySelection: Bool)
  /// The available language options within this group.
  var languageOptions: [MPNowPlayingInfoLanguageOption] { get }
  /// The default language option, if any, within this group.
  var defaultLanguageOption: MPNowPlayingInfoLanguageOption? { get }
  /// Indicates whether a selection in this group is required at all times.
  var allowEmptySelection: Bool { get }
  init()
}
/// MPPlayableContentDataSource is a protocol that application objects conform to
/// if they want to support external media players, such as vehicle head units.
/// Data sources are responsible for providing metadata about your media to these
/// systems in a meaningful way, so that features like user interfaces and play
/// queues can be setup automatically.
protocol MPPlayableContentDataSource : NSObjectProtocol {
  /// Tells the data source to begin loading content items that are children of the
  /// item specified by indexPath. This is provided so that applications can begin
  /// asynchronous batched loading of content before MediaPlayer begins asking for
  /// content items to display.
  /// Client applications should always call the completion handler after loading
  /// has finished, if this method is implemented.
  optional func beginLoadingChildItemsAtIndexPath(indexPath: NSIndexPath, completionHandler: (NSError?) -> Void)
  /// Tells MediaPlayer whether the content provided by the data source supports
  /// playback progress as a property of its metadata.
  /// If this method is not implemented, MediaPlayer will assume that progress is
  /// not supported for any content items.
  optional func childItemsDisplayPlaybackProgressAtIndexPath(indexPath: NSIndexPath) -> Bool
  /// Returns the number of child nodes at the specified index path. In a virtual
  /// filesystem, this would be the number of files in a specific folder. An empty
  /// index path represents the root node.
  func numberOfChildItemsAtIndexPath(indexPath: NSIndexPath) -> Int
  /// Returns the content item at the specified index path. If the content item is
  /// mutated after returning, its updated contents will be sent to MediaPlayer.
  func contentItemAtIndexPath(indexPath: NSIndexPath) -> MPContentItem?
}
/// The MPPlayableContentDelegate is a protocol that allows for external media
/// players to send playback commands to an application. For instance,
/// the user could browse the application's media content (provided by the
/// MPPlayableContentDataSource) and selects a content item to play. If the media
/// player decides that it wants to play the item, it will ask the application's
/// content delegate to initiate playback.
protocol MPPlayableContentDelegate : NSObjectProtocol {
  /// This method is called when a media player interface wants to play a requested
  /// content item. The application should call the completion handler with an
  /// appropriate error if there was an error beginning playback for the item.
  optional func playableContentManager(contentManager: MPPlayableContentManager, initiatePlaybackOfContentItemAtIndexPath indexPath: NSIndexPath, completionHandler: (NSError?) -> Void)
  /// This method is called when a media player interface wants the now playing
  /// app to setup a playback queue for later playback. The application should
  /// load content into its play queue and prepare it for playback, but not start
  /// playback until a Play command is received or if the playable content manager
  /// requests to play something else.
  /// The app should call the provided completion handler once it is ready to play
  /// something.
  optional func playableContentManager(contentManager: MPPlayableContentManager, initializePlaybackQueueWithCompletionHandler completionHandler: (NSError?) -> Void)
  /// This method is called when the content server notifies the manager that the current context has changed.
  optional func playableContentManager(contentManager: MPPlayableContentManager, didUpdateContext context: MPPlayableContentManagerContext)
}
/// MPPlayableContentManager is a class that manages the interactions between a
/// media application and an external media player interface. The application
/// provides the content manager with a data source, which allows the media player
/// to browse the media content offered by the application, as well as a delegate,
/// which allows the media player to relay non-media remote playback commands to the application.
class MPPlayableContentManager : NSObject {
  weak var dataSource: @sil_weak MPPlayableContentDataSource?
  weak var delegate: @sil_weak MPPlayableContentDelegate?
  var context: MPPlayableContentManagerContext { get }
  /// Returns the application's instance of the content manager.
  class func sharedContentManager() -> Self
  /// Tells the content manager that the data source has changed and that we need to
  /// reload data from the data source.
  func reloadData()
  /// Used to begin a synchronized update to multiple MPContentItems at once.
  func beginUpdates()
  /// Ends a synchronized update.
  func endUpdates()
  init()
}
/// MPPlayableContentManagerContext represents the current state of
/// the playable content endpoint. A context is retrievable from an instance
/// of MPPlayableContentManager.
class MPPlayableContentManagerContext : NSObject {
  /// The number of items the content server will display when content limiting is enforced.
  /// Returns NSIntegerMax if the content server will never limit the number of items.
  var enforcedContentItemsCount: Int { get }
  /// The depth of the navigation hierarchy the content server will allow. Exceeding this limit will result in a crash.
  var enforcedContentTreeDepth: Int { get }
  /// Represents whether content limits are being enforced by the content server or not.
  var contentLimitsEnforced: Bool { get }
  var contentLimitsEnabled: Bool { get }
  /// Represents whether the content server is available or not.
  var endpointAvailable: Bool { get }
  init()
}
enum MPRemoteCommandHandlerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  /// There was no error executing the requested command.
  case Success
  /// The command could not be executed because the requested content does not
  /// exist in the current application state.
  case NoSuchContent
  /// The command could not be executed because there is no now playing item
  /// available that is required for this command. As an example, an
  /// application would return this error code if an "enable language option"
  /// command is received, but nothing is currently playing.
  case NoActionableNowPlayingItem
  /// The command could not be executed for another reason.
  case CommandFailed
}
class MPRemoteCommand : NSObject {
  /// Whether a button (for example) should be enabled and tappable for this
  /// particular command.
  var enabled: Bool
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?)
  /// Returns an opaque object to act as the target.
  func addTargetWithHandler(handler: (MPRemoteCommandEvent) -> MPRemoteCommandHandlerStatus) -> AnyObject
  init()
}
class MPSkipIntervalCommand : MPRemoteCommand {
  /// An array of NSNumbers (NSTimeIntervals) that contain preferred skip intervals.
  var preferredIntervals: [AnyObject]
  init()
}
class MPFeedbackCommand : MPRemoteCommand {
  /// Whether the feedback command is in an "active" state. An example of when a
  /// feedback command would be active is if the user already "liked" a particular
  /// content item.
  var active: Bool
  /// A localized string briefly describing the context of the command.
  var localizedTitle: String
  /// An optional shorter version of the localized title for this feedback
  /// command. MediaPlayer uses this property to display this command's title on
  /// remote control interfaces with little screen space.
  var localizedShortTitle: String
  init()
}
class MPRatingCommand : MPRemoteCommand {
  /// Minimum rating for the command.
  var minimumRating: Float
  /// Maximum rating for the command.
  var maximumRating: Float
  init()
}
class MPChangePlaybackRateCommand : MPRemoteCommand {
  /// An array of NSNumbers (floats) that contain supported playback rates that
  /// the command can send.
  var supportedPlaybackRates: [NSNumber]
  init()
}
class MPChangePlaybackPositionCommand : MPRemoteCommand {
  init()
}
class MPRemoteCommandCenter : NSObject {
  var pauseCommand: MPRemoteCommand { get }
  var playCommand: MPRemoteCommand { get }
  var stopCommand: MPRemoteCommand { get }
  var togglePlayPauseCommand: MPRemoteCommand { get }
  var enableLanguageOptionCommand: MPRemoteCommand { get }
  var disableLanguageOptionCommand: MPRemoteCommand { get }
  var nextTrackCommand: MPRemoteCommand { get }
  var previousTrackCommand: MPRemoteCommand { get }
  var skipForwardCommand: MPSkipIntervalCommand { get }
  var skipBackwardCommand: MPSkipIntervalCommand { get }
  var seekForwardCommand: MPRemoteCommand { get }
  var seekBackwardCommand: MPRemoteCommand { get }
  var ratingCommand: MPRatingCommand { get }
  var changePlaybackRateCommand: MPChangePlaybackRateCommand { get }
  var likeCommand: MPFeedbackCommand { get }
  var dislikeCommand: MPFeedbackCommand { get }
  var bookmarkCommand: MPFeedbackCommand { get }
  var changePlaybackPositionCommand: MPChangePlaybackPositionCommand { get }
  class func sharedCommandCenter() -> MPRemoteCommandCenter
  init()
}
class MPRemoteCommandEvent : NSObject {
  /// The command that sent the event.
  var command: MPRemoteCommand { get }
  /// The time when the event occurred.
  var timestamp: NSTimeInterval { get }
  init()
}
class MPSkipIntervalCommandEvent : MPRemoteCommandEvent {
  /// The chosen interval for this skip command event.
  var interval: NSTimeInterval { get }
  init()
}
enum MPSeekCommandEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BeginSeeking
  case EndSeeking
}
class MPSeekCommandEvent : MPRemoteCommandEvent {
  /// The type of seek command event, which specifies whether an external player
  /// began or ended seeking.
  var type: MPSeekCommandEventType { get }
  init()
}
class MPRatingCommandEvent : MPRemoteCommandEvent {
  /// The chosen rating for this command event. This value will be within the
  /// minimumRating and maximumRating values set for the MPRatingCommand object.
  var rating: Float { get }
  init()
}
class MPChangePlaybackRateCommandEvent : MPRemoteCommandEvent {
  /// The chosen playback rate for this command event. This value will be equal
  /// to one of the values specified in the supportedPlaybackRates array for the
  /// MPChangePlaybackRateCommand object.
  var playbackRate: Float { get }
  init()
}
class MPFeedbackCommandEvent : MPRemoteCommandEvent {
  /// Whether the command event is a negative operation. For example, the command
  /// might ask that the app remove a bookmark for a particular track, rather than
  /// add it. In this case, the handler for the bookmark command should check this
  /// flag and remove the bookmark if it is set to YES.
  ///
  /// For like/dislike, a "negative like" might be treated differently from a
  /// dislike command. The app might want to remove the "like" flag from the
  /// current track, but not blacklist and skip to the next track as it would for
  /// a dislike command.
  var negative: Bool { get }
  init()
}
class MPChangeLanguageOptionCommandEvent : MPRemoteCommandEvent {
  /// The requested language option to change.
  /// The supplied language option may be the Automatic Legible Language Option
  /// which would mean that best legible language option based on user preferences
  /// is being requested. See MPNowPlayingInfoLanguageOption isAutomaticLegibleLanguageOption
  var languageOption: MPNowPlayingInfoLanguageOption { get }
  init()
}
class MPChangePlaybackPositionCommandEvent : MPRemoteCommandEvent {
  /// The desired playback position to use when setting the current time of the player.
  var positionTime: NSTimeInterval { get }
  init()
}
func MPVolumeSettingsAlertShow()
func MPVolumeSettingsAlertHide()
func MPVolumeSettingsAlertIsVisible() -> Bool
class MPVolumeView : UIView, NSCoding {
  var showsVolumeSlider: Bool
  var showsRouteButton: Bool
  var wirelessRoutesAvailable: Bool { get }
  var wirelessRouteActive: Bool { get }
  func setMinimumVolumeSliderImage(image: UIImage?, forState state: UIControlState)
  func setMaximumVolumeSliderImage(image: UIImage?, forState state: UIControlState)
  func setVolumeThumbImage(image: UIImage?, forState state: UIControlState)
  func minimumVolumeSliderImageForState(state: UIControlState) -> UIImage?
  func maximumVolumeSliderImageForState(state: UIControlState) -> UIImage?
  func volumeThumbImageForState(state: UIControlState) -> UIImage?
  var volumeWarningSliderImage: UIImage?
  func volumeSliderRectForBounds(bounds: CGRect) -> CGRect
  func volumeThumbRectForBounds(bounds: CGRect, volumeSliderRect rect: CGRect, value: Float) -> CGRect
  func setRouteButtonImage(image: UIImage?, forState state: UIControlState)
  func routeButtonImageForState(state: UIControlState) -> UIImage?
  func routeButtonRectForBounds(bounds: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
let MPVolumeViewWirelessRoutesAvailableDidChangeNotification: String
let MPVolumeViewWirelessRouteActiveDidChangeNotification: String
