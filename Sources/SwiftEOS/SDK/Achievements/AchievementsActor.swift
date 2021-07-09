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
        Options: SwiftEOS_Achievements_AddNotifyAchievementsUnlockedOptions,
        NotificationFn: @escaping (SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Achievements_AddNotifyAchievementsUnlocked(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyAchievementsUnlocked(InId: notificationId) }
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
    public func AddNotifyAchievementsUnlockedV2(
        Options: SwiftEOS_Achievements_AddNotifyAchievementsUnlockedV2Options,
        NotificationFn: @escaping (SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Achievements_AddNotifyAchievementsUnlockedV2(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyAchievementsUnlocked(InId: notificationId) }
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
    public func CopyAchievementDefinitionByAchievementId(
        Options: SwiftEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions
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
    public func CopyAchievementDefinitionByIndex(
        Options: SwiftEOS_Achievements_CopyAchievementDefinitionByIndexOptions
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
    public func CopyAchievementDefinitionV2ByAchievementId(
        Options: SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions
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
    public func CopyAchievementDefinitionV2ByIndex(
        Options: SwiftEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions
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
    public func CopyPlayerAchievementByAchievementId(
        Options: SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions
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
    public func CopyPlayerAchievementByIndex(
        Options: SwiftEOS_Achievements_CopyPlayerAchievementByIndexOptions
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
    public func CopyUnlockedAchievementByAchievementId(
        Options: SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions
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
    public func CopyUnlockedAchievementByIndex(
        Options: SwiftEOS_Achievements_CopyUnlockedAchievementByIndexOptions
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
    public func GetAchievementDefinitionCount(
        Options: SwiftEOS_Achievements_GetAchievementDefinitionCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
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
    public func GetPlayerAchievementCount(
        Options: SwiftEOS_Achievements_GetPlayerAchievementCountOptions
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
    public func GetUnlockedAchievementCount(
        Options: SwiftEOS_Achievements_GetUnlockedAchievementCountOptions
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
    public func QueryDefinitions(
        Options: SwiftEOS_Achievements_QueryDefinitionsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo) -> Void
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
    public func QueryPlayerAchievements(
        Options: SwiftEOS_Achievements_QueryPlayerAchievementsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo) -> Void
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
     * Unregister from receiving achievement unlocked notifications.
     * 
     * @see EOS_Achievements_AddNotifyAchievementsUnlocked
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyAchievementsUnlocked(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_Achievements_RemoveNotifyAchievementsUnlocked(
                Handle,
                InId
            ) }
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
    public func UnlockAchievements(
        Options: SwiftEOS_Achievements_UnlockAchievementsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo) -> Void
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
