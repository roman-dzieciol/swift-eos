import Foundation
import EOSSDK

/** Input parameters for the EOS_Leaderboards_GetLeaderboardDefinitionCount function. */
public struct SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LEADERBOARDS_GETLEADERBOARDDEFINITIONCOUNT_API_LATEST. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions {
        _tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_GetLeaderboardDefinitionCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LEADERBOARDS_GETLEADERBOARDDEFINITIONCOUNT_API_LATEST.
    */
    public init(
        ApiVersion: Int32 = EOS_LEADERBOARDS_GETLEADERBOARDDEFINITIONCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
