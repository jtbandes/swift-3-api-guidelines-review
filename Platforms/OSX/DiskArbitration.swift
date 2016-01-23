
var kDADiskMountOptionDefault: Int { get }
var kDADiskMountOptionWhole: Int { get }
typealias DADiskMountOptions = UInt32
var kDADiskRenameOptionDefault: Int { get }
typealias DADiskRenameOptions = UInt32
var kDADiskUnmountOptionDefault: Int { get }
var kDADiskUnmountOptionForce: Int { get }
var kDADiskUnmountOptionWhole: Int { get }
typealias DADiskUnmountOptions = UInt32
var kDADiskEjectOptionDefault: Int { get }
typealias DADiskEjectOptions = UInt32
var kDADiskClaimOptionDefault: Int { get }
typealias DADiskClaimOptions = UInt32
var kDADiskOptionDefault: Int { get }
typealias DADiskOptions = UInt32
var kDADiskDescriptionMatchMediaUnformatted: Unmanaged<CFDictionary>
var kDADiskDescriptionMatchMediaWhole: Unmanaged<CFDictionary>
var kDADiskDescriptionMatchVolumeMountable: Unmanaged<CFDictionary>
var kDADiskDescriptionMatchVolumeUnrecognized: Unmanaged<CFDictionary>
var kDADiskDescriptionWatchVolumeName: Unmanaged<CFArray>
var kDADiskDescriptionWatchVolumePath: Unmanaged<CFArray>
typealias DADiskAppearedCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Void
func DARegisterDiskAppearedCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskAppearedCallback, _ context: UnsafeMutablePointer<Void>)
typealias DADiskDescriptionChangedCallback = @convention(c) (DADisk, CFArray, UnsafeMutablePointer<Void>) -> Void
func DARegisterDiskDescriptionChangedCallback(session: DASession, _ match: CFDictionary?, _ watch: CFArray?, _ callback: DADiskDescriptionChangedCallback, _ context: UnsafeMutablePointer<Void>)
typealias DADiskDisappearedCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Void
func DARegisterDiskDisappearedCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskDisappearedCallback, _ context: UnsafeMutablePointer<Void>)
typealias DADiskMountCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void
func DADiskMount(disk: DADisk, _ path: CFURL?, _ options: DADiskMountOptions, _ callback: DADiskMountCallback?, _ context: UnsafeMutablePointer<Void>)
func DADiskMountWithArguments(disk: DADisk, _ path: CFURL?, _ options: DADiskMountOptions, _ callback: DADiskMountCallback?, _ context: UnsafeMutablePointer<Void>, _ arguments: UnsafeMutablePointer<Unmanaged<CFString>?>)
typealias DADiskMountApprovalCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Unmanaged<DADissenter>?
func DARegisterDiskMountApprovalCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskMountApprovalCallback, _ context: UnsafeMutablePointer<Void>)
typealias DADiskRenameCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void
func DADiskRename(disk: DADisk, _ name: CFString, _ options: DADiskRenameOptions, _ callback: DADiskRenameCallback?, _ context: UnsafeMutablePointer<Void>)
typealias DADiskUnmountCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void
func DADiskUnmount(disk: DADisk, _ options: DADiskUnmountOptions, _ callback: DADiskUnmountCallback?, _ context: UnsafeMutablePointer<Void>)
typealias DADiskUnmountApprovalCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Unmanaged<DADissenter>?
func DARegisterDiskUnmountApprovalCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskUnmountApprovalCallback, _ context: UnsafeMutablePointer<Void>)
typealias DADiskEjectCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void
func DADiskEject(disk: DADisk, _ options: DADiskEjectOptions, _ callback: DADiskEjectCallback?, _ context: UnsafeMutablePointer<Void>)
typealias DADiskEjectApprovalCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Unmanaged<DADissenter>?
func DARegisterDiskEjectApprovalCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskEjectApprovalCallback, _ context: UnsafeMutablePointer<Void>)
typealias DADiskClaimCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void
typealias DADiskClaimReleaseCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Unmanaged<DADissenter>?
func DADiskClaim(disk: DADisk, _ options: DADiskClaimOptions, _ release: DADiskClaimReleaseCallback?, _ releaseContext: UnsafeMutablePointer<Void>, _ callback: DADiskClaimCallback?, _ callbackContext: UnsafeMutablePointer<Void>)
func DADiskIsClaimed(disk: DADisk) -> Bool
func DADiskUnclaim(disk: DADisk)
typealias DADiskPeekCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Void
func DARegisterDiskPeekCallback(session: DASession, _ match: CFDictionary?, _ order: CFIndex, _ callback: DADiskPeekCallback, _ context: UnsafeMutablePointer<Void>)
func DADiskGetOptions(disk: DADisk) -> DADiskOptions
func DADiskSetOptions(disk: DADisk, _ options: DADiskOptions, _ value: Bool) -> DAReturn
func DAUnregisterCallback(session: DASession, _ callback: UnsafeMutablePointer<Void>, _ context: UnsafeMutablePointer<Void>)
let kDADiskDescriptionVolumeKindKey: CFString
let kDADiskDescriptionVolumeMountableKey: CFString
let kDADiskDescriptionVolumeNameKey: CFString
let kDADiskDescriptionVolumeNetworkKey: CFString
let kDADiskDescriptionVolumePathKey: CFString
let kDADiskDescriptionVolumeTypeKey: CFString
let kDADiskDescriptionVolumeUUIDKey: CFString
let kDADiskDescriptionMediaBlockSizeKey: CFString
let kDADiskDescriptionMediaBSDMajorKey: CFString
let kDADiskDescriptionMediaBSDMinorKey: CFString
let kDADiskDescriptionMediaBSDNameKey: CFString
let kDADiskDescriptionMediaBSDUnitKey: CFString
let kDADiskDescriptionMediaContentKey: CFString
let kDADiskDescriptionMediaEjectableKey: CFString
let kDADiskDescriptionMediaIconKey: CFString
let kDADiskDescriptionMediaKindKey: CFString
let kDADiskDescriptionMediaLeafKey: CFString
let kDADiskDescriptionMediaNameKey: CFString
let kDADiskDescriptionMediaPathKey: CFString
let kDADiskDescriptionMediaRemovableKey: CFString
let kDADiskDescriptionMediaSizeKey: CFString
let kDADiskDescriptionMediaTypeKey: CFString
let kDADiskDescriptionMediaUUIDKey: CFString
let kDADiskDescriptionMediaWholeKey: CFString
let kDADiskDescriptionMediaWritableKey: CFString
let kDADiskDescriptionDeviceGUIDKey: CFString
let kDADiskDescriptionDeviceInternalKey: CFString
let kDADiskDescriptionDeviceModelKey: CFString
let kDADiskDescriptionDevicePathKey: CFString
let kDADiskDescriptionDeviceProtocolKey: CFString
let kDADiskDescriptionDeviceRevisionKey: CFString
let kDADiskDescriptionDeviceUnitKey: CFString
let kDADiskDescriptionDeviceVendorKey: CFString
let kDADiskDescriptionBusNameKey: CFString
let kDADiskDescriptionBusPathKey: CFString
class DADisk {
}
typealias DADiskRef = DADisk
func DADiskGetTypeID() -> CFTypeID
func DADiskCreateFromBSDName(allocator: CFAllocator?, _ session: DASession, _ name: UnsafePointer<Int8>) -> DADisk?
func DADiskCreateFromIOMedia(allocator: CFAllocator?, _ session: DASession, _ media: io_service_t) -> DADisk?
func DADiskCreateFromVolumePath(allocator: CFAllocator?, _ session: DASession, _ path: CFURL) -> DADisk?
func DADiskGetBSDName(disk: DADisk) -> UnsafePointer<Int8>
func DADiskCopyIOMedia(disk: DADisk) -> io_service_t
func DADiskCopyDescription(disk: DADisk) -> CFDictionary?
func DADiskCopyWholeDisk(disk: DADisk) -> DADisk?
var kDAReturnSuccess: Int { get }
var kDAReturnError: Int { get }
var kDAReturnBusy: Int { get }
var kDAReturnBadArgument: Int { get }
var kDAReturnExclusiveAccess: Int { get }
var kDAReturnNoResources: Int { get }
var kDAReturnNotFound: Int { get }
var kDAReturnNotMounted: Int { get }
var kDAReturnNotPermitted: Int { get }
var kDAReturnNotPrivileged: Int { get }
var kDAReturnNotReady: Int { get }
var kDAReturnNotWritable: Int { get }
var kDAReturnUnsupported: Int { get }
typealias DAReturn = mach_error_t
typealias DADissenterRef = DADissenter
class DADissenter {
}
func DADissenterCreate(allocator: CFAllocator?, _ status: DAReturn, _ string: CFString?) -> DADissenter
func DADissenterGetStatus(dissenter: DADissenter) -> DAReturn
func DADissenterGetStatusString(dissenter: DADissenter) -> CFString?
class DASession {
}
typealias DASessionRef = DASession
func DASessionGetTypeID() -> CFTypeID
func DASessionCreate(allocator: CFAllocator?) -> DASession?
func DASessionScheduleWithRunLoop(session: DASession, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func DASessionUnscheduleFromRunLoop(session: DASession, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func DASessionSetDispatchQueue(session: DASession, _ queue: dispatch_queue_t?)
