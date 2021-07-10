import Foundation
import EOSSDK

/** Input parameters for the `EOS_SessionModification_SetMaxPlayers` function. */
public struct SwiftEOS_SessionModification_SetMaxPlayersOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST`. */
    public let ApiVersion: Int32

    /** Max number of players to allow in the session */
    public let MaxPlayers: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetMaxPlayersOptions {
        try _tagEOS_SessionModification_SetMaxPlayersOptions(
            ApiVersion: ApiVersion,
            MaxPlayers: try safeNumericCast(exactly: MaxPlayers)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetMaxPlayersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxPlayers = try safeNumericCast(exactly: sdkObject.MaxPlayers)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST`.
    - Parameter MaxPlayers: Max number of players to allow in the session
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST,
        MaxPlayers: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxPlayers = MaxPlayers
    }
}
