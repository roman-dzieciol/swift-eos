import Foundation
import EOSSDK

/** Input parameters for the EOS_ActiveSession_GetRegisteredPlayerByIndex function. */
public struct SwiftEOS_ActiveSession_GetRegisteredPlayerByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACTIVESESSION_GETREGISTEREDPLAYERBYINDEX_API_LATEST. */
    public let ApiVersion: Int32

    /** Index of the registered player to retrieve */
    public let PlayerIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_ActiveSession_GetRegisteredPlayerByIndexOptions {
        try _tagEOS_ActiveSession_GetRegisteredPlayerByIndexOptions(
            ApiVersion: ApiVersion,
            PlayerIndex: try safeNumericCast(exactly: PlayerIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_ActiveSession_GetRegisteredPlayerByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PlayerIndex = try safeNumericCast(exactly: sdkObject.PlayerIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ACTIVESESSION_GETREGISTEREDPLAYERBYINDEX_API_LATEST.
    - Parameter PlayerIndex: Index of the registered player to retrieve
    */
    public init(
        ApiVersion: Int32 = EOS_ACTIVESESSION_GETREGISTEREDPLAYERBYINDEX_API_LATEST,
        PlayerIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.PlayerIndex = PlayerIndex
    }
}
