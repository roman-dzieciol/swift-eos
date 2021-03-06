import Foundation
import EOSSDK


/** Input parameters for the `EOS_Sessions_UnregisterPlayers` function. */
public struct SwiftEOS_Sessions_UnregisterPlayersOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONS_UNREGISTERPLAYERS_API_LATEST`. */
    public let ApiVersion: Int32

    /** Name of the session for which to unregister players */
    public let SessionName: String?

    /**
    Array of players to unregister from the session

    - Note: ``EOS/_tagEOS_Sessions_UnregisterPlayersOptions/PlayersToUnregisterCount``:
    Number of players in the array
    */
    public let PlayersToUnregister: [EOS_ProductUserId]?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_UnregisterPlayersOptions {
        try _tagEOS_Sessions_UnregisterPlayersOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            PlayersToUnregister: pointerManager.managedMutablePointerToBuffer(copyingArray: PlayersToUnregister),
            PlayersToUnregisterCount: try safeNumericCast(exactly: PlayersToUnregister?.count ?? .zero)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_UnregisterPlayersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = stringFromOptionalCStringPointer(sdkObject.SessionName)
        self.PlayersToUnregister = try trivialOptionalArrayFromOptionalTrivialOptionalPointer(
            start: sdkObject.PlayersToUnregister,
            count: sdkObject.PlayersToUnregisterCount
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONS_UNREGISTERPLAYERS_API_LATEST`.
    - Parameter SessionName: Name of the session for which to unregister players
    - Parameter PlayersToUnregister: Array of players to unregister from the session
    - Note: ``EOS/_tagEOS_Sessions_UnregisterPlayersOptions/PlayersToUnregisterCount``:
    Number of players in the array
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_UNREGISTERPLAYERS_API_LATEST,
        SessionName: String?,
        PlayersToUnregister: [EOS_ProductUserId]?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.PlayersToUnregister = PlayersToUnregister
    }
}
