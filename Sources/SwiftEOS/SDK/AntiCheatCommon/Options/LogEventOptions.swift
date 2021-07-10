import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogEventOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGEVENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Optional client who this event is primarily associated with. If not applicable, use 0.  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** Unique event identifier previously configured in RegisterEvent  */
    public let EventId: Int

    /**
     * Set of parameter types previously configured in RegisterEvent, and their values 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatCommon_LogEventOptions/ParamsCount``:
     * Number of parameters described in Params 
     */
    public let Params: [SwiftEOS_AntiCheatCommon_LogEventParamPair]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogEventOptions {
        try _tagEOS_AntiCheatCommon_LogEventOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            EventId: try safeNumericCast(exactly: EventId),
            ParamsCount: try safeNumericCast(exactly: Params?.count ?? .zero),
            Params: try pointerManager.managedPointerToBuffer(copyingArray: Params?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogEventOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.EventId = try safeNumericCast(exactly: sdkObject.EventId)
        self.Params = try sdkObject.Params.array(safeNumericCast(exactly: sdkObject.ParamsCount)).compactMap { 
            try SwiftEOS_AntiCheatCommon_LogEventParamPair.init(sdkObject: $0.pointee) }
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ANTICHEATCOMMON_LOGEVENT_API_LATEST. 
     * - Parameter ClientHandle:  Optional client who this event is primarily associated with. If not applicable, use 0. 
     * - Parameter EventId:  Unique event identifier previously configured in RegisterEvent 
     * - Parameter Params:  Set of parameter types previously configured in RegisterEvent, and their values 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatCommon_LogEventOptions/ParamsCount``:
     * Number of parameters described in Params 
     */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGEVENT_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        EventId: Int,
        Params: [SwiftEOS_AntiCheatCommon_LogEventParamPair]?
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.EventId = EventId
        self.Params = Params
    }
}
