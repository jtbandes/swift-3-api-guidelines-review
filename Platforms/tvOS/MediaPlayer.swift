
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
typealias MPMediaEntityPersistentID = UInt64
let MPMediaEntityPropertyPersistentID: String
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
let MPMediaPlaylistPropertyPersistentID: String
let MPMediaPlaylistPropertyName: String
let MPMediaPlaylistPropertyPlaylistAttributes: String
let MPMediaPlaylistPropertySeedItems: String
extension MPMediaItem {
  class func persistentIDPropertyForGroupingType(groupingType: MPMediaGrouping) -> String
  class func titlePropertyForGroupingType(groupingType: MPMediaGrouping) -> String
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
extension MPMoviePlayerController {
}
extension UIViewController {
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
