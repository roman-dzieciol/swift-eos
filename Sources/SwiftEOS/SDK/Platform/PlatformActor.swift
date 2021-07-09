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
     * Checks if the app was launched through the Epic Launcher, and relaunches it through the Epic Launcher if it wasn't.
     * 
     * @return An EOS_EResult is returned to indicate success or an error.
     * EOS_Success is returned if the app is being restarted. You should quit your process as soon as possible.
     * EOS_NoChange is returned if the app was already launched through the Epic Launcher, and no action needs to be taken.
     * EOS_UnexpectedError is returned if the LauncherCheck module failed to initialize, or the module tried and failed to restart the app.
     */
    public func CheckForLauncherAndRestart() throws {
        try ____CheckForLauncherAndRestart()
    }

    /**
     * Get a handle to the Achievements Interface.
     * 
     * @return EOS_HAchievements handle
     * 
     * @see eos_achievements.h
     * @see eos_achievements_types.h
     */
    public func GetAchievementsInterface() -> SwiftEOS_Achievements_Actor? {
        try ____GetAchievementsInterface()
    }

    /**
     * This only will return the value set as the override otherwise EOS_NotFound is returned.
     * This is not currently used for anything internally.
     * 
     * - Parameter LocalUserId:  The account to use for lookup if no override exists.
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_COUNTRYCODE_MAX_LENGTH.
     * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the active country code string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if there is not an override country code for the user.
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the country code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see eos_ecom.h
     * @see EOS_COUNTRYCODE_MAX_LENGTH
     */
    public func GetActiveCountryCode(
        LocalUserId: EOS_EpicAccountId
    ) throws -> String? {
        try ____GetActiveCountryCode(LocalUserId)
    }

    /**
     * Get the active locale code that the SDK will send to services which require it.
     * This returns the override value otherwise it will use the locale code of the given user.
     * This is used for localization. This follows ISO 639.
     * 
     * - Parameter LocalUserId:  The account to use for lookup if no override exists.
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_LOCALECODE_MAX_LENGTH.
     * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the active locale code string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if there is neither an override nor an available locale code for the user.
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the locale code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see eos_ecom.h
     * @see EOS_LOCALECODE_MAX_LENGTH
     */
    public func GetActiveLocaleCode(
        LocalUserId: EOS_EpicAccountId
    ) throws -> String? {
        try ____GetActiveLocaleCode(LocalUserId)
    }

    /**
     * Get a handle to the Anti-Cheat Client Interface.
     * 
     * @return EOS_HAntiCheatClient handle
     * 
     * @see eos_anticheatclient.h
     * @see eos_anticheatclient_types.h
     */
    public func GetAntiCheatClientInterface() -> SwiftEOS_AntiCheatClient_Actor? {
        try ____GetAntiCheatClientInterface()
    }

    /**
     * Get a handle to the Anti-Cheat Server Interface.
     * 
     * @return EOS_HAntiCheatServer handle
     * 
     * @see eos_anticheatserver.h
     * @see eos_anticheatserver_types.h
     */
    public func GetAntiCheatServerInterface() -> SwiftEOS_AntiCheatServer_Actor? {
        try ____GetAntiCheatServerInterface()
    }

    /**
     * Get a handle to the Auth Interface.
     * 
     * @return EOS_HAuth handle
     * 
     * @see eos_auth.h
     * @see eos_auth_types.h
     */
    public func GetAuthInterface() -> SwiftEOS_Auth_Actor? {
        try ____GetAuthInterface()
    }

    /**
     * Get a handle to the Connect Interface.
     * 
     * @return EOS_HConnect handle
     * 
     * @see eos_connect.h
     * @see eos_connect_types.h
     */
    public func GetConnectInterface() -> SwiftEOS_Connect_Actor? {
        try ____GetConnectInterface()
    }

    /**
     * Get a handle to the Ecom Interface.
     * 
     * @return EOS_HEcom handle
     * 
     * @see eos_ecom.h
     * @see eos_ecom_types.h
     */
    public func GetEcomInterface() -> SwiftEOS_Ecom_Actor? {
        try ____GetEcomInterface()
    }

    /**
     * Get a handle to the Friends Interface.
     * 
     * @return EOS_HFriends handle
     * 
     * @see eos_friends.h
     * @see eos_friends_types.h
     */
    public func GetFriendsInterface() -> SwiftEOS_Friends_Actor? {
        try ____GetFriendsInterface()
    }

    /**
     * Get a handle to the Kids Web Service Interface.
     * 
     * @return EOS_HKWS handle
     * 
     * @see eos_kws.h
     * @see eos_kws_types.h
     */
    public func GetKWSInterface() -> SwiftEOS_KWS_Actor? {
        try ____GetKWSInterface()
    }

    /**
     * Get a handle to the Leaderboards Interface.
     * 
     * @return EOS_HLeaderboards handle
     * 
     * @see eos_leaderboards.h
     * @see eos_leaderboards_types.h
     */
    public func GetLeaderboardsInterface() -> SwiftEOS_Leaderboards_Actor? {
        try ____GetLeaderboardsInterface()
    }

    /**
     * Get a handle to the Lobby Interface.
     * 
     * @return EOS_HLobby handle
     * 
     * @see eos_lobby.h
     * @see eos_lobby_types.h
     */
    public func GetLobbyInterface() -> SwiftEOS_Lobby_Actor? {
        try ____GetLobbyInterface()
    }

    /**
     * Get a handle to the Metrics Interface.
     * 
     * @return EOS_HMetrics handle
     * 
     * @see eos_metrics.h
     * @see eos_metrics_types.h
     */
    public func GetMetricsInterface() -> SwiftEOS_Metrics_Actor? {
        try ____GetMetricsInterface()
    }

    /**
     * Get a handle to the Mods Interface.
     * 
     * @return EOS_HMods handle
     * 
     * @see eos_mods.h
     * @see eos_mods_types.h
     */
    public func GetModsInterface() -> SwiftEOS_Mods_Actor? {
        try ____GetModsInterface()
    }

    /**
     * Get the override country code that the SDK will send to services which require it.
     * This is not currently used for anything internally.
     * 
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_COUNTRYCODE_MAX_LENGTH.
     * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the override country code string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the country code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see eos_ecom.h
     * @see EOS_COUNTRYCODE_MAX_LENGTH
     */
    public func GetOverrideCountryCode() throws -> String? {
        try ____GetOverrideCountryCode()
    }

    /**
     * Get the override locale code that the SDK will send to services which require it.
     * This is used for localization. This follows ISO 639.
     * 
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_LOCALECODE_MAX_LENGTH.
     * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the override locale code string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the locale code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see eos_ecom.h
     * @see EOS_LOCALECODE_MAX_LENGTH
     */
    public func GetOverrideLocaleCode() throws -> String? {
        try ____GetOverrideLocaleCode()
    }

    /**
     * Get a handle to the Peer-to-Peer Networking Interface.
     * 
     * @return EOS_HP2P handle
     * 
     * @see eos_p2p.h
     * @see eos_p2p_types.h
     */
    public func GetP2PInterface() -> SwiftEOS_P2P_Actor? {
        try ____GetP2PInterface()
    }

    /**
     * Get a handle to the PlayerDataStorage Interface.
     * 
     * @return EOS_HPlayerDataStorage handle
     * 
     * @see eos_playerdatastorage.h
     * @see eos_playerdatastorage_types.h
     */
    public func GetPlayerDataStorageInterface() -> SwiftEOS_PlayerDataStorage_Actor? {
        try ____GetPlayerDataStorageInterface()
    }

    /**
     * Get a handle to the Presence Interface.
     * 
     * @return EOS_HPresence handle
     * 
     * @see eos_presence.h
     * @see eos_presence_types.h
     */
    public func GetPresenceInterface() -> SwiftEOS_Presence_Actor? {
        try ____GetPresenceInterface()
    }

    /**
     * Get a handle to the RTC Admin interface
     * 
     * @return EOS_HRTCAdmin handle
     * 
     * @see eos_rtc_admin.h
     * @see eos_admin_types.h
     */
    public func GetRTCAdminInterface() -> SwiftEOS_RTCAdmin_Actor? {
        try ____GetRTCAdminInterface()
    }

    /**
     * Get a handle to the Real Time Communications Interface (RTC).
     * From the RTC interface you can retrieve the handle to the audio interface (RTCAudio), which is a component of RTC.
     * 
     * @return EOS_HRTC handle
     * 
     * @see EOS_RTC_GetAudioInterface
     * @see eos_rtc.h
     * @see eos_rtc_types.h
     */
    public func GetRTCInterface() -> SwiftEOS_RTC_Actor? {
        try ____GetRTCInterface()
    }

    /**
     * Get a handle to the Reports Interface.
     * 
     * @return EOS_HReports handle
     * 
     * @see eos_reports.h
     * @see eos_reports_types.h
     */
    public func GetReportsInterface() -> SwiftEOS_Reports_Actor? {
        try ____GetReportsInterface()
    }

    /**
     * Get a handle to the Sanctions Interface.
     * 
     * @return EOS_HSanctions handle
     * 
     * @see eos_sanctions.h
     * @see eos_sanctions_types.h
     */
    public func GetSanctionsInterface() -> SwiftEOS_Sanctions_Actor? {
        try ____GetSanctionsInterface()
    }

    /**
     * Get a handle to the Sessions Interface.
     * 
     * @return EOS_HSessions handle
     * 
     * @see eos_sessions.h
     * @see eos_sessions_types.h
     */
    public func GetSessionsInterface() -> SwiftEOS_Sessions_Actor? {
        try ____GetSessionsInterface()
    }

    /**
     * Get a handle to the Stats Interface.
     * 
     * @return EOS_HStats handle
     * 
     * @see eos_stats.h
     * @see eos_stats_types.h
     */
    public func GetStatsInterface() -> SwiftEOS_Stats_Actor? {
        try ____GetStatsInterface()
    }

    /**
     * Get a handle to the TitleStorage Interface.
     * 
     * @return EOS_HTitleStorage handle
     * 
     * @see eos_titlestorage.h
     * @see eos_titlestorage_types.h
     */
    public func GetTitleStorageInterface() -> SwiftEOS_TitleStorage_Actor? {
        try ____GetTitleStorageInterface()
    }

    /**
     * Get a handle to the UI Interface.
     * 
     * @return EOS_HUI handle
     * 
     * @see eos_ui.h
     * @see eos_ui_types.h
     */
    public func GetUIInterface() -> SwiftEOS_UI_Actor? {
        try ____GetUIInterface()
    }

    /**
     * Get a handle to the UserInfo Interface.
     * 
     * @return EOS_HUserInfo handle
     * 
     * @see eos_userinfo.h
     * @see eos_userinfo_types.h
     */
    public func GetUserInfoInterface() -> SwiftEOS_UserInfo_Actor? {
        try ____GetUserInfoInterface()
    }

    /**
     * Set the override country code that the SDK will send to services which require it.
     * This is not currently used for anything internally.
     * 
     * @return An EOS_EResult that indicates whether the override country code string was saved.
     *         EOS_Success if the country code was overridden
     *         EOS_InvalidParameters if you pass an invalid country code
     * 
     * @see eos_ecom.h
     * @see EOS_COUNTRYCODE_MAX_LENGTH
     */
    public func SetOverrideCountryCode(
        NewCountryCode: String?
    ) throws {
        try ____SetOverrideCountryCode(NewCountryCode)
    }

    /**
     * Set the override locale code that the SDK will send to services which require it.
     * This is used for localization. This follows ISO 639.
     * 
     * @return An EOS_EResult that indicates whether the override locale code string was saved.
     *         EOS_Success if the locale code was overridden
     *         EOS_InvalidParameters if you pass an invalid locale code
     * 
     * @see eos_ecom.h
     * @see EOS_LOCALECODE_MAX_LENGTH
     */
    public func SetOverrideLocaleCode(
        NewLocaleCode: String?
    ) throws {
        try ____SetOverrideLocaleCode(NewLocaleCode)
    }

    /**
     * Notify the platform instance to do work. This function must be called frequently in order for the services provided by the SDK to properly
     * function. For tick-based applications, it is usually desireable to call this once per-tick.
     */
    public func Tick() {
        try ____Tick()
    }
}

extension SwiftEOS_Platform_Actor {

    /**
     * Checks if the app was launched through the Epic Launcher, and relaunches it through the Epic Launcher if it wasn't.
     * 
     * @return An EOS_EResult is returned to indicate success or an error.
     * EOS_Success is returned if the app is being restarted. You should quit your process as soon as possible.
     * EOS_NoChange is returned if the app was already launched through the Epic Launcher, and no action needs to be taken.
     * EOS_UnexpectedError is returned if the LauncherCheck module failed to initialize, or the module tried and failed to restart the app.
     */
    private func ____CheckForLauncherAndRestart() throws {
        try withPointerManager { pointerManager in
            try throwingSdkResult { 
                EOS_Platform_CheckForLauncherAndRestart(Handle) } }
    }

    /**
     * Get a handle to the Achievements Interface.
     * 
     * @return EOS_HAchievements handle
     * 
     * @see eos_achievements.h
     * @see eos_achievements_types.h
     */
    private func ____GetAchievementsInterface() -> SwiftEOS_Achievements_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetAchievementsInterface(Handle) } }
    }

    /**
     * This only will return the value set as the override otherwise EOS_NotFound is returned.
     * This is not currently used for anything internally.
     * 
     * - Parameter LocalUserId:  The account to use for lookup if no override exists.
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_COUNTRYCODE_MAX_LENGTH.
     * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the active country code string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if there is not an override country code for the user.
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the country code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see eos_ecom.h
     * @see EOS_COUNTRYCODE_MAX_LENGTH
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
     * Get the active locale code that the SDK will send to services which require it.
     * This returns the override value otherwise it will use the locale code of the given user.
     * This is used for localization. This follows ISO 639.
     * 
     * - Parameter LocalUserId:  The account to use for lookup if no override exists.
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_LOCALECODE_MAX_LENGTH.
     * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the active locale code string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if there is neither an override nor an available locale code for the user.
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the locale code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see eos_ecom.h
     * @see EOS_LOCALECODE_MAX_LENGTH
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
     * Get a handle to the Anti-Cheat Client Interface.
     * 
     * @return EOS_HAntiCheatClient handle
     * 
     * @see eos_anticheatclient.h
     * @see eos_anticheatclient_types.h
     */
    private func ____GetAntiCheatClientInterface() -> SwiftEOS_AntiCheatClient_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetAntiCheatClientInterface(Handle) } }
    }

    /**
     * Get a handle to the Anti-Cheat Server Interface.
     * 
     * @return EOS_HAntiCheatServer handle
     * 
     * @see eos_anticheatserver.h
     * @see eos_anticheatserver_types.h
     */
    private func ____GetAntiCheatServerInterface() -> SwiftEOS_AntiCheatServer_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetAntiCheatServerInterface(Handle) } }
    }

    /**
     * Get a handle to the Auth Interface.
     * 
     * @return EOS_HAuth handle
     * 
     * @see eos_auth.h
     * @see eos_auth_types.h
     */
    private func ____GetAuthInterface() -> SwiftEOS_Auth_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetAuthInterface(Handle) } }
    }

    /**
     * Get a handle to the Connect Interface.
     * 
     * @return EOS_HConnect handle
     * 
     * @see eos_connect.h
     * @see eos_connect_types.h
     */
    private func ____GetConnectInterface() -> SwiftEOS_Connect_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetConnectInterface(Handle) } }
    }

    /**
     * Get a handle to the Ecom Interface.
     * 
     * @return EOS_HEcom handle
     * 
     * @see eos_ecom.h
     * @see eos_ecom_types.h
     */
    private func ____GetEcomInterface() -> SwiftEOS_Ecom_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetEcomInterface(Handle) } }
    }

    /**
     * Get a handle to the Friends Interface.
     * 
     * @return EOS_HFriends handle
     * 
     * @see eos_friends.h
     * @see eos_friends_types.h
     */
    private func ____GetFriendsInterface() -> SwiftEOS_Friends_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetFriendsInterface(Handle) } }
    }

    /**
     * Get a handle to the Kids Web Service Interface.
     * 
     * @return EOS_HKWS handle
     * 
     * @see eos_kws.h
     * @see eos_kws_types.h
     */
    private func ____GetKWSInterface() -> SwiftEOS_KWS_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetKWSInterface(Handle) } }
    }

    /**
     * Get a handle to the Leaderboards Interface.
     * 
     * @return EOS_HLeaderboards handle
     * 
     * @see eos_leaderboards.h
     * @see eos_leaderboards_types.h
     */
    private func ____GetLeaderboardsInterface() -> SwiftEOS_Leaderboards_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetLeaderboardsInterface(Handle) } }
    }

    /**
     * Get a handle to the Lobby Interface.
     * 
     * @return EOS_HLobby handle
     * 
     * @see eos_lobby.h
     * @see eos_lobby_types.h
     */
    private func ____GetLobbyInterface() -> SwiftEOS_Lobby_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetLobbyInterface(Handle) } }
    }

    /**
     * Get a handle to the Metrics Interface.
     * 
     * @return EOS_HMetrics handle
     * 
     * @see eos_metrics.h
     * @see eos_metrics_types.h
     */
    private func ____GetMetricsInterface() -> SwiftEOS_Metrics_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetMetricsInterface(Handle) } }
    }

    /**
     * Get a handle to the Mods Interface.
     * 
     * @return EOS_HMods handle
     * 
     * @see eos_mods.h
     * @see eos_mods_types.h
     */
    private func ____GetModsInterface() -> SwiftEOS_Mods_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetModsInterface(Handle) } }
    }

    /**
     * Get the override country code that the SDK will send to services which require it.
     * This is not currently used for anything internally.
     * 
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_COUNTRYCODE_MAX_LENGTH.
     * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the override country code string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the country code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see eos_ecom.h
     * @see EOS_COUNTRYCODE_MAX_LENGTH
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
     * Get the override locale code that the SDK will send to services which require it.
     * This is used for localization. This follows ISO 639.
     * 
     * - Parameter OutBuffer:  The buffer into which the character data should be written.  The buffer must be long enough to hold a string of EOS_LOCALECODE_MAX_LENGTH.
     * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
     *                          The input buffer should include enough space to be null-terminated.
     *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer.
     * 
     * @return An EOS_EResult that indicates whether the override locale code string was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutBuffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the locale code string. InOutBufferLength contains the required minimum length to perform the operation successfully.
     * 
     * @see eos_ecom.h
     * @see EOS_LOCALECODE_MAX_LENGTH
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
     * Get a handle to the Peer-to-Peer Networking Interface.
     * 
     * @return EOS_HP2P handle
     * 
     * @see eos_p2p.h
     * @see eos_p2p_types.h
     */
    private func ____GetP2PInterface() -> SwiftEOS_P2P_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetP2PInterface(Handle) } }
    }

    /**
     * Get a handle to the PlayerDataStorage Interface.
     * 
     * @return EOS_HPlayerDataStorage handle
     * 
     * @see eos_playerdatastorage.h
     * @see eos_playerdatastorage_types.h
     */
    private func ____GetPlayerDataStorageInterface() -> SwiftEOS_PlayerDataStorage_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetPlayerDataStorageInterface(Handle) } }
    }

    /**
     * Get a handle to the Presence Interface.
     * 
     * @return EOS_HPresence handle
     * 
     * @see eos_presence.h
     * @see eos_presence_types.h
     */
    private func ____GetPresenceInterface() -> SwiftEOS_Presence_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetPresenceInterface(Handle) } }
    }

    /**
     * Get a handle to the RTC Admin interface
     * 
     * @return EOS_HRTCAdmin handle
     * 
     * @see eos_rtc_admin.h
     * @see eos_admin_types.h
     */
    private func ____GetRTCAdminInterface() -> SwiftEOS_RTCAdmin_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetRTCAdminInterface(Handle) } }
    }

    /**
     * Get a handle to the Real Time Communications Interface (RTC).
     * From the RTC interface you can retrieve the handle to the audio interface (RTCAudio), which is a component of RTC.
     * 
     * @return EOS_HRTC handle
     * 
     * @see EOS_RTC_GetAudioInterface
     * @see eos_rtc.h
     * @see eos_rtc_types.h
     */
    private func ____GetRTCInterface() -> SwiftEOS_RTC_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetRTCInterface(Handle) } }
    }

    /**
     * Get a handle to the Reports Interface.
     * 
     * @return EOS_HReports handle
     * 
     * @see eos_reports.h
     * @see eos_reports_types.h
     */
    private func ____GetReportsInterface() -> SwiftEOS_Reports_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetReportsInterface(Handle) } }
    }

    /**
     * Get a handle to the Sanctions Interface.
     * 
     * @return EOS_HSanctions handle
     * 
     * @see eos_sanctions.h
     * @see eos_sanctions_types.h
     */
    private func ____GetSanctionsInterface() -> SwiftEOS_Sanctions_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetSanctionsInterface(Handle) } }
    }

    /**
     * Get a handle to the Sessions Interface.
     * 
     * @return EOS_HSessions handle
     * 
     * @see eos_sessions.h
     * @see eos_sessions_types.h
     */
    private func ____GetSessionsInterface() -> SwiftEOS_Sessions_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetSessionsInterface(Handle) } }
    }

    /**
     * Get a handle to the Stats Interface.
     * 
     * @return EOS_HStats handle
     * 
     * @see eos_stats.h
     * @see eos_stats_types.h
     */
    private func ____GetStatsInterface() -> SwiftEOS_Stats_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetStatsInterface(Handle) } }
    }

    /**
     * Get a handle to the TitleStorage Interface.
     * 
     * @return EOS_HTitleStorage handle
     * 
     * @see eos_titlestorage.h
     * @see eos_titlestorage_types.h
     */
    private func ____GetTitleStorageInterface() -> SwiftEOS_TitleStorage_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetTitleStorageInterface(Handle) } }
    }

    /**
     * Get a handle to the UI Interface.
     * 
     * @return EOS_HUI handle
     * 
     * @see eos_ui.h
     * @see eos_ui_types.h
     */
    private func ____GetUIInterface() -> SwiftEOS_UI_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetUIInterface(Handle) } }
    }

    /**
     * Get a handle to the UserInfo Interface.
     * 
     * @return EOS_HUserInfo handle
     * 
     * @see eos_userinfo.h
     * @see eos_userinfo_types.h
     */
    private func ____GetUserInfoInterface() -> SwiftEOS_UserInfo_Actor? {
        returningActorFromHandle { 
            withPointerManager { pointerManager in
                EOS_Platform_GetUserInfoInterface(Handle) } }
    }

    /**
     * Set the override country code that the SDK will send to services which require it.
     * This is not currently used for anything internally.
     * 
     * @return An EOS_EResult that indicates whether the override country code string was saved.
     *         EOS_Success if the country code was overridden
     *         EOS_InvalidParameters if you pass an invalid country code
     * 
     * @see eos_ecom.h
     * @see EOS_COUNTRYCODE_MAX_LENGTH
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
     * Set the override locale code that the SDK will send to services which require it.
     * This is used for localization. This follows ISO 639.
     * 
     * @return An EOS_EResult that indicates whether the override locale code string was saved.
     *         EOS_Success if the locale code was overridden
     *         EOS_InvalidParameters if you pass an invalid locale code
     * 
     * @see eos_ecom.h
     * @see EOS_LOCALECODE_MAX_LENGTH
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
     * Notify the platform instance to do work. This function must be called frequently in order for the services provided by the SDK to properly
     * function. For tick-based applications, it is usually desireable to call this once per-tick.
     */
    private func ____Tick() {
        withPointerManager { pointerManager in
            EOS_Platform_Tick(Handle) }
    }
}
