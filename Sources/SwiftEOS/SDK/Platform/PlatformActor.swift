import Foundation
import EOSSDK

public class SwiftEOS_Platform_Actor: SwiftEOSActor {
    public let Handle: EOS_HPlatform

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HPlatform
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_Platform_Release(Handle)
    }

    /**
    Checks if the app was launched through the Epic Launcher, and relaunches it through the Epic Launcher if it wasn't.

    - Throws: An `EOS_EResult` is returned to indicate success or an error.
    `EOS_Success` is returned if the app is being restarted. You should quit your process as soon as possible.
    `EOS_NoChange` is returned if the app was already launched through the Epic Launcher, and no action needs to be taken.
    `EOS_UnexpectedError` is returned if the LauncherCheck module failed to initialize, or the module tried and failed to restart the app.
    */
    public func CheckForLauncherAndRestart() throws {
        try ____CheckForLauncherAndRestart()
    }

    /**
    Get a handle to the Achievements Interface.

    - Returns: `EOS_HAchievements` handle
    - SeeAlso: `eos_achievements`.h
    - SeeAlso: `eos_achievements_types`.h
    */
    public func GetAchievementsInterface() -> SwiftEOS_Achievements_Actor? {
        ____GetAchievementsInterface()
    }

    /**
    This only will return the value set as the override otherwise `EOS_NotFound` is returned.
    This is not currently used for anything internally.

    - Parameter LocalUserId: The account to use for lookup if no override exists.
    - Throws: An `EOS_EResult` that indicates whether the active country code string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if there is not an override country code for the user.
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the country code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_COUNTRYCODE_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_COUNTRYCODE_MAX_LENGTH`.
    */
    public func GetActiveCountryCode(
        LocalUserId: EOS_EpicAccountId
    ) throws -> String? {
        try ____GetActiveCountryCode(LocalUserId)
    }

    /**
    Get the active locale code that the SDK will send to services which require it.
    This returns the override value otherwise it will use the locale code of the given user.
    This is used for localization. This follows ISO 639.

    - Parameter LocalUserId: The account to use for lookup if no override exists.
    - Throws: An `EOS_EResult` that indicates whether the active locale code string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if there is neither an override nor an available locale code for the user.
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the locale code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_LOCALECODE_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_LOCALECODE_MAX_LENGTH`.
    */
    public func GetActiveLocaleCode(
        LocalUserId: EOS_EpicAccountId
    ) throws -> String? {
        try ____GetActiveLocaleCode(LocalUserId)
    }

    /**
    Get a handle to the Anti-Cheat Client Interface.

    - Returns: `EOS_HAntiCheatClient` handle
    - SeeAlso: `eos_anticheatclient`.h
    - SeeAlso: `eos_anticheatclient_types`.h
    */
    public func GetAntiCheatClientInterface() -> SwiftEOS_AntiCheatClient_Actor? {
        ____GetAntiCheatClientInterface()
    }

    /**
    Get a handle to the Anti-Cheat Server Interface.

    - Returns: `EOS_HAntiCheatServer` handle
    - SeeAlso: `eos_anticheatserver`.h
    - SeeAlso: `eos_anticheatserver_types`.h
    */
    public func GetAntiCheatServerInterface() -> SwiftEOS_AntiCheatServer_Actor? {
        ____GetAntiCheatServerInterface()
    }

    /**
    Get a handle to the Auth Interface.

    - Returns: `EOS_HAuth` handle
    - SeeAlso: `eos_auth`.h
    - SeeAlso: `eos_auth_types`.h
    */
    public func GetAuthInterface() -> SwiftEOS_Auth_Actor? {
        ____GetAuthInterface()
    }

    /**
    Get a handle to the Connect Interface.

    - Returns: `EOS_HConnect` handle
    - SeeAlso: `eos_connect`.h
    - SeeAlso: `eos_connect_types`.h
    */
    public func GetConnectInterface() -> SwiftEOS_Connect_Actor? {
        ____GetConnectInterface()
    }

    /**
    Get a handle to the Ecom Interface.

    - Returns: `EOS_HEcom` handle
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `eos_ecom_types`.h
    */
    public func GetEcomInterface() -> SwiftEOS_Ecom_Actor? {
        ____GetEcomInterface()
    }

    /**
    Get a handle to the Friends Interface.

    - Returns: `EOS_HFriends` handle
    - SeeAlso: `eos_friends`.h
    - SeeAlso: `eos_friends_types`.h
    */
    public func GetFriendsInterface() -> SwiftEOS_Friends_Actor? {
        ____GetFriendsInterface()
    }

    /**
    Get a handle to the Kids Web Service Interface.

    - Returns: `EOS_HKWS` handle
    - SeeAlso: `eos_kws`.h
    - SeeAlso: `eos_kws_types`.h
    */
    public func GetKWSInterface() -> SwiftEOS_KWS_Actor? {
        ____GetKWSInterface()
    }

    /**
    Get a handle to the Leaderboards Interface.

    - Returns: `EOS_HLeaderboards` handle
    - SeeAlso: `eos_leaderboards`.h
    - SeeAlso: `eos_leaderboards_types`.h
    */
    public func GetLeaderboardsInterface() -> SwiftEOS_Leaderboards_Actor? {
        ____GetLeaderboardsInterface()
    }

    /**
    Get a handle to the Lobby Interface.

    - Returns: `EOS_HLobby` handle
    - SeeAlso: `eos_lobby`.h
    - SeeAlso: `eos_lobby_types`.h
    */
    public func GetLobbyInterface() -> SwiftEOS_Lobby_Actor? {
        ____GetLobbyInterface()
    }

    /**
    Get a handle to the Metrics Interface.

    - Returns: `EOS_HMetrics` handle
    - SeeAlso: `eos_metrics`.h
    - SeeAlso: `eos_metrics_types`.h
    */
    public func GetMetricsInterface() -> SwiftEOS_Metrics_Actor? {
        ____GetMetricsInterface()
    }

    /**
    Get a handle to the Mods Interface.

    - Returns: `EOS_HMods` handle
    - SeeAlso: `eos_mods`.h
    - SeeAlso: `eos_mods_types`.h
    */
    public func GetModsInterface() -> SwiftEOS_Mods_Actor? {
        ____GetModsInterface()
    }

    /**
    Get the override country code that the SDK will send to services which require it.
    This is not currently used for anything internally.

    - Throws: An `EOS_EResult` that indicates whether the override country code string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the country code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_COUNTRYCODE_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_COUNTRYCODE_MAX_LENGTH`.
    */
    public func GetOverrideCountryCode() throws -> String? {
        try ____GetOverrideCountryCode()
    }

    /**
    Get the override locale code that the SDK will send to services which require it.
    This is used for localization. This follows ISO 639.

    - Throws: An `EOS_EResult` that indicates whether the override locale code string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the locale code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_LOCALECODE_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_LOCALECODE_MAX_LENGTH`.
    */
    public func GetOverrideLocaleCode() throws -> String? {
        try ____GetOverrideLocaleCode()
    }

    /**
    Get a handle to the Peer-to-Peer Networking Interface.

    - Returns: `EOS_HP2P` handle
    - SeeAlso: `eos_p2p`.h
    - SeeAlso: `eos_p2p_types`.h
    */
    public func GetP2PInterface() -> SwiftEOS_P2P_Actor? {
        ____GetP2PInterface()
    }

    /**
    Get a handle to the PlayerDataStorage Interface.

    - Returns: `EOS_HPlayerDataStorage` handle
    - SeeAlso: `eos_playerdatastorage`.h
    - SeeAlso: `eos_playerdatastorage_types`.h
    */
    public func GetPlayerDataStorageInterface() -> SwiftEOS_PlayerDataStorage_Actor? {
        ____GetPlayerDataStorageInterface()
    }

    /**
    Get a handle to the Presence Interface.

    - Returns: `EOS_HPresence` handle
    - SeeAlso: `eos_presence`.h
    - SeeAlso: `eos_presence_types`.h
    */
    public func GetPresenceInterface() -> SwiftEOS_Presence_Actor? {
        ____GetPresenceInterface()
    }

    /**
    Get a handle to the RTC Admin interface

    - Returns: `EOS_HRTCAdmin` handle
    - SeeAlso: `eos_rtc_admin`.h
    - SeeAlso: `eos_admin_types`.h
    */
    public func GetRTCAdminInterface() -> SwiftEOS_RTCAdmin_Actor? {
        ____GetRTCAdminInterface()
    }

    /**
    Get a handle to the Real Time Communications Interface (RTC).
    From the RTC interface you can retrieve the handle to the audio interface (RTCAudio), which is a component of RTC.

    - Returns: `EOS_HRTC` handle
    - SeeAlso: `EOS_RTC_GetAudioInterface`
    - SeeAlso: `eos_rtc`.h
    - SeeAlso: `eos_rtc_types`.h
    */
    public func GetRTCInterface() -> SwiftEOS_RTC_Actor? {
        ____GetRTCInterface()
    }

    /**
    Get a handle to the Reports Interface.

    - Returns: `EOS_HReports` handle
    - SeeAlso: `eos_reports`.h
    - SeeAlso: `eos_reports_types`.h
    */
    public func GetReportsInterface() -> SwiftEOS_Reports_Actor? {
        ____GetReportsInterface()
    }

    /**
    Get a handle to the Sanctions Interface.

    - Returns: `EOS_HSanctions` handle
    - SeeAlso: `eos_sanctions`.h
    - SeeAlso: `eos_sanctions_types`.h
    */
    public func GetSanctionsInterface() -> SwiftEOS_Sanctions_Actor? {
        ____GetSanctionsInterface()
    }

    /**
    Get a handle to the Sessions Interface.

    - Returns: `EOS_HSessions` handle
    - SeeAlso: `eos_sessions`.h
    - SeeAlso: `eos_sessions_types`.h
    */
    public func GetSessionsInterface() -> SwiftEOS_Sessions_Actor? {
        ____GetSessionsInterface()
    }

    /**
    Get a handle to the Stats Interface.

    - Returns: `EOS_HStats` handle
    - SeeAlso: `eos_stats`.h
    - SeeAlso: `eos_stats_types`.h
    */
    public func GetStatsInterface() -> SwiftEOS_Stats_Actor? {
        ____GetStatsInterface()
    }

    /**
    Get a handle to the TitleStorage Interface.

    - Returns: `EOS_HTitleStorage` handle
    - SeeAlso: `eos_titlestorage`.h
    - SeeAlso: `eos_titlestorage_types`.h
    */
    public func GetTitleStorageInterface() -> SwiftEOS_TitleStorage_Actor? {
        ____GetTitleStorageInterface()
    }

    /**
    Get a handle to the UI Interface.

    - Returns: `EOS_HUI` handle
    - SeeAlso: `eos_ui`.h
    - SeeAlso: `eos_ui_types`.h
    */
    public func GetUIInterface() -> SwiftEOS_UI_Actor? {
        ____GetUIInterface()
    }

    /**
    Get a handle to the UserInfo Interface.

    - Returns: `EOS_HUserInfo` handle
    - SeeAlso: `eos_userinfo`.h
    - SeeAlso: `eos_userinfo_types`.h
    */
    public func GetUserInfoInterface() -> SwiftEOS_UserInfo_Actor? {
        ____GetUserInfoInterface()
    }

    /**
    Set the override country code that the SDK will send to services which require it.
    This is not currently used for anything internally.

    - Throws: An `EOS_EResult` that indicates whether the override country code string was saved.
              `EOS_Success` if the country code was overridden
              `EOS_InvalidParameters` if you pass an invalid country code
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_COUNTRYCODE_MAX_LENGTH`
    */
    public func SetOverrideCountryCode(
        NewCountryCode: String?
    ) throws {
        try ____SetOverrideCountryCode(NewCountryCode)
    }

    /**
    Set the override locale code that the SDK will send to services which require it.
    This is used for localization. This follows ISO 639.

    - Throws: An `EOS_EResult` that indicates whether the override locale code string was saved.
              `EOS_Success` if the locale code was overridden
              `EOS_InvalidParameters` if you pass an invalid locale code
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_LOCALECODE_MAX_LENGTH`
    */
    public func SetOverrideLocaleCode(
        NewLocaleCode: String?
    ) throws {
        try ____SetOverrideLocaleCode(NewLocaleCode)
    }

    /**
    Notify the platform instance to do work. This function must be called frequently in order for the services provided by the SDK to properly
    function. For tick-based applications, it is usually desireable to call this once per-tick.
    */
    public func Tick() {
        ____Tick()
    }
}

extension SwiftEOS_Platform_Actor {

    /**
    Checks if the app was launched through the Epic Launcher, and relaunches it through the Epic Launcher if it wasn't.

    - Throws: An `EOS_EResult` is returned to indicate success or an error.
    `EOS_Success` is returned if the app is being restarted. You should quit your process as soon as possible.
    `EOS_NoChange` is returned if the app was already launched through the Epic Launcher, and no action needs to be taken.
    `EOS_UnexpectedError` is returned if the LauncherCheck module failed to initialize, or the module tried and failed to restart the app.
    */
    private func ____CheckForLauncherAndRestart() throws {
        try withPointerManager { pointerManager in
            try throwingSdkResult { 
                EOS_Platform_CheckForLauncherAndRestart(Handle) } }
    }

    /**
    Get a handle to the Achievements Interface.

    - Returns: `EOS_HAchievements` handle
    - SeeAlso: `eos_achievements`.h
    - SeeAlso: `eos_achievements_types`.h
    */
    private func ____GetAchievementsInterface() -> SwiftEOS_Achievements_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetAchievementsInterface(Handle) } }
    }

    /**
    This only will return the value set as the override otherwise `EOS_NotFound` is returned.
    This is not currently used for anything internally.

    - Parameter LocalUserId: The account to use for lookup if no override exists.
    - Throws: An `EOS_EResult` that indicates whether the active country code string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if there is not an override country code for the user.
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the country code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_COUNTRYCODE_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_COUNTRYCODE_MAX_LENGTH`.
    */
    private func ____GetActiveCountryCode(
        _ LocalUserId: EOS_EpicAccountId
    ) throws -> String? {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
                try throwingSdkResult { 
                    EOS_Platform_GetActiveCountryCode(
                        Handle,
                        LocalUserId,
                        OutBuffer,
                        InOutBufferLength
                    ) } } }
    }

    /**
    Get the active locale code that the SDK will send to services which require it.
    This returns the override value otherwise it will use the locale code of the given user.
    This is used for localization. This follows ISO 639.

    - Parameter LocalUserId: The account to use for lookup if no override exists.
    - Throws: An `EOS_EResult` that indicates whether the active locale code string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if there is neither an override nor an available locale code for the user.
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the locale code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_LOCALECODE_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_LOCALECODE_MAX_LENGTH`.
    */
    private func ____GetActiveLocaleCode(
        _ LocalUserId: EOS_EpicAccountId
    ) throws -> String? {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
                try throwingSdkResult { 
                    EOS_Platform_GetActiveLocaleCode(
                        Handle,
                        LocalUserId,
                        OutBuffer,
                        InOutBufferLength
                    ) } } }
    }

    /**
    Get a handle to the Anti-Cheat Client Interface.

    - Returns: `EOS_HAntiCheatClient` handle
    - SeeAlso: `eos_anticheatclient`.h
    - SeeAlso: `eos_anticheatclient_types`.h
    */
    private func ____GetAntiCheatClientInterface() -> SwiftEOS_AntiCheatClient_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetAntiCheatClientInterface(Handle) } }
    }

    /**
    Get a handle to the Anti-Cheat Server Interface.

    - Returns: `EOS_HAntiCheatServer` handle
    - SeeAlso: `eos_anticheatserver`.h
    - SeeAlso: `eos_anticheatserver_types`.h
    */
    private func ____GetAntiCheatServerInterface() -> SwiftEOS_AntiCheatServer_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetAntiCheatServerInterface(Handle) } }
    }

    /**
    Get a handle to the Auth Interface.

    - Returns: `EOS_HAuth` handle
    - SeeAlso: `eos_auth`.h
    - SeeAlso: `eos_auth_types`.h
    */
    private func ____GetAuthInterface() -> SwiftEOS_Auth_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetAuthInterface(Handle) } }
    }

    /**
    Get a handle to the Connect Interface.

    - Returns: `EOS_HConnect` handle
    - SeeAlso: `eos_connect`.h
    - SeeAlso: `eos_connect_types`.h
    */
    private func ____GetConnectInterface() -> SwiftEOS_Connect_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetConnectInterface(Handle) } }
    }

    /**
    Get a handle to the Ecom Interface.

    - Returns: `EOS_HEcom` handle
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `eos_ecom_types`.h
    */
    private func ____GetEcomInterface() -> SwiftEOS_Ecom_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetEcomInterface(Handle) } }
    }

    /**
    Get a handle to the Friends Interface.

    - Returns: `EOS_HFriends` handle
    - SeeAlso: `eos_friends`.h
    - SeeAlso: `eos_friends_types`.h
    */
    private func ____GetFriendsInterface() -> SwiftEOS_Friends_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetFriendsInterface(Handle) } }
    }

    /**
    Get a handle to the Kids Web Service Interface.

    - Returns: `EOS_HKWS` handle
    - SeeAlso: `eos_kws`.h
    - SeeAlso: `eos_kws_types`.h
    */
    private func ____GetKWSInterface() -> SwiftEOS_KWS_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetKWSInterface(Handle) } }
    }

    /**
    Get a handle to the Leaderboards Interface.

    - Returns: `EOS_HLeaderboards` handle
    - SeeAlso: `eos_leaderboards`.h
    - SeeAlso: `eos_leaderboards_types`.h
    */
    private func ____GetLeaderboardsInterface() -> SwiftEOS_Leaderboards_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetLeaderboardsInterface(Handle) } }
    }

    /**
    Get a handle to the Lobby Interface.

    - Returns: `EOS_HLobby` handle
    - SeeAlso: `eos_lobby`.h
    - SeeAlso: `eos_lobby_types`.h
    */
    private func ____GetLobbyInterface() -> SwiftEOS_Lobby_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetLobbyInterface(Handle) } }
    }

    /**
    Get a handle to the Metrics Interface.

    - Returns: `EOS_HMetrics` handle
    - SeeAlso: `eos_metrics`.h
    - SeeAlso: `eos_metrics_types`.h
    */
    private func ____GetMetricsInterface() -> SwiftEOS_Metrics_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetMetricsInterface(Handle) } }
    }

    /**
    Get a handle to the Mods Interface.

    - Returns: `EOS_HMods` handle
    - SeeAlso: `eos_mods`.h
    - SeeAlso: `eos_mods_types`.h
    */
    private func ____GetModsInterface() -> SwiftEOS_Mods_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetModsInterface(Handle) } }
    }

    /**
    Get the override country code that the SDK will send to services which require it.
    This is not currently used for anything internally.

    - Throws: An `EOS_EResult` that indicates whether the override country code string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the country code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_COUNTRYCODE_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_COUNTRYCODE_MAX_LENGTH`.
    */
    private func ____GetOverrideCountryCode() throws -> String? {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
                try throwingSdkResult { 
                    EOS_Platform_GetOverrideCountryCode(
                        Handle,
                        OutBuffer,
                        InOutBufferLength
                    ) } } }
    }

    /**
    Get the override locale code that the SDK will send to services which require it.
    This is used for localization. This follows ISO 639.

    - Throws: An `EOS_EResult` that indicates whether the override locale code string was copied into the OutBuffer.
              `EOS_Success` if the information is available and passed out in OutBuffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_LimitExceeded` - The OutBuffer is not large enough to receive the locale code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_LOCALECODE_MAX_LENGTH`
    - Returns: The buffer into which the character data should be written.  The buffer must be long enough to hold a string of `EOS_LOCALECODE_MAX_LENGTH`.
    */
    private func ____GetOverrideLocaleCode() throws -> String? {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
                try throwingSdkResult { 
                    EOS_Platform_GetOverrideLocaleCode(
                        Handle,
                        OutBuffer,
                        InOutBufferLength
                    ) } } }
    }

    /**
    Get a handle to the Peer-to-Peer Networking Interface.

    - Returns: `EOS_HP2P` handle
    - SeeAlso: `eos_p2p`.h
    - SeeAlso: `eos_p2p_types`.h
    */
    private func ____GetP2PInterface() -> SwiftEOS_P2P_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetP2PInterface(Handle) } }
    }

    /**
    Get a handle to the PlayerDataStorage Interface.

    - Returns: `EOS_HPlayerDataStorage` handle
    - SeeAlso: `eos_playerdatastorage`.h
    - SeeAlso: `eos_playerdatastorage_types`.h
    */
    private func ____GetPlayerDataStorageInterface() -> SwiftEOS_PlayerDataStorage_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetPlayerDataStorageInterface(Handle) } }
    }

    /**
    Get a handle to the Presence Interface.

    - Returns: `EOS_HPresence` handle
    - SeeAlso: `eos_presence`.h
    - SeeAlso: `eos_presence_types`.h
    */
    private func ____GetPresenceInterface() -> SwiftEOS_Presence_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetPresenceInterface(Handle) } }
    }

    /**
    Get a handle to the RTC Admin interface

    - Returns: `EOS_HRTCAdmin` handle
    - SeeAlso: `eos_rtc_admin`.h
    - SeeAlso: `eos_admin_types`.h
    */
    private func ____GetRTCAdminInterface() -> SwiftEOS_RTCAdmin_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetRTCAdminInterface(Handle) } }
    }

    /**
    Get a handle to the Real Time Communications Interface (RTC).
    From the RTC interface you can retrieve the handle to the audio interface (RTCAudio), which is a component of RTC.

    - Returns: `EOS_HRTC` handle
    - SeeAlso: `EOS_RTC_GetAudioInterface`
    - SeeAlso: `eos_rtc`.h
    - SeeAlso: `eos_rtc_types`.h
    */
    private func ____GetRTCInterface() -> SwiftEOS_RTC_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetRTCInterface(Handle) } }
    }

    /**
    Get a handle to the Reports Interface.

    - Returns: `EOS_HReports` handle
    - SeeAlso: `eos_reports`.h
    - SeeAlso: `eos_reports_types`.h
    */
    private func ____GetReportsInterface() -> SwiftEOS_Reports_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetReportsInterface(Handle) } }
    }

    /**
    Get a handle to the Sanctions Interface.

    - Returns: `EOS_HSanctions` handle
    - SeeAlso: `eos_sanctions`.h
    - SeeAlso: `eos_sanctions_types`.h
    */
    private func ____GetSanctionsInterface() -> SwiftEOS_Sanctions_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetSanctionsInterface(Handle) } }
    }

    /**
    Get a handle to the Sessions Interface.

    - Returns: `EOS_HSessions` handle
    - SeeAlso: `eos_sessions`.h
    - SeeAlso: `eos_sessions_types`.h
    */
    private func ____GetSessionsInterface() -> SwiftEOS_Sessions_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetSessionsInterface(Handle) } }
    }

    /**
    Get a handle to the Stats Interface.

    - Returns: `EOS_HStats` handle
    - SeeAlso: `eos_stats`.h
    - SeeAlso: `eos_stats_types`.h
    */
    private func ____GetStatsInterface() -> SwiftEOS_Stats_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetStatsInterface(Handle) } }
    }

    /**
    Get a handle to the TitleStorage Interface.

    - Returns: `EOS_HTitleStorage` handle
    - SeeAlso: `eos_titlestorage`.h
    - SeeAlso: `eos_titlestorage_types`.h
    */
    private func ____GetTitleStorageInterface() -> SwiftEOS_TitleStorage_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetTitleStorageInterface(Handle) } }
    }

    /**
    Get a handle to the UI Interface.

    - Returns: `EOS_HUI` handle
    - SeeAlso: `eos_ui`.h
    - SeeAlso: `eos_ui_types`.h
    */
    private func ____GetUIInterface() -> SwiftEOS_UI_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetUIInterface(Handle) } }
    }

    /**
    Get a handle to the UserInfo Interface.

    - Returns: `EOS_HUserInfo` handle
    - SeeAlso: `eos_userinfo`.h
    - SeeAlso: `eos_userinfo_types`.h
    */
    private func ____GetUserInfoInterface() -> SwiftEOS_UserInfo_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetUserInfoInterface(Handle) } }
    }

    /**
    Set the override country code that the SDK will send to services which require it.
    This is not currently used for anything internally.

    - Throws: An `EOS_EResult` that indicates whether the override country code string was saved.
              `EOS_Success` if the country code was overridden
              `EOS_InvalidParameters` if you pass an invalid country code
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_COUNTRYCODE_MAX_LENGTH`
    */
    private func ____SetOverrideCountryCode(
        _ NewCountryCode: String?
    ) throws {
        try withPointerManager { pointerManager in
            try withTransformed(
                value: NewCountryCode,
                transform: { NewCountryCode in
                    pointerManager.managedPointerToBuffer(copyingArray: NewCountryCode?.utf8CString) },
                nested: { NewCountryCode in
                    try throwingSdkResult { 
                        EOS_Platform_SetOverrideCountryCode(
                            Handle,
                            NewCountryCode
                        ) } }
            ) }
    }

    /**
    Set the override locale code that the SDK will send to services which require it.
    This is used for localization. This follows ISO 639.

    - Throws: An `EOS_EResult` that indicates whether the override locale code string was saved.
              `EOS_Success` if the locale code was overridden
              `EOS_InvalidParameters` if you pass an invalid locale code
    - SeeAlso: `eos_ecom`.h
    - SeeAlso: `EOS_LOCALECODE_MAX_LENGTH`
    */
    private func ____SetOverrideLocaleCode(
        _ NewLocaleCode: String?
    ) throws {
        try withPointerManager { pointerManager in
            try withTransformed(
                value: NewLocaleCode,
                transform: { NewLocaleCode in
                    pointerManager.managedPointerToBuffer(copyingArray: NewLocaleCode?.utf8CString) },
                nested: { NewLocaleCode in
                    try throwingSdkResult { 
                        EOS_Platform_SetOverrideLocaleCode(
                            Handle,
                            NewLocaleCode
                        ) } }
            ) }
    }

    /**
    Notify the platform instance to do work. This function must be called frequently in order for the services provided by the SDK to properly
    function. For tick-based applications, it is usually desireable to call this once per-tick.
    */
    private func ____Tick() {
        withPointerManager { pointerManager in
            EOS_Platform_Tick(Handle) }
    }
}
