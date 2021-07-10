import Foundation
import EOSSDK
public class SwiftEOS_AntiCheatServer_Actor: SwiftEOSActor {
    public let Handle: EOS_HAntiCheatServer

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HAntiCheatServer
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Add a callback issued when an action must be applied to a connected client. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyClientActionRequired(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> {
        try ____AddNotifyClientActionRequired(NotificationFn)
    }

    /**
     * Add an optional callback issued when a connected client's authentication status changes. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyClientAuthStatusChanged(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> {
        try ____AddNotifyClientAuthStatusChanged(NotificationFn)
    }

    /**
     * Add a callback issued when a new message must be dispatched to a connected client. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    public func AddNotifyMessageToClient(
        NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> {
        try ____AddNotifyMessageToClient(NotificationFn)
    }

    /**
     * Begin the gameplay session. Event callbacks must be configured with EOS_AntiCheatServer_AddNotifyMessageToClient
     * and EOS_AntiCheatServer_AddNotifyClientActionRequired before calling this function.
     * 
     * - Parameter RegisterTimeoutSeconds:  
     * Time in seconds to allow newly registered clients to complete anti-cheat authentication.
     * Recommended value: 60
     * - Parameter ServerName:  Optional name of this game server 
     * - Parameter bEnableGameplayData:  
     * Gameplay data collection APIs such as LogPlayerTick will be enabled if set to true.
     * If you do not use these APIs, it is more efficient to set this value to false.
     * - Parameter LocalUserId:  The Product User ID of the local user who is associated with this session. Dedicated servers should set this to null. 
     * 
     * @return EOS_Success - If the initialization succeeded
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func BeginSession(
        RegisterTimeoutSeconds: Int,
        ServerName: String?,
        bEnableGameplayData: Bool,
        LocalUserId: EOS_ProductUserId?
    ) throws {
        try ____BeginSession(.init(
                RegisterTimeoutSeconds: RegisterTimeoutSeconds,
                ServerName: ServerName,
                bEnableGameplayData: bEnableGameplayData,
                LocalUserId: LocalUserId
            ))
    }

    /**
     * End the gameplay session. Should be called when the server is shutting down or entering an idle state.
     * 
     * 
     * @return EOS_Success - If the initialization succeeded
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func EndSession() throws {
        try ____EndSession()
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Calculates the required decrypted buffer size for a given input data length.
     * This will not change for a given SDK version, and allows one time allocation of reusable buffers.
     * 
     * - Parameter DataLengthBytes:  Length in bytes of input 
     * 
     * @return EOS_Success - If the output length was calculated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func GetProtectMessageOutputLength(
        DataLengthBytes: Int
    ) throws -> Int? {
        try ____GetProtectMessageOutputLength(.init(DataLengthBytes: DataLengthBytes))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a custom gameplay event.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter ClientHandle:  Optional client who this event is primarily associated with. If not applicable, use 0. 
     * - Parameter EventId:  Unique event identifier previously configured in RegisterEvent 
     * - Parameter Params:  Set of parameter types previously configured in RegisterEvent, and their values 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatCommon_LogEventOptions/ParamsCount``:
     * Number of parameters described in Params 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogEvent(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        EventId: Int,
        Params: [SwiftEOS_AntiCheatCommon_LogEventParamPair]?
    ) throws {
        try ____LogEvent(.init(
                ClientHandle: ClientHandle,
                EventId: EventId,
                Params: Params
            ))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a game round's end and outcome.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter WinningTeamId:  Optional identifier for the winning team 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogGameRoundEnd(
        WinningTeamId: Int
    ) throws {
        try ____LogGameRoundEnd(.init(WinningTeamId: WinningTeamId))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a new game round start.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter SessionIdentifier:  Optional game session or match identifier useful for some backend API integrations 
     * - Parameter LevelName:  Optional name of the map being played 
     * - Parameter ModeName:  Optional name of the game mode being played 
     * - Parameter RoundTimeSeconds:  Optional length of the game round to be played, in seconds. If none, use 0. 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogGameRoundStart(
        SessionIdentifier: String?,
        LevelName: String?,
        ModeName: String?,
        RoundTimeSeconds: Int
    ) throws {
        try ____LogGameRoundStart(.init(
                SessionIdentifier: SessionIdentifier,
                LevelName: LevelName,
                ModeName: ModeName,
                RoundTimeSeconds: RoundTimeSeconds
            ))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player despawning in the game, for example as a result of the character's death,
     * switching to spectator mode, etc.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter DespawnedPlayerHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerDespawn(
        DespawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle
    ) throws {
        try ____LogPlayerDespawn(.init(DespawnedPlayerHandle: DespawnedPlayerHandle))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player being revived after being downed (see EOS_AntiCheatServer_LogPlayerTakeDamage options).
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter RevivedPlayerHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * - Parameter ReviverPlayerHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerRevive(
        RevivedPlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        ReviverPlayerHandle: EOS_AntiCheatCommon_ClientHandle
    ) throws {
        try ____LogPlayerRevive(.init(
                RevivedPlayerHandle: RevivedPlayerHandle,
                ReviverPlayerHandle: ReviverPlayerHandle
            ))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player spawning into the game.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter SpawnedPlayerHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * - Parameter TeamId:  Optional identifier for the player's team. If none, use 0. 
     * - Parameter CharacterId:  Optional identifier for the player's character. If none, use 0. 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerSpawn(
        SpawnedPlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        TeamId: Int,
        CharacterId: Int
    ) throws {
        try ____LogPlayerSpawn(.init(
                SpawnedPlayerHandle: SpawnedPlayerHandle,
                TeamId: TeamId,
                CharacterId: CharacterId
            ))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has taken damage.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
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
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerTakeDamage(
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
    ) throws {
        try ____LogPlayerTakeDamage(.init(
                VictimPlayerHandle: VictimPlayerHandle,
                VictimPlayerPosition: VictimPlayerPosition,
                VictimPlayerViewRotation: VictimPlayerViewRotation,
                AttackerPlayerHandle: AttackerPlayerHandle,
                AttackerPlayerPosition: AttackerPlayerPosition,
                AttackerPlayerViewRotation: AttackerPlayerViewRotation,
                bIsHitscanAttack: bIsHitscanAttack,
                bHasLineOfSight: bHasLineOfSight,
                bIsCriticalHit: bIsCriticalHit,
                HitBoneId: HitBoneId,
                DamageTaken: DamageTaken,
                HealthRemaining: HealthRemaining,
                DamageSource: DamageSource,
                DamageType: DamageType,
                DamageResult: DamageResult,
                PlayerUseWeaponData: PlayerUseWeaponData,
                TimeSincePlayerUseWeaponMs: TimeSincePlayerUseWeaponMs
            ))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player's general state including position and view direction.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter PlayerHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * - Parameter PlayerPosition:  Player's current world position as a 3D vector 
     * - Parameter PlayerViewRotation:  Player's view rotation as a quaternion 
     * - Parameter bIsPlayerViewZoomed:  True if the player's view is zoomed (e.g. using a sniper rifle), otherwise false 
     * - Parameter PlayerHealth:  Player's current health value 
     * - Parameter PlayerMovementState:  Any movement state applicable 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerTick(
        PlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?,
        PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?,
        bIsPlayerViewZoomed: Bool,
        PlayerHealth: Float,
        PlayerMovementState: EOS_EAntiCheatCommonPlayerMovementState
    ) throws {
        try ____LogPlayerTick(.init(
                PlayerHandle: PlayerHandle,
                PlayerPosition: PlayerPosition,
                PlayerViewRotation: PlayerViewRotation,
                bIsPlayerViewZoomed: bIsPlayerViewZoomed,
                PlayerHealth: PlayerHealth,
                PlayerMovementState: PlayerMovementState
            ))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has used a special ability or item which affects their character's capabilities,
     * for example temporarily increasing their speed or allowing them to see nearby players behind walls.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter PlayerHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * - Parameter AbilityId:  Game defined unique identifier for the ability being used 
     * - Parameter AbilityDurationMs:  Duration of the ability effect in milliseconds. If not applicable, use 0. 
     * - Parameter AbilityCooldownMs:  Cooldown until the ability can be used again in milliseconds. If not applicable, use 0. 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerUseAbility(
        PlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        AbilityId: Int,
        AbilityDurationMs: Int,
        AbilityCooldownMs: Int
    ) throws {
        try ____LogPlayerUseAbility(.init(
                PlayerHandle: PlayerHandle,
                AbilityId: AbilityId,
                AbilityDurationMs: AbilityDurationMs,
                AbilityCooldownMs: AbilityCooldownMs
            ))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has used a weapon, for example firing one bullet or making one melee attack.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter UseWeaponData:  Struct containing detailed information about a weapon use event 
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func LogPlayerUseWeapon(
        UseWeaponData: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData?
    ) throws {
        try ____LogPlayerUseWeapon(.init(UseWeaponData: UseWeaponData))
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Encrypts an arbitrary message that will be sent to a game client and decrypted on the other side.
     * Options.Data and OutBuffer may refer to the same buffer to encrypt in place.
     * 
     * - Parameter ClientHandle:  Locally unique value describing the remote user to whom the message will be sent 
     * - Parameter Data:  The data to encrypt 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatServer_ProtectMessageOptions/DataLengthBytes``:
     * Length in bytes of input 
     * - Parameter OutBufferSizeBytes:  The size in bytes of OutBuffer 
     * 
     * @return EOS_Success - If the message was protected successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_InvalidUser - If the specified ClientHandle was invalid or not currently registered. See RegisterClient.
     */
    public func ProtectMessage(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) throws -> [UInt8]? {
        try ____ProtectMessage(.init(
                ClientHandle: ClientHandle,
                Data: Data,
                OutBufferSizeBytes: OutBufferSizeBytes
            ))
    }

    /**
     * Call when an anti-cheat message is received from a client.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter ClientHandle:  Optional value, if non-null then only messages addressed to this specific client will be returned 
     * - Parameter Data:  The data received 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions/DataLengthBytes``:
     * The size of the data received 
     * 
     * @return EOS_Success - If the message was processed successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func ReceiveMessageFromClient(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        Data: [UInt8]?
    ) throws {
        try ____ReceiveMessageFromClient(.init(
                ClientHandle: ClientHandle,
                Data: Data
            ))
    }

    /**
     * Register a connected client. Must be paired with a call to UnregisterClient.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter ClientHandle:  Locally unique value describing the remote user (e.g. a player object pointer) 
     * - Parameter ClientType:  Type of remote user being registered 
     * - Parameter ClientPlatform:  Remote user's platform, if known 
     * - Parameter AccountId:  
     * Identifier for the remote user. This is typically a string representation of an
     * account ID, but it can be any string which is both unique (two different users will never
     * have the same string) and consistent (if the same user connects to this game session
     * twice, the same string will be used) in the scope of a single protected game session.
     * - Parameter IpAddress:  
     * Optional IP address for the remote user. May be null if not available.
     * IPv4 format: "0.0.0.0"
     * IPv6 format: "0:0:0:0:0:0:0:0"
     * 
     * @return EOS_Success - If the player was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func RegisterClient(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientType: EOS_EAntiCheatCommonClientType,
        ClientPlatform: EOS_EAntiCheatCommonClientPlatform,
        AccountId: String?,
        IpAddress: String?
    ) throws {
        try ____RegisterClient(.init(
                ClientHandle: ClientHandle,
                ClientType: ClientType,
                ClientPlatform: ClientPlatform,
                AccountId: AccountId,
                IpAddress: IpAddress
            ))
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Registers a custom gameplay event.
     * All custom game events must be registered before EOS_AntiCheatServer_BeginSession is called for the first time.
     * After the first call to EOS_AntiCheatServer_BeginSession, this function cannot be called any longer.
     * 
     * - Parameter EventId:  Unique event identifier. Must be >= EOS_ANTICHEATCOMMON_REGISTEREVENT_CUSTOMEVENTBASE. 
     * - Parameter EventName:  Name of the custom event. Allowed characters are 0-9, A-Z, a-z, '_', '-', '.' 
     * - Parameter EventType:  Type of the custom event 
     * - Parameter ParamDefs:  Pointer to an array of EOS_AntiCheatCommon_RegisterEventParamDef with ParamDefsCount elements 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatCommon_RegisterEventOptions/ParamDefsCount``:
     * Number of parameters described in ParamDefs. Must be 
     * <
     * = EOS_ANTICHEATCOMMON_REGISTEREVENT_MAX_PARAMDEFSCOUNT. 
     * 
     * @return EOS_Success - If the event was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func RegisterEvent(
        EventId: Int,
        EventName: String?,
        EventType: EOS_EAntiCheatCommonEventType,
        ParamDefs: [SwiftEOS_AntiCheatCommon_RegisterEventParamDef]?
    ) throws {
        try ____RegisterEvent(.init(
                EventId: EventId,
                EventName: EventName,
                EventType: EventType,
                ParamDefs: ParamDefs
            ))
    }

    /**
     * Optional. Sets or updates client details including input device and admin status.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter ClientHandle:  Locally unique value used in RegisterClient/RegisterPeer 
     * - Parameter ClientFlags:  General flags associated with this client, if any 
     * - Parameter ClientInputMethod:  Input device being used by this client, if known 
     * 
     * @return EOS_Success - If the flags were updated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func SetClientDetails(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientFlags: EOS_EAntiCheatCommonClientFlags,
        ClientInputMethod: EOS_EAntiCheatCommonClientInput
    ) throws {
        try ____SetClientDetails(.init(
                ClientHandle: ClientHandle,
                ClientFlags: ClientFlags,
                ClientInputMethod: ClientInputMethod
            ))
    }

    /**
     * Optional. Can be used to indicate that a client is legitimately known to be
     * temporarily unable to communicate, for example as a result of loading a new level.
     * The bIsNetworkActive flag must be set back to true when users enter normal
     * gameplay, otherwise anti-cheat enforcement will not work correctly.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter ClientHandle:  Locally unique value describing the remote user (e.g. a player object pointer) 
     * - Parameter bIsNetworkActive:  True if the network is functioning normally, false if temporarily interrupted 
     * 
     * @return EOS_Success - If the network state was updated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func SetClientNetworkState(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        bIsNetworkActive: Bool
    ) throws {
        try ____SetClientNetworkState(.init(
                ClientHandle: ClientHandle,
                bIsNetworkActive: bIsNetworkActive
            ))
    }

    /**
     * Optional. Sets or updates a game session identifier which can be attached to other data for reference.
     * The identifier can be updated at any time for currently and subsequently registered clients.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter GameSessionId:  Game session identifier 
     * 
     * @return EOS_Success - If the game session identifier was set successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func SetGameSessionId(
        GameSessionId: String?
    ) throws {
        try ____SetGameSessionId(.init(GameSessionId: GameSessionId))
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Decrypts an encrypted message received from a game client.
     * Options.Data and OutBuffer may refer to the same buffer to decrypt in place.
     * 
     * - Parameter ClientHandle:  Locally unique value describing the remote user from whom the message was received 
     * - Parameter Data:  The data to decrypt 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatServer_UnprotectMessageOptions/DataLengthBytes``:
     * Length in bytes of input 
     * - Parameter OutBufferSizeBytes:  The size in bytes of OutBuffer 
     * 
     * @return EOS_Success - If the message was unprotected successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func UnprotectMessage(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) throws -> [UInt8]? {
        try ____UnprotectMessage(.init(
                ClientHandle: ClientHandle,
                Data: Data,
                OutBufferSizeBytes: OutBufferSizeBytes
            ))
    }

    /**
     * Unregister a disconnected client.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter ClientHandle:  Locally unique value describing the remote user, as previously passed to RegisterClient 
     * 
     * @return EOS_Success - If the player was unregistered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    public func UnregisterClient(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle
    ) throws {
        try ____UnregisterClient(.init(ClientHandle: ClientHandle))
    }
}

extension SwiftEOS_AntiCheatServer_Actor {

    /**
     * Add a callback issued when an action must be applied to a connected client. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyClientActionRequired(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatServer_AddNotifyClientActionRequired(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatServer_RemoveNotifyClientActionRequired(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Add an optional callback issued when a connected client's authentication status changes. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyClientAuthStatusChanged(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Add a callback issued when a new message must be dispatched to a connected client. The bound function
     * will only be called between a successful call to EOS_AntiCheatServer_BeginSession and the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter NotificationFn:  The callback to be fired
     * @return A valid notification ID if successfully bound, or EOS_INVALID_NOTIFICATIONID otherwise
     */
    private func ____AddNotifyMessageToClient(
        _ NotificationFn: @escaping (SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatServer_AddNotifyMessageToClientOptions(), managedBy: pointerManager) { Options in
                        EOS_AntiCheatServer_AddNotifyMessageToClient(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_AntiCheatServer_RemoveNotifyMessageToClient(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Begin the gameplay session. Event callbacks must be configured with EOS_AntiCheatServer_AddNotifyMessageToClient
     * and EOS_AntiCheatServer_AddNotifyClientActionRequired before calling this function.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the initialization succeeded
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____BeginSession(
        _ Options: SwiftEOS_AntiCheatServer_BeginSessionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_BeginSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * End the gameplay session. Should be called when the server is shutting down or entering an idle state.
     * 
     * 
     * @return EOS_Success - If the initialization succeeded
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____EndSession() throws {
        try withPointerManager { pointerManager in
            try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_AntiCheatServer_EndSessionOptions(), managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_EndSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Calculates the required decrypted buffer size for a given input data length.
     * This will not change for a given SDK version, and allows one time allocation of reusable buffers.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the output length was calculated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____GetProtectMessageOutputLength(
        _ Options: SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions
    ) throws -> Int? {
        try withPointerManager { pointerManager in
            try withIntegerPointerReturnedAsInteger { OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatServer_GetProtectMessageOutputLength(
                            Handle,
                            Options,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a custom gameplay event.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogEvent(
        _ Options: SwiftEOS_AntiCheatCommon_LogEventOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogEvent(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a game round's end and outcome.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogGameRoundEnd(
        _ Options: SwiftEOS_AntiCheatCommon_LogGameRoundEndOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogGameRoundEnd(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a new game round start.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogGameRoundStart(
        _ Options: SwiftEOS_AntiCheatCommon_LogGameRoundStartOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogGameRoundStart(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player despawning in the game, for example as a result of the character's death,
     * switching to spectator mode, etc.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerDespawn(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerDespawnOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerDespawn(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player being revived after being downed (see EOS_AntiCheatServer_LogPlayerTakeDamage options).
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerRevive(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerReviveOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerRevive(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player spawning into the game.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerSpawn(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerSpawnOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerSpawn(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has taken damage.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerTakeDamage(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerTakeDamageOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerTakeDamage(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs a player's general state including position and view direction.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerTick(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerTickOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerTick(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has used a special ability or item which affects their character's capabilities,
     * for example temporarily increasing their speed or allowing them to see nearby players behind walls.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerUseAbility(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerUseAbilityOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerUseAbility(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Logs that a player has used a weapon, for example firing one bullet or making one melee attack.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was logged successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____LogPlayerUseWeapon(
        _ Options: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_LogPlayerUseWeapon(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Encrypts an arbitrary message that will be sent to a game client and decrypted on the other side.
     * Options.Data and OutBuffer may refer to the same buffer to encrypt in place.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the message was protected successfully
     *         EOS_InvalidParameters - If input data was invalid
     *         EOS_InvalidUser - If the specified ClientHandle was invalid or not currently registered. See RegisterClient.
     */
    private func ____ProtectMessage(
        _ Options: SwiftEOS_AntiCheatServer_ProtectMessageOptions
    ) throws -> [UInt8]? {
        try withPointerManager { pointerManager in
            try withElementPointerPointersReturnedAsArray { OutBuffer,OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatServer_ProtectMessage(
                            Handle,
                            Options,
                            OutBuffer,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Call when an anti-cheat message is received from a client.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the message was processed successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____ReceiveMessageFromClient(
        _ Options: SwiftEOS_AntiCheatServer_ReceiveMessageFromClientOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_ReceiveMessageFromClient(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Register a connected client. Must be paired with a call to UnregisterClient.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the player was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____RegisterClient(
        _ Options: SwiftEOS_AntiCheatServer_RegisterClientOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_RegisterClient(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional Cerberus feature for gameplay data collection.
     * Registers a custom gameplay event.
     * All custom game events must be registered before EOS_AntiCheatServer_BeginSession is called for the first time.
     * After the first call to EOS_AntiCheatServer_BeginSession, this function cannot be called any longer.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the event was registered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____RegisterEvent(
        _ Options: SwiftEOS_AntiCheatCommon_RegisterEventOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_RegisterEvent(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional. Sets or updates client details including input device and admin status.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the flags were updated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____SetClientDetails(
        _ Options: SwiftEOS_AntiCheatCommon_SetClientDetailsOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_SetClientDetails(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional. Can be used to indicate that a client is legitimately known to be
     * temporarily unable to communicate, for example as a result of loading a new level.
     * The bIsNetworkActive flag must be set back to true when users enter normal
     * gameplay, otherwise anti-cheat enforcement will not work correctly.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the network state was updated successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____SetClientNetworkState(
        _ Options: SwiftEOS_AntiCheatServer_SetClientNetworkStateOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_SetClientNetworkState(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional. Sets or updates a game session identifier which can be attached to other data for reference.
     * The identifier can be updated at any time for currently and subsequently registered clients.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the game session identifier was set successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____SetGameSessionId(
        _ Options: SwiftEOS_AntiCheatCommon_SetGameSessionIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_SetGameSessionId(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Optional NetProtect feature for game message encryption.
     * Decrypts an encrypted message received from a game client.
     * Options.Data and OutBuffer may refer to the same buffer to decrypt in place.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the message was unprotected successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____UnprotectMessage(
        _ Options: SwiftEOS_AntiCheatServer_UnprotectMessageOptions
    ) throws -> [UInt8]? {
        try withPointerManager { pointerManager in
            try withElementPointerPointersReturnedAsArray { OutBuffer,OutBufferLengthBytes in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_AntiCheatServer_UnprotectMessage(
                            Handle,
                            Options,
                            OutBuffer,
                            OutBufferLengthBytes
                        ) } } } }
    }

    /**
     * Unregister a disconnected client.
     * This function may only be called between a successful call to EOS_AntiCheatServer_BeginSession and
     * the matching EOS_AntiCheatServer_EndSession call.
     * 
     * - Parameter Options:  Structure containing input data.
     * 
     * @return EOS_Success - If the player was unregistered successfully
     *         EOS_InvalidParameters - If input data was invalid
     */
    private func ____UnregisterClient(
        _ Options: SwiftEOS_AntiCheatServer_UnregisterClientOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_AntiCheatServer_UnregisterClient(
                        Handle,
                        Options
                    ) } } }
    }
}
