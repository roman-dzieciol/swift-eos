import Foundation
import EOSSDK
public class SwiftEOS_Achievements_Actor: SwiftEOSActor {
    public let Handle: EOS_HAchievements

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HAchievements
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * DEPRECATED! Use EOS_Achievements_AddNotifyAchievementsUnlockedV2 instead.
     * Register to receive achievement unlocked notifications.
     * 
     * @note must call EOS_Achievements_RemoveNotifyAchievementsUnlocked to remove the notification
     * 
     * @see EOS_Achievements_RemoveNotifyAchievementsUnlocked
     * 
     * - Parameter Options:  Structure containing information about the achievement unlocked notification
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter NotificationFn:  A callback that is fired when an achievement unlocked notification for a user has been received
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyAchievementsUnlocked(
        NotificationFn: @escaping (SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo> {
        try ____AddNotifyAchievementsUnlocked(NotificationFn)
    }

    /**
     * Register to receive achievement unlocked notifications.
     * 
     * @note must call EOS_Achievements_RemoveNotifyAchievementsUnlocked to remove the notification
     * 
     * @see EOS_Achievements_RemoveNotifyAchievementsUnlocked
     * 
     * - Parameter Options:  Structure containing information about the achievement unlocked notification
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter NotificationFn:  A callback that is fired when an achievement unlocked notification for a user has been received
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyAchievementsUnlockedV2(
        NotificationFn: @escaping (SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info> {
        try ____AddNotifyAchievementsUnlockedV2(NotificationFn)
    }

    /**
     * DEPRECATED! Use EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId instead.
     * Fetches an achievement definition from a given achievement ID.
     * 
     * - Parameter AchievementId:  Achievement ID to look for when copying definition from the cache 
     * - Parameter OutDefinition:  The achievement definition for the given achievement ID, if it exists and is valid, use EOS_Achievements_Definition_Release when finished
     * 
     * @see EOS_Achievements_Definition_Release
     * @see EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId
     * 
     * @return EOS_Success if the information is available and passed out in OutDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the achievement definition is not found
     */
    public func CopyAchievementDefinitionByAchievementId(
        AchievementId: String?
    ) throws -> SwiftEOS_Achievements_Definition? {
        try ____CopyAchievementDefinitionByAchievementId(.init(AchievementId: AchievementId))
    }

    /**
     * DEPRECATED! Use EOS_Achievements_CopyAchievementDefinitionV2ByIndex instead.
     * Fetches an achievement definition from a given index.
     * 
     * - Parameter AchievementIndex:  Index of the achievement definition to retrieve from the cache 
     * - Parameter OutDefinition:  The achievement definition for the given index, if it exists and is valid, use EOS_Achievements_Definition_Release when finished
     * 
     * @see EOS_Achievements_CopyAchievementDefinitionV2ByIndex
     * @see EOS_Achievements_Definition_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the achievement definition is not found
     */
    public func CopyAchievementDefinitionByIndex(
        AchievementIndex: Int
    ) throws -> SwiftEOS_Achievements_Definition? {
        try ____CopyAchievementDefinitionByIndex(.init(AchievementIndex: AchievementIndex))
    }

    /**
     * Fetches an achievement definition from a given achievement ID.
     * 
     * - Parameter AchievementId:  Achievement ID to look for when copying the definition from the cache. 
     * - Parameter OutDefinition:  The achievement definition for the given achievement ID, if it exists and is valid, use EOS_Achievements_Definition_Release when finished
     * 
     * @see EOS_Achievements_DefinitionV2_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the achievement definition is not found
     *         EOS_Invalid_ProductUserID if any of the userid options are incorrect
     */
    public func CopyAchievementDefinitionV2ByAchievementId(
        AchievementId: String?
    ) throws -> SwiftEOS_Achievements_DefinitionV2? {
        try ____CopyAchievementDefinitionV2ByAchievementId(.init(AchievementId: AchievementId))
    }

    /**
     * Fetches an achievement definition from a given index.
     * 
     * - Parameter AchievementIndex:  Index of the achievement definition to retrieve from the cache. 
     * - Parameter OutDefinition:  The achievement definition for the given index, if it exists and is valid, use EOS_Achievements_Definition_Release when finished
     * 
     * @see EOS_Achievements_DefinitionV2_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the achievement definition is not found
     *         EOS_Invalid_ProductUserID if any of the userid options are incorrect
     */
    public func CopyAchievementDefinitionV2ByIndex(
        AchievementIndex: Int
    ) throws -> SwiftEOS_Achievements_DefinitionV2? {
        try ____CopyAchievementDefinitionV2ByIndex(.init(AchievementIndex: AchievementIndex))
    }

    /**
     * Fetches a player achievement from a given achievement ID.
     * 
     * - Parameter TargetUserId:  The Product User ID for the user whose achievement is to be retrieved. 
     * - Parameter AchievementId:  Achievement ID to search for when retrieving player achievement data from the cache. 
     * - Parameter LocalUserId:  The Product User ID for the user who is querying for a player achievement. For a Dedicated Server this should be null. 
     * - Parameter OutAchievement:  The player achievement data for the given achievement ID, if it exists and is valid, use EOS_Achievements_PlayerAchievement_Release when finished
     * 
     * @see EOS_Achievements_PlayerAchievement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutAchievement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the player achievement is not found
     *         EOS_Invalid_ProductUserID if you pass an invalid user ID
     */
    public func CopyPlayerAchievementByAchievementId(
        TargetUserId: EOS_ProductUserId?,
        AchievementId: String?,
        LocalUserId: EOS_ProductUserId?
    ) throws -> SwiftEOS_Achievements_PlayerAchievement? {
        try ____CopyPlayerAchievementByAchievementId(.init(
                TargetUserId: TargetUserId,
                AchievementId: AchievementId,
                LocalUserId: LocalUserId
            ))
    }

    /**
     * Fetches a player achievement from a given index.
     * 
     * - Parameter TargetUserId:  The Product User ID for the user whose achievement is to be retrieved. 
     * - Parameter AchievementIndex:  The index of the player achievement data to retrieve from the cache. 
     * - Parameter LocalUserId:  The Product User ID for the user who is querying for a player achievement. For a Dedicated Server this should be null. 
     * - Parameter OutAchievement:  The player achievement data for the given index, if it exists and is valid, use EOS_Achievements_PlayerAchievement_Release when finished
     * 
     * @see EOS_Achievements_PlayerAchievement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutAchievement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the player achievement is not found
     *         EOS_Invalid_ProductUserID if you pass an invalid user ID
     */
    public func CopyPlayerAchievementByIndex(
        TargetUserId: EOS_ProductUserId?,
        AchievementIndex: Int,
        LocalUserId: EOS_ProductUserId?
    ) throws -> SwiftEOS_Achievements_PlayerAchievement? {
        try ____CopyPlayerAchievementByIndex(.init(
                TargetUserId: TargetUserId,
                AchievementIndex: AchievementIndex,
                LocalUserId: LocalUserId
            ))
    }

    /**
     * DEPRECATED! Use EOS_Achievements_CopyPlayerAchievementByAchievementId instead.
     * Fetches an unlocked achievement from a given achievement ID.
     * 
     * - Parameter UserId:  The Product User ID for the user who is copying the unlocked achievement 
     * - Parameter AchievementId:  AchievementId of the unlocked achievement to retrieve from the cache 
     * - Parameter OutAchievement:  The unlocked achievement data for the given achievement ID, if it exists and is valid, use EOS_Achievements_UnlockedAchievement_Release when finished
     * 
     * @see EOS_Achievements_UnlockedAchievement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutAchievement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the unlocked achievement is not found
     */
    public func CopyUnlockedAchievementByAchievementId(
        UserId: EOS_ProductUserId?,
        AchievementId: String?
    ) throws -> SwiftEOS_Achievements_UnlockedAchievement? {
        try ____CopyUnlockedAchievementByAchievementId(.init(
                UserId: UserId,
                AchievementId: AchievementId
            ))
    }

    /**
     * DEPRECATED! Use EOS_Achievements_CopyPlayerAchievementByAchievementId instead.
     * Fetches an unlocked achievement from a given index.
     * 
     * - Parameter UserId:  The Product User ID for the user who is copying the unlocked achievement 
     * - Parameter AchievementIndex:  Index of the unlocked achievement to retrieve from the cache 
     * - Parameter OutAchievement:  The unlocked achievement data for the given index, if it exists and is valid, use EOS_Achievements_UnlockedAchievement_Release when finished
     * 
     * @see EOS_Achievements_UnlockedAchievement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutAchievement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the unlocked achievement is not found
     */
    public func CopyUnlockedAchievementByIndex(
        UserId: EOS_ProductUserId?,
        AchievementIndex: Int
    ) throws -> SwiftEOS_Achievements_UnlockedAchievement? {
        try ____CopyUnlockedAchievementByIndex(.init(
                UserId: UserId,
                AchievementIndex: AchievementIndex
            ))
    }

    /**
     * Fetch the number of achievement definitions that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the achievement definition count
     * 
     * @see EOS_Achievements_CopyAchievementDefinitionByIndex
     * 
     * @return Number of achievement definitions or 0 if there is an error
     */
    public func GetAchievementDefinitionCount() throws -> Int {
        try ____GetAchievementDefinitionCount()
    }

    /**
     * Fetch the number of player achievements that are cached locally.
     * 
     * - Parameter UserId:  The Product User ID for the user whose achievement count is being retrieved. 
     * 
     * @see EOS_Achievements_CopyPlayerAchievementByIndex
     * 
     * @return Number of player achievements or 0 if there is an error
     */
    public func GetPlayerAchievementCount(
        UserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetPlayerAchievementCount(.init(UserId: UserId))
    }

    /**
     * DEPRECATED! Use EOS_Achievements_GetPlayerAchievementCount, EOS_Achievements_CopyPlayerAchievementByIndex and filter for unlocked instead.
     * Fetch the number of unlocked achievements that are cached locally.
     * 
     * - Parameter UserId:  Product User ID for which to retrieve the unlocked achievement count 
     * 
     * @see EOS_Achievements_CopyUnlockedAchievementByIndex
     * 
     * @return Number of unlocked achievements or 0 if there is an error
     */
    public func GetUnlockedAchievementCount(
        UserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetUnlockedAchievementCount(.init(UserId: UserId))
    }

    /**
     * Query for a list of definitions for all existing achievements, including localized text, icon IDs and whether an achievement is hidden.
     * 
     * @note When the Social Overlay is enabled then this will be called automatically.  The Social Overlay is enabled by default (see EOS_PF_DISABLE_SOCIAL_OVERLAY).
     * 
     * - Parameter LocalUserId:  Product User ID for user who is querying definitions.
     * The localized text returned will be based on the locale code of the given user if they have a linked Epic Online Services Account ID.
     * The localized text returned can also be overridden using EOS_Platform_SetOverrideLocaleCode to override the locale.
     * If the locale code is not overridden and LocalUserId is not valid, default text will be returned.
     * - Parameter EpicUserId_DEPRECATED:  Deprecated 
     * - Parameter HiddenAchievementIds_DEPRECATED:  Deprecated 
     * - array num: HiddenAchievementsCount_DEPRECATED
     * - Parameter HiddenAchievementsCount_DEPRECATED:  Deprecated 
     * - array buffer: HiddenAchievementIds_DEPRECATED
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the query definitions operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryDefinitions(
        LocalUserId: EOS_ProductUserId?,
        EpicUserId_DEPRECATED: EOS_EpicAccountId?,
        HiddenAchievementIds_DEPRECATED: [String]?,
        HiddenAchievementsCount_DEPRECATED: Int,
        CompletionDelegate: @escaping (SwiftEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryDefinitions(
            .init(
                LocalUserId: LocalUserId,
                EpicUserId_DEPRECATED: EpicUserId_DEPRECATED,
                HiddenAchievementIds_DEPRECATED: HiddenAchievementIds_DEPRECATED,
                HiddenAchievementsCount_DEPRECATED: HiddenAchievementsCount_DEPRECATED
            ),
            CompletionDelegate
        )
    }

    /**
     * Query for a list of achievements for a specific player, including progress towards completion for each achievement.
     * 
     * @note When the Social Overlay is enabled then this will be called automatically.  The Social Overlay is enabled by default (see EOS_PF_DISABLE_SOCIAL_OVERLAY).
     * 
     * - Parameter TargetUserId:  The Product User ID for the user whose achievements are to be retrieved. 
     * - Parameter LocalUserId:  The Product User ID for the user who is querying for player achievements. For a Dedicated Server this should be null. 
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the query player achievements operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_Invalid_ProductUserID if any of the userid options are incorrect
     *         EOS_InvalidParameters if any of the other options are incorrect
     */
    public func QueryPlayerAchievements(
        TargetUserId: EOS_ProductUserId?,
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryPlayerAchievements(
            .init(
                TargetUserId: TargetUserId,
                LocalUserId: LocalUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Unlocks a number of achievements for a specific player.
     * 
     * - Parameter UserId:  The Product User ID for the user whose achievements we want to unlock. 
     * - Parameter AchievementIds:  An array of Achievement IDs to unlock. 
     * - array num: AchievementsCount
     * - Parameter AchievementsCount:  The number of achievements to unlock. 
     * - array buffer: AchievementIds
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the unlock achievements operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func UnlockAchievements(
        UserId: EOS_ProductUserId?,
        AchievementIds: [String]?,
        AchievementsCount: Int,
        CompletionDelegate: @escaping (SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo) -> Void
    ) throws {
        try ____UnlockAchievements(
            .init(
                UserId: UserId,
                AchievementIds: AchievementIds,
                AchievementsCount: AchievementsCount
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Achievements_Actor {

    /**
     * DEPRECATED! Use EOS_Achievements_AddNotifyAchievementsUnlockedV2 instead.
     * Register to receive achievement unlocked notifications.
     * 
     * @note must call EOS_Achievements_RemoveNotifyAchievementsUnlocked to remove the notification
     * 
     * @see EOS_Achievements_RemoveNotifyAchievementsUnlocked
     * 
     * - Parameter Options:  Structure containing information about the achievement unlocked notification
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter NotificationFn:  A callback that is fired when an achievement unlocked notification for a user has been received
     * 
     * @return handle representing the registered callback
     */
    private func ____AddNotifyAchievementsUnlocked(
        _ NotificationFn: @escaping (SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Achievements_AddNotifyAchievementsUnlockedOptions(), managedBy: pointerManager) { Options in
                        EOS_Achievements_AddNotifyAchievementsUnlocked(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Achievements_RemoveNotifyAchievementsUnlocked(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive achievement unlocked notifications.
     * 
     * @note must call EOS_Achievements_RemoveNotifyAchievementsUnlocked to remove the notification
     * 
     * @see EOS_Achievements_RemoveNotifyAchievementsUnlocked
     * 
     * - Parameter Options:  Structure containing information about the achievement unlocked notification
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter NotificationFn:  A callback that is fired when an achievement unlocked notification for a user has been received
     * 
     * @return handle representing the registered callback
     */
    private func ____AddNotifyAchievementsUnlockedV2(
        _ NotificationFn: @escaping (SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Achievements_AddNotifyAchievementsUnlockedV2Options(), managedBy: pointerManager) { Options in
                        EOS_Achievements_AddNotifyAchievementsUnlockedV2(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Achievements_RemoveNotifyAchievementsUnlocked(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * DEPRECATED! Use EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId instead.
     * Fetches an achievement definition from a given achievement ID.
     * 
     * - Parameter Options:  Structure containing the achievement ID being accessed
     * - Parameter OutDefinition:  The achievement definition for the given achievement ID, if it exists and is valid, use EOS_Achievements_Definition_Release when finished
     * 
     * @see EOS_Achievements_Definition_Release
     * @see EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId
     * 
     * @return EOS_Success if the information is available and passed out in OutDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the achievement definition is not found
     */
    private func ____CopyAchievementDefinitionByAchievementId(
        _ Options: SwiftEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions
    ) throws -> SwiftEOS_Achievements_Definition? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutDefinition in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Achievements_CopyAchievementDefinitionByAchievementId(
                                Handle,
                                Options,
                                OutDefinition
                            ) } } },
                release: EOS_Achievements_Definition_Release
            ) }
    }

    /**
     * DEPRECATED! Use EOS_Achievements_CopyAchievementDefinitionV2ByIndex instead.
     * Fetches an achievement definition from a given index.
     * 
     * - Parameter Options:  Structure containing the index being accessed
     * - Parameter OutDefinition:  The achievement definition for the given index, if it exists and is valid, use EOS_Achievements_Definition_Release when finished
     * 
     * @see EOS_Achievements_CopyAchievementDefinitionV2ByIndex
     * @see EOS_Achievements_Definition_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the achievement definition is not found
     */
    private func ____CopyAchievementDefinitionByIndex(
        _ Options: SwiftEOS_Achievements_CopyAchievementDefinitionByIndexOptions
    ) throws -> SwiftEOS_Achievements_Definition? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutDefinition in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Achievements_CopyAchievementDefinitionByIndex(
                                Handle,
                                Options,
                                OutDefinition
                            ) } } },
                release: EOS_Achievements_Definition_Release
            ) }
    }

    /**
     * Fetches an achievement definition from a given achievement ID.
     * 
     * - Parameter Options:  Structure containing the achievement ID being accessed
     * - Parameter OutDefinition:  The achievement definition for the given achievement ID, if it exists and is valid, use EOS_Achievements_Definition_Release when finished
     * 
     * @see EOS_Achievements_DefinitionV2_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the achievement definition is not found
     *         EOS_Invalid_ProductUserID if any of the userid options are incorrect
     */
    private func ____CopyAchievementDefinitionV2ByAchievementId(
        _ Options: SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions
    ) throws -> SwiftEOS_Achievements_DefinitionV2? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutDefinition in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId(
                                Handle,
                                Options,
                                OutDefinition
                            ) } } },
                release: EOS_Achievements_DefinitionV2_Release
            ) }
    }

    /**
     * Fetches an achievement definition from a given index.
     * 
     * - Parameter Options:  Structure containing the index being accessed
     * - Parameter OutDefinition:  The achievement definition for the given index, if it exists and is valid, use EOS_Achievements_Definition_Release when finished
     * 
     * @see EOS_Achievements_DefinitionV2_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutDefinition
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the achievement definition is not found
     *         EOS_Invalid_ProductUserID if any of the userid options are incorrect
     */
    private func ____CopyAchievementDefinitionV2ByIndex(
        _ Options: SwiftEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions
    ) throws -> SwiftEOS_Achievements_DefinitionV2? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutDefinition in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Achievements_CopyAchievementDefinitionV2ByIndex(
                                Handle,
                                Options,
                                OutDefinition
                            ) } } },
                release: EOS_Achievements_DefinitionV2_Release
            ) }
    }

    /**
     * Fetches a player achievement from a given achievement ID.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID and achievement ID being accessed
     * - Parameter OutAchievement:  The player achievement data for the given achievement ID, if it exists and is valid, use EOS_Achievements_PlayerAchievement_Release when finished
     * 
     * @see EOS_Achievements_PlayerAchievement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutAchievement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the player achievement is not found
     *         EOS_Invalid_ProductUserID if you pass an invalid user ID
     */
    private func ____CopyPlayerAchievementByAchievementId(
        _ Options: SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions
    ) throws -> SwiftEOS_Achievements_PlayerAchievement? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutAchievement in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Achievements_CopyPlayerAchievementByAchievementId(
                                Handle,
                                Options,
                                OutAchievement
                            ) } } },
                release: EOS_Achievements_PlayerAchievement_Release
            ) }
    }

    /**
     * Fetches a player achievement from a given index.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID and index being accessed
     * - Parameter OutAchievement:  The player achievement data for the given index, if it exists and is valid, use EOS_Achievements_PlayerAchievement_Release when finished
     * 
     * @see EOS_Achievements_PlayerAchievement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutAchievement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the player achievement is not found
     *         EOS_Invalid_ProductUserID if you pass an invalid user ID
     */
    private func ____CopyPlayerAchievementByIndex(
        _ Options: SwiftEOS_Achievements_CopyPlayerAchievementByIndexOptions
    ) throws -> SwiftEOS_Achievements_PlayerAchievement? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutAchievement in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Achievements_CopyPlayerAchievementByIndex(
                                Handle,
                                Options,
                                OutAchievement
                            ) } } },
                release: EOS_Achievements_PlayerAchievement_Release
            ) }
    }

    /**
     * DEPRECATED! Use EOS_Achievements_CopyPlayerAchievementByAchievementId instead.
     * Fetches an unlocked achievement from a given achievement ID.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID and achievement ID being accessed
     * - Parameter OutAchievement:  The unlocked achievement data for the given achievement ID, if it exists and is valid, use EOS_Achievements_UnlockedAchievement_Release when finished
     * 
     * @see EOS_Achievements_UnlockedAchievement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutAchievement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the unlocked achievement is not found
     */
    private func ____CopyUnlockedAchievementByAchievementId(
        _ Options: SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions
    ) throws -> SwiftEOS_Achievements_UnlockedAchievement? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutAchievement in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Achievements_CopyUnlockedAchievementByAchievementId(
                                Handle,
                                Options,
                                OutAchievement
                            ) } } },
                release: EOS_Achievements_UnlockedAchievement_Release
            ) }
    }

    /**
     * DEPRECATED! Use EOS_Achievements_CopyPlayerAchievementByAchievementId instead.
     * Fetches an unlocked achievement from a given index.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID and index being accessed
     * - Parameter OutAchievement:  The unlocked achievement data for the given index, if it exists and is valid, use EOS_Achievements_UnlockedAchievement_Release when finished
     * 
     * @see EOS_Achievements_UnlockedAchievement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutAchievement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the unlocked achievement is not found
     */
    private func ____CopyUnlockedAchievementByIndex(
        _ Options: SwiftEOS_Achievements_CopyUnlockedAchievementByIndexOptions
    ) throws -> SwiftEOS_Achievements_UnlockedAchievement? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutAchievement in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Achievements_CopyUnlockedAchievementByIndex(
                                Handle,
                                Options,
                                OutAchievement
                            ) } } },
                release: EOS_Achievements_UnlockedAchievement_Release
            ) }
    }

    /**
     * Fetch the number of achievement definitions that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the achievement definition count
     * 
     * @see EOS_Achievements_CopyAchievementDefinitionByIndex
     * 
     * @return Number of achievement definitions or 0 if there is an error
     */
    private func ____GetAchievementDefinitionCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Achievements_GetAchievementDefinitionCountOptions(), managedBy: pointerManager) { Options in
                        EOS_Achievements_GetAchievementDefinitionCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of player achievements that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the player achievement count
     * 
     * @see EOS_Achievements_CopyPlayerAchievementByIndex
     * 
     * @return Number of player achievements or 0 if there is an error
     */
    private func ____GetPlayerAchievementCount(
        _ Options: SwiftEOS_Achievements_GetPlayerAchievementCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Achievements_GetPlayerAchievementCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * DEPRECATED! Use EOS_Achievements_GetPlayerAchievementCount, EOS_Achievements_CopyPlayerAchievementByIndex and filter for unlocked instead.
     * Fetch the number of unlocked achievements that are cached locally.
     * 
     * - Parameter Options:  The Options associated with retrieving the unlocked achievement count
     * 
     * @see EOS_Achievements_CopyUnlockedAchievementByIndex
     * 
     * @return Number of unlocked achievements or 0 if there is an error
     */
    private func ____GetUnlockedAchievementCount(
        _ Options: SwiftEOS_Achievements_GetUnlockedAchievementCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Achievements_GetUnlockedAchievementCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Query for a list of definitions for all existing achievements, including localized text, icon IDs and whether an achievement is hidden.
     * 
     * @note When the Social Overlay is enabled then this will be called automatically.  The Social Overlay is enabled by default (see EOS_PF_DISABLE_SOCIAL_OVERLAY).
     * 
     * - Parameter Options:  Structure containing information about the application whose achievement definitions we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the query definitions operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    private func ____QueryDefinitions(
        _ Options: SwiftEOS_Achievements_QueryDefinitionsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Achievements_QueryDefinitions(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Query for a list of achievements for a specific player, including progress towards completion for each achievement.
     * 
     * @note When the Social Overlay is enabled then this will be called automatically.  The Social Overlay is enabled by default (see EOS_PF_DISABLE_SOCIAL_OVERLAY).
     * 
     * - Parameter Options:  Structure containing information about the player whose achievements we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the query player achievements operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_Invalid_ProductUserID if any of the userid options are incorrect
     *         EOS_InvalidParameters if any of the other options are incorrect
     */
    private func ____QueryPlayerAchievements(
        _ Options: SwiftEOS_Achievements_QueryPlayerAchievementsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Achievements_QueryPlayerAchievements(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Unlocks a number of achievements for a specific player.
     * 
     * - Parameter Options:  Structure containing information about the achievements and the player whose achievements we're unlocking.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the unlock achievements operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    private func ____UnlockAchievements(
        _ Options: SwiftEOS_Achievements_UnlockAchievementsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Achievements_UnlockAchievements(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
