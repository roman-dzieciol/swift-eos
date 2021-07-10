import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_RegisterEventOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_REGISTEREVENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Unique event identifier. Must be >= EOS_ANTICHEATCOMMON_REGISTEREVENT_CUSTOMEVENTBASE.  */
    public let EventId: Int

    /** Name of the custom event. Allowed characters are 0-9, A-Z, a-z, '_', '-', '.'  */
    public let EventName: String?

    /** Type of the custom event  */
    public let EventType: EOS_EAntiCheatCommonEventType

    /**
     * Pointer to an array of EOS_AntiCheatCommon_RegisterEventParamDef with ParamDefsCount elements 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatCommon_RegisterEventOptions/ParamDefsCount``:
     * Number of parameters described in ParamDefs. Must be 
     * <
     * = EOS_ANTICHEATCOMMON_REGISTEREVENT_MAX_PARAMDEFSCOUNT. 
     */
    public let ParamDefs: [SwiftEOS_AntiCheatCommon_RegisterEventParamDef]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_RegisterEventOptions {
        try _tagEOS_AntiCheatCommon_RegisterEventOptions(
            ApiVersion: ApiVersion,
            EventId: try safeNumericCast(exactly: EventId),
            EventName: pointerManager.managedPointerToBuffer(copyingArray: EventName?.utf8CString),
            EventType: EventType,
            ParamDefsCount: try safeNumericCast(exactly: ParamDefs?.count ?? .zero),
            ParamDefs: try pointerManager.managedPointerToBuffer(copyingArray: ParamDefs?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_RegisterEventOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.EventId = try safeNumericCast(exactly: sdkObject.EventId)
        self.EventName = String(cString: sdkObject.EventName)
        self.EventType = sdkObject.EventType
        self.ParamDefs = try sdkObject.ParamDefs.array(safeNumericCast(exactly: sdkObject.ParamDefsCount)).compactMap { 
            try SwiftEOS_AntiCheatCommon_RegisterEventParamDef.init(sdkObject: $0.pointee) }
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ANTICHEATCOMMON_REGISTEREVENT_API_LATEST. 
     * - Parameter EventId:  Unique event identifier. Must be >= EOS_ANTICHEATCOMMON_REGISTEREVENT_CUSTOMEVENTBASE. 
     * - Parameter EventName:  Name of the custom event. Allowed characters are 0-9, A-Z, a-z, '_', '-', '.' 
     * - Parameter EventType:  Type of the custom event 
     * - Parameter ParamDefs:  Pointer to an array of EOS_AntiCheatCommon_RegisterEventParamDef with ParamDefsCount elements 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatCommon_RegisterEventOptions/ParamDefsCount``:
     * Number of parameters described in ParamDefs. Must be 
     * <
     * = EOS_ANTICHEATCOMMON_REGISTEREVENT_MAX_PARAMDEFSCOUNT. 
     */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_REGISTEREVENT_API_LATEST,
        EventId: Int,
        EventName: String?,
        EventType: EOS_EAntiCheatCommonEventType,
        ParamDefs: [SwiftEOS_AntiCheatCommon_RegisterEventParamDef]?
    ) {
        self.ApiVersion = ApiVersion
        self.EventId = EventId
        self.EventName = EventName
        self.EventType = EventType
        self.ParamDefs = ParamDefs
    }
}
