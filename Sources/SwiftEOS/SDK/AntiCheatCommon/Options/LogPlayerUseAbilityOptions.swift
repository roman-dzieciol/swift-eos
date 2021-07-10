import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogPlayerUseAbilityOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATCOMMON_LOGPLAYERUSEABILITY_API_LATEST`. */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer */
    public let PlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Game defined unique identifier for the ability being used */
    public let AbilityId: Int

    /** Duration of the ability effect in milliseconds. If not applicable, use 0. */
    public let AbilityDurationMs: Int

    /** Cooldown until the ability can be used again in milliseconds. If not applicable, use 0. */
    public let AbilityCooldownMs: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerUseAbilityOptions {
        try _tagEOS_AntiCheatCommon_LogPlayerUseAbilityOptions(
            ApiVersion: ApiVersion,
            PlayerHandle: PlayerHandle,
            AbilityId: try safeNumericCast(exactly: AbilityId),
            AbilityDurationMs: try safeNumericCast(exactly: AbilityDurationMs),
            AbilityCooldownMs: try safeNumericCast(exactly: AbilityCooldownMs)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerUseAbilityOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PlayerHandle = sdkObject.PlayerHandle
        self.AbilityId = try safeNumericCast(exactly: sdkObject.AbilityId)
        self.AbilityDurationMs = try safeNumericCast(exactly: sdkObject.AbilityDurationMs)
        self.AbilityCooldownMs = try safeNumericCast(exactly: sdkObject.AbilityCooldownMs)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATCOMMON_LOGPLAYERUSEABILITY_API_LATEST`.
    - Parameter PlayerHandle: Locally unique value used in RegisterClient/RegisterPeer
    - Parameter AbilityId: Game defined unique identifier for the ability being used
    - Parameter AbilityDurationMs: Duration of the ability effect in milliseconds. If not applicable, use 0.
    - Parameter AbilityCooldownMs: Cooldown until the ability can be used again in milliseconds. If not applicable, use 0.
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERUSEABILITY_API_LATEST,
        PlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        AbilityId: Int,
        AbilityDurationMs: Int,
        AbilityCooldownMs: Int
    ) {
        self.ApiVersion = ApiVersion
        self.PlayerHandle = PlayerHandle
        self.AbilityId = AbilityId
        self.AbilityDurationMs = AbilityDurationMs
        self.AbilityCooldownMs = AbilityCooldownMs
    }
}
