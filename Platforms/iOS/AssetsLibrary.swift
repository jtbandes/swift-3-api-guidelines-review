
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
class ALAsset : Object {
  func valueForProperty(property: String!) -> AnyObject!
  func defaultRepresentation() -> ALAssetRepresentation!
  func representationForUTI(representationUTI: String!) -> ALAssetRepresentation!
  func thumbnail() -> Unmanaged<CGImage>!
  func aspectRatioThumbnail() -> Unmanaged<CGImage>!
  func writeModifiedImageDataToSavedPhotosAlbum(imageData: Data!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func writeModifiedVideoAtPathToSavedPhotosAlbum(videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  var original: ALAsset! { get }
  var isEditable: Bool { get }
  func setImageData(imageData: Data!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func setVideoAtPath(videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  init()
}
class ALAssetRepresentation : Object {
  func uti() -> String!
  func dimensions() -> CGSize
  func size() -> Int64
  func getBytes(buffer: UnsafeMutablePointer<UInt8>, fromOffset offset: Int64, length: Int, error: ErrorPointer) -> Int
  func fullResolutionImage() -> Unmanaged<CGImage>!
  func cgImage(options options: [Object : AnyObject]! = [:]) -> Unmanaged<CGImage>!
  func fullScreenImage() -> Unmanaged<CGImage>!
  func url() -> URL!
  func metadata() -> [Object : AnyObject]!
  func orientation() -> ALAssetOrientation
  func scale() -> Float
  func filename() -> String!
  init()
}
class ALAssetsFilter : Object {
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
class ALAssetsGroup : Object {
  func valueForProperty(property: String!) -> AnyObject!
  func posterImage() -> Unmanaged<CGImage>!
  func setAssetsFilter(filter: ALAssetsFilter!)
  func numberOfAssets() -> Int
  func enumerateAssetsUsing(enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  func enumerateAssets(options options: EnumerationOptions = [], usingBlock enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  func enumerateAssetsAt(indexSet: IndexSet!, options: EnumerationOptions = [], usingBlock enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  var isEditable: Bool { get }
  func add(asset: ALAsset!) -> Bool
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
typealias ALAssetsLibraryAccessFailureBlock = (Error!) -> Void
typealias ALAssetsLibraryWriteImageCompletionBlock = (URL!, Error!) -> Void
typealias ALAssetsLibraryWriteVideoCompletionBlock = (URL!, Error!) -> Void
class ALAssetsLibrary : Object {
  func enumerateGroupsWithTypes(types: ALAssetsGroupType, usingBlock enumerationBlock: ALAssetsLibraryGroupsEnumerationResultsBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  func assetFor(assetURL: URL!, resultBlock: ALAssetsLibraryAssetForURLResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  func groupFor(groupURL: URL!, resultBlock: ALAssetsLibraryGroupResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  func addAssetsGroupAlbumWithName(name: String!, resultBlock: ALAssetsLibraryGroupResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  func writeImageToSavedPhotosAlbum(imageRef: CGImage!, orientation: ALAssetOrientation, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func writeImageToSavedPhotosAlbum(imageRef: CGImage!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func writeImageDataToSavedPhotosAlbum(imageData: Data!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  func writeVideoAtPathToSavedPhotosAlbum(videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  func videoAtPathIsCompatibleWithSavedPhotosAlbum(videoPathURL: URL!) -> Bool
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
