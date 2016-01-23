
class IOSurface {
}
typealias IOSurfaceRef = IOSurface
typealias IOSurfaceID = UInt32
let kIOSurfaceAllocSize: CFString
let kIOSurfaceWidth: CFString
let kIOSurfaceHeight: CFString
let kIOSurfaceBytesPerRow: CFString
let kIOSurfaceBytesPerElement: CFString
let kIOSurfaceElementWidth: CFString
let kIOSurfaceElementHeight: CFString
let kIOSurfaceOffset: CFString
let kIOSurfacePlaneInfo: CFString
let kIOSurfacePlaneWidth: CFString
let kIOSurfacePlaneHeight: CFString
let kIOSurfacePlaneBytesPerRow: CFString
let kIOSurfacePlaneOffset: CFString
let kIOSurfacePlaneSize: CFString
let kIOSurfacePlaneBase: CFString
let kIOSurfacePlaneBytesPerElement: CFString
let kIOSurfacePlaneElementWidth: CFString
let kIOSurfacePlaneElementHeight: CFString
let kIOSurfaceCacheMode: CFString
let kIOSurfaceIsGlobal: CFString
let kIOSurfacePixelFormat: CFString
func IOSurfaceGetTypeID() -> CFTypeID
func IOSurfaceCreate(properties: CFDictionary) -> IOSurface?
func IOSurfaceLookup(csid: IOSurfaceID) -> IOSurface?
func IOSurfaceGetID(buffer: IOSurface) -> IOSurfaceID
struct IOSurfaceLockOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ReadOnly: IOSurfaceLockOptions { get }
  static var AvoidSync: IOSurfaceLockOptions { get }
}
func IOSurfaceLock(buffer: IOSurface, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>) -> IOReturn
func IOSurfaceUnlock(buffer: IOSurface, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>) -> IOReturn
func IOSurfaceGetAllocSize(buffer: IOSurface) -> Int
func IOSurfaceGetWidth(buffer: IOSurface) -> Int
func IOSurfaceGetHeight(buffer: IOSurface) -> Int
func IOSurfaceGetBytesPerElement(buffer: IOSurface) -> Int
func IOSurfaceGetBytesPerRow(buffer: IOSurface) -> Int
func IOSurfaceGetBaseAddress(buffer: IOSurface) -> UnsafeMutablePointer<Void>
func IOSurfaceGetElementWidth(buffer: IOSurface) -> Int
func IOSurfaceGetElementHeight(buffer: IOSurface) -> Int
func IOSurfaceGetPixelFormat(buffer: IOSurface) -> OSType
func IOSurfaceGetSeed(buffer: IOSurface) -> UInt32
func IOSurfaceGetPlaneCount(buffer: IOSurface) -> Int
func IOSurfaceGetWidthOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
func IOSurfaceGetHeightOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
func IOSurfaceGetBytesPerElementOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
func IOSurfaceGetBytesPerRowOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
func IOSurfaceGetBaseAddressOfPlane(buffer: IOSurface, _ planeIndex: Int) -> UnsafeMutablePointer<Void>
func IOSurfaceGetElementWidthOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
func IOSurfaceGetElementHeightOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
func IOSurfaceSetValue(buffer: IOSurface, _ key: CFString, _ value: AnyObject)
func IOSurfaceCopyValue(buffer: IOSurface, _ key: CFString) -> AnyObject?
func IOSurfaceRemoveValue(buffer: IOSurface, _ key: CFString)
func IOSurfaceSetValues(buffer: IOSurface, _ keysAndValues: CFDictionary)
func IOSurfaceCopyAllValues(buffer: IOSurface) -> CFDictionary?
func IOSurfaceRemoveAllValues(buffer: IOSurface)
func IOSurfaceCreateMachPort(buffer: IOSurface) -> mach_port_t
func IOSurfaceLookupFromMachPort(port: mach_port_t) -> IOSurface?
func IOSurfaceCreateXPCObject(aSurface: IOSurface) -> xpc_object_t
func IOSurfaceLookupFromXPCObject(xobj: xpc_object_t) -> IOSurface?
func IOSurfaceGetPropertyMaximum(property: CFString) -> Int
func IOSurfaceGetPropertyAlignment(property: CFString) -> Int
func IOSurfaceAlignProperty(property: CFString, _ value: Int) -> Int
func IOSurfaceIncrementUseCount(buffer: IOSurface)
func IOSurfaceDecrementUseCount(buffer: IOSurface)
func IOSurfaceGetUseCount(buffer: IOSurface) -> Int32
func IOSurfaceIsInUse(buffer: IOSurface) -> Bool
