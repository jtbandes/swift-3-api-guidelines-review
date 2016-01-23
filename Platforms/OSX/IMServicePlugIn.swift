
protocol IMServicePlugInChatRoomSupport {
  func joinChatRoom(roomName: String!)
  func leaveChatRoom(roomName: String!)
  func inviteHandles(handles: [AnyObject]!, toChatRoom roomName: String!, withMessage message: IMServicePlugInMessage!)
  func send(message: IMServicePlugInMessage!, toChatRoom roomName: String!)
  func declineChatRoomInvitation(roomName: String!)
}
protocol IMServiceApplicationChatRoomSupport : IMServiceApplication {
  func plugInDidReceiveInvitation(invitation: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plugInDidReceive(message: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plugInDidReceiveNotice(notice: String!, forChatRoom roomName: String!)
  func plugInDidSend(message: IMServicePlugInMessage!, toChatRoom roomName: String!, error: Error!)
  func plugInDidJoinChatRoom(roomName: String!)
  func plugInDidLeaveChatRoom(roomName: String!, error: Error!)
  func handles(handles: [AnyObject]!, didJoinChatRoom roomName: String!)
  func handles(handles: [AnyObject]!, didLeaveChatRoom roomName: String!)
}
protocol IMServicePlugInGroupListSupport {
  func requestGroupList()
}
protocol IMServicePlugInGroupListEditingSupport : IMServicePlugInGroupListSupport {
  func addGroups(groupNames: [AnyObject]!)
  func removeGroups(groupNames: [AnyObject]!)
  func renameGroup(oldGroupName: String!, toGroup newGroupName: String!)
  func addHandles(handles: [AnyObject]!, toGroup groupName: String!)
  func removeHandles(handles: [AnyObject]!, fromGroup groupName: String!)
}
protocol IMServicePlugInGroupListOrderingSupport : IMServicePlugInGroupListSupport {
  func reorderGroups(groupNames: [AnyObject]!)
  func reorderHandles(handles: [AnyObject]!, inGroup groupName: String!)
}
protocol IMServicePlugInGroupListAuthorizationSupport : IMServicePlugInGroupListSupport {
  func sendAuthorizationRequestToHandle(handle: String!)
  func acceptAuthorizationRequestFromHandle(handle: String!)
  func declineAuthorizationRequestFromHandle(handle: String!)
}
protocol IMServicePlugInGroupListHandlePictureSupport : ObjectProtocol {
  func requestPictureForHandle(handle: String!, withIdentifier identifier: String!)
}
protocol IMServiceApplicationGroupListSupport : IMServiceApplication {
  func plugInDidUpdateGroupList(groups: [AnyObject]!, error: Error!)
}
protocol IMServiceApplicationGroupListAuthorizationSupport : IMServiceApplicationGroupListSupport {
  func plugInDidReceiveAuthorizationRequestFromHandle(handle: String!)
}
protocol IMServicePlugInInstantMessagingSupport {
  func userDidStartTypingToHandle(handle: String!)
  func userDidStopTypingToHandle(handle: String!)
  func send(message: IMServicePlugInMessage!, toHandle handle: String!)
}
protocol IMServiceApplicationInstantMessagingSupport {
  func handleDidStartTyping(handle: String!)
  func handleDidStopTyping(handle: String!)
  func plugInDidReceive(message: IMServicePlugInMessage!, fromHandle handle: String!)
  func plugInDidSend(message: IMServicePlugInMessage!, toHandle handle: String!, error: Error!)
}
class IMServicePlugInMessage : Object, Coding, Copying {
  class func servicePlugInMessageWithContent(content: AttributedString!) -> AnyObject!
  init!(content: AttributedString!)
  class func servicePlugInMessageWithContent(content: AttributedString!, date: Date!) -> AnyObject!
  init!(content: AttributedString!, date: Date!)
  var guid: String! { get }
  @NSCopying var content: AttributedString!
  @NSCopying var date: Date!
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol IMServicePlugInPresenceSupport {
  func updateSessionProperties(properties: [Object : AnyObject]!)
}
protocol IMServicePlugIn : ObjectProtocol {
  init!(serviceApplication: IMServiceApplication!)
  func updateAccountSettings(accountSettings: [Object : AnyObject]!)
  func login()
  func logout()
}
protocol IMServiceApplication : ObjectProtocol {
  func plugInDidLogIn()
  func plugInDidLogOutWithError(error: Error!, reconnect: Bool)
  func plugInDidFailToAuthenticate()
  func plugInDidUpdateProperties(changes: [Object : AnyObject]!, ofHandle handle: String!)
}
let IMAccountSettingServerHost: String
let IMAccountSettingServerPort: String
let IMAccountSettingLoginHandle: String
let IMAccountSettingPassword: String
let IMAccountSettingUsesSSL: String
enum IMSessionAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Away
  case Available
}
let IMSessionPropertyAvailability: String
let IMSessionPropertyStatusMessage: String
let IMSessionPropertyPictureData: String
let IMSessionPropertyIdleDate: String
let IMSessionPropertyIsInvisible: String
enum IMGroupListPermissions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CanReorderGroup
  case CanRenameGroup
  case CanAddNewMembers
  case CanRemoveMembers
  case CanReorderMembers
}
let IMGroupListDefaultGroup: String
let IMGroupListNameKey: String
let IMGroupListPermissionsKey: String
let IMGroupListHandlesKey: String
enum IMHandleAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Offline
  case Away
  case Available
}
enum IMHandleAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Accepted
  case Pending
  case Declined
}
let IMHandlePropertyAvailability: String
let IMHandlePropertyStatusMessage: String
let IMHandlePropertyAuthorizationStatus: String
let IMHandlePropertyIdleDate: String
let IMHandlePropertyAlias: String
let IMHandlePropertyFirstName: String
let IMHandlePropertyLastName: String
let IMHandlePropertyEmailAddress: String
let IMHandlePropertyPictureIdentifier: String
let IMHandlePropertyPictureData: String
let IMHandlePropertyCapabilities: String
let IMHandleCapabilityMessaging: String
let IMHandleCapabilityOfflineMessaging: String
let IMHandleCapabilityChatRoom: String
let IMHandleCapabilityHandlePicture: String
let IMHandleCapabilityFileTransfer: String
let IMAttributeFontFamily: String
let IMAttributeFontSize: String
let IMAttributeItalic: String
let IMAttributeBold: String
let IMAttributeUnderline: String
let IMAttributeStrikethrough: String
let IMAttributeLink: String
let IMAttributePreformatted: String
let IMAttributeBaseWritingDirection: String
let IMAttributeForegroundColor: String
let IMAttributeBackgroundColor: String
let IMAttributeMessageBackgroundColor: String
