
let kSMErrorDomainIPC: CFString!
let kSMErrorDomainFramework: CFString!
let kSMErrorDomainLaunchd: CFString!
var kSMErrorInternalFailure: Int { get }
var kSMErrorInvalidSignature: Int { get }
var kSMErrorAuthorizationFailure: Int { get }
var kSMErrorToolNotValid: Int { get }
var kSMErrorJobNotFound: Int { get }
var kSMErrorServiceUnavailable: Int { get }
var kSMErrorJobPlistNotFound: Int { get }
var kSMErrorJobMustBeEnabled: Int { get }
var kSMErrorInvalidPlist: Int { get }
func SMLoginItemSetEnabled(identifier: CFString, _ enabled: UInt8) -> UInt8
var kSMRightBlessPrivilegedHelper: String { get }
var kSMRightModifySystemDaemons: String { get }
let kSMDomainSystemLaunchd: CFString!
let kSMDomainUserLaunchd: CFString!
func SMJobCopyDictionary(domain: CFString!, _ jobLabel: CFString) -> Unmanaged<CFDictionary>!
func SMCopyAllJobDictionaries(domain: CFString!) -> Unmanaged<CFArray>!
func SMJobSubmit(domain: CFString!, _ job: CFDictionary, _ auth: AuthorizationRef, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> UInt8
func SMJobRemove(domain: CFString!, _ jobLabel: CFString, _ auth: AuthorizationRef, _ wait: UInt8, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> UInt8
func SMJobBless(domain: CFString!, _ executableLabel: CFString, _ auth: AuthorizationRef, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> UInt8
