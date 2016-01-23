
class PHAdjustmentData : NSObject {
  init(formatIdentifier: String, formatVersion: String, data: NSData)
  var formatIdentifier: String { get }
  var formatVersion: String { get }
  var data: NSData { get }
  init()
}
class PHContentEditingInput : NSObject {
  var mediaType: PHAssetMediaType { get }
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @NSCopying var creationDate: NSDate? { get }
  var uniformTypeIdentifier: String? { get }
  var adjustmentData: PHAdjustmentData { get }
  @NSCopying var fullSizeImageURL: NSURL? { get }
  var fullSizeImageOrientation: Int32 { get }
  init()
}
class PHContentEditingOutput : NSObject {
  init(contentEditingInput: PHContentEditingInput)
  var adjustmentData: PHAdjustmentData
  @NSCopying var renderedContentURL: NSURL { get }
  init()
}
enum PHAssetMediaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Image
  case Video
  case Audio
}
struct PHAssetMediaSubtype : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: PHAssetMediaSubtype { get }
  static var PhotoPanorama: PHAssetMediaSubtype { get }
  static var PhotoHDR: PHAssetMediaSubtype { get }
  static var PhotoScreenshot: PHAssetMediaSubtype { get }
  static var VideoStreamed: PHAssetMediaSubtype { get }
  static var VideoHighFrameRate: PHAssetMediaSubtype { get }
  static var VideoTimelapse: PHAssetMediaSubtype { get }
}
