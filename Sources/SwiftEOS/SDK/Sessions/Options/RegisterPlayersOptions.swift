import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_RegisterPlayers function. */
public struct SwiftEOS_Sessions_RegisterPlayersOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_REGISTERPLAYERS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session for which to register players  */
    public let SessionName: String?

    /** Array of players to register with the session  */
    public let PlayersToRegister: [EOS_ProductUserId]?

    /** Number of players in the array  */
    public let PlayersToRegisterCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_RegisterPlayersOptions {
        try _tagEOS_Sessions_RegisterPlayersOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            PlayersToRegister: pointerManager.managedMutablePointerToBuffer(copyingArray: PlayersToRegister),
            PlayersToRegisterCount: try safeNumericCast(exactly: PlayersToRegisterCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_RegisterPlayersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.PlayersToRegister = try trivialOptionalArrayFromTrivialOptionalPointer(
            start: sdkObject.PlayersToRegister,
            count: sdkObject.PlayersToRegisterCount
        )
        self.PlayersToRegisterCount = try safeNumericCast(exactly: sdkObject.PlayersToRegisterCount)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONS_REGISTERPLAYERS_API_LATEST. 
     * - Parameter SessionName:  Name of the session for which to register players 
     * - Parameter PlayersToRegister:  Array of players to register with the session 
     * - Parameter PlayersToRegisterCount:  Number of players in the array 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_REGISTERPLAYERS_API_LATEST,
        SessionName: String?,
        PlayersToRegister: [EOS_ProductUserId]?,
        PlayersToRegisterCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.PlayersToRegister = PlayersToRegister
        self.PlayersToRegisterCount = PlayersToRegisterCount
    }
}
