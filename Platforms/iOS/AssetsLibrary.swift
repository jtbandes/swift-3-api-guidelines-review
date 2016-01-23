
let ALErrorInvalidProperty: String
let ALAssetPropertyType: String
let ALAssetPropertyLocation: String
let ALAssetPropertyDuration: String
let ALAssetPropertyOrientation: String
let ALAssetPropertyDate: String
let ALAssetPropertyRepresentations: String
let ALAssetPropertyURLs: String
let ALAssetPropertyAssetURL: String
let ALAssetTypePhoto: String
let ALAssetTypeVideo: String
let ALAssetTypeUnknown: String
class ALAsset : NSObject {
  func valueForProperty(property: String!) -> AnyObject!
  func defaultRepresentation() -> ALAssetRepresentation!
  func representationForUTI(representationUTI: String!) -> ALAssetRepresentation!
  func thumbnail() -> Unmanaged<CGImage>!
  func aspectRatioThumbnail() -> Unmanaged<CGImage>!
  func writeModifiedImageDataToSavedPhotosAlbum(imageData: NSData!, metadata: [NSObject : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func writeModifiedVideoAtPathToSavedPhotosAlbum(videoPathURL: NSURL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  var originalAsset: ALAsset! { get }
  var editable: Bool { get }
  func setImageData(imageData: NSData!, metadata: [NSObject : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func setVideoAtPath(videoPathURL: NSURL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  init()
}
class ALAssetRepresentation : NSObject {
  func UTI() -> String!
  func dimensions() -> CGSize
  func size() -> Int64
  func getBytes(buffer: UnsafeMutablePointer<UInt8>, fromOffset offset: Int64, length: Int, error: NSErrorPointer) -> Int
  func fullResolutionImage() -> Unmanaged<CGImage>!
  func CGImageWithOptions(options: [NSObject : AnyObject]!) -> Unmanaged<CGImage>!
  func fullScreenImage() -> Unmanaged<CGImage>!
  func url() -> NSURL!
  func metadata() -> [NSObject : AnyObject]!
  func orientation() -> ALAssetOrientation
  func scale() -> Float
  func filename() -> String!
  init()
}
class ALAssetsFilter : NSObject {
  class func allPhotos() -> ALAssetsFilter!
  class func allVideos() -> ALAssetsFilter!
  class func allAssets() -> ALAssetsFilter!
  init()
}
typealias ALAssetsGroupEnumerationResultsBlock = (ALAsset!, Int, UnsafeMutablePointer<ObjCBool>) -> Void
let ALAssetsGroupPropertyName: String
let ALAssetsGroupPropertyType: String
let ALAssetsGroupPropertyPersistentID: String
let ALAssetsGroupPropertyURL: String
class ALAssetsGroup : NSObject {
  func valueForProperty(property: String!) -> AnyObject!
  func posterImage() -> Unmanaged<CGImage>!
  func setAssetsFilter(filter: ALAssetsFilter!)
  func numberOfAssets() -> Int
  func enumerateAssetsUsingBlock(enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  func enumerateAssetsWithOptions(options: NSEnumerationOptions, usingBlock enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  func enumerateAssetsAtIndexes(indexSet: NSIndexSet!, options: NSEnumerationOptions, usingBlock enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  var editable: Bool { get }
  func addAsset(asset: ALAsset!) -> Bool
  init()
}
enum ALAssetOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Left
  case Right
  case UpMirrored
  case DownMirrored
  case LeftMirrored
  case RightMirrored
}
var ALAssetsGroupLibrary: UInt32 { get }
var ALAssetsGroupAlbum: UInt32 { get }
var ALAssetsGroupEvent: UInt32 { get }
var ALAssetsGroupFaces: UInt32 { get }
var ALAssetsGroupSavedPhotos: UInt32 { get }
var ALAssetsGroupPhotoStream: UInt32 { get }
var ALAssetsGroupAll: UInt32 { get }
typealias ALAssetsGroupType = Int
enum ALAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
typealias ALAssetsLibraryGroupsEnumerationResultsBlock = (ALAssetsGroup!, UnsafeMutablePointer<ObjCBool>) -> Void
typealias ALAssetsLibraryAssetForURLResultBlock = (ALAsset!) -> Void
typealias ALAssetsLibraryGroupResultBlock = (ALAssetsGroup!) -> Void
typealias ALAssetsLibraryAccessFailureBlock = (NSError!) -> Void
typealias ALAssetsLibraryWriteImageCompletionBlock = (NSURL!, NSError!) -> Void
typealias ALAssetsLibraryWriteVideoCompletionBlock = (NSURL!, NSError!) -> Void
class ALAssetsLibrary : NSObject {
  func enumerateGroupsWithTypes(types: ALAssetsGroupType, usingBlock enumerationBlock: ALAssetsLibraryGroupsEnumerationResultsBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  func assetForURL(assetURL: NSURL!, resultBlock: ALAssetsLibraryAssetForURLResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  func groupForURL(groupURL: NSURL!, resultBlock: ALAssetsLibraryGroupResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  func addAssetsGroupAlbumWithName(name: String!, resultBlock: ALAssetsLibraryGroupResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  func writeImageToSavedPhotosAlbum(imageRef: CGImage!, orientation: ALAssetOrientation, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func writeImageToSavedPhotosAlbum(imageRef: CGImage!, metadata: [NSObject : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func writeImageDataToSavedPhotosAlbum(imageData: NSData!, metadata: [NSObject : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func writeVideoAtPathToSavedPhotosAlbum(videoPathURL: NSURL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  func videoAtPathIsCompatibleWithSavedPhotosAlbum(videoPathURL: NSURL!) -> Bool
  class func authorizationStatus() -> ALAuthorizationStatus
  class func disableSharedPhotoStreamsSupport()
  init()
}
extension ALAssetsLibrary {
  @nonobjc func enumerateGroupsWithTypes(types: UInt32, usingBlock enumerationBlock: ALAssetsLibraryGroupsEnumerationResultsBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
}
let ALAssetsLibraryChangedNotification: String
let ALAssetLibraryUpdatedAssetsKey: String
let ALAssetLibraryInsertedAssetGroupsKey: String
let ALAssetLibraryUpdatedAssetGroupsKey: String
let ALAssetLibraryDeletedAssetGroupsKey: String
let ALAssetsLibraryErrorDomain: String
var ALAssetsLibraryUnknownError: Int { get }
var ALAssetsLibraryWriteFailedError: Int { get }
var ALAssetsLibraryWriteBusyError: Int { get }
var ALAssetsLibraryWriteInvalidDataError: Int { get }
var ALAssetsLibraryWriteIncompatibleDataError: Int { get }
var ALAssetsLibraryWriteDataEncodingError: Int { get }
var ALAssetsLibraryWriteDiskSpaceError: Int { get }
var ALAssetsLibraryDataUnavailableError: Int { get }
var ALAssetsLibraryAccessUserDeniedError: Int { get }
var ALAssetsLibraryAccessGloballyDeniedError: Int { get }
