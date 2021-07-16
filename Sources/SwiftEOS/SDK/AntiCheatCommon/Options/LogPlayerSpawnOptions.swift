import Foundation
import EOSSDK

public struct SwiftEOS_AntiCheatCommon_LogPlayerSpawnOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATCOMMON_LOGPLAYERSPAWN_API_LATEST`. */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer */
    public let SpawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle?

    /** Optional identifier for the player's team. If none, use 0. */
    public let TeamId: Int

    /** Optional identifier for the player's character. If none, use 0. */
    public let CharacterId: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerSpawnOptions {
        try _tagEOS_AntiCheatCommon_LogPlayerSpawnOptions(
            ApiVersion: ApiVersion,
            SpawnedPlayerHandle: SpawnedPlayerHandle,
            TeamId: try safeNumericCast(exactly: TeamId),
            CharacterId: try safeNumericCast(exactly: CharacterId)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerSpawnOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SpawnedPlayerHandle = sdkObject.SpawnedPlayerHandle
        self.TeamId = try safeNumericCast(exactly: sdkObject.TeamId)
        self.CharacterId = try safeNumericCast(exactly: sdkObject.CharacterId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATCOMMON_LOGPLAYERSPAWN_API_LATEST`.
    - Parameter SpawnedPlayerHandle: Locally unique value used in RegisterClient/RegisterPeer
    - Parameter TeamId: Optional identifier for the player's team. If none, use 0.
    - Parameter CharacterId: Optional identifier for the player's character. If none, use 0.
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERSPAWN_API_LATEST,
        SpawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle?,
        TeamId: Int,
        CharacterId: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SpawnedPlayerHandle = SpawnedPlayerHandle
        self.TeamId = TeamId
        self.CharacterId = CharacterId
    }
}
