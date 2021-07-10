import Foundation
import EOSSDK

/**
 * Internal details about a session, found on both active sessions and within search results 
 * 
 * - see: release func: EOS_SessionDetails_Info_Release
 */
public struct SwiftEOS_SessionDetails_Info: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_INFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** Session ID assigned by the backend service  */
    public let SessionId: String?

    /** IP address of this session as visible by the backend service  */
    public let HostAddress: String?

    /** Number of remaining open spaces on the session (NumPublicConnections - RegisteredPlayers  */
    public let NumOpenPublicConnections: Int

    /** Reference to the additional settings associated with this session  */
    public let Settings: SwiftEOS_SessionDetails_Settings?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_Info?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionId = String(cString: sdkObject.SessionId)
        self.HostAddress = String(cString: sdkObject.HostAddress)
        self.NumOpenPublicConnections = try safeNumericCast(exactly: sdkObject.NumOpenPublicConnections)
        self.Settings = try SwiftEOS_SessionDetails_Settings.init(sdkObject: sdkObject.Settings.pointee)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_Info {
        try _tagEOS_SessionDetails_Info(
            ApiVersion: ApiVersion,
            SessionId: pointerManager.managedPointerToBuffer(copyingArray: SessionId?.utf8CString),
            HostAddress: pointerManager.managedPointerToBuffer(copyingArray: HostAddress?.utf8CString),
            NumOpenPublicConnections: try safeNumericCast(exactly: NumOpenPublicConnections),
            Settings: try pointerManager.managedPointer(copyingValueOrNilPointer: Settings?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONDETAILS_INFO_API_LATEST. 
     * - Parameter SessionId:  Session ID assigned by the backend service 
     * - Parameter HostAddress:  IP address of this session as visible by the backend service 
     * - Parameter NumOpenPublicConnections:  Number of remaining open spaces on the session (NumPublicConnections - RegisteredPlayers 
     * - Parameter Settings:  Reference to the additional settings associated with this session 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_INFO_API_LATEST,
        SessionId: String?,
        HostAddress: String?,
        NumOpenPublicConnections: Int,
        Settings: SwiftEOS_SessionDetails_Settings?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionId = SessionId
        self.HostAddress = HostAddress
        self.NumOpenPublicConnections = NumOpenPublicConnections
        self.Settings = Settings
    }
}
