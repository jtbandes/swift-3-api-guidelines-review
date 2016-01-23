
class GKAchievement : Object, Coding, SecureCoding {
  class func loadAchievements(completionHandler completionHandler: (([GKAchievement]?, Error?) -> Void)? = nil)
  class func resetAchievements(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  init(identifier: String?)
  init(identifier: String?, player: GKPlayer)
  class func report(achievements: [GKAchievement], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  var identifier: String?
  var percentComplete: Double
  var isCompleted: Bool { get }
  @NSCopying var lastReportedDate: Date { get }
  var showsCompletionBanner: Bool
  var player: GKPlayer { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
}
class GKAchievementDescription : Object, Coding, SecureCoding {
  class func loadAchievementDescriptions(completionHandler completionHandler: (([GKAchievementDescription]?, Error?) -> Void)? = nil)
  var identifier: String? { get }
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var isHidden: Bool { get }
  var isReplayable: Bool { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  func loadImage(completionHandler completionHandler: ((UIImage?, Error?) -> Void)? = nil)
  class func incompleteAchievementImage() -> UIImage
  class func placeholderCompletedAchievementImage() -> UIImage
}
extension GKAchievementViewController {
  unowned(unsafe) var achievementDelegate: @sil_unmanaged GKAchievementViewControllerDelegate!
}
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Pending
  case Completed
  case Declined
}
class GKChallenge : Object, Coding, SecureCoding {
  class func loadReceivedChallenges(completionHandler completionHandler: (([GKChallenge]?, Error?) -> Void)? = nil)
  func decline()
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: Date { get }
  var completionDate: Date? { get }
  var message: String? { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  class func supportsSecureCoding() -> Bool
}
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
  init()
  init?(coder aDecoder: Coder)
}
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
  init()
  init?(coder aDecoder: Coder)
}
extension GKScore {
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
  class func report(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKAchievement {
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  class func report(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKScore {
}
extension GKAchievement {
}
let GKErrorDomain: String
enum GKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Cancelled
  case CommunicationsFailure
  case UserDenied
  case InvalidCredentials
  case NotAuthenticated
  case AuthenticationInProgress
  case InvalidPlayer
  case ScoreNotSet
  case ParentalControlsBlocked
  case PlayerStatusExceedsMaximumLength
  case PlayerStatusInvalid
  case MatchRequestInvalid
  case Underage
  case GameUnrecognized
  case NotSupported
  case InvalidParameter
  case UnexpectedConnection
  case ChallengeInvalid
  case TurnBasedMatchDataTooLarge
  case TurnBasedTooManySessions
  case TurnBasedInvalidParticipant
  case TurnBasedInvalidTurn
  case TurnBasedInvalidState
  case InvitationsDisabled
  case PlayerPhotoFailure
  case UbiquityContainerUnavailable
}
extension GKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
protocol GKChallengeListener : ObjectProtocol {
  optional func player(player: GKPlayer, wantsToPlay challenge: GKChallenge)
  optional func player(player: GKPlayer, didReceive challenge: GKChallenge)
  optional func player(player: GKPlayer, didComplete challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(message: String?)
  func addRecipientPlayers(players: [GKPlayer])
  func addRecipientsWithEmailAddresses(emailAddresses: [String])
  unowned(unsafe) var composeViewDelegate: @sil_unmanaged GKFriendRequestComposeViewControllerDelegate?
}
protocol GKFriendRequestComposeViewControllerDelegate {
}
enum GKGameCenterViewControllerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Leaderboards
  case Achievements
  case Challenges
}
class GKGameCenterViewController : UINavigationController {
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension GKGameCenterViewController {
  unowned(unsafe) var gameCenterDelegate: @sil_unmanaged GKGameCenterControllerDelegate?
}
extension GKGameCenterViewController {
}
protocol GKGameCenterControllerDelegate : ObjectProtocol {
  func gameCenterViewControllerDidFinish(gameCenterViewController: GKGameCenterViewController)
}
enum GKLeaderboardTimeScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Today
  case Week
  case AllTime
}
enum GKLeaderboardPlayerScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Global
  case FriendsOnly
}
class GKLeaderboard : Object {
  var timeScope: GKLeaderboardTimeScope
  var playerScope: GKLeaderboardPlayerScope
  var identifier: String?
  var title: String? { get }
  var range: NSRange
  var scores: [GKScore]? { get }
  var maxRange: Int { get }
  var localPlayerScore: GKScore? { get }
  var isLoading: Bool { get }
  var groupIdentifier: String? { get }
  init()
  init(players: [GKPlayer])
  func loadScores(completionHandler completionHandler: (([GKScore]?, Error?) -> Void)? = nil)
  class func loadLeaderboards(completionHandler completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
}
extension GKLeaderboard {
}
extension GKLeaderboard {
}
class GKLeaderboardSet : Object, Coding, SecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  class func loadLeaderboardSets(completionHandler completionHandler: (([GKLeaderboardSet]?, Error?) -> Void)? = nil)
  func loadLeaderboards(completionHandler completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
}
extension GKLeaderboardViewController {
  var timeScope: GKLeaderboardTimeScope
  var category: String!
  unowned(unsafe) var leaderboardDelegate: @sil_unmanaged GKLeaderboardViewControllerDelegate!
}
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var isAuthenticated: Bool { get }
  var isUnderage: Bool { get }
  var authenticateHandler: ((UIViewController?, Error?) -> Void)?
  func loadFriendPlayers(completionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func setDefaultLeaderboardIdentifier(leaderboardIdentifier: String, completionHandler: ((Error?) -> Void)? = nil)
  func loadDefaultLeaderboardIdentifier(completionHandler completionHandler: ((String?, Error?) -> Void)? = nil)
  func generateIdentityVerificationSignature(completionHandler completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  init()
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  func register(listener: GKLocalPlayerListener)
  func unregisterListener(listener: GKLocalPlayerListener)
  func unregisterAllListeners()
}
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
}
enum GKMatchSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Reliable
  case Unreliable
}
enum GKPlayerConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StateUnknown
  case StateConnected
  case StateDisconnected
}
class GKMatch : Object {
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  func send(data: Data, to players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(data: Data, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(name: String) -> GKVoiceChat?
  func chooseBestHostingPlayerWithCompletionHandler(completionHandler: (GKPlayer?) -> Void)
  func rematch(completionHandler completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  init()
}
protocol GKMatchDelegate : ObjectProtocol {
  optional func match(match: GKMatch, didReceive data: Data, fromRemotePlayer player: GKPlayer)
  optional func match(match: GKMatch, didReceive data: Data, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  optional func match(match: GKMatch, player: GKPlayer, didChange state: GKPlayerConnectionState)
  optional func match(match: GKMatch, didFailWithError error: Error?)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
}
extension GKMatch {
}
enum GKInviteRecipientResponse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InviteRecipientResponseAccepted
  case InviteRecipientResponseDeclined
  case InviteRecipientResponseFailed
  case InviteRecipientResponseIncompatible
  case InviteRecipientResponseUnableToConnect
  case InviteRecipientResponseNoAnswer
  static var InviteeResponseAccepted: GKInviteRecipientResponse { get }
  static var InviteeResponseDeclined: GKInviteRecipientResponse { get }
  static var InviteeResponseFailed: GKInviteRecipientResponse { get }
  static var InviteeResponseIncompatible: GKInviteRecipientResponse { get }
  static var InviteeResponseUnableToConnect: GKInviteRecipientResponse { get }
  static var InviteeResponseNoAnswer: GKInviteRecipientResponse { get }
}
typealias GKInviteeResponse = GKInviteRecipientResponse
class GKMatchRequest : Object {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  var recipients: [GKPlayer]?
  var inviteMessage: String?
  var defaultNumberOfPlayers: Int
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  class func maxPlayersAllowedForMatchOf(matchType: GKMatchType) -> Int
  init()
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PeerToPeer
  case Hosted
  case TurnBased
}
class GKInvite : Object {
  var sender: GKPlayer { get }
  var isHosted: Bool { get }
  var playerGroup: Int { get }
  var playerAttributes: UInt32 { get }
  init()
}
protocol GKInviteEventListener {
  optional func player(player: GKPlayer, didAccept invite: GKInvite)
  optional func player(player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
}
class GKMatchmaker : Object {
  class func shared() -> GKMatchmaker
  func matchFor(invite: GKInvite, completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  func findMatchFor(request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  func findPlayersForHostedRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func addPlayersTo(match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((Error?) -> Void)? = nil)
  func cancel()
  func cancelPendingInviteTo(player: GKPlayer)
  func finishMatchmakingFor(match: GKMatch)
  func queryPlayerGroupActivity(playerGroup: Int, withCompletionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  func queryActivity(completionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  func startBrowsingForNearbyPlayers(handler reachableHandler: ((GKPlayer, Bool) -> Void)? = nil)
  func stopBrowsingForNearbyPlayers()
  init()
}
extension GKMatchmaker {
}
class GKMatchmakerViewController : UINavigationController {
  unowned(unsafe) var matchmakerDelegate: @sil_unmanaged GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var isHosted: Bool
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  func addPlayersTo(match: GKMatch)
  func setHostedPlayer(player: GKPlayer, didConnect connected: Bool)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol GKMatchmakerViewControllerDelegate : ObjectProtocol {
  func matchmakerViewControllerWasCancelled(viewController: GKMatchmakerViewController)
  func matchmakerViewController(viewController: GKMatchmakerViewController, didFailWithError error: Error)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFind match: GKMatch)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
}
class GKNotificationBanner : Object {
  class func showWithTitle(title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  class func showWithTitle(title: String?, message: String?, duration: TimeInterval, completionHandler: (() -> Void)? = nil)
  init()
}
class GKPlayer : Object {
  class func loadPlayersForIdentifiers(identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  var playerID: String? { get }
  var displayName: String? { get }
  var alias: String? { get }
  class func anonymousGuestPlayerWithIdentifier(guestIdentifier: String) -> Self
  var guestIdentifier: String? { get }
  init()
}
extension GKPlayer {
  func loadPhotoForSize(size: GKPhotoSize, withCompletionHandler completionHandler: ((UIImage?, Error?) -> Void)? = nil)
}
var GKPhotoSizeSmall: Int { get }
var GKPhotoSizeNormal: Int { get }
typealias GKPhotoSize = Int
let GKPlayerDidChangeNotificationName: String
extension GKPlayer {
}
protocol GKSessionDelegate : ObjectProtocol {
  optional func session(session: GKSession, peer peerID: String, didChange state: GKPeerConnectionState)
  optional func session(session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  optional func session(session: GKSession, connectionWithPeerFailed peerID: String, withError error: Error)
  optional func session(session: GKSession, didFailWithError error: Error)
}
protocol GKVoiceChatClient : ObjectProtocol {
  func voiceChatService(voiceChatService: GKVoiceChatService, send data: Data, toParticipantID participantID: String)
  func participantID() -> String
  optional func voiceChatService(voiceChatService: GKVoiceChatService, sendRealTime data: Data, toParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: Error?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: Error?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
extension GKLocalPlayer : GKSavedGameListener {
}
protocol GKSavedGameListener : ObjectProtocol {
}
class GKScore : Object, Coding, SecureCoding {
  init(leaderboardIdentifier identifier: String)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  var leaderboardIdentifier: String
  var context: UInt64
  var date: Date { get }
  var player: GKPlayer { get }
  var rank: Int { get }
  var shouldSetDefaultLeaderboard: Bool
  class func report(scores: [GKScore], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  class func supportsSecureCoding() -> Bool
}
extension GKScore {
}
let GKSessionErrorDomain: String
enum GKTurnBasedMatchStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Open
  case Ended
  case Matching
}
enum GKTurnBasedParticipantStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Invited
  case Declined
  case Matching
  case Active
  case Done
}
enum GKTurnBasedMatchOutcome : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Quit
  case Won
  case Lost
  case Tied
  case TimeExpired
  case First
  case Second
  case Third
  case Fourth
  case CustomRange
}
class GKTurnBasedParticipant : Object {
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: Date? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @NSCopying var timeoutDate: Date? { get }
  init()
}
protocol GKTurnBasedEventListener {
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  optional func player(player: GKPlayer, receivedTurnEventFor match: GKTurnBasedMatch, didBecomeActive: Bool)
  optional func player(player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  optional func player(player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  optional func player(player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  optional func player(player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  optional func player(player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
}
var GKTurnTimeoutDefault: TimeInterval
var GKTurnTimeoutNone: TimeInterval
class GKTurnBasedMatch : Object {
  var matchID: String? { get }
  var creationDate: Date? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: Data? { get }
  func setLocalizableMessageWithKey(key: String, arguments: [String]?)
  var message: String?
  var matchDataMaximumSize: Int { get }
  var exchanges: [GKTurnBasedExchange]? { get }
  var activeExchanges: [GKTurnBasedExchange]? { get }
  var completedExchanges: [GKTurnBasedExchange]? { get }
  var exchangeDataMaximumSize: Int { get }
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func findFor(request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, Error?) -> Void)
  class func loadMatches(completionHandler completionHandler: (([GKTurnBasedMatch]?, Error?) -> Void)? = nil)
  class func loadWithID(matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  func rematch(completionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  func acceptInvite(completionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  func declineInvite(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  func remove(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  func loadData(completionHandler completionHandler: ((Data?, Error?) -> Void)? = nil)
  func endTurnWithNextParticipants(nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func participantQuitInTurnWith(matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func participantQuitOutOfTurnWith(matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  func endMatchInTurnWithMatch(matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func endMatchInTurnWithMatch(matchData: Data, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((Error?) -> Void)? = nil)
  func saveCurrentTurnWithMatch(matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func saveMergedMatch(matchData: Data, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((Error?) -> Void)? = nil)
  func sendExchangeTo(participants: [GKTurnBasedParticipant], data: Data, localizableMessageKey key: String, arguments: [String], timeout: TimeInterval, completionHandler: ((GKTurnBasedExchange, Error) -> Void)? = nil)
  func sendReminderTo(participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  init()
}
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Unknown
  case Active
  case Complete
  case Resolved
  case Canceled
}
var GKExchangeTimeoutDefault: TimeInterval
var GKExchangeTimeoutNone: TimeInterval
class GKTurnBasedExchange : Object {
  var exchangeID: String? { get }
  var sender: GKTurnBasedParticipant? { get }
  var recipients: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedExchangeStatus { get }
  var message: String? { get }
  var data: Data? { get }
  var sendDate: Date? { get }
  var timeoutDate: Date? { get }
  var completionDate: Date? { get }
  var replies: [GKTurnBasedExchangeReply]? { get }
  func cancelWithLocalizableMessageKey(key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  func replyWithLocalizableMessageKey(key: String, arguments: [String], data: Data, completionHandler: ((Error?) -> Void)? = nil)
  init()
}
class GKTurnBasedExchangeReply : Object {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: Data? { get }
  var replyDate: Date? { get }
  init()
}
class GKTurnBasedMatchmakerViewController : UINavigationController {
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension GKTurnBasedMatchmakerViewController {
  unowned(unsafe) var turnBasedMatchmakerDelegate: @sil_unmanaged GKTurnBasedMatchmakerViewControllerDelegate?
  var showExistingMatches: Bool
  init(matchRequest request: GKMatchRequest)
}
protocol GKTurnBasedMatchmakerViewControllerDelegate : ObjectProtocol {
  func turnBasedMatchmakerViewControllerWasCancelled(viewController: GKTurnBasedMatchmakerViewController)
  func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, didFailWithError error: Error)
}
enum GKVoiceChatPlayerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Connected
  case Disconnected
  case Speaking
  case Silent
  case Connecting
}
class GKVoiceChat : Object {
  func start()
  func stop()
  func setPlayer(player: GKPlayer, muted isMuted: Bool)
  var playerVoiceChatStateDidChangeHandler: (GKPlayer, GKVoiceChatPlayerState) -> Void
  var name: String { get }
  var isActive: Bool
  var volume: Float
  var players: [GKPlayer] { get }
  class func isVoIPAllowed() -> Bool
  init()
}
extension GKVoiceChat {
}
let GKVoiceChatServiceErrorDomain: String
