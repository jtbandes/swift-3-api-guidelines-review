
typealias BluetoothConnectionHandle = UInt16
typealias BluetoothLMPHandle = UInt8
var kBluetoothConnectionHandleNone: Int { get }
typealias BluetoothReasonCode = UInt8
typealias BluetoothEncryptionEnable = UInt8
var kBluetoothEncryptionEnableOff: Int { get }
var kBluetoothEncryptionEnableOn: Int { get }
var kBluetoothEncryptionEnableBREDRE0: Int { get }
var kBluetoothEncryptionEnableLEAESCCM: Int { get }
var kBluetoothEncryptionEnableBREDRAESCCM: Int { get }
typealias BluetoothKeyFlag = UInt8
var kBluetoothKeyFlagSemiPermanent: Int { get }
var kBluetoothKeyFlagTemporary: Int { get }
typealias BluetoothKeyType = UInt8
var kBluetoothKeyTypeCombination: Int { get }
var kBluetoothKeyTypeLocalUnit: Int { get }
var kBluetoothKeyTypeRemoteUnit: Int { get }
var kBluetoothKeyTypeDebugCombination: Int { get }
var kBluetoothKeyTypeUnauthenticatedCombination: Int { get }
var kBluetoothKeyTypeAuthenticatedCombination: Int { get }
var kBluetoothKeyTypeChangedCombination: Int { get }
typealias BluetoothPacketType = UInt16
var kBluetoothPacketTypeReserved1: Int { get }
var kBluetoothPacketType2DH1Omit: Int { get }
var kBluetoothPacketType3DH1Omit: Int { get }
var kBluetoothPacketTypeDM1: Int { get }
var kBluetoothPacketTypeDH1: Int { get }
var kBluetoothPacketTypeHV1: Int { get }
var kBluetoothPacketTypeHV2: Int { get }
var kBluetoothPacketTypeHV3: Int { get }
var kBluetoothPacketTypeDV: Int { get }
var kBluetoothPacketType2DH3Omit: Int { get }
var kBluetoothPacketType3DH3Omit: Int { get }
var kBluetoothPacketTypeAUX: Int { get }
var kBluetoothPacketTypeDM3: Int { get }
var kBluetoothPacketTypeDH3: Int { get }
var kBluetoothPacketType2DH5Omit: Int { get }
var kBluetoothPacketType3DM5Omit: Int { get }
var kBluetoothPacketTypeDM5: Int { get }
var kBluetoothPacketTypeDH5: Int { get }
var kBluetoothPacketTypeEnd: Int { get }
var kBluetoothSynchronousConnectionPacketTypeNone: Int { get }
var kBluetoothSynchronousConnectionPacketTypeHV1: Int { get }
var kBluetoothSynchronousConnectionPacketTypeHV2: Int { get }
var kBluetoothSynchronousConnectionPacketTypeHV3: Int { get }
var kBluetoothSynchronousConnectionPacketTypeEV3: Int { get }
var kBluetoothSynchronousConnectionPacketTypeEV4: Int { get }
var kBluetoothSynchronousConnectionPacketTypeEV5: Int { get }
var kBluetoothSynchronousConnectionPacketType2EV3Omit: Int { get }
var kBluetoothSynchronousConnectionPacketType3EV3Omit: Int { get }
var kBluetoothSynchronousConnectionPacketType2EV5Omit: Int { get }
var kBluetoothSynchronousConnectionPacketType3EV5Omit: Int { get }
var kBluetoothSynchronousConnectionPacketTypeFutureUse: Int { get }
var kBluetoothSynchronousConnectionPacketTypeAll: Int { get }
var kBluetoothSynchronousConnectionPacketTypeEnd: Int { get }
typealias BluetoothLAP = UInt32
var kBluetoothGeneralInquiryAccessCodeIndex: Int { get }
var kBluetoothGeneralInquiryAccessCodeLAPValue: Int { get }
var kBluetoothLimitedInquiryAccessCodeIndex: Int { get }
var kBluetoothLimitedInquiryAccessCodeLAPValue: Int { get }
var kBluetoothLimitedInquiryAccessCodeEnd: Int { get }
typealias BluetoothPageScanRepetitionMode = UInt8
var kBluetoothPageScanRepetitionModeR0: Int { get }
var kBluetoothPageScanRepetitionModeR1: Int { get }
var kBluetoothPageScanRepetitionModeR2: Int { get }
typealias BluetoothPageScanPeriodMode = UInt8
var kBluetoothPageScanPeriodModeP0: Int { get }
var kBluetoothPageScanPeriodModeP1: Int { get }
var kBluetoothPageScanPeriodModeP2: Int { get }
typealias BluetoothPageScanMode = UInt8
var kBluetoothPageScanModeMandatory: Int { get }
var kBluetoothPageScanModeOptional1: Int { get }
var kBluetoothPageScanModeOptional2: Int { get }
var kBluetoothPageScanModeOptional3: Int { get }
typealias BluetoothHCIPageScanType = UInt8
struct BluetoothHCIPageScanTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIPageScanTypeStandard: BluetoothHCIPageScanTypes { get }
var kBluetoothHCIPageScanTypeInterlaced: BluetoothHCIPageScanTypes { get }
var kBluetoothHCIPageScanTypeReservedStart: BluetoothHCIPageScanTypes { get }
var kBluetoothHCIPageScanTypeReservedEnd: BluetoothHCIPageScanTypes { get }
typealias BluetoothHCIErroneousDataReporting = UInt8
var kBluetoothHCIErroneousDataReportingDisabled: Int { get }
var kBluetoothHCIErroneousDataReportingEnabled: Int { get }
var kBluetoothHCIErroneousDataReportingReservedStart: Int { get }
var kBluetoothHCIErroneousDataReportingReservedEnd: Int { get }
struct BluetoothDeviceAddress {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothKey {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothIRK {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothPINCode {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothClassOfDevice = UInt32
///
/// Major Service Classes (11-bit value - bits 13-23 of Device/Service field)
///
typealias BluetoothServiceClassMajor = UInt32
///
/// Major Device Classes (5-bit value - bits 8-12 of Device/Service field)
///
typealias BluetoothDeviceClassMajor = UInt32
///
/// Minor Device Classes (6-bit value - bits 2-7 of Device/Service field)
///
typealias BluetoothDeviceClassMinor = UInt32
var kBluetoothDeviceNameMaxLength: Int { get }
typealias BluetoothDeviceName = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
typealias BluetoothClockOffset = UInt16
typealias BluetoothRole = UInt8
typealias BluetoothAllowRoleSwitch = UInt8
var kBluetoothDontAllowRoleSwitch: Int { get }
var kBluetoothAllowRoleSwitch: Int { get }
var kBluetoothRoleBecomeMaster: Int { get }
var kBluetoothRoleRemainSlave: Int { get }
struct BluetoothSetEventMask {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothPINType = UInt8
var kBluetoothL2CAPMaxPacketSize: Int { get }
var kBluetoothACLLogicalChannelReserved: Int { get }
var kBluetoothACLLogicalChannelL2CAPContinue: Int { get }
var kBluetoothACLLogicalChannelL2CAPStart: Int { get }
var kBluetoothACLLogicalChannelLMP: Int { get }
typealias BluetoothL2CAPChannelID = UInt16
var kBluetoothL2CAPChannelNull: Int { get }
var kBluetoothL2CAPChannelSignalling: Int { get }
var kBluetoothL2CAPChannelConnectionLessData: Int { get }
var kBluetoothL2CAPChannelAMPManagerProtocol: Int { get }
var kBluetoothL2CAPChannelAttributeProtocol: Int { get }
var kBluetoothL2CAPChannelLESignalling: Int { get }
var kBluetoothL2CAPChannelSecurityManager: Int { get }
var kBluetoothL2CAPChannelReservedStart: Int { get }
var kBluetoothL2CAPChannelLEAP: Int { get }
var kBluetoothL2CAPChannelLEAS: Int { get }
var kBluetoothL2CAPChannelMagnet: Int { get }
var kBluetoothL2CAPChannelReservedEnd: Int { get }
var kBluetoothL2CAPChannelDynamicStart: Int { get }
var kBluetoothL2CAPChannelDynamicEnd: Int { get }
var kBluetoothL2CAPChannelEnd: Int { get }
typealias BluetoothL2CAPGroupID = BluetoothL2CAPChannelID
typealias BluetoothL2CAPPSM = UInt16
struct BluetoothL2CAPCommandCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPCommandCodeReserved: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeCommandReject: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConnectionRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConnectionResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConfigureRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConfigureResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeDisconnectionRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeDisconnectionResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeEchoRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeEchoResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeInformationRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeInformationResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeCreateChannelRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeCreateChannelResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeMoveChannelRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeMoveChannelResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeMoveChannelConfirmation: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeMoveChannelConfirmationResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConnectionParameterUpdateRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeConnectionParameterUpdateResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeLECreditBasedConnectionRequest: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeLECreditBasedConnectionResponse: BluetoothL2CAPCommandCode { get }
var kBluetoothL2CAPCommandCodeLEFlowControlCredit: BluetoothL2CAPCommandCode { get }
struct BluetoothL2CAPCommandRejectReason : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPCommandRejectReasonCommandNotUnderstood: BluetoothL2CAPCommandRejectReason { get }
var kBluetoothL2CAPCommandRejectReasonSignallingMTUExceeded: BluetoothL2CAPCommandRejectReason { get }
var kBluetoothL2CAPCommandRejectReasonInvalidCIDInRequest: BluetoothL2CAPCommandRejectReason { get }
typealias BluetoothL2CAPMTU = UInt16
typealias BluetoothL2CAPLinkTimeout = UInt16
typealias BluetoothL2CAPFlushTimeout = UInt16
var kBluetoothL2CAPFlushTimeoutUseExisting: Int { get }
var kBluetoothL2CAPFlushTimeoutImmediate: Int { get }
var kBluetoothL2CAPFlushTimeoutForever: Int { get }
var kBluetoothL2CAPFlushTimeoutEnd: Int { get }
struct BluetoothL2CAPQualityOfServiceOptions {
  var flags: UInt8
  var serviceType: UInt8
  var tokenRate: UInt32
  var tokenBucketSize: UInt32
  var peakBandwidth: UInt32
  var latency: UInt32
  var delayVariation: UInt32
  init()
  init(flags: UInt8, serviceType: UInt8, tokenRate: UInt32, tokenBucketSize: UInt32, peakBandwidth: UInt32, latency: UInt32, delayVariation: UInt32)
}
struct BluetoothL2CAPRetransmissionAndFlowControlOptions {
  var flags: UInt8
  var txWindowSize: UInt8
  var maxTransmit: UInt8
  var retransmissionTimeout: UInt16
  var monitorTimeout: UInt16
  var maxPDUPayloadSize: UInt16
  init()
  init(flags: UInt8, txWindowSize: UInt8, maxTransmit: UInt8, retransmissionTimeout: UInt16, monitorTimeout: UInt16, maxPDUPayloadSize: UInt16)
}
var kBluetoothL2CAPInfoTypeMaxConnectionlessMTUSize: Int { get }
var kBluetoothL2CAPPacketHeaderSize: Int { get }
typealias BluetoothL2CAPByteCount = UInt16
typealias BluetoothL2CAPCommandID = UInt8
typealias BluetoothL2CAPCommandByteCount = UInt16
struct BluetoothL2CAPConnectionResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConnectionResultSuccessful: BluetoothL2CAPConnectionResult { get }
var kBluetoothL2CAPConnectionResultPending: BluetoothL2CAPConnectionResult { get }
var kBluetoothL2CAPConnectionResultRefusedPSMNotSupported: BluetoothL2CAPConnectionResult { get }
var kBluetoothL2CAPConnectionResultRefusedSecurityBlock: BluetoothL2CAPConnectionResult { get }
var kBluetoothL2CAPConnectionResultRefusedNoResources: BluetoothL2CAPConnectionResult { get }
struct BluetoothL2CAPConnectionStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConnectionStatusNoInfoAvailable: BluetoothL2CAPConnectionStatus { get }
var kBluetoothL2CAPConnectionStatusAuthenticationPending: BluetoothL2CAPConnectionStatus { get }
var kBluetoothL2CAPConnectionStatusAuthorizationPending: BluetoothL2CAPConnectionStatus { get }
struct BluetoothL2CAPConfigurationResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConfigurationResultSuccess: BluetoothL2CAPConfigurationResult { get }
var kBluetoothL2CAPConfigurationResultUnacceptableParams: BluetoothL2CAPConfigurationResult { get }
var kBluetoothL2CAPConfigurationResultRejected: BluetoothL2CAPConfigurationResult { get }
var kBluetoothL2CAPConfigurationResultUnknownOptions: BluetoothL2CAPConfigurationResult { get }
struct BluetoothL2CAPConfigurationOption : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConfigurationOptionMTU: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionFlushTimeout: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionQoS: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionRetransmissionAndFlowControl: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionFrameCheckSequence: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionExtendedFlowSpecification: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionExtendedWindowSize: BluetoothL2CAPConfigurationOption { get }
var kBluetoothL2CAPConfigurationOptionMTULength: Int { get }
var kBluetoothL2CAPConfigurationOptionFlushTimeoutLength: Int { get }
var kBluetoothL2CAPConfigurationOptionQoSLength: Int { get }
var kBluetoothL2CAPConfigurationOptionRetransmissionAndFlowControlLength: Int { get }
struct BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPConfigurationBasicL2CAPModeFlag: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
var kBluetoothL2CAPConfigurationRetransmissionModeFlag: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
var kBluetoothL2CAPConfigurationFlowControlModeFlag: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
var kBluetoothL2CAPConfigurationEnhancedRetransmissionMode: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
var kBluetoothL2CAPConfigurationStreamingMode: BluetoothL2CAPConfigurationRetransmissionAndFlowControlFlags { get }
struct BluetoothL2CAPInformationType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPInformationTypeConnectionlessMTU: BluetoothL2CAPInformationType { get }
var kBluetoothL2CAPInformationTypeExtendedFeatures: BluetoothL2CAPInformationType { get }
var kBluetoothL2CAPInformationTypeFixedChannelsSupported: BluetoothL2CAPInformationType { get }
struct BluetoothL2CAPInformationResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPInformationResultSuccess: BluetoothL2CAPInformationResult { get }
var kBluetoothL2CAPInformationResultNotSupported: BluetoothL2CAPInformationResult { get }
struct BluetoothL2CAPInformationExtendedFeaturesMask : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPInformationNoExtendedFeatures: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationFlowControlMode: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationRetransmissionMode: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationBidirectionalQoS: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationEnhancedRetransmissionMode: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationStreamingMode: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationFCSOption: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationExtendedFlowSpecification: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationFixedChannels: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPInformationExtendedWindowSize: BluetoothL2CAPInformationExtendedFeaturesMask { get }
var kBluetoothL2CAPUnicastConnectionlessDataReception: BluetoothL2CAPInformationExtendedFeaturesMask { get }
struct BluetoothL2CAPQoSType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothL2CAPQoSTypeNoTraffic: BluetoothL2CAPQoSType { get }
var kBluetoothL2CAPQoSTypeBestEffort: BluetoothL2CAPQoSType { get }
var kBluetoothL2CAPQoSTypeGuaranteed: BluetoothL2CAPQoSType { get }
var kBluetoothL2CAPMTULowEnergyDefault: UInt32 { get }
var kBluetoothL2CAPMTUMinimum: UInt32 { get }
var kBluetoothL2CAPMTUDefault: UInt32 { get }
var kBluetoothL2CAPMTUMaximum: UInt32 { get }
var kBluetoothL2CAPMTUStart: UInt32 { get }
var kBluetoothL2CAPMTUSIG: UInt32 { get }
var kBluetoothL2CAPFlushTimeoutDefault: UInt32 { get }
var kBluetoothL2CAPQoSFlagsDefault: UInt32 { get }
var kBluetoothL2CAPQoSTypeDefault: UInt32 { get }
var kBluetoothL2CAPQoSTokenRateDefault: UInt32 { get }
var kBluetoothL2CAPQoSTokenBucketSizeDefault: UInt32 { get }
var kBluetoothL2CAPQoSPeakBandwidthDefault: UInt32 { get }
var kBluetoothL2CAPQoSLatencyDefault: UInt32 { get }
var kBluetoothL2CAPQoSDelayVariationDefault: UInt32 { get }
var kBluetoothLESMPTimeout: Int32 { get }
var kBluetoothLESMPMinEncryptionKeySize: Int32 { get }
var kBluetoothLESMPMaxEncryptionKeySize: Int32 { get }
struct BluetoothLESecurityManagerKeyDistributionFormat : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerEncryptionKey: BluetoothLESecurityManagerKeyDistributionFormat { get }
var kBluetoothLESecurityManagerIDKey: BluetoothLESecurityManagerKeyDistributionFormat { get }
var kBluetoothLESecurityManagerSignKey: BluetoothLESecurityManagerKeyDistributionFormat { get }
var kBluetoothLESecurityManagerLinkKey: BluetoothLESecurityManagerKeyDistributionFormat { get }
struct BluetoothLESecurityManagerCommandCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerCommandCodeReserved: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingRequest: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingResponse: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingConfirm: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingRandom: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingFailed: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeEncryptionInfo: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeMasterIdentification: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeIdentityInfo: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeIdentityAddressInfo: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeSigningInfo: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeSecurityRequest: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingPublicKey: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingDHKeyCheck: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodePairingKeypressNotification: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeReservedStart: BluetoothLESecurityManagerCommandCode { get }
var kBluetoothLESecurityManagerCommandCodeReservedEnd: BluetoothLESecurityManagerCommandCode { get }
struct BluetoothLESecurityManagerUserInputCapability : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerUserInputCapabilityNoInput: BluetoothLESecurityManagerUserInputCapability { get }
var kBluetoothLESecurityManagerUserInputCapabilityYesNo: BluetoothLESecurityManagerUserInputCapability { get }
var kBluetoothLESecurityManagerUserInputCapabilityKeyboard: BluetoothLESecurityManagerUserInputCapability { get }
struct BluetoothLESecurityManagerUserOutputCapability : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerUserOutputCapabilityNoOutput: BluetoothLESecurityManagerUserOutputCapability { get }
var kBluetoothLESecurityManagerUserOutputCapabilityNumericOutput: BluetoothLESecurityManagerUserOutputCapability { get }
struct BluetoothLESecurityManagerIOCapability : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerIOCapabilityDisplayOnly: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityDisplayYesNo: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityKeyboardOnly: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityNoInputNoOutput: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityKeyboardDisplay: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityReservedStart: BluetoothLESecurityManagerIOCapability { get }
var kBluetoothLESecurityManagerIOCapabilityReservedEnd: BluetoothLESecurityManagerIOCapability { get }
struct BluetoothLESecurityManagerOOBData : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerOOBAuthenticationDataNotPresent: BluetoothLESecurityManagerOOBData { get }
var kBluetoothLESecurityManagerOOBAuthenticationDataPresent: BluetoothLESecurityManagerOOBData { get }
var kBluetoothLESecurityManagerOOBDataReservedStart: BluetoothLESecurityManagerOOBData { get }
var kBluetoothLESecurityManagerOOBDataReservedEnd: BluetoothLESecurityManagerOOBData { get }
var kBluetoothLESecurityManagerNoBonding: Int { get }
var kBluetoothLESecurityManagerBonding: Int { get }
var kBluetoothLESecurityManagerReservedStart: Int { get }
var kBluetoothLESecurityManagerReservedEnd: Int { get }
struct BluetoothLESecurityManagerPairingFailedReasonCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerReasonCodeReserved: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodePasskeyEntryFailed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeOOBNotAvailbale: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeAuthenticationRequirements: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeConfirmValueFailed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodePairingNotSupported: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeEncryptionKeySize: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeCommandNotSupported: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeUnspecifiedReason: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeRepeatedAttempts: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeInvalidParameters: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeDHKeyCheckFailed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeNumericComparisonFailed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeBREDRPairingInProgress: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeCrossTransportKeyDerivationGenerationNotAllowed: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeReservedStart: BluetoothLESecurityManagerPairingFailedReasonCode { get }
var kBluetoothLESecurityManagerReasonCodeReservedEnd: BluetoothLESecurityManagerPairingFailedReasonCode { get }
struct BluetoothLESecurityManagerKeypressNotificationType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLESecurityManagerNotificationTypePasskeyEntryStarted: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypePasskeyDigitEntered: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypePasskeyDigitErased: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypePasskeyCleared: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypePasskeyEntryCompleted: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypeReservedStart: BluetoothLESecurityManagerKeypressNotificationType { get }
var kBluetoothLESecurityManagerNotificationTypeReservedEnd: BluetoothLESecurityManagerKeypressNotificationType { get }
struct BluetoothAMPManagerCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerCodeReserved: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPCommandReject: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPDiscoverRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPDiscoverResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPChangeNotify: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPChangeResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPGetInfoRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPGetInfoResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPGetAssocRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPGetAssocResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPCreatePhysicalLinkRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPCreatePhysicalLinkResponse: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPDisconnectPhysicalLinkRequest: BluetoothAMPManagerCode { get }
var kBluetoothAMPManagerCodeAMPDisconnectPhysicalLinkResponse: BluetoothAMPManagerCode { get }
struct BluetoothAMPCommandRejectReason : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerCommandRejectReasonCommandNotRecognized: BluetoothAMPCommandRejectReason { get }
struct BluetoothAMPDiscoverResponseControllerStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerDiscoverResponseControllerStatusPoweredDown: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusBluetoothOnly: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusNoCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusLowCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusMediumCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusHighCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
var kBluetoothAMPManagerDiscoverResponseControllerStatusFullCapacity: BluetoothAMPDiscoverResponseControllerStatus { get }
struct BluetoothAMPGetInfoResponseStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerGetInfoResponseSuccess: BluetoothAMPGetInfoResponseStatus { get }
var kBluetoothAMPManagerGetInfoResponseInvalidControllerID: BluetoothAMPGetInfoResponseStatus { get }
struct BluetoothAMPGetAssocResponseStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerGetAssocResponseSuccess: BluetoothAMPGetAssocResponseStatus { get }
var kBluetoothAMPManagerGetAssocResponseInvalidControllerID: BluetoothAMPGetAssocResponseStatus { get }
struct BluetoothAMPCreatePhysicalLinkResponseStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerCreatePhysicalLinkResponseSuccess: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseInvalidControllerID: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseUnableToStartLinkCreation: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseCollisionOccurred: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseAMPDisconnectedPhysicalLinkRequestReceived: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponsePhysicalLinkAlreadyExists: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerCreatePhysicalLinkResponseSecurityViolation: BluetoothAMPCreatePhysicalLinkResponseStatus { get }
struct BluetoothAMPDisconnectPhysicalLinkResponseStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAMPManagerDisconnectPhysicalLinkResponseSuccess: BluetoothAMPDisconnectPhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerDisconnectPhysicalLinkResponseInvalidControllerID: BluetoothAMPDisconnectPhysicalLinkResponseStatus { get }
var kBluetoothAMPManagerDisconnectPhysicalLinkResponseNoPhysicalLink: BluetoothAMPDisconnectPhysicalLinkResponseStatus { get }
typealias BluetoothHCICommandOpCodeGroup = UInt8
typealias BluetoothHCICommandOpCodeCommand = UInt16
typealias BluetoothHCICommandOpCode = UInt16
typealias BluetoothHCIVendorCommandSelector = UInt32
var kBluetoothHCIOpCodeNoOp: Int { get }
var kBluetoothHCICommandGroupNoOp: Int { get }
var kBluetoothHCICommandNoOp: Int { get }
var kBluetoothHCICommandGroupLinkControl: Int { get }
var kBluetoothHCICommandInquiry: Int { get }
var kBluetoothHCICommandInquiryCancel: Int { get }
var kBluetoothHCICommandPeriodicInquiryMode: Int { get }
var kBluetoothHCICommandExitPeriodicInquiryMode: Int { get }
var kBluetoothHCICommandCreateConnection: Int { get }
var kBluetoothHCICommandDisconnect: Int { get }
var kBluetoothHCICommandAddSCOConnection: Int { get }
var kBluetoothHCICommandCreateConnectionCancel: Int { get }
var kBluetoothHCICommandAcceptConnectionRequest: Int { get }
var kBluetoothHCICommandRejectConnectionRequest: Int { get }
var kBluetoothHCICommandLinkKeyRequestReply: Int { get }
var kBluetoothHCICommandLinkKeyRequestNegativeReply: Int { get }
var kBluetoothHCICommandPINCodeRequestReply: Int { get }
var kBluetoothHCICommandPINCodeRequestNegativeReply: Int { get }
var kBluetoothHCICommandChangeConnectionPacketType: Int { get }
var kBluetoothHCICommandAuthenticationRequested: Int { get }
var kBluetoothHCICommandSetConnectionEncryption: Int { get }
var kBluetoothHCICommandChangeConnectionLinkKey: Int { get }
var kBluetoothHCICommandMasterLinkKey: Int { get }
var kBluetoothHCICommandRemoteNameRequest: Int { get }
var kBluetoothHCICommandReadRemoteSupportedFeatures: Int { get }
var kBluetoothHCICommandReadRemoteExtendedFeatures: Int { get }
var kBluetoothHCICommandReadRemoteVersionInformation: Int { get }
var kBluetoothHCICommandReadClockOffset: Int { get }
var kBluetoothHCICommandRemoteNameRequestCancel: Int { get }
var kBluetoothHCICommandReadLMPHandle: Int { get }
var kBluetoothHCICommandSetupSynchronousConnection: Int { get }
var kBluetoothHCICommandAcceptSynchronousConnectionRequest: Int { get }
var kBluetoothHCICommandRejectSynchronousConnectionRequest: Int { get }
var kBluetoothHCICommandIOCapabilityRequestReply: Int { get }
var kBluetoothHCICommandUserConfirmationRequestReply: Int { get }
var kBluetoothHCICommandUserConfirmationRequestNegativeReply: Int { get }
var kBluetoothHCICommandUserPasskeyRequestReply: Int { get }
var kBluetoothHCICommandUserPasskeyRequestNegativeReply: Int { get }
var kBluetoothHCICommandRemoteOOBDataRequestReply: Int { get }
var kBluetoothHCICommandRemoteOOBDataRequestNegativeReply: Int { get }
var kBluetoothHCICommandIOCapabilityRequestNegativeReply: Int { get }
var kBluetoothHCICommandEnhancedSetupSynchronousConnection: Int { get }
var kBluetoothHCICommandEnhancedAcceptSynchronousConnectionRequest: Int { get }
var kBluetoothHCICommandTruncatedPage: Int { get }
var kBluetoothHCICommandTruncatedPageCancel: Int { get }
var kBluetoothHCICommandSetConnectionlessSlaveBroadcast: Int { get }
var kBluetoothHCICommandSetConnectionlessSlaveBroadcastReceive: Int { get }
var kBluetoothHCICommandStartSynchronizationTrain: Int { get }
var kBluetoothHCICommandReceiveSynchronizationTrain: Int { get }
var kBluetoothHCICommandRemoteOOBExtendedDataRequestReply: Int { get }
var kBluetoothHCICommandGroupLinkPolicy: Int { get }
var kBluetoothHCICommandHoldMode: Int { get }
var kBluetoothHCICommandSniffMode: Int { get }
var kBluetoothHCICommandExitSniffMode: Int { get }
var kBluetoothHCICommandParkMode: Int { get }
var kBluetoothHCICommandExitParkMode: Int { get }
var kBluetoothHCICommandQoSSetup: Int { get }
var kBluetoothHCICommandRoleDiscovery: Int { get }
var kBluetoothHCICommandSwitchRole: Int { get }
var kBluetoothHCICommandReadLinkPolicySettings: Int { get }
var kBluetoothHCICommandWriteLinkPolicySettings: Int { get }
var kBluetoothHCICommandReadDefaultLinkPolicySettings: Int { get }
var kBluetoothHCICommandWriteDefaultLinkPolicySettings: Int { get }
var kBluetoothHCICommandFlowSpecification: Int { get }
var kBluetoothHCICommandSniffSubrating: Int { get }
var kBluetoothHCICommandAcceptSniffRequest: Int { get }
var kBluetoothHCICommandRejectSniffRequest: Int { get }
var kBluetoothHCICommandGroupHostController: Int { get }
var kBluetoothHCICommandSetEventMask: Int { get }
var kBluetoothHCICommandReset: Int { get }
var kBluetoothHCICommandSetEventFilter: Int { get }
var kBluetoothHCICommandFlush: Int { get }
var kBluetoothHCICommandReadPINType: Int { get }
var kBluetoothHCICommandWritePINType: Int { get }
var kBluetoothHCICommandCreateNewUnitKey: Int { get }
var kBluetoothHCICommandReadStoredLinkKey: Int { get }
var kBluetoothHCICommandWriteStoredLinkKey: Int { get }
var kBluetoothHCICommandDeleteStoredLinkKey: Int { get }
var kBluetoothHCICommandChangeLocalName: Int { get }
var kBluetoothHCICommandReadLocalName: Int { get }
var kBluetoothHCICommandReadConnectionAcceptTimeout: Int { get }
var kBluetoothHCICommandWriteConnectionAcceptTimeout: Int { get }
var kBluetoothHCICommandReadPageTimeout: Int { get }
var kBluetoothHCICommandWritePageTimeout: Int { get }
var kBluetoothHCICommandReadScanEnable: Int { get }
var kBluetoothHCICommandWriteScanEnable: Int { get }
var kBluetoothHCICommandReadPageScanActivity: Int { get }
var kBluetoothHCICommandWritePageScanActivity: Int { get }
var kBluetoothHCICommandReadInquiryScanActivity: Int { get }
var kBluetoothHCICommandWriteInquiryScanActivity: Int { get }
var kBluetoothHCICommandReadAuthenticationEnable: Int { get }
var kBluetoothHCICommandWriteAuthenticationEnable: Int { get }
var kBluetoothHCICommandReadEncryptionMode: Int { get }
var kBluetoothHCICommandWriteEncryptionMode: Int { get }
var kBluetoothHCICommandReadClassOfDevice: Int { get }
var kBluetoothHCICommandWriteClassOfDevice: Int { get }
var kBluetoothHCICommandReadVoiceSetting: Int { get }
var kBluetoothHCICommandWriteVoiceSetting: Int { get }
var kBluetoothHCICommandReadAutomaticFlushTimeout: Int { get }
var kBluetoothHCICommandWriteAutomaticFlushTimeout: Int { get }
var kBluetoothHCICommandReadNumberOfBroadcastRetransmissions: Int { get }
var kBluetoothHCICommandWriteNumberOfBroadcastRetransmissions: Int { get }
var kBluetoothHCICommandReadHoldModeActivity: Int { get }
var kBluetoothHCICommandWriteHoldModeActivity: Int { get }
var kBluetoothHCICommandReadTransmitPowerLevel: Int { get }
var kBluetoothHCICommandReadSCOFlowControlEnable: Int { get }
var kBluetoothHCICommandWriteSCOFlowControlEnable: Int { get }
var kBluetoothHCICommandSetHostControllerToHostFlowControl: Int { get }
var kBluetoothHCICommandHostBufferSize: Int { get }
var kBluetoothHCICommandHostNumberOfCompletedPackets: Int { get }
var kBluetoothHCICommandReadLinkSupervisionTimeout: Int { get }
var kBluetoothHCICommandWriteLinkSupervisionTimeout: Int { get }
var kBluetoothHCICommandReadNumberOfSupportedIAC: Int { get }
var kBluetoothHCICommandReadCurrentIACLAP: Int { get }
var kBluetoothHCICommandWriteCurrentIACLAP: Int { get }
var kBluetoothHCICommandReadPageScanPeriodMode: Int { get }
var kBluetoothHCICommandWritePageScanPeriodMode: Int { get }
var kBluetoothHCICommandReadPageScanMode: Int { get }
var kBluetoothHCICommandWritePageScanMode: Int { get }
var kBluetoothHCICommandSetAFHClassification: Int { get }
var kBluetoothHCICommandReadInquiryScanType: Int { get }
var kBluetoothHCICommandWriteInquiryScanType: Int { get }
var kBluetoothHCICommandReadInquiryMode: Int { get }
var kBluetoothHCICommandWriteInquiryMode: Int { get }
var kBluetoothHCICommandReadPageScanType: Int { get }
var kBluetoothHCICommandWritePageScanType: Int { get }
var kBluetoothHCICommandReadAFHChannelAssessmentMode: Int { get }
var kBluetoothHCICommandWriteAFHChannelAssessmentMode: Int { get }
var kBluetoothHCICommandReadExtendedInquiryResponse: Int { get }
var kBluetoothHCICommandWriteExtendedInquiryResponse: Int { get }
var kBluetoothHCICommandRefreshEncryptionKey: Int { get }
var kBluetoothHCICommandReadSimplePairingMode: Int { get }
var kBluetoothHCICommandWriteSimplePairingMode: Int { get }
var kBluetoothHCICommandReadLocalOOBData: Int { get }
var kBluetoothHCICommandReadInquiryResponseTransmitPower: Int { get }
var kBluetoothHCICommandWriteInquiryResponseTransmitPower: Int { get }
var kBluetoothHCICommandSendKeypressNotification: Int { get }
var kBluetoothHCICommandReadDefaultErroneousDataReporting: Int { get }
var kBluetoothHCICommandWriteDefaultErroneousDataReporting: Int { get }
var kBluetoothHCICommandEnhancedFlush: Int { get }
var kBluetoothHCICommandReadLogicalLinkAcceptTimeout: Int { get }
var kBluetoothHCICommandWriteLogicalLinkAcceptTimeout: Int { get }
var kBluetoothHCICommandSetEventMaskPageTwo: Int { get }
var kBluetoothHCICommandReadLocationData: Int { get }
var kBluetoothHCICommandWriteLocationData: Int { get }
var kBluetoothHCICommandReadFlowControlMode: Int { get }
var kBluetoothHCICommandWriteFlowControlMode: Int { get }
var kBluetoothHCICommandReadEnhancedTransmitPowerLevel: Int { get }
var kBluetoothHCICommandReadBestEffortFlushTimeout: Int { get }
var kBluetoothHCICommandWriteBestEffortFlushTimeout: Int { get }
var kBluetoothHCICommandShortRangeMode: Int { get }
var kBluetoothHCICommandReadLEHostSupported: Int { get }
var kBluetoothHCICommandWriteLEHostSupported: Int { get }
var kBluetoothHCICommandSetMWSChannelParameters: Int { get }
var kBluetoothHCICommandSetExternalFrameConfiguration: Int { get }
var kBluetoothHCICommandSetMWSSignaling: Int { get }
var kBluetoothHCICommandSetMWSTransportLayer: Int { get }
var kBluetoothHCICommandSetMWSScanFrequencyTable: Int { get }
var kBluetoothHCICommandSetMWSPATTERNConfiguration: Int { get }
var kBluetoothHCICommandSetReservedLTADDR: Int { get }
var kBluetoothHCICommandDeleteReservedLTADDR: Int { get }
var kBluetoothHCICommandSetConnectionlessSlaveBroadcastData: Int { get }
var kBluetoothHCICommandReadSynchronizationTrainParameters: Int { get }
var kBluetoothHCICommandWriteSynchronizationTrainParameters: Int { get }
var kBluetoothHCICommandReadSecureConnectionsHostSupport: Int { get }
var kBluetoothHCICommandWriteSecureConnectionsHostSupport: Int { get }
var kBluetoothHCICommandReadAuthenticatedPayloadTimeout: Int { get }
var kBluetoothHCICommandWriteAuthenticatedPayloadTimeout: Int { get }
var kBluetoothHCICommandReadLocalOOBExtendedData: Int { get }
var kBluetoothHCICommandReadExtendedPageTimeout: Int { get }
var kBluetoothHCICommandWriteExtendedPageTimeout: Int { get }
var kBluetoothHCICommandReadExtendedInquiryLength: Int { get }
var kBluetoothHCICommandWriteExtendedInquiryLength: Int { get }
var kBluetoothHCICommandGroupInformational: Int { get }
var kBluetoothHCICommandReadLocalVersionInformation: Int { get }
var kBluetoothHCICommandReadLocalSupportedCommands: Int { get }
var kBluetoothHCICommandReadLocalSupportedFeatures: Int { get }
var kBluetoothHCICommandReadLocalExtendedFeatures: Int { get }
var kBluetoothHCICommandReadBufferSize: Int { get }
var kBluetoothHCICommandReadCountryCode: Int { get }
var kBluetoothHCICommandReadDeviceAddress: Int { get }
var kBluetoothHCICommandReadDataBlockSize: Int { get }
var kBluetoothHCICommandReadLocalSupportedCodecs: Int { get }
var kBluetoothHCICommandGroupStatus: Int { get }
var kBluetoothHCICommandReadFailedContactCounter: Int { get }
var kBluetoothHCICommandResetFailedContactCounter: Int { get }
var kBluetoothHCICommandGetLinkQuality: Int { get }
var kBluetoothHCICommandReadRSSI: Int { get }
var kBluetoothHCICommandReadAFHMappings: Int { get }
var kBluetoothHCICommandReadClock: Int { get }
var kBluetoothHCICommandReadEncryptionKeySize: Int { get }
var kBluetoothHCICommandReadLocalAMPInfo: Int { get }
var kBluetoothHCICommandReadLocalAMPASSOC: Int { get }
var kBluetoothHCICommandWriteRemoteAMPASSOC: Int { get }
var kBluetoothHCICommandGetMWSTransportLayerConfiguration: Int { get }
var kBluetoothHCICommandSetTriggeredClockCapture: Int { get }
var kBluetoothHCICommandGroupTesting: Int { get }
var kBluetoothHCICommandReadLoopbackMode: Int { get }
var kBluetoothHCICommandWriteLoopbackMode: Int { get }
var kBluetoothHCICommandEnableDeviceUnderTestMode: Int { get }
var kBluetoothHCICommandWriteSimplePairingDebugMode: Int { get }
var kBluetoothHCICommandEnableAMPReceiverReports: Int { get }
var kBluetoothHCICommandAMPTestEnd: Int { get }
var kBluetoothHCICommandAMPTest: Int { get }
var kBluetoothHCICommandGroupLowEnergy: Int { get }
var kBluetoothHCICommandLESetEventMask: Int { get }
var kBluetoothHCICommandLEReadBufferSize: Int { get }
var kBluetoothHCICommandLEReadLocalSupportedFeatures: Int { get }
var kBluetoothHCICommandLESetRandomAddress: Int { get }
var kBluetoothHCICommandLESetAdvertisingParameters: Int { get }
var kBluetoothHCICommandLEReadAdvertisingChannelTxPower: Int { get }
var kBluetoothHCICommandLESetAdvertisingData: Int { get }
var kBluetoothHCICommandLESetScanResponseData: Int { get }
var kBluetoothHCICommandLESetAdvertiseEnable: Int { get }
var kBluetoothHCICommandLESetScanParameters: Int { get }
var kBluetoothHCICommandLESetScanEnable: Int { get }
var kBluetoothHCICommandLECreateConnection: Int { get }
var kBluetoothHCICommandLECreateConnectionCancel: Int { get }
var kBluetoothHCICommandLEReadWhiteListSize: Int { get }
var kBluetoothHCICommandLEClearWhiteList: Int { get }
var kBluetoothHCICommandLEAddDeviceToWhiteList: Int { get }
var kBluetoothHCICommandLERemoveDeviceFromWhiteList: Int { get }
var kBluetoothHCICommandLEConnectionUpdate: Int { get }
var kBluetoothHCICommandLESetHostChannelClassification: Int { get }
var kBluetoothHCICommandLEReadChannelMap: Int { get }
var kBluetoothHCICommandLEReadRemoteUsedFeatures: Int { get }
var kBluetoothHCICommandLEEncrypt: Int { get }
var kBluetoothHCICommandLERand: Int { get }
var kBluetoothHCICommandLEStartEncryption: Int { get }
var kBluetoothHCICommandLELongTermKeyRequestReply: Int { get }
var kBluetoothHCICommandLELongTermKeyRequestNegativeReply: Int { get }
var kBluetoothHCICommandLEReadSupportedStates: Int { get }
var kBluetoothHCICommandLEReceiverTest: Int { get }
var kBluetoothHCICommandLETransmitterTest: Int { get }
var kBluetoothHCICommandLETestEnd: Int { get }
var kBluetoothHCICommandLERemoteConnectionParameterRequestReply: Int { get }
var kBluetoothHCICommandLERemoteConnectionParameterRequestNegativeReply: Int { get }
var kBluetoothHCICommandLESetDataLength: Int { get }
var kBluetoothHCICommandLEReadSuggestedDefaultDataLength: Int { get }
var kBluetoothHCICommandLEWriteSuggestedDefaultDataLength: Int { get }
var kBluetoothHCICommandLEReadLocalP256PublicKey: Int { get }
var kBluetoothHCICommandLEGenerateDHKey: Int { get }
var kBluetoothHCICommandLEAddDeviceToResolvingList: Int { get }
var kBluetoothHCICommandLERemoveDeviceFromResolvingList: Int { get }
var kBluetoothHCICommandLEClearResolvingList: Int { get }
var kBluetoothHCICommandLEReadResolvingListSize: Int { get }
var kBluetoothHCICommandLEReadPeerResolvableAddress: Int { get }
var kBluetoothHCICommandLEReadLocalResolvableAddress: Int { get }
var kBluetoothHCICommandLESetAddressResolutionEnable: Int { get }
var kBluetoothHCICommandLESetResolvablePrivateAddressTimeout: Int { get }
var kBluetoothHCICommandLEReadMaximumDataLength: Int { get }
var kBluetoothHCICommandGroupLogoTesting: Int { get }
var kBluetoothHCICommandGroupVendorSpecific: Int { get }
var kBluetoothHCICommandGroupMax: Int { get }
var kBluetoothHCICommandMax: Int { get }
typealias BluetoothHCIQoSFlags = UInt8
typealias BluetoothHCIParamByteCount = UInt8
typealias BluetoothHCIACLDataByteCount = UInt16
typealias BluetoothHCISCODataByteCount = UInt8
typealias BluetoothHCIInquiryLength = UInt8
typealias BluetoothHCIResponseCount = UInt8
typealias BluetoothHCICountryCode = UInt8
typealias BluetoothHCIModeInterval = UInt16
typealias BluetoothHCISniffAttemptCount = UInt16
typealias BluetoothHCISniffTimeout = UInt16
typealias BluetoothHCIParkModeBeaconInterval = UInt16
typealias BluetoothMaxSlots = UInt8
typealias BluetoothManufacturerName = UInt16
typealias BluetoothLMPVersion = UInt8
typealias BluetoothLMPSubversion = UInt16
typealias BluetoothHCIConnectionMode = UInt8
struct BluetoothHCIConnectionModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kConnectionActiveMode: BluetoothHCIConnectionModes { get }
var kConnectionHoldMode: BluetoothHCIConnectionModes { get }
var kConnectionSniffMode: BluetoothHCIConnectionModes { get }
var kConnectionParkMode: BluetoothHCIConnectionModes { get }
var kConnectionModeReservedForFutureUse: BluetoothHCIConnectionModes { get }
struct BluetoothHCISupportedCommands {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCISupportedFeatures {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothHCIPageNumber = UInt8
struct BluetoothHCIExtendedFeaturesInfo {
  var page: BluetoothHCIPageNumber
  var maxPage: BluetoothHCIPageNumber
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(page: BluetoothHCIPageNumber, maxPage: BluetoothHCIPageNumber, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothFeatureBits : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothFeatureThreeSlotPackets: BluetoothFeatureBits { get }
var kBluetoothFeatureFiveSlotPackets: BluetoothFeatureBits { get }
var kBluetoothFeatureEncryption: BluetoothFeatureBits { get }
var kBluetoothFeatureSlotOffset: BluetoothFeatureBits { get }
var kBluetoothFeatureTimingAccuracy: BluetoothFeatureBits { get }
var kBluetoothFeatureSwitchRoles: BluetoothFeatureBits { get }
var kBluetoothFeatureHoldMode: BluetoothFeatureBits { get }
var kBluetoothFeatureSniffMode: BluetoothFeatureBits { get }
var kBluetoothFeatureParkMode: BluetoothFeatureBits { get }
var kBluetoothFeatureRSSI: BluetoothFeatureBits { get }
var kBluetoothFeaturePowerControlRequests: BluetoothFeatureBits { get }
var kBluetoothFeatureChannelQuality: BluetoothFeatureBits { get }
var kBluetoothFeatureSCOLink: BluetoothFeatureBits { get }
var kBluetoothFeatureHV2Packets: BluetoothFeatureBits { get }
var kBluetoothFeatureHV3Packets: BluetoothFeatureBits { get }
var kBluetoothFeatureULawLog: BluetoothFeatureBits { get }
var kBluetoothFeatureALawLog: BluetoothFeatureBits { get }
var kBluetoothFeatureCVSD: BluetoothFeatureBits { get }
var kBluetoothFeaturePagingScheme: BluetoothFeatureBits { get }
var kBluetoothFeaturePowerControl: BluetoothFeatureBits { get }
var kBluetoothFeatureTransparentSCOData: BluetoothFeatureBits { get }
var kBluetoothFeatureFlowControlLagBit0: BluetoothFeatureBits { get }
var kBluetoothFeatureFlowControlLagBit1: BluetoothFeatureBits { get }
var kBluetoothFeatureFlowControlLagBit2: BluetoothFeatureBits { get }
var kBluetoothFeatureBroadcastEncryption: BluetoothFeatureBits { get }
var kBluetoothFeatureScatterMode: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedDataRateACL2MbpsMode: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedDataRateACL3MbpsMode: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedInquiryScan: BluetoothFeatureBits { get }
var kBluetoothFeatureInterlacedInquiryScan: BluetoothFeatureBits { get }
var kBluetoothFeatureInterlacedPageScan: BluetoothFeatureBits { get }
var kBluetoothFeatureRSSIWithInquiryResult: BluetoothFeatureBits { get }
var kBluetoothFeatureExtendedSCOLink: BluetoothFeatureBits { get }
var kBluetoothFeatureEV4Packets: BluetoothFeatureBits { get }
var kBluetoothFeatureEV5Packets: BluetoothFeatureBits { get }
var kBluetoothFeatureAbsenceMasks: BluetoothFeatureBits { get }
var kBluetoothFeatureAFHCapableSlave: BluetoothFeatureBits { get }
var kBluetoothFeatureAFHClassificationSlave: BluetoothFeatureBits { get }
var kBluetoothFeatureAliasAuhentication: BluetoothFeatureBits { get }
var kBluetoothFeatureLESupportedController: BluetoothFeatureBits { get }
var kBluetoothFeature3SlotEnhancedDataRateACLPackets: BluetoothFeatureBits { get }
var kBluetoothFeature5SlotEnhancedDataRateACLPackets: BluetoothFeatureBits { get }
var kBluetoothFeatureSniffSubrating: BluetoothFeatureBits { get }
var kBluetoothFeaturePauseEncryption: BluetoothFeatureBits { get }
var kBluetoothFeatureAFHCapableMaster: BluetoothFeatureBits { get }
var kBluetoothFeatureAFHClassificationMaster: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedDataRateeSCO2MbpsMode: BluetoothFeatureBits { get }
var kBluetoothFeatureEnhancedDataRateeSCO3MbpsMode: BluetoothFeatureBits { get }
var kBluetoothFeature3SlotEnhancedDataRateeSCOPackets: BluetoothFeatureBits { get }
var kBluetoothFeatureExtendedInquiryResponse: BluetoothFeatureBits { get }
var kBluetoothFeatureSecureSimplePairing: BluetoothFeatureBits { get }
var kBluetoothFeatureEncapsulatedPDU: BluetoothFeatureBits { get }
var kBluetoothFeatureErroneousDataReporting: BluetoothFeatureBits { get }
var kBluetoothFeatureNonFlushablePacketBoundaryFlag: BluetoothFeatureBits { get }
var kBluetoothFeatureLinkSupervisionTimeoutChangedEvent: BluetoothFeatureBits { get }
var kBluetoothFeatureInquiryTransmissionPowerLevel: BluetoothFeatureBits { get }
var kBluetoothFeatureExtendedFeatures: BluetoothFeatureBits { get }
var kBluetoothFeatureSimpleSecurePairingHostMode: BluetoothFeatureBits { get }
struct BluetoothEventFilterCondition {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothHCIFailedContactCount = UInt16
struct BluetoothHCIFailedContactInfo {
  var count: BluetoothHCIFailedContactCount
  var handle: BluetoothConnectionHandle
  init()
  init(count: BluetoothHCIFailedContactCount, handle: BluetoothConnectionHandle)
}
typealias BluetoothHCIRSSIValue = Int8
struct BluetoothHCIRSSIInfo {
  var handle: BluetoothConnectionHandle
  var RSSIValue: BluetoothHCIRSSIValue
  init()
  init(handle: BluetoothConnectionHandle, RSSIValue: BluetoothHCIRSSIValue)
}
typealias BluetoothHCILinkQuality = UInt8
struct BluetoothHCILinkQualityInfo {
  var handle: BluetoothConnectionHandle
  var qualityValue: BluetoothHCILinkQuality
  init()
  init(handle: BluetoothConnectionHandle, qualityValue: BluetoothHCILinkQuality)
}
typealias BluetoothHCIRole = UInt8
struct BluetoothHCIRoleInfo {
  var role: UInt8
  var handle: BluetoothConnectionHandle
  init()
  init(role: UInt8, handle: BluetoothConnectionHandle)
}
struct BluetoothHCIRoles : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIMasterRole: BluetoothHCIRoles { get }
var kBluetoothHCISlaveRole: BluetoothHCIRoles { get }
typealias BluetoothHCILinkPolicySettings = UInt16
struct BluetoothHCILinkPolicySettingsValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kDisableAllLMModes: BluetoothHCILinkPolicySettingsValues { get }
var kEnableMasterSlaveSwitch: BluetoothHCILinkPolicySettingsValues { get }
var kEnableHoldMode: BluetoothHCILinkPolicySettingsValues { get }
var kEnableSniffMode: BluetoothHCILinkPolicySettingsValues { get }
var kEnableParkMode: BluetoothHCILinkPolicySettingsValues { get }
var kReservedForFutureUse: BluetoothHCILinkPolicySettingsValues { get }
struct BluetoothHCILinkPolicySettingsInfo {
  var settings: BluetoothHCILinkPolicySettings
  var handle: BluetoothConnectionHandle
  init()
  init(settings: BluetoothHCILinkPolicySettings, handle: BluetoothConnectionHandle)
}
struct BluetoothHCIQualityOfServiceSetupParams {
  var flags: UInt8
  var serviceType: UInt8
  var tokenRate: UInt32
  var peakBandwidth: UInt32
  var latency: UInt32
  var delayVariation: UInt32
  init()
  init(flags: UInt8, serviceType: UInt8, tokenRate: UInt32, peakBandwidth: UInt32, latency: UInt32, delayVariation: UInt32)
}
struct BluetoothHCISetupSynchronousConnectionParams {
  var transmitBandwidth: UInt32
  var receiveBandwidth: UInt32
  var maxLatency: UInt16
  var voiceSetting: UInt16
  var retransmissionEffort: UInt8
  var packetType: UInt16
  init()
  init(transmitBandwidth: UInt32, receiveBandwidth: UInt32, maxLatency: UInt16, voiceSetting: UInt16, retransmissionEffort: UInt8, packetType: UInt16)
}
struct BluetoothHCIAcceptSynchronousConnectionRequestParams {
  var transmitBandwidth: UInt32
  var receiveBandwidth: UInt32
  var maxLatency: UInt16
  var contentFormat: UInt16
  var retransmissionEffort: UInt8
  var packetType: UInt16
  init()
  init(transmitBandwidth: UInt32, receiveBandwidth: UInt32, maxLatency: UInt16, contentFormat: UInt16, retransmissionEffort: UInt8, packetType: UInt16)
}
typealias BluetoothHCILoopbackMode = UInt8
var kBluetoothHCILoopbackModeOff: Int { get }
var kBluetoothHCILoopbackModeLocal: Int { get }
var kBluetoothHCILoopbackModeRemote: Int { get }
struct BluetoothReadClockInfo {
  var handle: BluetoothConnectionHandle
  var clock: UInt32
  var accuracy: UInt16
  init()
  init(handle: BluetoothConnectionHandle, clock: UInt32, accuracy: UInt16)
}
struct BluetoothHCIEventFlowSpecificationData {
  var connectionHandle: BluetoothConnectionHandle
  var flags: UInt8
  var flowDirection: UInt8
  var serviceType: UInt8
  var tokenRate: UInt32
  var tokenBucketSize: UInt32
  var peakBandwidth: UInt32
  var accessLatency: UInt32
  init()
  init(connectionHandle: BluetoothConnectionHandle, flags: UInt8, flowDirection: UInt8, serviceType: UInt8, tokenRate: UInt32, tokenBucketSize: UInt32, peakBandwidth: UInt32, accessLatency: UInt32)
}
typealias BluetoothHCIOperationID = UInt32
typealias BluetoothHCIEventID = UInt32
typealias BluetoothHCIDataID = UInt32
typealias BluetoothHCISignalID = UInt32
typealias BluetoothHCITransportID = UInt32
typealias BluetoothHCITransportCommandID = UInt32
typealias BluetoothHCIRequestID = UInt32
struct BluetoothHCIVersionInfo {
  var manufacturerName: BluetoothManufacturerName
  var lmpVersion: BluetoothLMPVersion
  var lmpSubVersion: BluetoothLMPSubversion
  var hciVersion: UInt8
  var hciRevision: UInt16
  init()
  init(manufacturerName: BluetoothManufacturerName, lmpVersion: BluetoothLMPVersion, lmpSubVersion: BluetoothLMPSubversion, hciVersion: UInt8, hciRevision: UInt16)
}
struct BluetoothHCIBufferSize {
  var ACLDataPacketLength: UInt16
  var SCODataPacketLength: UInt8
  var totalNumACLDataPackets: UInt16
  var totalNumSCODataPackets: UInt16
  init()
  init(ACLDataPacketLength: UInt16, SCODataPacketLength: UInt8, totalNumACLDataPackets: UInt16, totalNumSCODataPackets: UInt16)
}
struct BluetoothHCILEBufferSize {
  var ACLDataPacketLength: UInt16
  var totalNumACLDataPackets: UInt8
  init()
  init(ACLDataPacketLength: UInt16, totalNumACLDataPackets: UInt8)
}
typealias BluetoothHCIConnectionAcceptTimeout = UInt16
typealias BluetoothHCIPageTimeout = UInt16
struct BluetoothHCITimeoutValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kDefaultPageTimeout: BluetoothHCITimeoutValues { get }
typealias BluetoothHCINumLinkKeysDeleted = UInt16
typealias BluetoothHCINumLinkKeysToWrite = UInt8
typealias BluetoothHCIDeleteStoredLinkKeyFlag = UInt8
struct BluetoothHCIDeleteStoredLinkKeyFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kDeleteKeyForSpecifiedDeviceOnly: BluetoothHCIDeleteStoredLinkKeyFlags { get }
var kDeleteAllStoredLinkKeys: BluetoothHCIDeleteStoredLinkKeyFlags { get }
typealias BluetoothHCIReadStoredLinkKeysFlag = UInt8
struct BluetoothHCIReadStoredLinkKeysFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kReturnLinkKeyForSpecifiedDeviceOnly: BluetoothHCIReadStoredLinkKeysFlags { get }
var kReadAllStoredLinkKeys: BluetoothHCIReadStoredLinkKeysFlags { get }
struct BluetoothHCIStoredLinkKeysInfo {
  var numLinkKeysRead: UInt16
  var maxNumLinkKeysAllowedInDevice: UInt16
  init()
  init(numLinkKeysRead: UInt16, maxNumLinkKeysAllowedInDevice: UInt16)
}
typealias BluetoothHCIPageScanMode = UInt8
struct BluetoothHCIPageScanModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMandatoryPageScanMode: BluetoothHCIPageScanModes { get }
var kOptionalPageScanMode1: BluetoothHCIPageScanModes { get }
var kOptionalPageScanMode2: BluetoothHCIPageScanModes { get }
var kOptionalPageScanMode3: BluetoothHCIPageScanModes { get }
typealias BluetoothHCIPageScanPeriodMode = UInt8
struct BluetoothHCIPageScanPeriodModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kP0Mode: BluetoothHCIPageScanPeriodModes { get }
var kP1Mode: BluetoothHCIPageScanPeriodModes { get }
var kP2Mode: BluetoothHCIPageScanPeriodModes { get }
typealias BluetoothHCIPageScanEnableState = UInt8
struct BluetoothHCIPageScanEnableStates : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kNoScansEnabled: BluetoothHCIPageScanEnableStates { get }
var kInquiryScanEnabledPageScanDisabled: BluetoothHCIPageScanEnableStates { get }
var kInquiryScanDisabledPageScanEnabled: BluetoothHCIPageScanEnableStates { get }
var kInquiryScanEnabledPageScanEnabled: BluetoothHCIPageScanEnableStates { get }
struct BluetoothHCIScanActivity {
  var scanInterval: UInt16
  var scanWindow: UInt16
  init()
  init(scanInterval: UInt16, scanWindow: UInt16)
}
struct BluetoothHCIInquiryAccessCode {
  var data: (UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8))
}
typealias BluetoothHCIInquiryAccessCodeCount = UInt8
struct BluetoothHCICurrentInquiryAccessCodes {
  var count: BluetoothHCIInquiryAccessCodeCount
  var codes: UnsafeMutablePointer<BluetoothHCIInquiryAccessCode>
  init()
  init(count: BluetoothHCIInquiryAccessCodeCount, codes: UnsafeMutablePointer<BluetoothHCIInquiryAccessCode>)
}
var kMaximumNumberOfInquiryAccessCodes: Int { get }
struct BluetoothHCICurrentInquiryAccessCodesForWrite {
  var count: BluetoothHCIInquiryAccessCodeCount
  var codes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(count: BluetoothHCIInquiryAccessCodeCount, codes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCILinkSupervisionTimeout {
  var handle: BluetoothConnectionHandle
  var timeout: UInt16
  init()
  init(handle: BluetoothConnectionHandle, timeout: UInt16)
}
typealias BluetoothHCIFlowControlState = UInt8
struct BluetoothHCISCOFlowControlStates : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSCOFlowControlDisabled: BluetoothHCISCOFlowControlStates { get }
var kSCOFlowControlEnabled: BluetoothHCISCOFlowControlStates { get }
struct BluetoothHCIGeneralFlowControlStates : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kHostControllerToHostFlowControlOff: BluetoothHCIGeneralFlowControlStates { get }
var kHCIACLDataPacketsOnHCISCODataPacketsOff: BluetoothHCIGeneralFlowControlStates { get }
var kHCIACLDataPacketsOffHCISCODataPacketsOn: BluetoothHCIGeneralFlowControlStates { get }
var kHCIACLDataPacketsOnHCISCODataPacketsOn: BluetoothHCIGeneralFlowControlStates { get }
typealias BluetoothHCITransmitPowerLevel = Int8
typealias BluetoothHCITransmitPowerLevelType = UInt8
struct BluetoothHCITransmitReadPowerLevelTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kReadCurrentTransmitPowerLevel: BluetoothHCITransmitReadPowerLevelTypes { get }
var kReadMaximumTransmitPowerLevel: BluetoothHCITransmitReadPowerLevelTypes { get }
typealias BluetoothHCIAFHChannelAssessmentMode = UInt8
struct BluetoothHCIAFHChannelAssessmentModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAFHChannelAssessmentModeDisabled: BluetoothHCIAFHChannelAssessmentModes { get }
var kAFHChannelAssessmentModeEnabled: BluetoothHCIAFHChannelAssessmentModes { get }
struct BluetoothHCITransmitPowerLevelInfo {
  var handle: BluetoothConnectionHandle
  var level: BluetoothHCITransmitPowerLevel
  init()
  init(handle: BluetoothConnectionHandle, level: BluetoothHCITransmitPowerLevel)
}
typealias BluetoothHCINumBroadcastRetransmissions = UInt8
typealias BluetoothHCIHoldModeActivity = UInt8
struct BluetoothHCIHoldModeActivityStates : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMaintainCurrentPowerState: BluetoothHCIHoldModeActivityStates { get }
var kSuspendPageScan: BluetoothHCIHoldModeActivityStates { get }
var kSuspendInquiryScan: BluetoothHCIHoldModeActivityStates { get }
var kSuspendPeriodicInquiries: BluetoothHCIHoldModeActivityStates { get }
typealias BluetoothHCIAuthenticationEnable = UInt8
struct BluetoothHCIAuthentionEnableModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAuthenticationDisabled: BluetoothHCIAuthentionEnableModes { get }
var kAuthenticationEnabled: BluetoothHCIAuthentionEnableModes { get }
typealias BluetoothHCIEncryptionMode = UInt8
struct BluetoothHCIEncryptionModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kEncryptionDisabled: BluetoothHCIEncryptionModes { get }
var kEncryptionOnlyForPointToPointPackets: BluetoothHCIEncryptionModes { get }
var kEncryptionForBothPointToPointAndBroadcastPackets: BluetoothHCIEncryptionModes { get }
typealias BluetoothHCIAutomaticFlushTimeout = UInt16
struct BluetoothHCIAutomaticFlushTimeoutInfo {
  var handle: BluetoothConnectionHandle
  var timeout: BluetoothHCIAutomaticFlushTimeout
  init()
  init(handle: BluetoothConnectionHandle, timeout: BluetoothHCIAutomaticFlushTimeout)
}
var kInfoStringMaxLength: Int32 { get }
typealias BluetoothTransportInfoPtr = UnsafeMutablePointer<BluetoothTransportInfo>
struct BluetoothTransportInfo {
  var productID: UInt32
  var vendorID: UInt32
  var type: UInt32
  var productName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var vendorName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var totalDataBytesSent: UInt64
  var totalSCOBytesSent: UInt64
  var totalDataBytesReceived: UInt64
  var totalSCOBytesReceived: UInt64
  init()
  init(productID: UInt32, vendorID: UInt32, type: UInt32, productName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), vendorName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), totalDataBytesSent: UInt64, totalSCOBytesSent: UInt64, totalDataBytesReceived: UInt64, totalSCOBytesReceived: UInt64)
}
struct BluetoothTransportTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothTransportTypeUSB: BluetoothTransportTypes { get }
var kBluetoothTransportTypePCCard: BluetoothTransportTypes { get }
var kBluetoothTransportTypePCICard: BluetoothTransportTypes { get }
var kBluetoothTransportTypeUART: BluetoothTransportTypes { get }
struct BluetoothHCIInquiryResult {
  var deviceAddress: BluetoothDeviceAddress
  var pageScanRepetitionMode: BluetoothPageScanRepetitionMode
  var pageScanPeriodMode: BluetoothHCIPageScanPeriodMode
  var pageScanMode: BluetoothHCIPageScanMode
  var classOfDevice: BluetoothClassOfDevice
  var clockOffset: BluetoothClockOffset
  init()
  init(deviceAddress: BluetoothDeviceAddress, pageScanRepetitionMode: BluetoothPageScanRepetitionMode, pageScanPeriodMode: BluetoothHCIPageScanPeriodMode, pageScanMode: BluetoothHCIPageScanMode, classOfDevice: BluetoothClassOfDevice, clockOffset: BluetoothClockOffset)
}
var kBluetoothHCIInquiryResultsMaxResults: Int32 { get }
struct BluetoothHCIInquiryResults {
  var results: (BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult)
  var count: IOItemCount
  init()
  init(results: (BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult, BluetoothHCIInquiryResult), count: IOItemCount)
}
struct BluetoothHCIInquiryWithRSSIResult {
  var deviceAddress: BluetoothDeviceAddress
  var pageScanRepetitionMode: BluetoothPageScanRepetitionMode
  var reserved: UInt8
  var classOfDevice: BluetoothClassOfDevice
  var clockOffset: BluetoothClockOffset
  var RSSIValue: BluetoothHCIRSSIValue
  init()
  init(deviceAddress: BluetoothDeviceAddress, pageScanRepetitionMode: BluetoothPageScanRepetitionMode, reserved: UInt8, classOfDevice: BluetoothClassOfDevice, clockOffset: BluetoothClockOffset, RSSIValue: BluetoothHCIRSSIValue)
}
struct BluetoothHCIInquiryWithRSSIResults {
  var results: (BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult)
  var count: IOItemCount
  init()
  init(results: (BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult, BluetoothHCIInquiryWithRSSIResult), count: IOItemCount)
}
typealias BluetoothHCIFECRequired = UInt8
struct BluetoothHCIFECRequiredValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIFECRequired: BluetoothHCIFECRequiredValues { get }
var kBluetoothHCIFECNotRequired: BluetoothHCIFECRequiredValues { get }
typealias BluetoothHCIInquiryMode = UInt8
struct BluetoothHCIInquiryModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIInquiryModeResultFormatStandard: BluetoothHCIInquiryModes { get }
var kBluetoothHCIInquiryModeResultFormatWithRSSI: BluetoothHCIInquiryModes { get }
var kBluetoothHCIInquiryModeResultFormatWithRSSIOrExtendedInquiryResultFormat: BluetoothHCIInquiryModes { get }
typealias BluetoothHCIInquiryScanType = UInt8
struct BluetoothHCIInquiryScanTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIInquiryScanTypeStandard: BluetoothHCIInquiryScanTypes { get }
var kBluetoothHCIInquiryScanTypeInterlaced: BluetoothHCIInquiryScanTypes { get }
var kBluetoothHCIInquiryScanTypeReservedStart: BluetoothHCIInquiryScanTypes { get }
var kBluetoothHCIInquiryScanTypeReservedEnd: BluetoothHCIInquiryScanTypes { get }
typealias BluetoothHCIExtendedInquiryResponseDataType = UInt8
struct BluetoothHCIExtendedInquiryResponse {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCIReadExtendedInquiryResponseResults {
  var outFECRequired: BluetoothHCIFECRequired
  var extendedInquiryResponse: BluetoothHCIExtendedInquiryResponse
  init()
  init(outFECRequired: BluetoothHCIFECRequired, extendedInquiryResponse: BluetoothHCIExtendedInquiryResponse)
}
struct BluetoothHCIExtendedInquiryResult {
  var numberOfReponses: UInt8
  var deviceAddress: BluetoothDeviceAddress
  var pageScanRepetitionMode: BluetoothPageScanRepetitionMode
  var reserved: UInt8
  var classOfDevice: BluetoothClassOfDevice
  var clockOffset: BluetoothClockOffset
  var RSSIValue: BluetoothHCIRSSIValue
  var extendedInquiryResponse: BluetoothHCIExtendedInquiryResponse
  init()
  init(numberOfReponses: UInt8, deviceAddress: BluetoothDeviceAddress, pageScanRepetitionMode: BluetoothPageScanRepetitionMode, reserved: UInt8, classOfDevice: BluetoothClassOfDevice, clockOffset: BluetoothClockOffset, RSSIValue: BluetoothHCIRSSIValue, extendedInquiryResponse: BluetoothHCIExtendedInquiryResponse)
}
struct BluetoothHCIReadLMPHandleResults {
  var handle: BluetoothConnectionHandle
  var lmp_handle: BluetoothLMPHandle
  var reserved: UInt32
  init()
  init(handle: BluetoothConnectionHandle, lmp_handle: BluetoothLMPHandle, reserved: UInt32)
}
typealias BluetoothHCISimplePairingMode = UInt8
struct BluetoothHCISimplePairingModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCISimplePairingModeNotSet: BluetoothHCISimplePairingModes { get }
var kBluetoothHCISimplePairingModeEnabled: BluetoothHCISimplePairingModes { get }
typealias BluetoothSimplePairingDebugMode = UInt8
struct BluetoothSimplePairingDebugModes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCISimplePairingDebugModeDisabled: BluetoothSimplePairingDebugModes { get }
var kBluetoothHCISimplePairingDebugModeEnabled: BluetoothSimplePairingDebugModes { get }
struct BluetoothHCISimplePairingOOBData {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCIReadLocalOOBDataResults {
  var hash: BluetoothHCISimplePairingOOBData
  var randomizer: BluetoothHCISimplePairingOOBData
  init()
  init(hash: BluetoothHCISimplePairingOOBData, randomizer: BluetoothHCISimplePairingOOBData)
}
typealias BluetoothIOCapability = UInt8
struct BluetoothIOCapabilities : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothCapabilityTypeDisplayOnly: BluetoothIOCapabilities { get }
var kBluetoothCapabilityTypeDisplayYesNo: BluetoothIOCapabilities { get }
var kBluetoothCapabilityTypeKeyboardOnly: BluetoothIOCapabilities { get }
var kBluetoothCapabilityTypeNoInputNoOutput: BluetoothIOCapabilities { get }
typealias BluetoothOOBDataPresence = UInt8
struct BluetoothOOBDataPresenceValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothOOBAuthenticationDataNotPresent: BluetoothOOBDataPresenceValues { get }
var kBluetoothOOBAuthenticationDataFromRemoteDevicePresent: BluetoothOOBDataPresenceValues { get }
typealias BluetoothAuthenticationRequirements = UInt8
struct BluetoothAuthenticationRequirementsValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothAuthenticationRequirementsMITMProtectionNotRequired: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionRequired: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionNotRequiredNoBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionRequiredNoBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionNotRequiredDedicatedBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionRequiredDedicatedBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionNotRequiredGeneralBonding: BluetoothAuthenticationRequirementsValues { get }
var kBluetoothAuthenticationRequirementsMITMProtectionRequiredGeneralBonding: BluetoothAuthenticationRequirementsValues { get }
struct BluetoothIOCapabilityResponse {
  var deviceAddress: BluetoothDeviceAddress
  var ioCapability: BluetoothIOCapability
  var OOBDataPresence: BluetoothOOBDataPresence
  var authenticationRequirements: BluetoothAuthenticationRequirements
  init()
  init(deviceAddress: BluetoothDeviceAddress, ioCapability: BluetoothIOCapability, OOBDataPresence: BluetoothOOBDataPresence, authenticationRequirements: BluetoothAuthenticationRequirements)
}
typealias BluetoothPasskey = UInt32
struct BluetoothUserPasskeyNotification {
  var deviceAddress: BluetoothDeviceAddress
  var passkey: BluetoothPasskey
  init()
  init(deviceAddress: BluetoothDeviceAddress, passkey: BluetoothPasskey)
}
typealias BluetoothKeypressNotificationType = UInt8
struct BluetoothKeypressNotificationTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothKeypressNotificationTypePasskeyEntryStarted: BluetoothKeypressNotificationTypes { get }
var kBluetoothKeypressNotificationTypePasskeyDigitEntered: BluetoothKeypressNotificationTypes { get }
var kBluetoothKeypressNotificationTypePasskeyDigitErased: BluetoothKeypressNotificationTypes { get }
var kBluetoothKeypressNotificationTypePasskeyCleared: BluetoothKeypressNotificationTypes { get }
var kBluetoothKeypressNotificationTypePasskeyEntryCompleted: BluetoothKeypressNotificationTypes { get }
struct BluetoothKeypressNotification {
  var deviceAddress: BluetoothDeviceAddress
  var notificationType: BluetoothKeypressNotificationType
  init()
  init(deviceAddress: BluetoothDeviceAddress, notificationType: BluetoothKeypressNotificationType)
}
struct BluetoothRemoteHostSupportedFeaturesNotification {
  var deviceAddress: BluetoothDeviceAddress
  var hostSupportedFeatures: BluetoothHCISupportedFeatures
  init()
  init(deviceAddress: BluetoothDeviceAddress, hostSupportedFeatures: BluetoothHCISupportedFeatures)
}
typealias TransmissionPower = Int8
struct BluetoothAFHHostChannelClassification {
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothAFHMode = UInt8
struct BluetoothAFHResults {
  var handle: BluetoothConnectionHandle
  var mode: BluetoothAFHMode
  var afhMap: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(handle: BluetoothConnectionHandle, mode: BluetoothAFHMode, afhMap: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias BluetoothNumericValue = UInt32
struct BluetoothUserConfirmationRequest {
  var deviceAddress: BluetoothDeviceAddress
  var numericValue: BluetoothNumericValue
  init()
  init(deviceAddress: BluetoothDeviceAddress, numericValue: BluetoothNumericValue)
}
struct BluetoothHCIEventSimplePairingCompleteResults {
  var deviceAddress: BluetoothDeviceAddress
  init()
  init(deviceAddress: BluetoothDeviceAddress)
}
var kBluetoothHCICommandPacketHeaderSize: Int { get }
var kBluetoothHCICommandPacketMaxDataSize: Int { get }
var kBluetoothHCIMaxCommandPacketSize: Int { get }
var kBluetoothHCIEventPacketHeaderSize: Int { get }
var kBluetoothHCIEventPacketMaxDataSize: Int { get }
var kBluetoothHCIMaxEventPacketSize: Int { get }
var kBluetoothHCIDataPacketHeaderSize: Int { get }
var kBluetoothHCIDataPacketMaxDataSize: Int { get }
var kBluetoothHCIMaxDataPacketSize: Int { get }
typealias BluetoothHCIEventCode = UInt8
typealias BluetoothLinkType = UInt8
struct BluetoothLinkTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSCOConnection: BluetoothLinkTypes { get }
var kBluetoothACLConnection: BluetoothLinkTypes { get }
var kBluetoothESCOConnection: BluetoothLinkTypes { get }
var kBluetoothLinkTypeNone: BluetoothLinkTypes { get }
typealias BluetoothHCIContentFormat = UInt16
typealias BluetoothHCIVoiceSetting = UInt16
var kBluetoothVoiceSettingInputCodingMask: Int { get }
var kBluetoothVoiceSettingInputCodingLinearInputCoding: Int { get }
var kBluetoothVoiceSettingInputCodingULawInputCoding: Int { get }
var kBluetoothVoiceSettingInputCodingALawInputCoding: Int { get }
var kBluetoothVoiceSettingInputDataFormatMask: Int { get }
var kBluetoothVoiceSettingInputDataFormat1sComplement: Int { get }
var kBluetoothVoiceSettingInputDataFormat2sComplement: Int { get }
var kBluetoothVoiceSettingInputDataFormatSignMagnitude: Int { get }
var kBluetoothVoiceSettingInputDataFormatUnsigned: Int { get }
var kBluetoothVoiceSettingInputSampleSizeMask: Int { get }
var kBluetoothVoiceSettingInputSampleSize8Bit: Int { get }
var kBluetoothVoiceSettingInputSampleSize16Bit: Int { get }
var kBluetoothVoiceSettingPCMBitPositionMask: Int { get }
var kBluetoothVoiceSettingAirCodingFormatMask: Int { get }
var kBluetoothVoiceSettingAirCodingFormatCVSD: Int { get }
var kBluetoothVoiceSettingAirCodingFormatULaw: Int { get }
var kBluetoothVoiceSettingAirCodingFormatALaw: Int { get }
var kBluetoothVoiceSettingAirCodingFormatTransparentData: Int { get }
typealias BluetoothHCISupportedIAC = UInt8
typealias BluetoothHCITransmitBandwidth = UInt32
typealias BluetoothHCIReceiveBandwidth = UInt32
typealias BluetoothHCIMaxLatency = UInt16
typealias BluetoothHCIRetransmissionEffort = UInt8
struct BluetoothHCIRetransmissionEffortTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kHCIRetransmissionEffortTypeNone: BluetoothHCIRetransmissionEffortTypes { get }
var kHCIRetransmissionEffortTypeAtLeastOneAndOptimizeForPower: BluetoothHCIRetransmissionEffortTypes { get }
var kHCIRetransmissionEffortTypeAtLeastOneAndOptimizeLinkQuality: BluetoothHCIRetransmissionEffortTypes { get }
var kHCIRetransmissionEffortTypeDontCare: BluetoothHCIRetransmissionEffortTypes { get }
typealias BluetoothAirMode = UInt8
var kBluetoothAirModeULawLog: Int { get }
var kBluetoothAirModeALawLog: Int { get }
var kBluetoothAirModeCVSD: Int { get }
var kBluetoothAirModeTransparentData: Int { get }
struct BluetoothSynchronousConnectionInfo {
  var transmitBandWidth: BluetoothHCITransmitBandwidth
  var receiveBandWidth: BluetoothHCIReceiveBandwidth
  var maxLatency: BluetoothHCIMaxLatency
  var voiceSetting: BluetoothHCIVoiceSetting
  var retransmissionEffort: BluetoothHCIRetransmissionEffort
  var packetType: BluetoothPacketType
  init()
  init(transmitBandWidth: BluetoothHCITransmitBandwidth, receiveBandWidth: BluetoothHCIReceiveBandwidth, maxLatency: BluetoothHCIMaxLatency, voiceSetting: BluetoothHCIVoiceSetting, retransmissionEffort: BluetoothHCIRetransmissionEffort, packetType: BluetoothPacketType)
}
struct BluetoothHCIEventSynchronousConnectionCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var deviceAddress: BluetoothDeviceAddress
  var linkType: BluetoothLinkType
  var transmissionInterval: UInt8
  var retransmissionWindow: UInt8
  var receivePacketLength: UInt16
  var transmitPacketLength: UInt16
  var airMode: BluetoothAirMode
  init()
  init(connectionHandle: BluetoothConnectionHandle, deviceAddress: BluetoothDeviceAddress, linkType: BluetoothLinkType, transmissionInterval: UInt8, retransmissionWindow: UInt8, receivePacketLength: UInt16, transmitPacketLength: UInt16, airMode: BluetoothAirMode)
}
struct BluetoothHCIEventSynchronousConnectionChangedResults {
  var connectionHandle: BluetoothConnectionHandle
  var transmissionInterval: UInt8
  var retransmissionWindow: UInt8
  var receivePacketLength: UInt16
  var transmitPacketLength: UInt16
  init()
  init(connectionHandle: BluetoothConnectionHandle, transmissionInterval: UInt8, retransmissionWindow: UInt8, receivePacketLength: UInt16, transmitPacketLength: UInt16)
}
typealias BluetoothHCIStatus = UInt8
typealias BluetoothHCIEventStatus = UInt8
var kBluetoothHCIEventInquiryComplete: Int { get }
var kBluetoothHCIEventInquiryResult: Int { get }
var kBluetoothHCIEventConnectionComplete: Int { get }
var kBluetoothHCIEventConnectionRequest: Int { get }
var kBluetoothHCIEventDisconnectionComplete: Int { get }
var kBluetoothHCIEventAuthenticationComplete: Int { get }
var kBluetoothHCIEventRemoteNameRequestComplete: Int { get }
var kBluetoothHCIEventEncryptionChange: Int { get }
var kBluetoothHCIEventChangeConnectionLinkKeyComplete: Int { get }
var kBluetoothHCIEventMasterLinkKeyComplete: Int { get }
var kBluetoothHCIEventReadRemoteSupportedFeaturesComplete: Int { get }
var kBluetoothHCIEventReadRemoteVersionInformationComplete: Int { get }
var kBluetoothHCIEventQoSSetupComplete: Int { get }
var kBluetoothHCIEventCommandComplete: Int { get }
var kBluetoothHCIEventCommandStatus: Int { get }
var kBluetoothHCIEventHardwareError: Int { get }
var kBluetoothHCIEventFlushOccurred: Int { get }
var kBluetoothHCIEventRoleChange: Int { get }
var kBluetoothHCIEventNumberOfCompletedPackets: Int { get }
var kBluetoothHCIEventModeChange: Int { get }
var kBluetoothHCIEventReturnLinkKeys: Int { get }
var kBluetoothHCIEventPINCodeRequest: Int { get }
var kBluetoothHCIEventLinkKeyRequest: Int { get }
var kBluetoothHCIEventLinkKeyNotification: Int { get }
var kBluetoothHCIEventLoopbackCommand: Int { get }
var kBluetoothHCIEventDataBufferOverflow: Int { get }
var kBluetoothHCIEventMaxSlotsChange: Int { get }
var kBluetoothHCIEventReadClockOffsetComplete: Int { get }
var kBluetoothHCIEventConnectionPacketType: Int { get }
var kBluetoothHCIEventQoSViolation: Int { get }
var kBluetoothHCIEventPageScanModeChange: Int { get }
var kBluetoothHCIEventPageScanRepetitionModeChange: Int { get }
var kBluetoothHCIEventFlowSpecificationComplete: Int { get }
var kBluetoothHCIEventInquiryResultWithRSSI: Int { get }
var kBluetoothHCIEventReadRemoteExtendedFeaturesComplete: Int { get }
var kBluetoothHCIEventSynchronousConnectionComplete: Int { get }
var kBluetoothHCIEventSynchronousConnectionChanged: Int { get }
var kBluetoothHCIEventSniffSubrating: Int { get }
var kBluetoothHCIEventExtendedInquiryResult: Int { get }
var kBluetoothHCIEventEncryptionKeyRefreshComplete: Int { get }
var kBluetoothHCIEventIOCapabilityRequest: Int { get }
var kBluetoothHCIEventIOCapabilityResponse: Int { get }
var kBluetoothHCIEventUserConfirmationRequest: Int { get }
var kBluetoothHCIEventUserPasskeyRequest: Int { get }
var kBluetoothHCIEventRemoteOOBDataRequest: Int { get }
var kBluetoothHCIEventSimplePairingComplete: Int { get }
var kBluetoothHCIEventLinkSupervisionTimeoutChanged: Int { get }
var kBluetoothHCIEventEnhancedFlushComplete: Int { get }
var kBluetoothHCIEventUserPasskeyNotification: Int { get }
var kBluetoothHCIEventKeypressNotification: Int { get }
var kBluetoothHCIEventRemoteHostSupportedFeaturesNotification: Int { get }
var kBluetoothHCIEventLEMetaEvent: Int { get }
var kBluetoothHCISubEventLEConnectionComplete: Int { get }
var kBluetoothHCISubEventLEAdvertisingReport: Int { get }
var kBluetoothHCISubEventLEConnectionUpdateComplete: Int { get }
var kBluetoothHCISubEventLEReadRemoteUsedFeaturesComplete: Int { get }
var kBluetoothHCISubEventLELongTermKeyRequest: Int { get }
var kBluetoothHCIEventPhysicalLinkComplete: Int { get }
var kBluetoothHCIEventChannelSelected: Int { get }
var kBluetoothHCIEventDisconnectionPhysicalLinkComplete: Int { get }
var kBluetoothHCIEventPhysicalLinkLossEarlyWarning: Int { get }
var kBluetoothHCIEventPhysicalLinkRecovery: Int { get }
var kBluetoothHCIEventLogicalLinkComplete: Int { get }
var kBluetoothHCIEventDisconnectionLogicalLinkComplete: Int { get }
var kBluetoothHCIEventFlowSpecModifyComplete: Int { get }
var kBluetoothHCIEventNumberOfCompletedDataBlocks: Int { get }
var kBluetoothHCIEventShortRangeModeChangeComplete: Int { get }
var kBluetoothHCIEventAMPStatusChange: Int { get }
var kBluetoothHCIEventAMPStartTest: Int { get }
var kBluetoothHCIEventAMPTestEnd: Int { get }
var kBluetoothHCIEventAMPReceiverReport: Int { get }
var kBluetoothHCIEventLogoTesting: Int { get }
var kBluetoothHCIEventVendorSpecific: Int { get }
typealias BluetoothHCIEventMask = UInt64
var kBluetoothHCIEventMaskLEDefault64Bit: Int64 { get }
var kBluetoothHCIEventMaskDefault64Bit: Int64 { get }
var kBluetoothHCIEventMaskAll64Bit: UInt64 { get }
var kBluetoothHCIEventMaskFlowSpecificationCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskInquiryResultWithRSSIEvent: Int64 { get }
var kBluetoothHCIEventMaskReadRemoteExtendedFeaturesCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskSynchronousConnectionCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskSynchronousConnectionChangedEvent: Int64 { get }
var kBluetoothHCIEventMaskSniffSubratingEvent: Int64 { get }
var kBluetoothHCIEventMaskExtendedInquiryResultEvent: Int64 { get }
var kBluetoothHCIEventMaskEncryptionChangeEvent: Int64 { get }
var kBluetoothHCIEventMaskEncryptionKeyRefreshCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskLinkSupervisionTimeoutChangedEvent: Int64 { get }
var kBluetoothHCIEventMaskEnhancedFlushCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskIOCapabilityRequestEvent: Int64 { get }
var kBluetoothHCIEventMaskIOCapabilityRequestReplyEvent: Int64 { get }
var kBluetoothHCIEventMaskUserConfirmationRequestEvent: Int64 { get }
var kBluetoothHCIEventMaskUserPasskeyRequestEvent: Int64 { get }
var kBluetoothHCIEventMaskRemoteOOBDataRequestEvent: Int64 { get }
var kBluetoothHCIEventMaskSimplePairingCompleteEvent: Int64 { get }
var kBluetoothHCIEvnetMaskLinkSupervisionTimeoutChangedEvent: Int64 { get }
var kBluetoothHCIEvnetMaskEnhancedFlushCompleteEvent: Int64 { get }
var kBluetoothHCIEventMaskUserPasskeyNotificationEvent: Int64 { get }
var kBluetoothHCIEventMaskKeypressNotificationEvent: Int64 { get }
var kBluetoothHCIEventMaskRemoteHostSupportedFeaturesNotificationEvent: Int64 { get }
var kBluetoothHCIEventMaskLEMetaEvent: Int64 { get }
var kBluetoothHCIEventMaskNone: UInt32 { get }
var kBluetoothHCIEventMaskInquiryComplete: UInt32 { get }
var kBluetoothHCIEventMaskInquiryResult: UInt32 { get }
var kBluetoothHCIEventMaskConnectionComplete: UInt32 { get }
var kBluetoothHCIEventMaskConnectionRequest: UInt32 { get }
var kBluetoothHCIEventMaskDisconnectionComplete: UInt32 { get }
var kBluetoothHCIEventMaskAuthenticationComplete: UInt32 { get }
var kBluetoothHCIEventMaskRemoteNameRequestComplete: UInt32 { get }
var kBluetoothHCIEventMaskEncryptionChange: UInt32 { get }
var kBluetoothHCIEventMaskChangeConnectionLinkKeyComplete: UInt32 { get }
var kBluetoothHCIEventMaskMasterLinkKeyComplete: UInt32 { get }
var kBluetoothHCIEventMaskReadRemoteSupportedFeaturesComplete: UInt32 { get }
var kBluetoothHCIEventMaskReadRemoteVersionInformationComplete: UInt32 { get }
var kBluetoothHCIEventMaskQoSSetupComplete: UInt32 { get }
var kBluetoothHCIEventMaskCommandComplete: UInt32 { get }
var kBluetoothHCIEventMaskCommandStatus: UInt32 { get }
var kBluetoothHCIEventMaskHardwareError: UInt32 { get }
var kBluetoothHCIEventMaskFlushOccurred: UInt32 { get }
var kBluetoothHCIEventMaskRoleChange: UInt32 { get }
var kBluetoothHCIEventMaskNumberOfCompletedPackets: UInt32 { get }
var kBluetoothHCIEventMaskModeChange: UInt32 { get }
var kBluetoothHCIEventMaskReturnLinkKeys: UInt32 { get }
var kBluetoothHCIEventMaskPINCodeRequest: UInt32 { get }
var kBluetoothHCIEventMaskLinkKeyRequest: UInt32 { get }
var kBluetoothHCIEventMaskLinkKeyNotification: UInt32 { get }
var kBluetoothHCIEventMaskLoopbackCommand: UInt32 { get }
var kBluetoothHCIEventMaskDataBufferOverflow: UInt32 { get }
var kBluetoothHCIEventMaskMaxSlotsChange: UInt32 { get }
var kBluetoothHCIEventMaskReadClockOffsetComplete: UInt32 { get }
var kBluetoothHCIEventMaskConnectionPacketTypeChanged: UInt32 { get }
var kBluetoothHCIEventMaskQoSViolation: UInt32 { get }
var kBluetoothHCIEventMaskPageScanModeChange: UInt32 { get }
var kBluetoothHCIEventMaskPageScanRepetitionModeChange: UInt32 { get }
var kBluetoothHCIEventMaskAll: UInt32 { get }
var kBluetoothHCIEventMaskDefault: UInt32 { get }
struct BluetoothHCIEventConnectionCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var deviceAddress: BluetoothDeviceAddress
  var linkType: BluetoothLinkType
  var encryptionMode: BluetoothHCIEncryptionMode
  init()
  init(connectionHandle: BluetoothConnectionHandle, deviceAddress: BluetoothDeviceAddress, linkType: BluetoothLinkType, encryptionMode: BluetoothHCIEncryptionMode)
}
struct BluetoothHCIEventLEConnectionCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var role: UInt8
  var peerAddressType: UInt8
  var peerAddress: BluetoothDeviceAddress
  var connInterval: UInt16
  var connLatency: UInt16
  var supervisionTimeout: UInt16
  var masterClockAccuracy: UInt8
  init()
  init(connectionHandle: BluetoothConnectionHandle, role: UInt8, peerAddressType: UInt8, peerAddress: BluetoothDeviceAddress, connInterval: UInt16, connLatency: UInt16, supervisionTimeout: UInt16, masterClockAccuracy: UInt8)
}
struct BluetoothHCIEventLEConnectionUpdateCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var connInterval: UInt16
  var connLatency: UInt16
  var supervisionTimeout: UInt16
  init()
  init(connectionHandle: BluetoothConnectionHandle, connInterval: UInt16, connLatency: UInt16, supervisionTimeout: UInt16)
}
struct BluetoothHCIEventDisconnectionCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var reason: BluetoothReasonCode
  init()
  init(connectionHandle: BluetoothConnectionHandle, reason: BluetoothReasonCode)
}
struct BluetoothHCIEventReadSupportedFeaturesResults {
  var connectionHandle: BluetoothConnectionHandle
  var supportedFeatures: BluetoothHCISupportedFeatures
  init()
  init(connectionHandle: BluetoothConnectionHandle, supportedFeatures: BluetoothHCISupportedFeatures)
}
struct BluetoothHCIEventReadExtendedFeaturesResults {
  var connectionHandle: BluetoothConnectionHandle
  var supportedFeaturesInfo: BluetoothHCIExtendedFeaturesInfo
  init()
  init(connectionHandle: BluetoothConnectionHandle, supportedFeaturesInfo: BluetoothHCIExtendedFeaturesInfo)
}
struct BluetoothHCIEventReadRemoteVersionInfoResults {
  var connectionHandle: BluetoothConnectionHandle
  var lmpVersion: BluetoothLMPVersion
  var manufacturerName: BluetoothManufacturerName
  var lmpSubversion: BluetoothLMPSubversion
  init()
  init(connectionHandle: BluetoothConnectionHandle, lmpVersion: BluetoothLMPVersion, manufacturerName: BluetoothManufacturerName, lmpSubversion: BluetoothLMPSubversion)
}
struct BluetoothHCIEventRemoteNameRequestResults {
  var deviceAddress: BluetoothDeviceAddress
  var deviceName: BluetoothDeviceName
  init()
  init(deviceAddress: BluetoothDeviceAddress, deviceName: BluetoothDeviceName)
}
struct BluetoothHCIEventReadClockOffsetResults {
  var connectionHandle: BluetoothConnectionHandle
  var clockOffset: BluetoothClockOffset
  init()
  init(connectionHandle: BluetoothConnectionHandle, clockOffset: BluetoothClockOffset)
}
struct BluetoothHCIEventConnectionRequestResults {
  var deviceAddress: BluetoothDeviceAddress
  var classOfDevice: BluetoothClassOfDevice
  var linkType: BluetoothLinkType
  init()
  init(deviceAddress: BluetoothDeviceAddress, classOfDevice: BluetoothClassOfDevice, linkType: BluetoothLinkType)
}
struct BluetoothHCIEventLinkKeyNotificationResults {
  var deviceAddress: BluetoothDeviceAddress
  var linkKey: BluetoothKey
  var keyType: BluetoothKeyType
  init()
  init(deviceAddress: BluetoothDeviceAddress, linkKey: BluetoothKey, keyType: BluetoothKeyType)
}
struct BluetoothHCIEventMaxSlotsChangeResults {
  var connectionHandle: BluetoothConnectionHandle
  var maxSlots: BluetoothMaxSlots
  init()
  init(connectionHandle: BluetoothConnectionHandle, maxSlots: BluetoothMaxSlots)
}
struct BluetoothHCIEventModeChangeResults {
  var connectionHandle: BluetoothConnectionHandle
  var mode: BluetoothHCIConnectionMode
  var modeInterval: BluetoothHCIModeInterval
  init()
  init(connectionHandle: BluetoothConnectionHandle, mode: BluetoothHCIConnectionMode, modeInterval: BluetoothHCIModeInterval)
}
struct BluetoothHCIEventReturnLinkKeysResults {
  var numLinkKeys: UInt8
  init()
}
struct BluetoothHCIEventAuthenticationCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventEncryptionChangeResults {
  var connectionHandle: BluetoothConnectionHandle
  var enable: BluetoothEncryptionEnable
  init()
  init(connectionHandle: BluetoothConnectionHandle, enable: BluetoothEncryptionEnable)
}
struct BluetoothHCIEventChangeConnectionLinkKeyCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventMasterLinkKeyCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var keyFlag: BluetoothKeyFlag
  init()
  init(connectionHandle: BluetoothConnectionHandle, keyFlag: BluetoothKeyFlag)
}
struct BluetoothHCIEventQoSSetupCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  var setupParams: BluetoothHCIQualityOfServiceSetupParams
  init()
  init(connectionHandle: BluetoothConnectionHandle, setupParams: BluetoothHCIQualityOfServiceSetupParams)
}
struct BluetoothHCIEventHardwareErrorResults {
  var error: BluetoothHCIStatus
  init()
  init(error: BluetoothHCIStatus)
}
struct BluetoothHCIEventFlushOccurredResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventRoleChangeResults {
  var connectionHandle: BluetoothConnectionHandle
  var deviceAddress: BluetoothDeviceAddress
  var role: BluetoothRole
  init()
  init(connectionHandle: BluetoothConnectionHandle, deviceAddress: BluetoothDeviceAddress, role: BluetoothRole)
}
struct BluetoothHCIEventDataBufferOverflowResults {
  var linkType: BluetoothLinkType
  init()
  init(linkType: BluetoothLinkType)
}
struct BluetoothHCIEventConnectionPacketTypeResults {
  var connectionHandle: BluetoothConnectionHandle
  var packetType: BluetoothPacketType
  init()
  init(connectionHandle: BluetoothConnectionHandle, packetType: BluetoothPacketType)
}
struct BluetoothHCIEventReadRemoteSupportedFeaturesResults {
  var error: BluetoothHCIStatus
  var connectionHandle: BluetoothConnectionHandle
  var lmpFeatures: BluetoothHCISupportedFeatures
  init()
  init(error: BluetoothHCIStatus, connectionHandle: BluetoothConnectionHandle, lmpFeatures: BluetoothHCISupportedFeatures)
}
struct BluetoothHCIEventReadRemoteExtendedFeaturesResults {
  var error: BluetoothHCIStatus
  var connectionHandle: BluetoothConnectionHandle
  var page: BluetoothHCIPageNumber
  var maxPage: BluetoothHCIPageNumber
  var lmpFeatures: BluetoothHCISupportedFeatures
  init()
  init(error: BluetoothHCIStatus, connectionHandle: BluetoothConnectionHandle, page: BluetoothHCIPageNumber, maxPage: BluetoothHCIPageNumber, lmpFeatures: BluetoothHCISupportedFeatures)
}
struct BluetoothHCIEventQoSViolationResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventPageScanModeChangeResults {
  var deviceAddress: BluetoothDeviceAddress
  var pageScanMode: BluetoothPageScanMode
  init()
  init(deviceAddress: BluetoothDeviceAddress, pageScanMode: BluetoothPageScanMode)
}
struct BluetoothHCIEventPageScanRepetitionModeChangeResults {
  var deviceAddress: BluetoothDeviceAddress
  var pageScanRepetitionMode: BluetoothPageScanRepetitionMode
  init()
  init(deviceAddress: BluetoothDeviceAddress, pageScanRepetitionMode: BluetoothPageScanRepetitionMode)
}
struct BluetoothHCIEventVendorSpecificResults {
  var length: UInt8
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(length: UInt8, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCIEventEncryptionKeyRefreshCompleteResults {
  var connectionHandle: BluetoothConnectionHandle
  init()
  init(connectionHandle: BluetoothConnectionHandle)
}
struct BluetoothHCIEventSniffSubratingResults {
  var connectionHandle: BluetoothConnectionHandle
  var maxTransmitLatency: UInt16
  var maxReceiveLatency: UInt16
  var minRemoteTimeout: UInt16
  var minLocalTimeout: UInt16
  init()
  init(connectionHandle: BluetoothConnectionHandle, maxTransmitLatency: UInt16, maxReceiveLatency: UInt16, minRemoteTimeout: UInt16, minLocalTimeout: UInt16)
}
struct BluetoothHCIEventLEMetaResults {
  var length: UInt8
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(length: UInt8, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct BluetoothHCIEventLELongTermKeyRequestResults {
  var connectionHandle: BluetoothConnectionHandle
  var randomNumber: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var ediv: UInt16
  init()
  init(connectionHandle: BluetoothConnectionHandle, randomNumber: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), ediv: UInt16)
}
struct BluetoothHCIRequestCallbackInfo {
  var userCallback: mach_vm_address_t
  var userRefCon: mach_vm_address_t
  var internalRefCon: mach_vm_address_t
  var asyncIDRefCon: mach_vm_address_t
  var reserved: mach_vm_address_t
  init()
  init(userCallback: mach_vm_address_t, userRefCon: mach_vm_address_t, internalRefCon: mach_vm_address_t, asyncIDRefCon: mach_vm_address_t, reserved: mach_vm_address_t)
}
var kBluetoothHCIErrorSuccess: Int { get }
var kBluetoothHCIErrorUnknownHCICommand: Int { get }
var kBluetoothHCIErrorNoConnection: Int { get }
var kBluetoothHCIErrorHardwareFailure: Int { get }
var kBluetoothHCIErrorPageTimeout: Int { get }
var kBluetoothHCIErrorAuthenticationFailure: Int { get }
var kBluetoothHCIErrorKeyMissing: Int { get }
var kBluetoothHCIErrorMemoryFull: Int { get }
var kBluetoothHCIErrorConnectionTimeout: Int { get }
var kBluetoothHCIErrorMaxNumberOfConnections: Int { get }
var kBluetoothHCIErrorMaxNumberOfSCOConnectionsToADevice: Int { get }
var kBluetoothHCIErrorACLConnectionAlreadyExists: Int { get }
var kBluetoothHCIErrorCommandDisallowed: Int { get }
var kBluetoothHCIErrorHostRejectedLimitedResources: Int { get }
var kBluetoothHCIErrorHostRejectedSecurityReasons: Int { get }
var kBluetoothHCIErrorHostRejectedRemoteDeviceIsPersonal: Int { get }
var kBluetoothHCIErrorHostTimeout: Int { get }
var kBluetoothHCIErrorUnsupportedFeatureOrParameterValue: Int { get }
var kBluetoothHCIErrorInvalidHCICommandParameters: Int { get }
var kBluetoothHCIErrorOtherEndTerminatedConnectionUserEnded: Int { get }
var kBluetoothHCIErrorOtherEndTerminatedConnectionLowResources: Int { get }
var kBluetoothHCIErrorOtherEndTerminatedConnectionAboutToPowerOff: Int { get }
var kBluetoothHCIErrorConnectionTerminatedByLocalHost: Int { get }
var kBluetoothHCIErrorRepeatedAttempts: Int { get }
var kBluetoothHCIErrorPairingNotAllowed: Int { get }
var kBluetoothHCIErrorUnknownLMPPDU: Int { get }
var kBluetoothHCIErrorUnsupportedRemoteFeature: Int { get }
var kBluetoothHCIErrorSCOOffsetRejected: Int { get }
var kBluetoothHCIErrorSCOIntervalRejected: Int { get }
var kBluetoothHCIErrorSCOAirModeRejected: Int { get }
var kBluetoothHCIErrorInvalidLMPParameters: Int { get }
var kBluetoothHCIErrorUnspecifiedError: Int { get }
var kBluetoothHCIErrorUnsupportedLMPParameterValue: Int { get }
var kBluetoothHCIErrorRoleChangeNotAllowed: Int { get }
var kBluetoothHCIErrorLMPResponseTimeout: Int { get }
var kBluetoothHCIErrorLMPErrorTransactionCollision: Int { get }
var kBluetoothHCIErrorLMPPDUNotAllowed: Int { get }
var kBluetoothHCIErrorEncryptionModeNotAcceptable: Int { get }
var kBluetoothHCIErrorUnitKeyUsed: Int { get }
var kBluetoothHCIErrorQoSNotSupported: Int { get }
var kBluetoothHCIErrorInstantPassed: Int { get }
var kBluetoothHCIErrorPairingWithUnitKeyNotSupported: Int { get }
var kBluetoothHCIErrorHostRejectedUnacceptableDeviceAddress: Int { get }
var kBluetoothHCIErrorDifferentTransactionCollision: Int { get }
var kBluetoothHCIErrorQoSUnacceptableParameter: Int { get }
var kBluetoothHCIErrorQoSRejected: Int { get }
var kBluetoothHCIErrorChannelClassificationNotSupported: Int { get }
var kBluetoothHCIErrorInsufficientSecurity: Int { get }
var kBluetoothHCIErrorParameterOutOfMandatoryRange: Int { get }
var kBluetoothHCIErrorRoleSwitchPending: Int { get }
var kBluetoothHCIErrorReservedSlotViolation: Int { get }
var kBluetoothHCIErrorRoleSwitchFailed: Int { get }
var kBluetoothHCIErrorExtendedInquiryResponseTooLarge: Int { get }
var kBluetoothHCIErrorSecureSimplePairingNotSupportedByHost: Int { get }
var kBluetoothHCIErrorHostBusyPairing: Int { get }
var kBluetoothHCIErrorConnectionRejectedDueToNoSuitableChannelFound: Int { get }
var kBluetoothHCIErrorControllerBusy: Int { get }
var kBluetoothHCIErrorUnacceptableConnectionInterval: Int { get }
var kBluetoothHCIErrorDirectedAdvertisingTimeout: Int { get }
var kBluetoothHCIErrorConnectionTerminatedDueToMICFailure: Int { get }
var kBluetoothHCIErrorConnectionFailedToBeEstablished: Int { get }
var kBluetoothHCIErrorMACConnectionFailed: Int { get }
var kBluetoothHCIErrorMax: Int { get }
struct BluetoothHCIPowerState : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIPowerStateON: BluetoothHCIPowerState { get }
var kBluetoothHCIPowerStateOFF: BluetoothHCIPowerState { get }
var kBluetoothHCIPowerStateUnintialized: BluetoothHCIPowerState { get }
var kBluetoothHCIErrorPowerIsOFF: Int { get }
var kBluetoothHCITransportUSBClassCode: Int { get }
var kBluetoothHCITransportUSBSubClassCode: Int { get }
var kBluetoothHCITransportUSBProtocolCode: Int { get }
var kBluetoothL2CAPTCIEventIDReserved: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_ConnectInd: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_ConfigInd: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_DisconnectInd: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_QoSViolationInd: Int { get }
var kBluetoothL2CAPTCIEventIDL2CA_TimeOutInd: Int { get }
var kBluetoothL2CAPTCICommandReserved: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ConnectReq: Int { get }
var kBluetoothL2CAPTCICommandL2CA_DisconnectReq: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ConfigReq: Int { get }
var kBluetoothL2CAPTCICommandL2CA_DisableCLT: Int { get }
var kBluetoothL2CAPTCICommandL2CA_EnableCLT: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupCreate: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupClose: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupAddMember: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupRemoveMember: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GroupMembership: Int { get }
var kBluetoothL2CAPTCICommandL2CA_WriteData: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ReadData: Int { get }
var kBluetoothL2CAPTCICommandL2CA_Ping: Int { get }
var kBluetoothL2CAPTCICommandL2CA_GetInfo: Int { get }
var kBluetoothL2CAPTCICommandL2CA_Reserved1: Int { get }
var kBluetoothL2CAPTCICommandL2CA_Reserved2: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ConnectResp: Int { get }
var kBluetoothL2CAPTCICommandL2CA_DisconnectResp: Int { get }
var kBluetoothL2CAPTCICommandL2CA_ConfigResp: Int { get }
var kMaxChannelIDPerSide: Int32 { get }
typealias BluetoothRFCOMMChannelID = UInt8
typealias BluetoothRFCOMMMTU = UInt16
struct BluetoothRFCOMMParityType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothRFCOMMParityTypeNoParity: BluetoothRFCOMMParityType { get }
var kBluetoothRFCOMMParityTypeOddParity: BluetoothRFCOMMParityType { get }
var kBluetoothRFCOMMParityTypeEvenParity: BluetoothRFCOMMParityType { get }
var kBluetoothRFCOMMParityTypeMaxParity: BluetoothRFCOMMParityType { get }
struct BluetoothRFCOMMLineStatus : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothRFCOMMLineStatusNoError: BluetoothRFCOMMLineStatus { get }
var BluetoothRFCOMMLineStatusOverrunError: BluetoothRFCOMMLineStatus { get }
var BluetoothRFCOMMLineStatusParityError: BluetoothRFCOMMLineStatus { get }
var BluetoothRFCOMMLineStatusFramingError: BluetoothRFCOMMLineStatus { get }
typealias BluetoothSDPPDUID = UInt8
var kBluetoothSDPPDUIDReserved: Int { get }
var kBluetoothSDPPDUIDErrorResponse: Int { get }
var kBluetoothSDPPDUIDServiceSearchRequest: Int { get }
var kBluetoothSDPPDUIDServiceSearchResponse: Int { get }
var kBluetoothSDPPDUIDServiceAttributeRequest: Int { get }
var kBluetoothSDPPDUIDServiceAttributeResponse: Int { get }
var kBluetoothSDPPDUIDServiceSearchAttributeRequest: Int { get }
var kBluetoothSDPPDUIDServiceSearchAttributeResponse: Int { get }
typealias BluetoothSDPErrorCode = UInt16
var kBluetoothSDPErrorCodeSuccess: Int { get }
var kBluetoothSDPErrorCodeReserved: Int { get }
var kBluetoothSDPErrorCodeInvalidSDPVersion: Int { get }
var kBluetoothSDPErrorCodeInvalidServiceRecordHandle: Int { get }
var kBluetoothSDPErrorCodeInvalidRequestSyntax: Int { get }
var kBluetoothSDPErrorCodeInvalidPDUSize: Int { get }
var kBluetoothSDPErrorCodeInvalidContinuationState: Int { get }
var kBluetoothSDPErrorCodeInsufficientResources: Int { get }
var kBluetoothSDPErrorCodeReservedStart: Int { get }
var kBluetoothSDPErrorCodeReservedEnd: Int { get }
typealias BluetoothSDPTransactionID = UInt16
typealias BluetoothSDPServiceRecordHandle = UInt32
var kBluetoothSDPDataElementTypeNil: Int { get }
var kBluetoothSDPDataElementTypeUnsignedInt: Int { get }
var kBluetoothSDPDataElementTypeSignedInt: Int { get }
var kBluetoothSDPDataElementTypeUUID: Int { get }
var kBluetoothSDPDataElementTypeString: Int { get }
var kBluetoothSDPDataElementTypeBoolean: Int { get }
var kBluetoothSDPDataElementTypeDataElementSequence: Int { get }
var kBluetoothSDPDataElementTypeDataElementAlternative: Int { get }
var kBluetoothSDPDataElementTypeURL: Int { get }
var kBluetoothSDPDataElementTypeReservedStart: Int { get }
var kBluetoothSDPDataElementTypeReservedEnd: Int { get }
typealias BluetoothSDPUUID16 = UInt16
typealias BluetoothSDPUUID32 = UInt32
typealias BluetoothSDPDataElementTypeDescriptor = UInt8
typealias BluetoothSDPDataElementSizeDescriptor = UInt8
typealias BluetoothSDPServiceAttributeID = UInt16
struct BluetoothLEScanType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEScanTypePassive: BluetoothLEScanType { get }
var BluetoothLEScanTypeActive: BluetoothLEScanType { get }
struct BluetoothLEAddressType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEAddressTypePublic: BluetoothLEAddressType { get }
var BluetoothLEAddressTypeRandom: BluetoothLEAddressType { get }
struct BluetoothLEScanFilter : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEScanFilterNone: BluetoothLEScanFilter { get }
var BluetoothLEScanFilterWhitelist: BluetoothLEScanFilter { get }
struct BluetoothLEScan : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEScanDisable: BluetoothLEScan { get }
var BluetoothLEScanEnable: BluetoothLEScan { get }
struct BluetoothLEConnectionInterval : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEConnectionIntervalMin: BluetoothLEConnectionInterval { get }
var BluetoothLEConnectionIntervalMax: BluetoothLEConnectionInterval { get }
struct BluetoothLEScanDuplicateFilter : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEScanDuplicateFilterDisable: BluetoothLEScanDuplicateFilter { get }
var BluetoothLEScanDuplicateFilterEnable: BluetoothLEScanDuplicateFilter { get }
struct BluetoothLEAdvertisingType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var BluetoothLEAdvertisingTypeConnectableUndirected: BluetoothLEAdvertisingType { get }
var BluetoothLEAdvertisingTypeConnectableDirected: BluetoothLEAdvertisingType { get }
var BluetoothLEAdvertisingTypeDiscoverableUndirected: BluetoothLEAdvertisingType { get }
var BluetoothLEAdvertisingTypeNonConnectableUndirected: BluetoothLEAdvertisingType { get }
var BluetoothLEAdvertisingTypeScanResponse: BluetoothLEAdvertisingType { get }
struct BluetoothCompanyIdentifers : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothCompanyIdentiferEricssonTechnologyLicensing: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNokiaMobilePhones: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIntel: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIBM: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferToshiba: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentifer3Com: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMicrosoft: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferLucent: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMotorola: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferInfineonTechnologiesAG: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCambridgeSiliconRadio: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSiliconWave: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferDigianswerAS: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTexasInstruments: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferParthusTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferBroadcom: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMitelSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferWidcomm: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferZeevo: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAtmel: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMistubishiElectric: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRTXTelecom: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferKCTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNewlogic: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTransilica: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRohdeandSchwarz: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTTPCom: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSigniaTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferConexantSystems: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferQualcomm: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferInventel: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAVMBerlin: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferBandspeed: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMansella: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNEC: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferWavePlusTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAlcatel: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferPhilipsSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferOpenInterface: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRFCMicroDevices: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferHitachi: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSymbolTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTenovis: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMacronixInternational: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferGCTSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNorwoodSystems: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMewTelTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSTMicroelectronics: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSynopsys: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRedMCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCommil: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCATC: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferEclipse: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferRenesasTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMobilian: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTerax: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIntegratedSystemSolution: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMatsushitaElectricIndustrial: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferGennum: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferResearchInMotion: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIPextreme: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSystemsAndChips: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferBluetoothSIG: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSeikoEpson: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferIntegratedSiliconSolution: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferCONWISETechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferParrotSA: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSocketCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAtherosCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMediaTek: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferBluegiga: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferMarvellTechnologyGroup: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentifer3DSP: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAccelSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferContinentialAutomotiveSystems: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferApple: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferStaccatoCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAvagoTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferAPT: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSiRFTechnology: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferTZeroTechnologies: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferJandM: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferFree2Move: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentifer3DiJoy: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferPlantronics: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferSonyEricssonMobileCommunications: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferHarmonInternational: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferVisio: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferNordicSemiconductor: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferEMMicroElectronicMarin: BluetoothCompanyIdentifers { get }
var kBluetoothCompanyIdentiferInteropIdentifier: BluetoothCompanyIdentifers { get }
var kBluetoothServiceClassMajorLimitedDiscoverableMode: Int { get }
var kBluetoothServiceClassMajorReserved1: Int { get }
var kBluetoothServiceClassMajorReserved2: Int { get }
var kBluetoothServiceClassMajorPositioning: Int { get }
var kBluetoothServiceClassMajorNetworking: Int { get }
var kBluetoothServiceClassMajorRendering: Int { get }
var kBluetoothServiceClassMajorCapturing: Int { get }
var kBluetoothServiceClassMajorObjectTransfer: Int { get }
var kBluetoothServiceClassMajorAudio: Int { get }
var kBluetoothServiceClassMajorTelephony: Int { get }
var kBluetoothServiceClassMajorInformation: Int { get }
var kBluetoothServiceClassMajorAny: Int { get }
var kBluetoothServiceClassMajorNone: Int { get }
var kBluetoothServiceClassMajorEnd: Int { get }
var kBluetoothDeviceClassMajorMiscellaneous: Int { get }
var kBluetoothDeviceClassMajorComputer: Int { get }
var kBluetoothDeviceClassMajorPhone: Int { get }
var kBluetoothDeviceClassMajorLANAccessPoint: Int { get }
var kBluetoothDeviceClassMajorAudio: Int { get }
var kBluetoothDeviceClassMajorPeripheral: Int { get }
var kBluetoothDeviceClassMajorImaging: Int { get }
var kBluetoothDeviceClassMajorWearable: Int { get }
var kBluetoothDeviceClassMajorToy: Int { get }
var kBluetoothDeviceClassMajorHealth: Int { get }
var kBluetoothDeviceClassMajorUnclassified: Int { get }
var kBluetoothDeviceClassMajorAny: Int { get }
var kBluetoothDeviceClassMajorNone: Int { get }
var kBluetoothDeviceClassMajorEnd: Int { get }
///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerUnclassified: Int { get }
///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerDesktopWorkstation: Int { get }
///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerServer: Int { get }
///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerLaptop: Int { get }
///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerHandheld: Int { get }
///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerPalmSized: Int { get }
///
	/// Computer Minor Class
	///
var kBluetoothDeviceClassMinorComputerWearable: Int { get }
///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneUnclassified: Int { get }
///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneCellular: Int { get }
///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneCordless: Int { get }
///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneSmartPhone: Int { get }
///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneWiredModemOrVoiceGateway: Int { get }
///
	/// Phone Minor Class
	///
var kBluetoothDeviceClassMinorPhoneCommonISDNAccess: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioUnclassified: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioHeadset: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioHandsFree: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioReserved1: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioMicrophone: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioLoudspeaker: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioHeadphones: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioPortable: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioCar: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioSetTopBox: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioHiFi: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVCR: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVideoCamera: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioCamcorder: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVideoMonitor: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVideoDisplayAndLoudspeaker: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioVideoConferencing: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioReserved2: Int { get }
///
	/// Audio Minor Class
	///
var kBluetoothDeviceClassMinorAudioGamingToy: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral1Keyboard: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral1Pointing: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral1Combo: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2Unclassified: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2Joystick: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2Gamepad: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2RemoteControl: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2SensingDevice: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2DigitizerTablet: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2CardReader: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2DigitalPen: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2HandheldScanner: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2GesturalInputDevice: Int { get }
///
	/// Peripheral Minor Class
	///
var kBluetoothDeviceClassMinorPeripheral2AnyPointing: Int { get }
///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging1Display: Int { get }
///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging1Camera: Int { get }
///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging1Scanner: Int { get }
///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging1Printer: Int { get }
///
	/// Imaging Minor Class
	///
var kBluetoothDeviceClassMinorImaging2Unclassified: Int { get }
///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearableWristWatch: Int { get }
///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearablePager: Int { get }
///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearableJacket: Int { get }
///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearableHelmet: Int { get }
///
	/// Wearable Minor Class
	///
var kBluetoothDeviceClassMinorWearableGlasses: Int { get }
///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyRobot: Int { get }
///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyVehicle: Int { get }
///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyDollActionFigure: Int { get }
///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyController: Int { get }
///
	/// Toy Minor Class
	///
var kBluetoothDeviceClassMinorToyGame: Int { get }
///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthUndefined: Int { get }
///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthBloodPressureMonitor: Int { get }
///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthThermometer: Int { get }
///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthScale: Int { get }
///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthGlucoseMeter: Int { get }
///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthPulseOximeter: Int { get }
///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthHeartRateMonitor: Int { get }
///
	/// Health Minor Class
	///
var kBluetoothDeviceClassMinorHealthDataDisplay: Int { get }
///
	///	Misc
	///
var kBluetoothDeviceClassMinorAny: Int { get }
///
	///	Misc
	///
var kBluetoothDeviceClassMinorNone: Int { get }
///
	///	Misc
	///
var kBluetoothDeviceClassMinorEnd: Int { get }
var kBluetoothGAPAppearanceUnknown: Int { get }
var kBluetoothGAPAppearanceGenericPhone: Int { get }
var kBluetoothGAPAppearanceGenericComputer: Int { get }
var kBluetoothGAPAppearanceGenericWatch: Int { get }
var kBluetoothGAPAppearanceGenericClock: Int { get }
var kBluetoothGAPAppearanceGenericDisplay: Int { get }
var kBluetoothGAPAppearanceGenericRemoteControl: Int { get }
var kBluetoothGAPAppearanceGenericEyeGlasses: Int { get }
var kBluetoothGAPAppearanceGenericTag: Int { get }
var kBluetoothGAPAppearanceGenericKeyring: Int { get }
var kBluetoothGAPAppearanceGenericMediaPlayer: Int { get }
var kBluetoothGAPAppearanceGenericBarcodeScanner: Int { get }
var kBluetoothGAPAppearanceGenericThermometer: Int { get }
var kBluetoothGAPAppearanceGenericHeartrateSensor: Int { get }
var kBluetoothGAPAppearanceGenericBloodPressure: Int { get }
var kBluetoothGAPAppearanceGenericHumanInterfaceDevice: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceKeyboard: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceMouse: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceJoystick: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceGamepad: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceDigitizerTablet: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceCardReader: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceDigitalPen: Int { get }
var kBluetoothGAPAppearanceHumanInterfaceDeviceBarcodeScanner: Int { get }
var kBluetoothGAPAppearanceGenericGlucoseMeter: Int { get }
var kBluetoothGAPAppearanceGenericRunningWalkingSensor: Int { get }
var kBluetoothGAPAppearanceGenericCycling: Int { get }
var kBluetoothL2CAPPSMSDP: Int { get }
var kBluetoothL2CAPPSMRFCOMM: Int { get }
var kBluetoothL2CAPPSMTCS_BIN: Int { get }
var kBluetoothL2CAPPSMTCS_BIN_Cordless: Int { get }
var kBluetoothL2CAPPSMBNEP: Int { get }
var kBluetoothL2CAPPSMHIDControl: Int { get }
var kBluetoothL2CAPPSMHIDInterrupt: Int { get }
var kBluetoothL2CAPPSMAVCTP: Int { get }
var kBluetoothL2CAPPSMAVDTP: Int { get }
var kBluetoothL2CAPPSMAVCTP_Browsing: Int { get }
var kBluetoothL2CAPPSMUID_C_Plane: Int { get }
var kBluetoothL2CAPPSMATT: Int { get }
var kBluetoothL2CAPPSMReservedStart: Int { get }
var kBluetoothL2CAPPSMReservedEnd: Int { get }
var kBluetoothL2CAPPSMDynamicStart: Int { get }
var kBluetoothL2CAPPSMD2D: Int { get }
var kBluetoothL2CAPPSMDynamicEnd: Int { get }
var kBluetoothL2CAPPSMNone: Int { get }
var kBluetoothSDPUUID16Base: Int { get }
var kBluetoothSDPUUID16SDP: Int { get }
var kBluetoothSDPUUID16UDP: Int { get }
var kBluetoothSDPUUID16RFCOMM: Int { get }
var kBluetoothSDPUUID16TCP: Int { get }
var kBluetoothSDPUUID16TCSBIN: Int { get }
var kBluetoothSDPUUID16TCSAT: Int { get }
var kBluetoothSDPUUID16OBEX: Int { get }
var kBluetoothSDPUUID16IP: Int { get }
var kBluetoothSDPUUID16FTP: Int { get }
var kBluetoothSDPUUID16HTTP: Int { get }
var kBluetoothSDPUUID16WSP: Int { get }
var kBluetoothSDPUUID16BNEP: Int { get }
var kBluetoothSDPUUID16UPNP: Int { get }
var kBluetoothSDPUUID16HIDP: Int { get }
var kBluetoothSDPUUID16HardcopyControlChannel: Int { get }
var kBluetoothSDPUUID16HardcopyDataChannel: Int { get }
var kBluetoothSDPUUID16HardcopyNotification: Int { get }
var kBluetoothSDPUUID16AVCTP: Int { get }
var kBluetoothSDPUUID16AVDTP: Int { get }
var kBluetoothSDPUUID16CMPT: Int { get }
var kBluetoothSDPUUID16UDI_C_Plane: Int { get }
var kBluetoothSDPUUID16MCAPControlChannel: Int { get }
var kBluetoothSDPUUID16MCAPDataChannel: Int { get }
var kBluetoothSDPUUID16L2CAP: Int { get }
struct SDPServiceClasses : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSDPUUID16ServiceClassServiceDiscoveryServer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassBrowseGroupDescriptor: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPublicBrowseGroup: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassSerialPort: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassLANAccessUsingPPP: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassDialupNetworking: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassIrMCSync: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassOBEXObjectPush: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassOBEXFileTransfer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassIrMCSyncCommand: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHeadset: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassCordlessTelephony: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAudioSource: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAudioSink: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAVRemoteControlTarget: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAdvancedAudioDistribution: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAVRemoteControl: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAVRemoteControlController: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassIntercom: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassFax: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHeadsetAudioGateway: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassWAP: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassWAPClient: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPANU: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassNAP: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGN: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassDirectPrinting: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassReferencePrinting: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassImaging: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassImagingResponder: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassImagingAutomaticArchive: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassImagingReferencedObjects: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHandsFree: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHandsFreeAudioGateway: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassDirectPrintingReferenceObjectsService: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassReflectedUI: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassBasicPrinting: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPrintingStatus: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHumanInterfaceDeviceService: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHardcopyCableReplacement: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHCR_Print: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHCR_Scan: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassCommonISDNAccess: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassVideoConferencingGW: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassUDI_MT: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassUDI_TA: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassAudioVideo: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassSIM_Access: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPhonebookAccess_PCE: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPhonebookAccess_PSE: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPhonebookAccess: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHeadset_HS: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassMessageAccessServer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassMessageNotificationServer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassMessageAccessProfile: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGlobalNavigationSatelliteSystem: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGlobalNavigationSatelliteSystemServer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassPnPInformation: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGenericNetworking: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGenericFileTransfer: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGenericAudio: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassGenericTelephony: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassVideoSource: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassVideoSink: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassVideoDistribution: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHealthDevice: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHealthDeviceSource: SDPServiceClasses { get }
var kBluetoothSDPUUID16ServiceClassHealthDeviceSink: SDPServiceClasses { get }
struct SDPAttributeIdentifierCodes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSDPAttributeIdentifierServiceRecordHandle: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceClassIDList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceRecordState: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceID: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierProtocolDescriptorList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierBrowseGroupList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierLanguageBaseAttributeIDList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceInfoTimeToLive: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceAvailability: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierBluetoothProfileDescriptorList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierDocumentationURL: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierClientExecutableURL: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierIconURL: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierAdditionalProtocolsDescriptorList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierVersionNumberList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceDatabaseState: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierGroupID: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierIPSubnet: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDReleaseNumber: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDParserVersion: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDDeviceSubclass: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDCountryCode: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDVirtualCable: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDReconnectInitiate: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDDescriptorList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDLangIDBaseList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDSDPDisable: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDBatteryPower: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDRemoteWake: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDProfileVersion: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDSupervisionTimeout: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDNormallyConnectable: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDBootDevice: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDSSRHostMaxLatency: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHIDSSRHostMinTimeout: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceVersion: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierExternalNetwork: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierNetwork: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupportedDataStoresList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierFaxClass1Support: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierRemoteAudioVolumeControl: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierFaxClass2_0Support: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupporterFormatsList: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierFaxClass2Support: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierAudioFeedbackSupport: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierNetworkAddress: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierWAPGateway: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierHomepageURL: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierWAPStackType: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSecurityDescription: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierNetAccessType: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierMaxNetAccessRate: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupportedCapabilities: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupportedFeatures: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierSupportedFunctions: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierTotalImagingDataCapacity: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceName: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierServiceDescription: SDPAttributeIdentifierCodes { get }
var kBluetoothSDPAttributeIdentifierProviderName: SDPAttributeIdentifierCodes { get }
struct SDPAttributeDeviceIdentificationRecord : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSDPAttributeDeviceIdentifierServiceDescription: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierDocumentationURL: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierClientExecutableURL: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierSpecificationID: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierVendorID: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierProductID: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierVersion: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierPrimaryRecord: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierVendorIDSource: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierReservedRangeStart: SDPAttributeDeviceIdentificationRecord { get }
var kBluetoothSDPAttributeDeviceIdentifierReservedRangeEnd: SDPAttributeDeviceIdentificationRecord { get }
struct ProtocolParameters : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothSDPProtocolParameterL2CAPPSM: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterRFCOMMChannel: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterTCPPort: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterUDPPort: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterBNEPVersion: ProtocolParameters { get }
var kBluetoothSDPProtocolParameterBNEPSupportedNetworkPacketTypeList: ProtocolParameters { get }
struct BluetoothHCIExtendedInquiryResponseDataTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIExtendedInquiryResponseDataTypeFlags: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType16BitServiceClassUUIDsWithMoreAvailable: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType16BitServiceClassUUIDsCompleteList: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType32BitServiceClassUUIDsWithMoreAvailable: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType32BitServiceClassUUIDsCompleteList: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType128BitServiceClassUUIDsWithMoreAvailable: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataType128BitServiceClassUUIDsCompleteList: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeShortenedLocalName: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeCompleteLocalName: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeTransmitPowerLevel: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSSPOOBClassOfDevice: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSSPOOBSimplePairingHashC: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSSPOOBSimplePairingRandomizerR: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeDeviceID: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSecurityManagerTKValue: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSecurityManagerOOBFlags: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeSlaveConnectionIntervalRange: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeServiceSolicitation16BitUUIDs: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeServiceSolicitation128BitUUIDs: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeServiceData: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypePublicTargetAddress: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeRandomTargetAddress: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeAppearance: BluetoothHCIExtendedInquiryResponseDataTypes { get }
var kBluetoothHCIExtendedInquiryResponseDataTypeManufacturerSpecificData: BluetoothHCIExtendedInquiryResponseDataTypes { get }
struct BluetoothHCIVersions : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothHCIVersionCoreSpecification1_0b: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification1_1: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification1_2: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification2_0EDR: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification2_1EDR: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification3_0HS: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification4_0: BluetoothHCIVersions { get }
var kBluetoothHCIVersionCoreSpecification4_1: BluetoothHCIVersions { get }
struct BluetoothLMPVersions : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothLMPVersionCoreSpecification1_0b: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification1_1: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification1_2: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification2_0EDR: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification2_1EDR: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification3_0HS: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification4_0: BluetoothLMPVersions { get }
var kBluetoothLMPVersionCoreSpecification4_1: BluetoothLMPVersions { get }
class IOBluetoothObject {
}
typealias IOBluetoothObjectRef = IOBluetoothObject
class IOBluetoothDevice {
}
typealias IOBluetoothDeviceRef = IOBluetoothDevice
typealias IOBluetoothL2CAPChannelRef = IOBluetoothL2CAPChannel
class IOBluetoothL2CAPChannel {
}
class IOBluetoothRFCOMMChannel {
}
typealias IOBluetoothRFCOMMChannelRef = IOBluetoothRFCOMMChannel
class IOBluetoothSDPServiceRecord {
}
typealias IOBluetoothSDPServiceRecordRef = IOBluetoothSDPServiceRecord
class IOBluetoothSDPUUID {
}
typealias IOBluetoothSDPUUIDRef = IOBluetoothSDPUUID
class IOBluetoothSDPDataElement {
}
typealias IOBluetoothSDPDataElementRef = IOBluetoothSDPDataElement
typealias IOBluetoothUserNotificationRef = IOBluetoothUserNotification
class IOBluetoothUserNotification {
}
typealias IOBluetoothObjectID = UInt
typealias IOBluetoothDeviceSearchOptions = UInt32
struct IOBluetoothDeviceSearchOptionsBits : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSearchOptionsNone: IOBluetoothDeviceSearchOptionsBits { get }
var kSearchOptionsAlwaysStartInquiry: IOBluetoothDeviceSearchOptionsBits { get }
var kSearchOptionsDiscardCachedResults: IOBluetoothDeviceSearchOptionsBits { get }
struct IOBluetoothDeviceSearchDeviceAttributes {
  var address: BluetoothDeviceAddress
  var name: BluetoothDeviceName
  var serviceClassMajor: BluetoothServiceClassMajor
  var deviceClassMajor: BluetoothDeviceClassMajor
  var deviceClassMinor: BluetoothDeviceClassMinor
  init()
  init(address: BluetoothDeviceAddress, name: BluetoothDeviceName, serviceClassMajor: BluetoothServiceClassMajor, deviceClassMajor: BluetoothDeviceClassMajor, deviceClassMinor: BluetoothDeviceClassMinor)
}
struct IOBluetoothDeviceSearchAttributes {
  var options: IOBluetoothDeviceSearchOptions
  var maxResults: IOItemCount
  var deviceAttributeCount: IOItemCount
  var attributeList: UnsafeMutablePointer<IOBluetoothDeviceSearchDeviceAttributes>
  init()
  init(options: IOBluetoothDeviceSearchOptions, maxResults: IOItemCount, deviceAttributeCount: IOItemCount, attributeList: UnsafeMutablePointer<IOBluetoothDeviceSearchDeviceAttributes>)
}
typealias IOBluetoothDeviceSearchTypes = UInt32
struct IOBluetoothDeviceSearchTypesBits : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothDeviceSearchClassic: IOBluetoothDeviceSearchTypesBits { get }
var kIOBluetoothDeviceSearchLE: IOBluetoothDeviceSearchTypesBits { get }
func IOBluetoothIgnoreHIDDevice(device: IOBluetoothDevice!)
func IOBluetoothRemoveIgnoredHIDDevice(device: IOBluetoothDevice!)
struct IOBluetoothUserNotificationChannelDirection : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothUserNotificationChannelDirectionAny: IOBluetoothUserNotificationChannelDirection { get }
var kIOBluetoothUserNotificationChannelDirectionIncoming: IOBluetoothUserNotificationChannelDirection { get }
var kIOBluetoothUserNotificationChannelDirectionOutgoing: IOBluetoothUserNotificationChannelDirection { get }
typealias IOBluetoothUserNotificationCallback = @convention(c) (UnsafeMutablePointer<Void>, IOBluetoothUserNotification!, IOBluetoothObject!) -> Void
func IOBluetoothUserNotificationUnregister(notificationRef: IOBluetoothUserNotification!)
func IOBluetoothRegisterForDeviceConnectNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!
func IOBluetoothDeviceRegisterForDisconnectNotification(inDevice: IOBluetoothDevice!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!
func IOBluetoothRegisterForL2CAPChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!
func IOBluetoothRegisterForFilteredL2CAPChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>, _ inPSM: BluetoothL2CAPPSM, _ inDirection: IOBluetoothUserNotificationChannelDirection) -> Unmanaged<IOBluetoothUserNotification>!
func IOBluetoothL2CAPChannelRegisterForChannelCloseNotification(channel: IOBluetoothL2CAPChannel!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!
func IOBluetoothRegisterForRFCOMMChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!
func IOBluetoothRegisterForFilteredRFCOMMChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>, _ channelID: BluetoothRFCOMMChannelID, _ inDirection: IOBluetoothUserNotificationChannelDirection) -> Unmanaged<IOBluetoothUserNotification>!
func IOBluetoothRFCOMMChannelRegisterForChannelCloseNotification(inChannel: IOBluetoothRFCOMMChannel!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotification>!
func IOBluetoothNSStringToDeviceAddress(inNameString: String!, _ outDeviceAddress: UnsafeMutablePointer<BluetoothDeviceAddress>) -> IOReturn
func IOBluetoothNSStringFromDeviceAddress(deviceAddress: UnsafePointer<BluetoothDeviceAddress>) -> String!
func IOBluetoothNSStringFromDeviceAddressColon(deviceAddress: UnsafePointer<BluetoothDeviceAddress>) -> String!
func IOBluetoothIsFileAppleDesignatedPIMData(inFileName: String!) -> Bool
func IOBluetoothGetUniqueFileNameAndPath(inName: String!, _ inPath: String!) -> String!
func IOBluetoothPackDataList(ioBuffer: UnsafeMutablePointer<Void>, _ inFormat: UnsafePointer<Int8>, _ inArgs: CVaListPointer) -> Int
func IOBluetoothUnpackDataList(inBufferSize: Int, _ inBuffer: UnsafePointer<Void>, _ inFormat: UnsafePointer<Int8>, _ inArgs: CVaListPointer) -> Int
func IOBluetoothNumberOfAvailableHIDDevices() -> Int
func IOBluetoothNumberOfPointingHIDDevices() -> Int
func IOBluetoothNumberOfKeyboardHIDDevices() -> Int
func IOBluetoothNumberOfTabletHIDDevices() -> Int
func IOBluetoothFindNumberOfRegistryEntriesOfClassName(deviceType: UnsafePointer<Int8>) -> Int
typealias OBEXError = Int32
struct OBEXErrorCodes : RawRepresentable, Equatable {
  init(_ rawValue: Int32)
  init(rawValue: Int32)
  var rawValue: Int32
}
var kOBEXErrorRangeMin: OBEXErrorCodes { get }
var kOBEXErrorRangeMax: OBEXErrorCodes { get }
var kOBEXSuccess: OBEXErrorCodes { get }
var kOBEXGeneralError: OBEXErrorCodes { get }
var kOBEXNoResourcesError: OBEXErrorCodes { get }
var kOBEXUnsupportedError: OBEXErrorCodes { get }
var kOBEXInternalError: OBEXErrorCodes { get }
var kOBEXBadArgumentError: OBEXErrorCodes { get }
var kOBEXTimeoutError: OBEXErrorCodes { get }
var kOBEXBadRequestError: OBEXErrorCodes { get }
var kOBEXCancelledError: OBEXErrorCodes { get }
var kOBEXForbiddenError: OBEXErrorCodes { get }
var kOBEXUnauthorizedError: OBEXErrorCodes { get }
var kOBEXNotAcceptableError: OBEXErrorCodes { get }
var kOBEXConflictError: OBEXErrorCodes { get }
var kOBEXMethodNotAllowedError: OBEXErrorCodes { get }
var kOBEXNotFoundError: OBEXErrorCodes { get }
var kOBEXNotImplementedError: OBEXErrorCodes { get }
var kOBEXPreconditionFailedError: OBEXErrorCodes { get }
var kOBEXSessionBusyError: OBEXErrorCodes { get }
var kOBEXSessionNotConnectedError: OBEXErrorCodes { get }
var kOBEXSessionBadRequestError: OBEXErrorCodes { get }
var kOBEXSessionBadResponseError: OBEXErrorCodes { get }
var kOBEXSessionNoTransportError: OBEXErrorCodes { get }
var kOBEXSessionTransportDiedError: OBEXErrorCodes { get }
var kOBEXSessionTimeoutError: OBEXErrorCodes { get }
var kOBEXSessionAlreadyConnectedError: OBEXErrorCodes { get }
struct OBEXHeaderIdentifiers : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXHeaderIDName: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDDescription: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDReservedRangeStart: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDReservedRangeEnd: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDUserDefinedRangeStart: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDUserDefinedRangeEnd: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDType: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTimeISO: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTarget: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDHTTP: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDBody: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDEndOfBody: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDWho: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAppParameters: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAuthorizationChallenge: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAuthorizationResponse: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDObjectClass: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDCount: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDLength: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTime4Byte: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDConnectionID: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13WANUUID: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13ObjectClass: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13SessionParameters: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13SessionSequenceNumber: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13CreatorID: OBEXHeaderIdentifiers { get }
struct OBEXOpCodeResponseValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXResponseCodeReservedRangeStart: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeReservedRangeEnd: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeContinue: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeContinueWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSuccess: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSuccessWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeCreated: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeCreatedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeAccepted: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeAcceptedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNonAuthoritativeInfo: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNonAuthoritativeInfoWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNoContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNoContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeResetContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeResetContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePartialContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePartialContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMultipleChoices: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMultipleChoicesWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedPermanently: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedPermanentlyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedTemporarily: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedTemporarilyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSeeOther: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSeeOtherWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotModified: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotModifiedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUseProxy: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUseProxyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadRequest: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadRequestWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnauthorized: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnauthorizedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePaymentRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePaymentRequiredWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeForbidden: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeForbiddenWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotFound: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotFoundWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMethodNotAllowed: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMethodNotAllowedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotAcceptable: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotAcceptableWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeProxyAuthenticationRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeProxyAuthenticationRequiredWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestTimeOut: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestTimeOutWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeConflict: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeConflictWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGone: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGoneWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeLengthRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeLengthRequiredFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePreconditionFailed: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePreconditionFailedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestedEntityTooLarge: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestedEntityTooLargeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestURLTooLarge: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestURLTooLargeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnsupportedMediaType: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnsupportedMediaTypeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeInternalServerError: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeInternalServerErrorWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotImplemented: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotImplementedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadGateway: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadGatewayWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeServiceUnavailable: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeServiceUnavailableWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGatewayTimeout: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGatewayTimeoutWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeHTTPVersionNotSupported: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeHTTPVersionNotSupportedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseFull: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseFullWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseLocked: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseLockedWithFinalBit: OBEXOpCodeResponseValues { get }
struct OBEXOpCodeCommandValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXOpCodeReserved: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeConnect: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeDisconnect: OBEXOpCodeCommandValues { get }
var kOBEXOpCodePut: OBEXOpCodeCommandValues { get }
var kOBEXOpCodePutWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeGet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeGetWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeSetPath: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeAbort: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedRangeStart: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedRangeEnd: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeUserDefinedStart: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeUserDefinedEnd: OBEXOpCodeCommandValues { get }
struct OBEXConnectFlagValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXConnectFlagNone: OBEXConnectFlagValues { get }
var kOBEXConnectFlagSupportMultipleItLMPConnections: OBEXConnectFlagValues { get }
var kOBEXConnectFlag1Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag2Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag3Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag4Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag5Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag6Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag7Reserved: OBEXConnectFlagValues { get }
struct OBEXPutFlagValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXPutFlagNone: OBEXPutFlagValues { get }
var kOBEXPutFlagGoToParentDirFirst: OBEXPutFlagValues { get }
var kOBEXPutFlagDontCreateDirectory: OBEXPutFlagValues { get }
var kOBEXPutFlag2Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag3Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag4Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag5Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag6Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag7Reserved: OBEXPutFlagValues { get }
struct OBEXNonceFlagValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXNonceFlagNone: OBEXNonceFlagValues { get }
var kOBEXNonceFlagSendUserIDInResponse: OBEXNonceFlagValues { get }
var kOBEXNonceFlagAccessModeReadOnly: OBEXNonceFlagValues { get }
var kOBEXNonceFlag2Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag3Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag4Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag5Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag6Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag7Reserved: OBEXNonceFlagValues { get }
struct OBEXRealmValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXRealmASCII: OBEXRealmValues { get }
var kOBEXRealmISO88591: OBEXRealmValues { get }
var kOBEXRealmISO88592: OBEXRealmValues { get }
var kOBEXRealmISO88593: OBEXRealmValues { get }
var kOBEXRealmISO88594: OBEXRealmValues { get }
var kOBEXRealmISO88595: OBEXRealmValues { get }
var kOBEXRealmISO88596: OBEXRealmValues { get }
var kOBEXRealmISO88597: OBEXRealmValues { get }
var kOBEXRealmISO88598: OBEXRealmValues { get }
var kOBEXRealmISO88599: OBEXRealmValues { get }
var kOBEXRealmUNICODE: OBEXRealmValues { get }
struct OBEXOpCodeSessionValues : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXOpCodeCreateSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeCloseSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeSuspendSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeResumeSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeSetTimeout: OBEXOpCodeSessionValues { get }
struct OBEXSessionParameterTags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXSessionParameterTagDeviceAddress: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagNonce: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagSessionID: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagNextSequenceNumber: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagTimeout: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagSessionOpcode: OBEXSessionParameterTags { get }
struct OBEXVersions : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXVersion10: OBEXVersions { get }
typealias OBEXHeaderIdentifier = UInt8
typealias OBEXVersion = UInt8
typealias OBEXFlags = UInt8
typealias OBEXOpCode = UInt8
typealias OBEXConstants = UInt8
typealias OBEXMaxPacketLength = UInt16
typealias OBEXSessionRef = COpaquePointer
struct OBEXConnectCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var maxPacketSize: OBEXMaxPacketLength
  var version: OBEXVersion
  var flags: OBEXFlags
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, maxPacketSize: OBEXMaxPacketLength, version: OBEXVersion, flags: OBEXFlags)
}
struct OBEXDisconnectCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXPutCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXGetCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXSetPathCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var flags: OBEXFlags
  var constants: OBEXConstants
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, flags: OBEXFlags, constants: OBEXConstants)
}
struct OBEXAbortCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXConnectCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var maxPacketSize: OBEXMaxPacketLength
  var version: OBEXVersion
  var flags: OBEXFlags
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, maxPacketSize: OBEXMaxPacketLength, version: OBEXVersion, flags: OBEXFlags)
}
struct OBEXDisconnectCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXPutCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var bodyDataLeftToSend: Int
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, bodyDataLeftToSend: Int)
}
struct OBEXGetCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXSetPathCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  var flags: OBEXFlags
  var constants: OBEXConstants
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int, flags: OBEXFlags, constants: OBEXConstants)
}
struct OBEXAbortCommandData {
  var headerDataPtr: UnsafeMutablePointer<Void>
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutablePointer<Void>, headerDataLength: Int)
}
struct OBEXErrorData {
  var error: OBEXError
  var dataPtr: UnsafeMutablePointer<Void>
  var dataLength: Int
  init()
  init(error: OBEXError, dataPtr: UnsafeMutablePointer<Void>, dataLength: Int)
}
struct OBEXSessionEventTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXSessionEventTypeConnectCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeDisconnectCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypePutCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeGetCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeSetPathCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeAbortCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeConnectCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeDisconnectCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypePutCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeGetCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeSetPathCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeAbortCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeError: OBEXSessionEventTypes { get }
typealias OBEXSessionEventType = UInt32
struct OBEXSessionEvent {
  struct __Unnamed_union_u {
    var connectCommandResponseData: OBEXConnectCommandResponseData
    var disconnectCommandResponseData: OBEXDisconnectCommandResponseData
    var putCommandResponseData: OBEXPutCommandResponseData
    var getCommandResponseData: OBEXGetCommandResponseData
    var setPathCommandResponseData: OBEXSetPathCommandResponseData
    var abortCommandResponseData: OBEXAbortCommandResponseData
    var connectCommandData: OBEXConnectCommandData
    var disconnectCommandData: OBEXDisconnectCommandData
    var putCommandData: OBEXPutCommandData
    var getCommandData: OBEXGetCommandData
    var setPathCommandData: OBEXSetPathCommandData
    var abortCommandData: OBEXAbortCommandData
    var errorData: OBEXErrorData
    init(connectCommandResponseData: OBEXConnectCommandResponseData)
    init(disconnectCommandResponseData: OBEXDisconnectCommandResponseData)
    init(putCommandResponseData: OBEXPutCommandResponseData)
    init(getCommandResponseData: OBEXGetCommandResponseData)
    init(setPathCommandResponseData: OBEXSetPathCommandResponseData)
    init(abortCommandResponseData: OBEXAbortCommandResponseData)
    init(connectCommandData: OBEXConnectCommandData)
    init(disconnectCommandData: OBEXDisconnectCommandData)
    init(putCommandData: OBEXPutCommandData)
    init(getCommandData: OBEXGetCommandData)
    init(setPathCommandData: OBEXSetPathCommandData)
    init(abortCommandData: OBEXAbortCommandData)
    init(errorData: OBEXErrorData)
    init()
  }
  var type: OBEXSessionEventType
  var session: OBEXSessionRef
  var refCon: UnsafeMutablePointer<Void>
  var isEndOfEventData: DarwinBoolean
  var reserved1: UnsafeMutablePointer<Void>
  var reserved2: UnsafeMutablePointer<Void>
  var u: OBEXSessionEvent.__Unnamed_union_u
  init()
  init(type: OBEXSessionEventType, session: OBEXSessionRef, refCon: UnsafeMutablePointer<Void>, isEndOfEventData: DarwinBoolean, reserved1: UnsafeMutablePointer<Void>, reserved2: UnsafeMutablePointer<Void>, u: OBEXSessionEvent.__Unnamed_union_u)
}
typealias OBEXSessionEventCallback = @convention(c) (UnsafePointer<OBEXSessionEvent>) -> Void
var kCharsetStringISO88591: String { get }
var kCharsetStringUTF8: String { get }
var kEncodingStringQuotedPrintable: String { get }
var kEncodingStringBase64: String { get }
var kEncodingString8Bit: String { get }
var kOBEXHeaderIDKeyName: Unmanaged<CFString>!
var kOBEXHeaderIDKeyType: Unmanaged<CFString>!
var kOBEXHeaderIDKeyDescription: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTimeISO: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTime4Byte: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTarget: Unmanaged<CFString>!
var kOBEXHeaderIDKeyHTTP: Unmanaged<CFString>!
var kOBEXHeaderIDKeyBody: Unmanaged<CFString>!
var kOBEXHeaderIDKeyEndOfBody: Unmanaged<CFString>!
var kOBEXHeaderIDKeyWho: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAppParameters: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAuthorizationChallenge: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAuthorizationResponse: Unmanaged<CFString>!
var kOBEXHeaderIDKeyObjectClass: Unmanaged<CFString>!
var kOBEXHeaderIDKeyCount: Unmanaged<CFString>!
var kOBEXHeaderIDKeyLength: Unmanaged<CFString>!
var kOBEXHeaderIDKeyConnectionID: Unmanaged<CFString>!
var kOBEXHeaderIDKeyByteSequence: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknownUnicodeText: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknownByteSequence: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknown1ByteQuantity: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknown4ByteQuantity: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUserDefined: Unmanaged<CFString>!
func OBEXGetHeaders(inData: UnsafePointer<Void>, _ inDataSize: Int) -> CFDictionary!
func OBEXHeadersToBytes(dictionaryOfHeaders: CFDictionary!) -> Unmanaged<CFMutableData>!
func OBEXAddNameHeader(name: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddDescriptionHeader(description: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddCountHeader(count: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddTime4ByteHeader(time4Byte: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddLengthHeader(length: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddTypeHeader(type: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddTimeISOHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddTargetHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddHTTPHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddBodyHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ isEndOfBody: Bool, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddWhoHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddConnectionIDHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddApplicationParameterHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddByteSequenceHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddObjectClassHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddAuthorizationChallengeHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddAuthorizationResponseHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddUserDefinedHeader(inHeaderData: UnsafePointer<Void>, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
typealias IOBluetoothOBEXSessionOpenConnectionCallback = @convention(c) (OBEXSessionRef, OBEXError, UnsafeMutablePointer<Void>) -> Void
var kIOBluetoothDeviceNotificationNameConnected: String { get }
var kIOBluetoothDeviceNotificationNameDisconnected: String { get }
var kIOBluetoothDeviceNameChangedNotification: String { get }
var kIOBluetoothDeviceInquiryInfoChangedNotification: String { get }
var kIOBluetoothDeviceServicesChangedNotification: String { get }
var kIOBluetoothL2CAPChannelMaxAllowedIncomingMTU: String { get }
var kIOBluetoothL2CAPChannelDesiredOutgoingMTU: String { get }
protocol IOBluetoothDeviceAsyncCallbacks {
  func remoteNameRequestComplete(device: IOBluetoothDevice!, status: IOReturn)
  func connectionComplete(device: IOBluetoothDevice!, status: IOReturn)
  func sdpQueryComplete(device: IOBluetoothDevice!, status: IOReturn)
}
class IOBluetoothDevice : IOBluetoothObject, NSCoding, NSSecureCoding {
  class func registerForConnectNotifications(observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  func registerForDisconnectNotification(observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  convenience init!(address: UnsafePointer<BluetoothDeviceAddress>)
  convenience init!(addressString address: String!)
  func openL2CAPChannelSync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: AnyObject!) -> IOReturn
  func openL2CAPChannelAsync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: AnyObject!) -> IOReturn
  func sendL2CAPEchoRequest(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn
  func openRFCOMMChannelSync(rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: AnyObject!) -> IOReturn
  func openRFCOMMChannelAsync(rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: AnyObject!) -> IOReturn
  var classOfDevice: BluetoothClassOfDevice { get }
  var serviceClassMajor: BluetoothServiceClassMajor { get }
  var deviceClassMajor: BluetoothDeviceClassMajor { get }
  var deviceClassMinor: BluetoothDeviceClassMinor { get }
  var name: String! { get }
  var nameOrAddress: String! { get }
  var lastNameUpdate: NSDate! { get }
  func getAddress() -> UnsafePointer<BluetoothDeviceAddress>
  var addressString: String! { get }
  func getPageScanRepetitionMode() -> BluetoothPageScanRepetitionMode
  func getPageScanPeriodMode() -> BluetoothPageScanPeriodMode
  func getPageScanMode() -> BluetoothPageScanMode
  func getClockOffset() -> BluetoothClockOffset
  func getLastInquiryUpdate() -> NSDate!
  func RSSI() -> BluetoothHCIRSSIValue
  func rawRSSI() -> BluetoothHCIRSSIValue
  func isConnected() -> Bool
  func openConnection() -> IOReturn
  func openConnection(target: AnyObject!) -> IOReturn
  func openConnection(target: AnyObject!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout, authenticationRequired: Bool) -> IOReturn
  func closeConnection() -> IOReturn
  func remoteNameRequest(target: AnyObject!) -> IOReturn
  func remoteNameRequest(target: AnyObject!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout) -> IOReturn
  func requestAuthentication() -> IOReturn
  var connectionHandle: BluetoothConnectionHandle { get }
  func isIncoming() -> Bool
  func getLinkType() -> BluetoothLinkType
  func getEncryptionMode() -> BluetoothHCIEncryptionMode
  func performSDPQuery(target: AnyObject!) -> IOReturn
  func performSDPQuery(target: AnyObject!, uuids uuidArray: [AnyObject]!) -> IOReturn
  var services: [AnyObject]! { get }
  func getLastServicesUpdate() -> NSDate!
  func getServiceRecordForUUID(sdpUUID: IOBluetoothSDPUUID!) -> IOBluetoothSDPServiceRecord!
  class func favoriteDevices() -> [AnyObject]!
  func isFavorite() -> Bool
  func addToFavorites() -> IOReturn
  func removeFromFavorites() -> IOReturn
  class func recentDevices(numDevices: UInt) -> [AnyObject]!
  func recentAccessDate() -> NSDate!
  class func pairedDevices() -> [AnyObject]!
  func isPaired() -> Bool
  func setSupervisionTimeout(timeout: UInt16) -> IOReturn
  func openL2CAPChannelSync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [NSObject : AnyObject]!, delegate channelDelegate: AnyObject!) -> IOReturn
  func openL2CAPChannelAsync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [NSObject : AnyObject]!, delegate channelDelegate: AnyObject!) -> IOReturn
  func awakeAfterUsingCoder(coder: NSCoder!) -> AnyObject!
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func supportsSecureCoding() -> Bool
}
class IOBluetoothDeviceInquiry : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  init!(delegate: AnyObject!)
  func start() -> IOReturn
  func stop() -> IOReturn
  var inquiryLength: UInt8
  var searchType: IOBluetoothDeviceSearchTypes
  var updateNewDeviceNames: Bool
  func foundDevices() -> [AnyObject]!
  func clearFoundDevices()
  func setSearchCriteria(inServiceClassMajor: BluetoothServiceClassMajor, majorDeviceClass inMajorDeviceClass: BluetoothDeviceClassMajor, minorDeviceClass inMinorDeviceClass: BluetoothDeviceClassMinor)
  init()
}
protocol IOBluetoothDeviceInquiryDelegate {
  optional func deviceInquiryStarted(sender: IOBluetoothDeviceInquiry!)
  optional func deviceInquiryDeviceFound(sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!)
  optional func deviceInquiryUpdatingDeviceNamesStarted(sender: IOBluetoothDeviceInquiry!, devicesRemaining: UInt32)
  optional func deviceInquiryDeviceNameUpdated(sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!, devicesRemaining: UInt32)
  optional func deviceInquiryComplete(sender: IOBluetoothDeviceInquiry!, error: IOReturn, aborted: Bool)
}
class IOBluetoothDevicePair : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  convenience init!(device: IOBluetoothDevice!)
  func start() -> IOReturn
  func stop()
  func device() -> IOBluetoothDevice!
  func setDevice(inDevice: IOBluetoothDevice!)
  func replyPINCode(PINCodeSize: Int, PINCode: UnsafeMutablePointer<BluetoothPINCode>)
  func replyUserConfirmation(reply: Bool)
  init()
}
protocol IOBluetoothDevicePairDelegate : NSObjectProtocol {
  optional func devicePairingStarted(sender: AnyObject!)
  optional func devicePairingConnecting(sender: AnyObject!)
  optional func devicePairingPINCodeRequest(sender: AnyObject!)
  optional func devicePairingUserConfirmationRequest(sender: AnyObject!, numericValue: BluetoothNumericValue)
  optional func devicePairingUserPasskeyNotification(sender: AnyObject!, passkey: BluetoothPasskey)
  optional func devicePairingFinished(sender: AnyObject!, error: IOReturn)
  optional func deviceSimplePairingComplete(sender: AnyObject!, status: BluetoothHCIEventStatus)
}
var IOBluetoothHandsFreeDeviceFeatureNone: Int { get }
var IOBluetoothHandsFreeDeviceFeatureECAndOrNRFunction: Int { get }
var IOBluetoothHandsFreeDeviceFeatureThreeWayCalling: Int { get }
var IOBluetoothHandsFreeDeviceFeatureCLIPresentation: Int { get }
var IOBluetoothHandsFreeDeviceFeatureVoiceRecognition: Int { get }
var IOBluetoothHandsFreeDeviceFeatureRemoteVolumeControl: Int { get }
var IOBluetoothHandsFreeDeviceFeatureEnhancedCallStatus: Int { get }
var IOBluetoothHandsFreeDeviceFeatureEnhancedCallControl: Int { get }
typealias IOBluetoothHandsFreeDeviceFeatures = Int
var IOBluetoothHandsFreeAudioGatewayFeatureNone: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureThreeWayCalling: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureECAndOrNRFunction: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureVoiceRecognition: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureInBandRingTone: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureAttachedNumberToVoiceTag: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureRejectCallCapability: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureEnhancedCallStatus: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureEnhancedCallControl: Int { get }
var IOBluetoothHandsFreeAudioGatewayFeatureExtendedErrorResultCodes: Int { get }
typealias IOBluetoothHandsFreeAudioGatewayFeatures = Int
var IOBluetoothHandsFreeCallHoldMode0: Int { get }
var IOBluetoothHandsFreeCallHoldMode1: Int { get }
var IOBluetoothHandsFreeCallHoldMode1idx: Int { get }
var IOBluetoothHandsFreeCallHoldMode2: Int { get }
var IOBluetoothHandsFreeCallHoldMode2idx: Int { get }
var IOBluetoothHandsFreeCallHoldMode3: Int { get }
var IOBluetoothHandsFreeCallHoldMode4: Int { get }
typealias IOBluetoothHandsFreeCallHoldModes = Int
let IOBluetoothHandsFreeIndicatorService: String
let IOBluetoothHandsFreeIndicatorCall: String
let IOBluetoothHandsFreeIndicatorCallSetup: String
let IOBluetoothHandsFreeIndicatorCallHeld: String
let IOBluetoothHandsFreeIndicatorSignal: String
let IOBluetoothHandsFreeIndicatorRoam: String
let IOBluetoothHandsFreeIndicatorBattChg: String
let IOBluetoothHandsFreeCallIndex: String
let IOBluetoothHandsFreeCallDirection: String
let IOBluetoothHandsFreeCallStatus: String
let IOBluetoothHandsFreeCallMode: String
let IOBluetoothHandsFreeCallMultiparty: String
let IOBluetoothHandsFreeCallNumber: String
let IOBluetoothHandsFreeCallType: String
let IOBluetoothHandsFreeCallName: String
var IOBluetoothSMSModePDU: Int { get }
var IOBluetoothSMSModeText: Int { get }
typealias IOBluetoothSMSMode = Int
var IOBluetoothHandsFreePhase2SMSSupport: Int { get }
var IOBluetoothHandsFreePhase2pSMSSupport: Int { get }
var IOBluetoothHandsFreeManufactureSpecificSMSSupport: Int { get }
typealias IOBluetoothHandsFreeSMSSupport = Int
var IOBluetoothHandsFreePDUStatusRecUnread: Int { get }
var IOBluetoothHandsFreePDUStatusRecRead: Int { get }
var IOBluetoothHandsFreePDUStatusStoUnsent: Int { get }
var IOBluetoothHandsFreePDUStatusStoSent: Int { get }
var IOBluetoothHandsFreePDUStatusAll: Int { get }
typealias IOBluetoothHandsFreePDUMessageStatus = Int
let IOBluetoothPDUServicCenterAddress: String
let IOBluetoothPDUServiceCenterAddressType: String
let IOBluetoothPDUType: String
let IOBluetoothPDUOriginatingAddress: String
let IOBluetoothPDUOriginatingAddressType: String
let IOBluetoothPDUProtocolID: String
let IOBluetoothPDUTimestamp: String
let IOBluetoothPDUEncoding: String
let IOBluetoothPDUUserData: String
class IOBluetoothHandsFree : NSObject {
  var supportedFeatures: UInt32
  var inputVolume: Float
  var inputMuted: Bool
  var outputVolume: Float
  var outputMuted: Bool
  var device: IOBluetoothDevice! { get }
  var deviceSupportedFeatures: UInt32 { get }
  var deviceSupportedSMSServices: UInt32 { get }
  var deviceCallHoldModes: UInt32 { get }
  var SMSMode: IOBluetoothSMSMode { get }
  var SMSEnabled: Bool { get }
  unowned(unsafe) var delegate: @sil_unmanaged IOBluetoothHandsFreeDelegate!
  func indicator(indicatorName: String!) -> Int32
  func setIndicator(indicatorName: String!, value indicatorValue: Int32)
  init!(device: IOBluetoothDevice!, delegate inDelegate: IOBluetoothHandsFreeDelegate!)
  func connect()
  func disconnect()
  func isConnected() -> Bool
  func connectSCO()
  func disconnectSCO()
  func isSCOConnected() -> Bool
  init()
}
protocol IOBluetoothHandsFreeDelegate : NSObjectProtocol {
  optional func handsFree(device: IOBluetoothHandsFree!, connected status: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFree!, disconnected status: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFree!, scoConnectionOpened status: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFree!, scoConnectionClosed status: NSNumber!)
}
extension IOBluetoothDevice {
  func handsFreeAudioGatewayServiceRecord() -> IOBluetoothSDPServiceRecord!
  var handsFreeAudioGateway: Bool { get }
  func handsFreeDeviceServiceRecord() -> IOBluetoothSDPServiceRecord!
  var handsFreeDevice: Bool { get }
}
extension IOBluetoothSDPServiceRecord {
  func handsFreeSupportedFeatures() -> UInt16
}
class IOBluetoothHandsFreeAudioGateway : IOBluetoothHandsFree {
  init!(device: IOBluetoothDevice!, delegate inDelegate: AnyObject!)
  func createIndicator(indicatorName: String!, min minValue: Int32, max maxValue: Int32, currentValue: Int32)
  func processATCommand(atCommand: String!)
  func sendOKResponse()
  func sendResponse(response: String!)
  func sendResponse(response: String!, withOK: Bool)
  init()
}
protocol IOBluetoothHandsFreeAudioGatewayDelegate {
  optional func handsFree(device: IOBluetoothHandsFreeAudioGateway!, hangup: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeAudioGateway!, redial: NSNumber!)
}
class IOBluetoothHandsFreeDevice : IOBluetoothHandsFree {
  init!(device: IOBluetoothDevice!, delegate: AnyObject!)
  func dialNumber(aNumber: String!)
  func memoryDial(memoryLocation: Int32)
  func redial()
  func endCall()
  func acceptCall()
  func acceptCallOnPhone()
  func sendDTMF(character: String!)
  func subscriberNumber()
  func currentCallList()
  func releaseHeldCalls()
  func releaseActiveCalls()
  func releaseCall(index: Int32)
  func holdCall()
  func placeAllOthersOnHold(index: Int32)
  func addHeldCall()
  func callTransfer()
  func transferAudioToComputer()
  func transferAudioToPhone()
  func sendSMS(aNumber: String!, message aMessage: String!)
  func sendATCommand(atCommand: String!)
  func sendATCommand(atCommand: String!, timeout: Float, selector: Selector, target: AnyObject!)
  init()
}
protocol IOBluetoothHandsFreeDeviceDelegate : IOBluetoothHandsFreeDelegate {
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, isServiceAvailable: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, isCallActive: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, callSetupMode: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, callHoldState: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, signalStrength: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, isRoaming: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, batteryCharge: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, incomingCallFrom number: String!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, ringAttempt: NSNumber!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, currentCall: [NSObject : AnyObject]!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, subscriberNumber: String!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, incomingSMS sms: [NSObject : AnyObject]!)
  optional func handsFree(device: IOBluetoothHandsFreeDevice!, unhandledResultCode resultCode: String!)
}
class IOBluetoothHostController : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  class func defaultController() -> Self!
  var powerState: BluetoothHCIPowerState { get }
  func classOfDevice() -> BluetoothClassOfDevice
  func setClassOfDevice(classOfDevice: BluetoothClassOfDevice, forTimeInterval seconds: NSTimeInterval) -> IOReturn
  func addressAsString() -> String!
  func nameAsString() -> String!
  init()
}
extension NSObject {
  class func readRSSIForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>, error: IOReturn)
  func readRSSIForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>, error: IOReturn)
  class func readLinkQualityForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>, error: IOReturn)
  func readLinkQualityForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>, error: IOReturn)
}
let IOBluetoothHostControllerPoweredOnNotification: String
let IOBluetoothHostControllerPoweredOffNotification: String
struct IOBluetoothL2CAPChannelEventType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothL2CAPChannelEventTypeData: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeOpenComplete: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeClosed: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeReconfigured: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeWriteComplete: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeQueueSpaceAvailable: IOBluetoothL2CAPChannelEventType { get }
struct IOBluetoothL2CAPChannelDataBlock {
  var dataPtr: UnsafeMutablePointer<Void>
  var dataSize: Int
  init()
  init(dataPtr: UnsafeMutablePointer<Void>, dataSize: Int)
}
struct IOBluetoothL2CAPChannelEvent {
  struct __Unnamed_union_u {
    var data: IOBluetoothL2CAPChannelDataBlock
    var writeRefCon: UnsafeMutablePointer<Void>
    var padding: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    init(data: IOBluetoothL2CAPChannelDataBlock)
    init(writeRefCon: UnsafeMutablePointer<Void>)
    init(padding: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
    init()
  }
  var eventType: IOBluetoothL2CAPChannelEventType
  var u: IOBluetoothL2CAPChannelEvent.__Unnamed_union_u
  var status: IOReturn
  init()
  init(eventType: IOBluetoothL2CAPChannelEventType, u: IOBluetoothL2CAPChannelEvent.__Unnamed_union_u, status: IOReturn)
}
typealias IOBluetoothL2CAPChannelIncomingDataListener = @convention(c) (IOBluetoothL2CAPChannel!, UnsafeMutablePointer<Void>, UInt16, UnsafeMutablePointer<Void>) -> Void
typealias IOBluetoothL2CAPChannelIncomingEventListener = @convention(c) (IOBluetoothL2CAPChannel!, UnsafeMutablePointer<Void>, UnsafeMutablePointer<IOBluetoothL2CAPChannelEvent>) -> Void
class IOBluetoothL2CAPChannel : IOBluetoothObject, NSPortDelegate {
  class func registerForChannelOpenNotifications(object: AnyObject!, selector: Selector) -> IOBluetoothUserNotification!
  class func registerForChannelOpenNotifications(object: AnyObject!, selector: Selector, withPSM psm: BluetoothL2CAPPSM, direction inDirection: IOBluetoothUserNotificationChannelDirection) -> IOBluetoothUserNotification!
  class func withObjectID(objectID: IOBluetoothObjectID) -> Self!
  func closeChannel() -> IOReturn
  var outgoingMTU: BluetoothL2CAPMTU { get }
  var incomingMTU: BluetoothL2CAPMTU { get }
  func requestRemoteMTU(remoteMTU: BluetoothL2CAPMTU) -> IOReturn
  func writeAsync(data: UnsafeMutablePointer<Void>, length: UInt16, refcon: UnsafeMutablePointer<Void>) -> IOReturn
  func writeSync(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn
  func setDelegate(channelDelegate: AnyObject!) -> IOReturn
  func setDelegate(channelDelegate: AnyObject!, withConfiguration channelConfiguration: [NSObject : AnyObject]!) -> IOReturn
  func delegate() -> AnyObject!
  var device: IOBluetoothDevice! { get }
  var objectID: IOBluetoothObjectID { get }
  var PSM: BluetoothL2CAPPSM { get }
  var localChannelID: BluetoothL2CAPChannelID { get }
  var remoteChannelID: BluetoothL2CAPChannelID { get }
  func isIncoming() -> Bool
  func registerForChannelCloseNotification(observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  init()
  func handlePortMessage(message: NSPortMessage)
}
protocol IOBluetoothL2CAPChannelDelegate {
  optional func l2capChannelData(l2capChannel: IOBluetoothL2CAPChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  optional func l2capChannelOpenComplete(l2capChannel: IOBluetoothL2CAPChannel!, status error: IOReturn)
  optional func l2capChannelClosed(l2capChannel: IOBluetoothL2CAPChannel!)
  optional func l2capChannelReconfigured(l2capChannel: IOBluetoothL2CAPChannel!)
  optional func l2capChannelWriteComplete(l2capChannel: IOBluetoothL2CAPChannel!, refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  optional func l2capChannelQueueSpaceAvailable(l2capChannel: IOBluetoothL2CAPChannel!)
}
let IOBluetoothL2CAPChannelPublishedNotification: String
let IOBluetoothL2CAPChannelTerminatedNotification: String
extension NSObject {
}
class IOBluetoothOBEXSession : OBEXSession, IOBluetoothRFCOMMChannelDelegate {
  class func withSDPServiceRecord(inSDPServiceRecord: IOBluetoothSDPServiceRecord!) -> Self!
  class func withDevice(inDevice: IOBluetoothDevice!, channelID inRFCOMMChannelID: BluetoothRFCOMMChannelID) -> Self!
  class func withIncomingRFCOMMChannel(inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector, selectorTarget inEventSelectorTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> Self!
  init!(SDPServiceRecord inSDPServiceRecord: IOBluetoothSDPServiceRecord!)
  init!(device inDevice: IOBluetoothDevice!, channelID inChannelID: BluetoothRFCOMMChannelID)
  init!(incomingRFCOMMChannel inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector, selectorTarget inEventSelectorTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>)
  func getRFCOMMChannel() -> IOBluetoothRFCOMMChannel!
  func getDevice() -> IOBluetoothDevice!
  func sendBufferTroughChannel() -> IOReturn
  func restartTransmission()
  func isSessionTargetAMac() -> Bool
  func openTransportConnection(inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func hasOpenTransportConnection() -> Bool
  func closeTransportConnection() -> OBEXError
  func sendDataToTransport(inDataToSend: UnsafeMutablePointer<Void>, dataLength inDataLength: Int) -> OBEXError
  func setOpenTransportConnectionAsyncSelector(inSelector: Selector, target inSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)
  func setOBEXSessionOpenConnectionCallback(inCallback: IOBluetoothOBEXSessionOpenConnectionCallback!, refCon inUserRefCon: UnsafeMutablePointer<Void>)
  init()
  func rfcommChannelData(rfcommChannel: IOBluetoothRFCOMMChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  func rfcommChannelOpenComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, status error: IOReturn)
  func rfcommChannelClosed(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelControlSignalsChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelFlowControlChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelWriteComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  func rfcommChannelQueueSpaceAvailable(rfcommChannel: IOBluetoothRFCOMMChannel!)
}
class IOBluetoothObject : NSObject, NSCopying {
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
var kBluetoothTargetDoesNotRespondToCallbackExceptionName: String { get }
class IOBluetoothRFCOMMChannel : IOBluetoothObject, NSPortDelegate {
  class func registerForChannelOpenNotifications(object: AnyObject!, selector: Selector) -> IOBluetoothUserNotification!
  class func registerForChannelOpenNotifications(object: AnyObject!, selector: Selector, withChannelID channelID: BluetoothRFCOMMChannelID, direction inDirection: IOBluetoothUserNotificationChannelDirection) -> IOBluetoothUserNotification!
  class func withRFCOMMChannelRef(rfcommChannelRef: IOBluetoothRFCOMMChannel!) -> Self!
  class func withObjectID(objectID: IOBluetoothObjectID) -> Self!
  func getRFCOMMChannelRef() -> Unmanaged<IOBluetoothRFCOMMChannel>!
  func closeChannel() -> IOReturn
  func isOpen() -> Bool
  func getMTU() -> BluetoothRFCOMMMTU
  func isTransmissionPaused() -> Bool
  func writeAsync(data: UnsafeMutablePointer<Void>, length: UInt16, refcon: UnsafeMutablePointer<Void>) -> IOReturn
  func writeSync(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn
  func setSerialParameters(speed: UInt32, dataBits nBits: UInt8, parity: BluetoothRFCOMMParityType, stopBits bitStop: UInt8) -> IOReturn
  func sendRemoteLineStatus(lineStatus: BluetoothRFCOMMLineStatus) -> IOReturn
  func setDelegate(delegate: AnyObject!) -> IOReturn
  func delegate() -> AnyObject!
  func getChannelID() -> BluetoothRFCOMMChannelID
  func isIncoming() -> Bool
  func getDevice() -> IOBluetoothDevice!
  func getObjectID() -> IOBluetoothObjectID
  func registerForChannelCloseNotification(observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  init()
  func handlePortMessage(message: NSPortMessage)
}
protocol IOBluetoothRFCOMMChannelDelegate {
  optional func rfcommChannelData(rfcommChannel: IOBluetoothRFCOMMChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  optional func rfcommChannelOpenComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, status error: IOReturn)
  optional func rfcommChannelClosed(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelControlSignalsChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelFlowControlChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelWriteComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  optional func rfcommChannelQueueSpaceAvailable(rfcommChannel: IOBluetoothRFCOMMChannel!)
}
class IOBluetoothSDPDataElement : NSObject, NSCoding {
  class func withElementValue(element: NSObject!) -> Self!
  class func withType(type: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: NSObject!) -> Self!
  class func withSDPDataElementRef(sdpDataElementRef: IOBluetoothSDPDataElement!) -> Self!
  init!(elementValue element: NSObject!)
  init!(type newType: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: NSObject!)
  func getSDPDataElementRef() -> Unmanaged<IOBluetoothSDPDataElement>!
  func getTypeDescriptor() -> BluetoothSDPDataElementTypeDescriptor
  func getSizeDescriptor() -> BluetoothSDPDataElementSizeDescriptor
  func getSize() -> UInt32
  func getNumberValue() -> NSNumber!
  func getDataValue() -> NSData!
  func getStringValue() -> String!
  func getArrayValue() -> [AnyObject]!
  func getUUIDValue() -> IOBluetoothSDPUUID!
  func getValue() -> NSObject!
  func containsDataElement(dataElement: IOBluetoothSDPDataElement!) -> Bool
  func containsValue(cmpValue: NSObject!) -> Bool
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class IOBluetoothSDPServiceAttribute : NSObject, NSCoding {
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!) -> Self!
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!) -> Self!
  init!(ID newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!)
  init!(ID newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!)
  func getAttributeID() -> BluetoothSDPServiceAttributeID
  func getDataElement() -> IOBluetoothSDPDataElement!
  func getIDDataElement() -> IOBluetoothSDPDataElement!
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class IOBluetoothSDPServiceRecord : NSObject, NSCoding {
  class func publishedServiceRecordWithDictionary(serviceDict: [NSObject : AnyObject]!) -> Self!
  func removeServiceRecord() -> IOReturn
  class func withServiceDictionary(serviceDict: [NSObject : AnyObject]!, device: IOBluetoothDevice!) -> Self!
  init!(serviceDictionary serviceDict: [NSObject : AnyObject]!, device: IOBluetoothDevice!)
  class func withSDPServiceRecordRef(sdpServiceRecordRef: IOBluetoothSDPServiceRecord!) -> Self!
  func getSDPServiceRecordRef() -> Unmanaged<IOBluetoothSDPServiceRecord>!
  var device: IOBluetoothDevice! { get }
  var attributes: [NSObject : AnyObject]! { get }
  func getAttributeDataElement(attributeID: BluetoothSDPServiceAttributeID) -> IOBluetoothSDPDataElement!
  func getServiceName() -> String!
  func getRFCOMMChannelID(rfcommChannelID: UnsafeMutablePointer<BluetoothRFCOMMChannelID>) -> IOReturn
  func getL2CAPPSM(outPSM: UnsafeMutablePointer<BluetoothL2CAPPSM>) -> IOReturn
  func getServiceRecordHandle(outServiceRecordHandle: UnsafeMutablePointer<BluetoothSDPServiceRecordHandle>) -> IOReturn
  func matchesUUID16(uuid16: BluetoothSDPUUID16) -> Bool
  func matchesUUIDArray(uuidArray: [AnyObject]!) -> Bool
  func matchesSearchArray(searchArray: [AnyObject]!) -> Bool
  func hasServiceFromArray(array: [AnyObject]!) -> Bool
  var sortedAttributes: [AnyObject]! { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class IOBluetoothSDPUUID : NSData {
  class func uuidWithBytes(bytes: UnsafePointer<Void>, length: UInt32) -> Self!
  class func uuidWithData(data: NSData!) -> Self!
  class func uuid16(uuid16: BluetoothSDPUUID16) -> Self!
  class func uuid32(uuid32: BluetoothSDPUUID32) -> Self!
  init!(UUID16 uuid16: BluetoothSDPUUID16)
  init!(UUID32 uuid32: BluetoothSDPUUID32)
  func getUUIDWithLength(newLength: UInt32) -> Self!
  func isEqualToUUID(otherUUID: IOBluetoothSDPUUID!) -> Bool
  func classForCoder() -> AnyClass!
  func classForArchiver() -> AnyClass!
  func classForPortCoder() -> AnyClass!
  init()
  init?(coder aDecoder: NSCoder)
  init?(contentsOfMappedFile path: String)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
}
class IOBluetoothUserNotification : NSObject {
  func unregister()
  init()
}
extension NSMutableDictionary {
  convenience init!(OBEXHeadersData inHeadersData: UnsafePointer<Void>, headersDataSize inDataSize: Int)
  convenience init!(OBEXHeadersData inHeadersData: NSData!)
  func getHeaderBytes() -> NSMutableData!
  func addTargetHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addHTTPHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addBodyHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32, endOfBody isEndOfBody: Bool) -> OBEXError
  func addWhoHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addConnectionIDHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addApplicationParameterHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addByteSequenceHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addObjectClassHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationChallengeHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationResponseHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addTimeISOHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addTypeHeader(type: String!) -> OBEXError
  func addLengthHeader(length: UInt32) -> OBEXError
  func addTime4ByteHeader(time4Byte: UInt32) -> OBEXError
  func addCountHeader(inCount: UInt32) -> OBEXError
  func addDescriptionHeader(inDescriptionString: String!) -> OBEXError
  func addNameHeader(inNameString: String!) -> OBEXError
  func addUserDefinedHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addImageHandleHeader(type: String!) -> OBEXError
  func addImageDescriptorHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
}
class OBEXFileTransferServices : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  class func withOBEXSession(inOBEXSession: IOBluetoothOBEXSession!) -> Self!
  init!(OBEXSession inOBEXSession: IOBluetoothOBEXSession!)
  func currentPath() -> String!
  func isBusy() -> Bool
  func isConnected() -> Bool
  func connectToFTPService() -> OBEXError
  func connectToObjectPushService() -> OBEXError
  func disconnect() -> OBEXError
  func changeCurrentFolderToRoot() -> OBEXError
  func changeCurrentFolderBackward() -> OBEXError
  func changeCurrentFolderForwardToPath(inDirName: String!) -> OBEXError
  func createFolder(inDirName: String!) -> OBEXError
  func removeItem(inItemName: String!) -> OBEXError
  func retrieveFolderListing() -> OBEXError
  func sendFile(inLocalPathAndName: String!) -> OBEXError
  func copyRemoteFile(inRemoteFileName: String!, toLocalPath inLocalPathAndName: String!) -> OBEXError
  func sendData(inData: NSData!, type inType: String!, name inName: String!) -> OBEXError
  func getDefaultVCard(inLocalPathAndName: String!) -> OBEXError
  func abort() -> OBEXError
  init()
}
extension NSObject {
  class func fileTransferServicesConnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesConnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesDisconnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesDisconnectionComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesAbortComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesAbortComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesRemoveItemComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, removedItem inItemName: String!)
  func fileTransferServicesRemoveItemComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, removedItem inItemName: String!)
  class func fileTransferServicesCreateFolderComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, folder inFolderName: String!)
  func fileTransferServicesCreateFolderComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, folder inFolderName: String!)
  class func fileTransferServicesPathChangeComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, finalPath inPath: String!)
  func fileTransferServicesPathChangeComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, finalPath inPath: String!)
  class func fileTransferServicesRetrieveFolderListingComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, listing inListing: [AnyObject]!)
  func fileTransferServicesRetrieveFolderListingComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError, listing inListing: [AnyObject]!)
  class func fileTransferServicesFilePreparationComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesFilePreparationComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesSendFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [NSObject : AnyObject]!)
  func fileTransferServicesSendFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [NSObject : AnyObject]!)
  class func fileTransferServicesSendFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesSendFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  class func fileTransferServicesCopyRemoteFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [NSObject : AnyObject]!)
  func fileTransferServicesCopyRemoteFileProgress(inServices: OBEXFileTransferServices!, transferProgress inProgressDescription: [NSObject : AnyObject]!)
  class func fileTransferServicesCopyRemoteFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
  func fileTransferServicesCopyRemoteFileComplete(inServices: OBEXFileTransferServices!, error inError: OBEXError)
}
var kFTSProgressBytesTransferredKey: Unmanaged<CFString>!
var kFTSProgressBytesTotalKey: Unmanaged<CFString>!
var kFTSProgressPercentageKey: Unmanaged<CFString>!
var kFTSProgressPrecentageKey: Unmanaged<CFString>!
var kFTSProgressEstimatedTimeKey: Unmanaged<CFString>!
var kFTSProgressTimeElapsedKey: Unmanaged<CFString>!
var kFTSProgressTransferRateKey: Unmanaged<CFString>!
var kFTSListingNameKey: Unmanaged<CFString>!
var kFTSListingTypeKey: Unmanaged<CFString>!
var kFTSListingSizeKey: Unmanaged<CFString>!
struct FTSFileType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFTSFileTypeFolder: FTSFileType { get }
var kFTSFileTypeFile: FTSFileType { get }
typealias PrivOBEXSessionDataRef = COpaquePointer
class OBEXSession : NSObject {
  func OBEXConnect(inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXDisconnect(inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXPut(isFinalChunk: Bool, headersData inHeadersData: UnsafeMutablePointer<Void>, headersDataLength inHeadersDataLength: Int, bodyData inBodyData: UnsafeMutablePointer<Void>, bodyDataLength inBodyDataLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXGet(isFinalChunk: Bool, headers inHeaders: UnsafeMutablePointer<Void>, headersLength inHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXAbort(inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXSetPath(inFlags: OBEXFlags, constants inConstants: OBEXConstants, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXConnectResponse(inResponseOpCode: OBEXOpCode, flags inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXDisconnectResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXPutResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXGetResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXAbortResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXSetPathResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func getAvailableCommandPayloadLength(inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getAvailableCommandResponsePayloadLength(inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getMaxPacketLength() -> OBEXMaxPacketLength
  func hasOpenOBEXConnection() -> Bool
  func setEventCallback(inEventCallback: OBEXSessionEventCallback!)
  func setEventRefCon(inRefCon: UnsafeMutablePointer<Void>)
  func setEventSelector(inEventSelector: Selector, target inEventSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)
  func serverHandleIncomingData(event: UnsafeMutablePointer<OBEXTransportEvent>)
  func clientHandleIncomingData(event: UnsafeMutablePointer<OBEXTransportEvent>)
  func sendDataToTransport(inDataToSend: UnsafeMutablePointer<Void>, dataLength inDataLength: Int) -> OBEXError
  func openTransportConnection(inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func hasOpenTransportConnection() -> Bool
  func closeTransportConnection() -> OBEXError
  init()
}
typealias OBEXTransportEventType = UInt32
struct OBEXTransportEventTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXTransportEventTypeDataReceived: OBEXTransportEventTypes { get }
var kOBEXTransportEventTypeStatus: OBEXTransportEventTypes { get }
struct OBEXTransportEvent {
  var type: OBEXTransportEventType
  var status: OBEXError
  var dataPtr: UnsafeMutablePointer<Void>
  var dataLength: Int
  init()
  init(type: OBEXTransportEventType, status: OBEXError, dataPtr: UnsafeMutablePointer<Void>, dataLength: Int)
}
