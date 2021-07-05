import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogEventOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGEVENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Optional client who this event is primarily associated with. If not applicable, use 0.  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** Unique event identifier previously configured in RegisterEvent  */
    public let EventId: Int

    /**
     * Number of parameters described in Params 
     * - array buffer: Params
     */
    public let ParamsCount: Int

    /**
     * Set of parameter types previously configured in RegisterEvent, and their values 
     * - array num: ParamsCount
     */
    public let Params: [SwiftEOS_AntiCheatCommon_LogEventParamPair]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogEventOptions {
        try _tagEOS_AntiCheatCommon_LogEventOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            EventId: try safeNumericCast(exactly: EventId),
            ParamsCount: try safeNumericCast(exactly: ParamsCount),
            Params: try pointerManager.managedPointerToBuffer(copyingArray: Params?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogEventOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.EventId = try safeNumericCast(exactly: sdkObject.EventId)
        self.ParamsCount = try safeNumericCast(exactly: sdkObject.ParamsCount)
        self.Params = try sdkObject.Params?.array(safeNumericCast(exactly: sdkObject.ParamsCount)).compactMap { 
            try SwiftEOS_AntiCheatCommon_LogEventParamPair.init(sdkObject: $0.pointee) }
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGEVENT_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        EventId: Int,
        ParamsCount: Int,
        Params: [SwiftEOS_AntiCheatCommon_LogEventParamPair]?
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.EventId = EventId
        self.ParamsCount = ParamsCount
        self.Params = Params
    }
}
public struct SwiftEOS_AntiCheatCommon_LogEventParamPair: SwiftEOSObject {

    /** Parameter type  */
    public let ParamValueType: EOS_EAntiCheatCommonEventParamType
    public let ParamValue: _tagEOS_AntiCheatCommon_LogEventParamPair.__Unnamed_union_ParamValue

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogEventParamPair?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ParamValueType = sdkObject.ParamValueType
        self.ParamValue = sdkObject.ParamValue
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogEventParamPair {
        _tagEOS_AntiCheatCommon_LogEventParamPair(
            ParamValueType: ParamValueType,
            ParamValue: ParamValue
        )
    }
}
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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGGAMEROUNDEND_API_LATEST,
        WinningTeamId: Int
    ) {
        self.ApiVersion = ApiVersion
        self.WinningTeamId = WinningTeamId
    }
}
public struct SwiftEOS_AntiCheatCommon_LogGameRoundStartOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGGAMEROUNDSTART_API_LATEST.  */
    public let ApiVersion: Int32

    /** Optional game session or match identifier useful for some backend API integrations  */
    public let SessionIdentifier: String?

    /** Optional name of the map being played  */
    public let LevelName: String?

    /** Optional name of the game mode being played  */
    public let ModeName: String?

    /** Optional length of the game round to be played, in seconds. If none, use 0.  */
    public let RoundTimeSeconds: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogGameRoundStartOptions {
        try _tagEOS_AntiCheatCommon_LogGameRoundStartOptions(
            ApiVersion: ApiVersion,
            SessionIdentifier: pointerManager.managedPointerToBuffer(copyingArray: SessionIdentifier?.utf8CString),
            LevelName: pointerManager.managedPointerToBuffer(copyingArray: LevelName?.utf8CString),
            ModeName: pointerManager.managedPointerToBuffer(copyingArray: ModeName?.utf8CString),
            RoundTimeSeconds: try safeNumericCast(exactly: RoundTimeSeconds)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogGameRoundStartOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionIdentifier = String(cString: sdkObject.SessionIdentifier)
        self.LevelName = String(cString: sdkObject.LevelName)
        self.ModeName = String(cString: sdkObject.ModeName)
        self.RoundTimeSeconds = try safeNumericCast(exactly: sdkObject.RoundTimeSeconds)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGGAMEROUNDSTART_API_LATEST,
        SessionIdentifier: String?,
        LevelName: String?,
        ModeName: String?,
        RoundTimeSeconds: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SessionIdentifier = SessionIdentifier
        self.LevelName = LevelName
        self.ModeName = ModeName
        self.RoundTimeSeconds = RoundTimeSeconds
    }
}
public struct SwiftEOS_AntiCheatCommon_LogPlayerDespawnOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERDESPAWN_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let DespawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERDESPAWN_API_LATEST,
        DespawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle
    ) {
        self.ApiVersion = ApiVersion
        self.DespawnedPlayerHandle = DespawnedPlayerHandle
    }
}
public struct SwiftEOS_AntiCheatCommon_LogPlayerReviveOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERREVIVE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let RevivedPlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let ReviverPlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerReviveOptions {
        _tagEOS_AntiCheatCommon_LogPlayerReviveOptions(
            ApiVersion: ApiVersion,
            RevivedPlayerHandle: RevivedPlayerHandle,
            ReviverPlayerHandle: ReviverPlayerHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerReviveOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RevivedPlayerHandle = sdkObject.RevivedPlayerHandle
        self.ReviverPlayerHandle = sdkObject.ReviverPlayerHandle
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERREVIVE_API_LATEST,
        RevivedPlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        ReviverPlayerHandle: EOS_AntiCheatCommon_ClientHandle
    ) {
        self.ApiVersion = ApiVersion
        self.RevivedPlayerHandle = RevivedPlayerHandle
        self.ReviverPlayerHandle = ReviverPlayerHandle
    }
}
public struct SwiftEOS_AntiCheatCommon_LogPlayerSpawnOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERSPAWN_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let SpawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Optional identifier for the player's team. If none, use 0.  */
    public let TeamId: Int

    /** Optional identifier for the player's character. If none, use 0.  */
    public let CharacterId: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERSPAWN_API_LATEST,
        SpawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        TeamId: Int,
        CharacterId: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SpawnedPlayerHandle = SpawnedPlayerHandle
        self.TeamId = TeamId
        self.CharacterId = CharacterId
    }
}
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
        self.VictimPlayerPosition = try SwiftEOS_AntiCheatCommon_Vec3f.init(sdkObject: sdkObject.VictimPlayerPosition?.pointee)
        self.VictimPlayerViewRotation = try SwiftEOS_AntiCheatCommon_Quat.init(sdkObject: sdkObject.VictimPlayerViewRotation?.pointee)
        self.AttackerPlayerHandle = sdkObject.AttackerPlayerHandle
        self.AttackerPlayerPosition = try SwiftEOS_AntiCheatCommon_Vec3f.init(sdkObject: sdkObject.AttackerPlayerPosition?.pointee)
        self.AttackerPlayerViewRotation = try SwiftEOS_AntiCheatCommon_Quat.init(sdkObject: sdkObject.AttackerPlayerViewRotation?.pointee)
        self.bIsHitscanAttack = try swiftBoolFromEosBool(sdkObject.bIsHitscanAttack)
        self.bHasLineOfSight = try swiftBoolFromEosBool(sdkObject.bHasLineOfSight)
        self.bIsCriticalHit = try swiftBoolFromEosBool(sdkObject.bIsCriticalHit)
        self.HitBoneId = try safeNumericCast(exactly: sdkObject.HitBoneId)
        self.DamageTaken = sdkObject.DamageTaken
        self.HealthRemaining = sdkObject.HealthRemaining
        self.DamageSource = sdkObject.DamageSource
        self.DamageType = sdkObject.DamageType
        self.DamageResult = sdkObject.DamageResult
        self.PlayerUseWeaponData = try SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData.init(sdkObject: sdkObject.PlayerUseWeaponData?.pointee)
        self.TimeSincePlayerUseWeaponMs = try safeNumericCast(exactly: sdkObject.TimeSincePlayerUseWeaponMs)
    }

    /** Memberwise initializer */
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
public struct SwiftEOS_AntiCheatCommon_LogPlayerTickOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERTICK_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let PlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Player's current world position as a 3D vector  */
    public let PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?

    /** Player's view rotation as a quaternion  */
    public let PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?

    /** True if the player's view is zoomed (e.g. using a sniper rifle), otherwise false  */
    public let bIsPlayerViewZoomed: Bool

    /** Player's current health value  */
    public let PlayerHealth: Float

    /** Any movement state applicable  */
    public let PlayerMovementState: EOS_EAntiCheatCommonPlayerMovementState

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerTickOptions {
        try _tagEOS_AntiCheatCommon_LogPlayerTickOptions(
            ApiVersion: ApiVersion,
            PlayerHandle: PlayerHandle,
            PlayerPosition: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerPosition?.buildSdkObject(pointerManager: pointerManager)),
            PlayerViewRotation: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerViewRotation?.buildSdkObject(pointerManager: pointerManager)),
            bIsPlayerViewZoomed: eosBoolFromSwiftBool(bIsPlayerViewZoomed),
            PlayerHealth: PlayerHealth,
            PlayerMovementState: PlayerMovementState
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerTickOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PlayerHandle = sdkObject.PlayerHandle
        self.PlayerPosition = try SwiftEOS_AntiCheatCommon_Vec3f.init(sdkObject: sdkObject.PlayerPosition?.pointee)
        self.PlayerViewRotation = try SwiftEOS_AntiCheatCommon_Quat.init(sdkObject: sdkObject.PlayerViewRotation?.pointee)
        self.bIsPlayerViewZoomed = try swiftBoolFromEosBool(sdkObject.bIsPlayerViewZoomed)
        self.PlayerHealth = sdkObject.PlayerHealth
        self.PlayerMovementState = sdkObject.PlayerMovementState
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERTICK_API_LATEST,
        PlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?,
        PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?,
        bIsPlayerViewZoomed: Bool,
        PlayerHealth: Float,
        PlayerMovementState: EOS_EAntiCheatCommonPlayerMovementState
    ) {
        self.ApiVersion = ApiVersion
        self.PlayerHandle = PlayerHandle
        self.PlayerPosition = PlayerPosition
        self.PlayerViewRotation = PlayerViewRotation
        self.bIsPlayerViewZoomed = bIsPlayerViewZoomed
        self.PlayerHealth = PlayerHealth
        self.PlayerMovementState = PlayerMovementState
    }
}
public struct SwiftEOS_AntiCheatCommon_LogPlayerUseAbilityOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERUSEABILITY_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let PlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Game defined unique identifier for the ability being used  */
    public let AbilityId: Int

    /** Duration of the ability effect in milliseconds. If not applicable, use 0.  */
    public let AbilityDurationMs: Int

    /** Cooldown until the ability can be used again in milliseconds. If not applicable, use 0.  */
    public let AbilityCooldownMs: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
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
public struct SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData: SwiftEOSObject {

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let PlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Player's current world position as a 3D vector  */
    public let PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?

    /** Player's view rotation as a quaternion  */
    public let PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?

    /** True if the player's view is zoomed (e.g. using a sniper rifle), otherwise false  */
    public let bIsPlayerViewZoomed: Bool

    /** Set to true if the player is using a melee attack, otherwise false  */
    public let bIsMeleeAttack: Bool

    /** Name of the weapon used. Will be truncated to EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_WEAPONNAME_MAX_LENGTH bytes if longer.  */
    public let WeaponName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerUseWeaponData?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.PlayerHandle = sdkObject.PlayerHandle
        self.PlayerPosition = try SwiftEOS_AntiCheatCommon_Vec3f.init(sdkObject: sdkObject.PlayerPosition?.pointee)
        self.PlayerViewRotation = try SwiftEOS_AntiCheatCommon_Quat.init(sdkObject: sdkObject.PlayerViewRotation?.pointee)
        self.bIsPlayerViewZoomed = try swiftBoolFromEosBool(sdkObject.bIsPlayerViewZoomed)
        self.bIsMeleeAttack = try swiftBoolFromEosBool(sdkObject.bIsMeleeAttack)
        self.WeaponName = String(cString: sdkObject.WeaponName)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerUseWeaponData {
        try _tagEOS_AntiCheatCommon_LogPlayerUseWeaponData(
            PlayerHandle: PlayerHandle,
            PlayerPosition: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerPosition?.buildSdkObject(pointerManager: pointerManager)),
            PlayerViewRotation: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerViewRotation?.buildSdkObject(pointerManager: pointerManager)),
            bIsPlayerViewZoomed: eosBoolFromSwiftBool(bIsPlayerViewZoomed),
            bIsMeleeAttack: eosBoolFromSwiftBool(bIsMeleeAttack),
            WeaponName: pointerManager.managedPointerToBuffer(copyingArray: WeaponName?.utf8CString)
        )
    }

    /** Memberwise initializer */
    public init(
        PlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?,
        PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?,
        bIsPlayerViewZoomed: Bool,
        bIsMeleeAttack: Bool,
        WeaponName: String?
    ) {
        self.PlayerHandle = PlayerHandle
        self.PlayerPosition = PlayerPosition
        self.PlayerViewRotation = PlayerViewRotation
        self.bIsPlayerViewZoomed = bIsPlayerViewZoomed
        self.bIsMeleeAttack = bIsMeleeAttack
        self.WeaponName = WeaponName
    }
}
public struct SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_API_LATEST.  */
    public let ApiVersion: Int32

    /** Struct containing detailed information about a weapon use event  */
    public let UseWeaponData: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerUseWeaponOptions {
        try _tagEOS_AntiCheatCommon_LogPlayerUseWeaponOptions(
            ApiVersion: ApiVersion,
            UseWeaponData: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: UseWeaponData?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerUseWeaponOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UseWeaponData = try SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData.init(sdkObject: sdkObject.UseWeaponData?.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_API_LATEST,
        UseWeaponData: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData?
    ) {
        self.ApiVersion = ApiVersion
        self.UseWeaponData = UseWeaponData
    }
}

/** Structure containing details about a required client/peer action  */
public struct SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo {

    /** The identifier of the client/peer that this action applies to. See the RegisterClient and RegisterPeer functions.  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** The action that must be applied to the specified client/peer  */
    public let ClientAction: EOS_EAntiCheatCommonClientAction

    /** Code indicating the reason for the action  */
    public let ActionReasonCode: EOS_EAntiCheatCommonClientActionReason

    /** String containing details about the action reason  */
    public let ActionReasonDetailsString: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ClientHandle = sdkObject.ClientHandle
        self.ClientAction = sdkObject.ClientAction
        self.ActionReasonCode = sdkObject.ActionReasonCode
        self.ActionReasonDetailsString = String(cString: sdkObject.ActionReasonDetailsString)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Structure containing details about a client/peer authentication status change  */
public struct SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo {

    /** The identifier of the client/peer that this status change applies to. See the RegisterClient and RegisterPeer functions.  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** The client/peer's new authentication status  */
    public let ClientAuthStatus: EOS_EAntiCheatCommonClientAuthStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ClientHandle = sdkObject.ClientHandle
        self.ClientAuthStatus = sdkObject.ClientAuthStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Structure containing details about a new message that must be dispatched to a connected client/peer. */
public struct SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo {

    /** The identifier of the client/peer that this message must be delivered to. See the RegisterClient and RegisterPeer functions.  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * The message data that must be sent to the client 
     * - array num: MessageDataSizeBytes
     */
    public let MessageData: [UInt8]?

    /**
     * The size in bytes of MessageData 
     * - array buffer: MessageData
     */
    public let MessageDataSizeBytes: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ClientHandle = sdkObject.ClientHandle
        self.MessageData = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.MessageData,
                count: try safeNumericCast(exactly: sdkObject.MessageDataSizeBytes)
            ))
        self.MessageDataSizeBytes = try safeNumericCast(exactly: sdkObject.MessageDataSizeBytes)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Quaternion using left-handed coordinate system (as in Unreal Engine)  */
public struct SwiftEOS_AntiCheatCommon_Quat: SwiftEOSObject {

    /** W component - scalar part  */
    public let w: Float

    /** X component - forward direction  */
    public let x: Float

    /** Y component - right direction  */
    public let y: Float

    /** Z component - up direction  */
    public let z: Float

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_Quat?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.w = sdkObject.w
        self.x = sdkObject.x
        self.y = sdkObject.y
        self.z = sdkObject.z
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_Quat {
        _tagEOS_AntiCheatCommon_Quat(
            w: w,
            x: x,
            y: y,
            z: z
        )
    }

    /** Memberwise initializer */
    public init(
        w: Float,
        x: Float,
        y: Float,
        z: Float
    ) {
        self.w = w
        self.x = x
        self.y = y
        self.z = z
    }
}
public struct SwiftEOS_AntiCheatCommon_RegisterEventOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_REGISTEREVENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Unique event identifier. Must be >= EOS_ANTICHEATCOMMON_REGISTEREVENT_CUSTOMEVENTBASE.  */
    public let EventId: Int

    /** Name of the custom event. Allowed characters are 0-9, A-Z, a-z, '_', '-', '.'  */
    public let EventName: String?

    /** Type of the custom event  */
    public let EventType: EOS_EAntiCheatCommonEventType

    /**
     * Number of parameters described in ParamDefs. Must be 
     * <
     * = EOS_ANTICHEATCOMMON_REGISTEREVENT_MAX_PARAMDEFSCOUNT. 
     * - array buffer: ParamDefs
     */
    public let ParamDefsCount: Int

    /**
     * Pointer to an array of EOS_AntiCheatCommon_RegisterEventParamDef with ParamDefsCount elements 
     * - array num: ParamDefsCount
     */
    public let ParamDefs: [SwiftEOS_AntiCheatCommon_RegisterEventParamDef]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_RegisterEventOptions {
        try _tagEOS_AntiCheatCommon_RegisterEventOptions(
            ApiVersion: ApiVersion,
            EventId: try safeNumericCast(exactly: EventId),
            EventName: pointerManager.managedPointerToBuffer(copyingArray: EventName?.utf8CString),
            EventType: EventType,
            ParamDefsCount: try safeNumericCast(exactly: ParamDefsCount),
            ParamDefs: try pointerManager.managedPointerToBuffer(copyingArray: ParamDefs?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_RegisterEventOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.EventId = try safeNumericCast(exactly: sdkObject.EventId)
        self.EventName = String(cString: sdkObject.EventName)
        self.EventType = sdkObject.EventType
        self.ParamDefsCount = try safeNumericCast(exactly: sdkObject.ParamDefsCount)
        self.ParamDefs = try sdkObject.ParamDefs?.array(safeNumericCast(exactly: sdkObject.ParamDefsCount)).compactMap { 
            try SwiftEOS_AntiCheatCommon_RegisterEventParamDef.init(sdkObject: $0.pointee) }
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_REGISTEREVENT_API_LATEST,
        EventId: Int,
        EventName: String?,
        EventType: EOS_EAntiCheatCommonEventType,
        ParamDefsCount: Int,
        ParamDefs: [SwiftEOS_AntiCheatCommon_RegisterEventParamDef]?
    ) {
        self.ApiVersion = ApiVersion
        self.EventId = EventId
        self.EventName = EventName
        self.EventType = EventType
        self.ParamDefsCount = ParamDefsCount
        self.ParamDefs = ParamDefs
    }
}
public struct SwiftEOS_AntiCheatCommon_RegisterEventParamDef: SwiftEOSObject {

    /** Parameter name. Allowed characters are 0-9, A-Z, a-z, '_', '-', '.'  */
    public let ParamName: String?

    /** Parameter type  */
    public let ParamType: EOS_EAntiCheatCommonEventParamType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_RegisterEventParamDef?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ParamName = String(cString: sdkObject.ParamName)
        self.ParamType = sdkObject.ParamType
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_RegisterEventParamDef {
        _tagEOS_AntiCheatCommon_RegisterEventParamDef(
            ParamName: pointerManager.managedPointerToBuffer(copyingArray: ParamName?.utf8CString),
            ParamType: ParamType
        )
    }
}
public struct SwiftEOS_AntiCheatCommon_SetClientDetailsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_SETCLIENTDETAILS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** General flags associated with this client, if any  */
    public let ClientFlags: EOS_EAntiCheatCommonClientFlags

    /** Input device being used by this client, if known  */
    public let ClientInputMethod: EOS_EAntiCheatCommonClientInput

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_SetClientDetailsOptions {
        _tagEOS_AntiCheatCommon_SetClientDetailsOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            ClientFlags: ClientFlags,
            ClientInputMethod: ClientInputMethod
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_SetClientDetailsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.ClientFlags = sdkObject.ClientFlags
        self.ClientInputMethod = sdkObject.ClientInputMethod
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_SETCLIENTDETAILS_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientFlags: EOS_EAntiCheatCommonClientFlags,
        ClientInputMethod: EOS_EAntiCheatCommonClientInput
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.ClientFlags = ClientFlags
        self.ClientInputMethod = ClientInputMethod
    }
}
public struct SwiftEOS_AntiCheatCommon_SetGameSessionIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_SETGAMESESSIONID_API_LATEST.  */
    public let ApiVersion: Int32

    /** Game session identifier  */
    public let GameSessionId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_SetGameSessionIdOptions {
        _tagEOS_AntiCheatCommon_SetGameSessionIdOptions(
            ApiVersion: ApiVersion,
            GameSessionId: pointerManager.managedPointerToBuffer(copyingArray: GameSessionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_SetGameSessionIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.GameSessionId = String(cString: sdkObject.GameSessionId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_SETGAMESESSIONID_API_LATEST,
        GameSessionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.GameSessionId = GameSessionId
    }
}

/** Vector using left-handed coordinate system (as in Unreal Engine)  */
public struct SwiftEOS_AntiCheatCommon_Vec3f: SwiftEOSObject {

    /** X axis coordinate - forward direction  */
    public let x: Float

    /** Y axis coordinate - right direction  */
    public let y: Float

    /** Z axis coordinate - up direction  */
    public let z: Float

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_Vec3f?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.x = sdkObject.x
        self.y = sdkObject.y
        self.z = sdkObject.z
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_Vec3f {
        _tagEOS_AntiCheatCommon_Vec3f(
            x: x,
            y: y,
            z: z
        )
    }

    /** Memberwise initializer */
    public init(
        x: Float,
        y: Float,
        z: Float
    ) {
        self.x = x
        self.y = y
        self.z = z
    }
}
