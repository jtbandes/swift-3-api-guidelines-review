
var QUICKLOOK_VERSION: Int32 { get }
var kQLReturnMask: Int32 { get }
class QLThumbnailRequest {
}
typealias QLThumbnailRequestRef = QLThumbnailRequest
func QLThumbnailRequestGetTypeID() -> CFTypeID
func QLThumbnailRequestCopyURL(thumbnail: QLThumbnailRequest!) -> Unmanaged<CFURL>!
func QLThumbnailRequestCopyOptions(thumbnail: QLThumbnailRequest!) -> Unmanaged<CFDictionary>!
func QLThumbnailRequestCopyContentUTI(thumbnail: QLThumbnailRequest!) -> Unmanaged<CFString>!
func QLThumbnailRequestGetMaximumSize(thumbnail: QLThumbnailRequest!) -> CGSize
func QLThumbnailRequestGetGeneratorBundle(thumbnail: QLThumbnailRequest!) -> Unmanaged<CFBundle>!
func QLThumbnailRequestSetDocumentObject(thumbnail: QLThumbnailRequest!, _ object: UnsafePointer<Void>, _ callbacks: UnsafePointer<CFArrayCallBacks>)
func QLThumbnailRequestGetDocumentObject(thumbnail: QLThumbnailRequest!) -> UnsafePointer<Void>
func QLThumbnailRequestSetImage(thumbnail: QLThumbnailRequest!, _ image: CGImage!, _ properties: CFDictionary!)
func QLThumbnailRequestSetImageWithData(thumbnail: QLThumbnailRequest!, _ data: CFData!, _ properties: CFDictionary!)
func QLThumbnailRequestCreateContext(thumbnail: QLThumbnailRequest!, _ size: CGSize, _ isBitmap: Bool, _ properties: CFDictionary!) -> Unmanaged<CGContext>!
func QLThumbnailRequestFlushContext(thumbnail: QLThumbnailRequest!, _ context: CGContext!)
func QLThumbnailRequestSetImageAtURL(thumbnail: QLThumbnailRequest!, _ url: CFURL!, _ properties: CFDictionary!)
func QLThumbnailRequestSetThumbnailWithDataRepresentation(thumbnail: QLThumbnailRequest!, _ data: CFData!, _ contentTypeUTI: CFString!, _ previewProperties: CFDictionary!, _ properties: CFDictionary!)
func QLThumbnailRequestSetThumbnailWithURLRepresentation(thumbnail: QLThumbnailRequest!, _ url: CFURL!, _ contentTypeUTI: CFString!, _ previewProperties: CFDictionary!, _ properties: CFDictionary!)
func QLThumbnailRequestIsCancelled(thumbnail: QLThumbnailRequest!) -> Bool
let kQLThumbnailPropertyExtensionKey: CFString!
let kQLThumbnailPropertyBadgeImageKey: CFString!
let kQLThumbnailPropertyBaseBundlePathKey: CFString!
typealias QLPreviewRequestRef = QLPreviewRequest
class QLPreviewRequest {
}
func QLPreviewRequestGetTypeID() -> CFTypeID
let kQLPreviewPropertyDisplayNameKey: CFString!
let kQLPreviewPropertyWidthKey: CFString!
let kQLPreviewPropertyHeightKey: CFString!
let kQLPreviewPropertyBaseBundlePathKey: CFString!
let kQLPreviewPropertyStringEncodingKey: CFString!
struct QLPreviewPDFStyle : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kQLPreviewPDFStandardStyle: QLPreviewPDFStyle { get }
var kQLPreviewPDFPagesWithThumbnailsOnRightStyle: QLPreviewPDFStyle { get }
var kQLPreviewPDFPagesWithThumbnailsOnLeftStyle: QLPreviewPDFStyle { get }
let kQLPreviewPropertyPDFStyleKey: CFString!
let kQLPreviewOptionCursorKey: CFString!
let kQLPreviewPropertyCursorKey: CFString!
func QLPreviewRequestCopyURL(preview: QLPreviewRequest!) -> Unmanaged<CFURL>!
func QLPreviewRequestCopyOptions(preview: QLPreviewRequest!) -> Unmanaged<CFDictionary>!
func QLPreviewRequestCopyContentUTI(preview: QLPreviewRequest!) -> Unmanaged<CFString>!
func QLPreviewRequestGetGeneratorBundle(preview: QLPreviewRequest!) -> Unmanaged<CFBundle>!
func QLPreviewRequestSetDocumentObject(preview: QLPreviewRequest!, _ object: UnsafePointer<Void>, _ callbacks: UnsafePointer<CFArrayCallBacks>)
func QLPreviewRequestGetDocumentObject(preview: QLPreviewRequest!) -> UnsafePointer<Void>
func QLPreviewRequestIsCancelled(preview: QLPreviewRequest!) -> Bool
func QLPreviewRequestSetDataRepresentation(preview: QLPreviewRequest!, _ data: CFData!, _ contentTypeUTI: CFString!, _ properties: CFDictionary!)
func QLPreviewRequestSetURLRepresentation(preview: QLPreviewRequest!, _ url: CFURL!, _ contentTypeUTI: CFString!, _ properties: CFDictionary!)
func QLPreviewRequestCreateContext(preview: QLPreviewRequest!, _ size: CGSize, _ isBitmap: Bool, _ properties: CFDictionary!) -> Unmanaged<CGContext>!
func QLPreviewRequestCreatePDFContext(preview: QLPreviewRequest!, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary!, _ properties: CFDictionary!) -> Unmanaged<CGContext>!
func QLPreviewRequestFlushContext(preview: QLPreviewRequest!, _ context: CGContext!)
let kQLPreviewPropertyMIMETypeKey: CFString!
let kQLPreviewPropertyTextEncodingNameKey: CFString!
let kQLPreviewPropertyAttachmentDataKey: CFString!
let kQLPreviewPropertyAttachmentsKey: CFString!
let kQLPreviewContentIDScheme: CFString!
struct QLGeneratorInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var GenerateThumbnailForURL: (@convention(c) (UnsafeMutablePointer<Void>, QLThumbnailRequest!, CFURL!, CFString!, CFDictionary!, CGSize) -> OSStatus)!
  var CancelThumbnailGeneration: (@convention(c) (UnsafeMutablePointer<Void>, QLThumbnailRequest!) -> Void)!
  var GeneratePreviewForURL: (@convention(c) (UnsafeMutablePointer<Void>, QLPreviewRequest!, CFURL!, CFString!, CFDictionary!) -> OSStatus)!
  var CancelPreviewGeneration: (@convention(c) (UnsafeMutablePointer<Void>, QLPreviewRequest!) -> Void)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, GenerateThumbnailForURL: (@convention(c) (UnsafeMutablePointer<Void>, QLThumbnailRequest!, CFURL!, CFString!, CFDictionary!, CGSize) -> OSStatus)!, CancelThumbnailGeneration: (@convention(c) (UnsafeMutablePointer<Void>, QLThumbnailRequest!) -> Void)!, GeneratePreviewForURL: (@convention(c) (UnsafeMutablePointer<Void>, QLPreviewRequest!, CFURL!, CFString!, CFDictionary!) -> OSStatus)!, CancelPreviewGeneration: (@convention(c) (UnsafeMutablePointer<Void>, QLPreviewRequest!) -> Void)!)
}
class QLThumbnail {
}
typealias QLThumbnailRef = QLThumbnail
func QLThumbnailGetTypeID() -> CFTypeID
func QLThumbnailCreate(allocator: CFAllocator!, _ url: CFURL!, _ maxThumbnailSize: CGSize, _ options: CFDictionary!) -> Unmanaged<QLThumbnail>!
func QLThumbnailCopyDocumentURL(thumbnail: QLThumbnail!) -> Unmanaged<CFURL>!
func QLThumbnailGetMaximumSize(thumbnail: QLThumbnail!) -> CGSize
func QLThumbnailCopyOptions(thumbnail: QLThumbnail!) -> Unmanaged<CFDictionary>!
func QLThumbnailDispatchAsync(thumbnail: QLThumbnail!, _ queue: dispatch_queue_t!, _ completion: dispatch_block_t!)
func QLThumbnailCopyImage(thumbnail: QLThumbnail!) -> Unmanaged<CGImage>!
func QLThumbnailGetContentRect(thumbnail: QLThumbnail!) -> CGRect
func QLThumbnailCancel(thumbnail: QLThumbnail!)
func QLThumbnailIsCancelled(thumbnail: QLThumbnail!) -> Bool
func QLThumbnailImageCreate(allocator: CFAllocator!, _ url: CFURL!, _ maxThumbnailSize: CGSize, _ options: CFDictionary!) -> Unmanaged<CGImage>!
let kQLThumbnailOptionIconModeKey: CFString!
let kQLThumbnailOptionScaleFactorKey: CFString!
