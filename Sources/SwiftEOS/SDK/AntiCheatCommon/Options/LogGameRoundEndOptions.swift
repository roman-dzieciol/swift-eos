import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogGameRoundEndOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGGAMEROUNDEND_API_LATEST.  */
    public let ApiVersion: Int32

    /** Optional identifier for the winning team  */
    public let WinningTeamId: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogGameRoundEndOptions {
        try _tagEOS_AntiCheatCommon_LogGameRoundEndOptions(
            ApiVersion: ApiVersion,
            WinningTeamId: try safeNumericCast(exactly: WinningTeamId)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogGameRoundEndOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.WinningTeamId = try safeNumericCast(exactly: sdkObject.WinningTeamId)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ANTICHEATCOMMON_LOGGAMEROUNDEND_API_LATEST. 
     * - Parameter WinningTeamId:  Optional identifier for the winning team 
     */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGGAMEROUNDEND_API_LATEST,
        WinningTeamId: Int
    ) {
        self.ApiVersion = ApiVersion
        self.WinningTeamId = WinningTeamId
    }
}
