import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogPlayerTakeDamageOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERTAKEDAMAGE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let VictimPlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Victim player's current world position as a 3D vector  */
    public let VictimPlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?

    /** Victim player's view rotation as a quaternion  */
    public let VictimPlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let AttackerPlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Attacker player's current world position as a 3D vector  */
    public let AttackerPlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?

    /** Attacker player's view rotation as a quaternion  */
    public let AttackerPlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?

    /**
     * True if the damage was applied instantly at the time of attack from the game
     * simulation's perspective, otherwise false (simulated ballistics, arrow, etc).
     */
    public let bIsHitscanAttack: Bool

    /**
     * True if there is a visible line of sight between the attacker and the victim at the time
     * that damage is being applied, false if there is an obstacle like a wall or terrain in
     * the way. For some situations like melee or hitscan weapons this is trivially
     * true, for others like projectiles with simulated physics it may not be e.g. a player
     * could fire a slow moving projectile and then move behind cover before it strikes.
     */
    public let bHasLineOfSight: Bool

    /** True if this was a critical hit that causes extra damage (e.g. headshot)  */
    public let bIsCriticalHit: Bool

    /** Identifier of the victim bone hit in this damage event  */
    public let HitBoneId: Int

    /** Number of health points that the victim lost due to this damage event  */
    public let DamageTaken: Float

    /** Number of health points that the victim has remaining after this damage event  */
    public let HealthRemaining: Float

    /** Source of the damage event  */
    public let DamageSource: EOS_EAntiCheatCommonPlayerTakeDamageSource

    /** Type of the damage being applied  */
    public let DamageType: EOS_EAntiCheatCommonPlayerTakeDamageType

    /** Result of the damage for the victim, if any  */
    public let DamageResult: EOS_EAntiCheatCommonPlayerTakeDamageResult

    /** PlayerUseWeaponData associated with this damage event if available, otherwise NULL  */
    public let PlayerUseWeaponData: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData?

    /** Time in milliseconds since the PlayerUseWeaponData event occurred if available, otherwise 0  */
    public let TimeSincePlayerUseWeaponMs: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerTakeDamageOptions {
        try _tagEOS_AntiCheatCommon_LogPlayerTakeDamageOptions(
            ApiVersion: ApiVersion,
            VictimPlayerHandle: VictimPlayerHandle,
            VictimPlayerPosition: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: VictimPlayerPosition?.buildSdkObject(pointerManager: pointerManager)),
            VictimPlayerViewRotation: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: VictimPlayerViewRotation?.buildSdkObject(pointerManager: pointerManager)),
            AttackerPlayerHandle: AttackerPlayerHandle,
            AttackerPlayerPosition: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: AttackerPlayerPosition?.buildSdkObject(pointerManager: pointerManager)),
            AttackerPlayerViewRotation: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: AttackerPlayerViewRotation?.buildSdkObject(pointerManager: pointerManager)),
            bIsHitscanAttack: eosBoolFromSwiftBool(bIsHitscanAttack),
            bHasLineOfSight: eosBoolFromSwiftBool(bHasLineOfSight),
            bIsCriticalHit: eosBoolFromSwiftBool(bIsCriticalHit),
            HitBoneId: try safeNumericCast(exactly: HitBoneId),
            DamageTaken: DamageTaken,
            HealthRemaining: HealthRemaining,
            DamageSource: DamageSource,
            DamageType: DamageType,
            DamageResult: DamageResult,
            PlayerUseWeaponData: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerUseWeaponData?.buildSdkObject(pointerManager: pointerManager)),
            TimeSincePlayerUseWeaponMs: try safeNumericCast(exactly: TimeSincePlayerUseWeaponMs)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerTakeDamageOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.VictimPlayerHandle = sdkObject.VictimPlayerHandle
        self.VictimPlayerPosition = try SwiftEOS_AntiCheatCommon_Vec3f.init(sdkObject: sdkObject.VictimPlayerPosition.pointee)
        self.VictimPlayerViewRotation = try SwiftEOS_AntiCheatCommon_Quat.init(sdkObject: sdkObject.VictimPlayerViewRotation.pointee)
        self.AttackerPlayerHandle = sdkObject.AttackerPlayerHandle
        self.AttackerPlayerPosition = try SwiftEOS_AntiCheatCommon_Vec3f.init(sdkObject: sdkObject.AttackerPlayerPosition.pointee)
        self.AttackerPlayerViewRotation = try SwiftEOS_AntiCheatCommon_Quat.init(sdkObject: sdkObject.AttackerPlayerViewRotation.pointee)
        self.bIsHitscanAttack = try swiftBoolFromEosBool(sdkObject.bIsHitscanAttack)
        self.bHasLineOfSight = try swiftBoolFromEosBool(sdkObject.bHasLineOfSight)
        self.bIsCriticalHit = try swiftBoolFromEosBool(sdkObject.bIsCriticalHit)
        self.HitBoneId = try safeNumericCast(exactly: sdkObject.HitBoneId)
        self.DamageTaken = sdkObject.DamageTaken
        self.HealthRemaining = sdkObject.HealthRemaining
        self.DamageSource = sdkObject.DamageSource
        self.DamageType = sdkObject.DamageType
        self.DamageResult = sdkObject.DamageResult
        self.PlayerUseWeaponData = try SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData.init(sdkObject: sdkObject.PlayerUseWeaponData.pointee)
        self.TimeSincePlayerUseWeaponMs = try safeNumericCast(exactly: sdkObject.TimeSincePlayerUseWeaponMs)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERTAKEDAMAGE_API_LATEST. 
     * - Parameter VictimPlayerHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * - Parameter VictimPlayerPosition:  Victim player's current world position as a 3D vector 
     * - Parameter VictimPlayerViewRotation:  Victim player's view rotation as a quaternion 
     * - Parameter AttackerPlayerHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * - Parameter AttackerPlayerPosition:  Attacker player's current world position as a 3D vector 
     * - Parameter AttackerPlayerViewRotation:  Attacker player's view rotation as a quaternion 
     * - Parameter bIsHitscanAttack:  True if the damage was applied instantly at the time of attack from the game
     * simulation's perspective, otherwise false (simulated ballistics, arrow, etc).
     * - Parameter bHasLineOfSight:  True if there is a visible line of sight between the attacker and the victim at the time
     * that damage is being applied, false if there is an obstacle like a wall or terrain in
     * the way. For some situations like melee or hitscan weapons this is trivially
     * true, for others like projectiles with simulated physics it may not be e.g. a player
     * could fire a slow moving projectile and then move behind cover before it strikes.
     * - Parameter bIsCriticalHit:  True if this was a critical hit that causes extra damage (e.g. headshot) 
     * - Parameter HitBoneId:  Identifier of the victim bone hit in this damage event 
     * - Parameter DamageTaken:  Number of health points that the victim lost due to this damage event 
     * - Parameter HealthRemaining:  Number of health points that the victim has remaining after this damage event 
     * - Parameter DamageSource:  Source of the damage event 
     * - Parameter DamageType:  Type of the damage being applied 
     * - Parameter DamageResult:  Result of the damage for the victim, if any 
     * - Parameter PlayerUseWeaponData:  PlayerUseWeaponData associated with this damage event if available, otherwise NULL 
     * - Parameter TimeSincePlayerUseWeaponMs:  Time in milliseconds since the PlayerUseWeaponData event occurred if available, otherwise 0 
     */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERTAKEDAMAGE_API_LATEST,
        VictimPlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        VictimPlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?,
        VictimPlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?,
        AttackerPlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        AttackerPlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?,
        AttackerPlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?,
        bIsHitscanAttack: Bool,
        bHasLineOfSight: Bool,
        bIsCriticalHit: Bool,
        HitBoneId: Int,
        DamageTaken: Float,
        HealthRemaining: Float,
        DamageSource: EOS_EAntiCheatCommonPlayerTakeDamageSource,
        DamageType: EOS_EAntiCheatCommonPlayerTakeDamageType,
        DamageResult: EOS_EAntiCheatCommonPlayerTakeDamageResult,
        PlayerUseWeaponData: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData?,
        TimeSincePlayerUseWeaponMs: Int
    ) {
        self.ApiVersion = ApiVersion
        self.VictimPlayerHandle = VictimPlayerHandle
        self.VictimPlayerPosition = VictimPlayerPosition
        self.VictimPlayerViewRotation = VictimPlayerViewRotation
        self.AttackerPlayerHandle = AttackerPlayerHandle
        self.AttackerPlayerPosition = AttackerPlayerPosition
        self.AttackerPlayerViewRotation = AttackerPlayerViewRotation
        self.bIsHitscanAttack = bIsHitscanAttack
        self.bHasLineOfSight = bHasLineOfSight
        self.bIsCriticalHit = bIsCriticalHit
        self.HitBoneId = HitBoneId
        self.DamageTaken = DamageTaken
        self.HealthRemaining = HealthRemaining
        self.DamageSource = DamageSource
        self.DamageType = DamageType
        self.DamageResult = DamageResult
        self.PlayerUseWeaponData = PlayerUseWeaponData
        self.TimeSincePlayerUseWeaponMs = TimeSincePlayerUseWeaponMs
    }
}
