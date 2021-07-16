import Foundation
import EOSSDK

public struct SwiftEOS_AntiCheatCommon_LogPlayerDespawnOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATCOMMON_LOGPLAYERDESPAWN_API_LATEST`. */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer */
    public let DespawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerDespawnOptions {
        _tagEOS_AntiCheatCommon_LogPlayerDespawnOptions(
            ApiVersion: ApiVersion,
            DespawnedPlayerHandle: DespawnedPlayerHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerDespawnOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DespawnedPlayerHandle = sdkObject.DespawnedPlayerHandle
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATCOMMON_LOGPLAYERDESPAWN_API_LATEST`.
    - Parameter DespawnedPlayerHandle: Locally unique value used in RegisterClient/RegisterPeer
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERDESPAWN_API_LATEST,
        DespawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle?
    ) {
        self.ApiVersion = ApiVersion
        self.DespawnedPlayerHandle = DespawnedPlayerHandle
    }
}
