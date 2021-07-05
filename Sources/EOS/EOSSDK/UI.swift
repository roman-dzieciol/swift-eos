import Foundation
import EOSSDK
public class SwiftEOS_UI_Actor: SwiftEOSActor {
    public let Handle: EOS_HUI

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HUI
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Lets the SDK know that the given UI event ID has been acknowledged and should be released.
     * 
     * @return An EOS_EResult is returned to indicate success or an error.
     * EOS_Success is returned if the UI event ID has been acknowledged.
     * EOS_NotFound is returned if the UI event ID does not exist.
     * 
     * @see EOS_Presence_JoinGameAcceptedCallbackInfo
     */
    public func AcknowledgeEventId(
        Options: SwiftEOS_UI_AcknowledgeEventIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_UI_AcknowledgeEventId(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Register to receive notifications when the overlay display settings are updated.
     * Newly registered handlers will always be called the next tick with the current state.
     * 
     * @note must call RemoveNotifyDisplaySettingsUpdated to remove the notification.
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the NotificationFn.
     * - Parameter NotificationFn:  A callback that is fired when the overlay display settings are updated.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyDisplaySettingsUpdated(
        Options: SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedOptions,
        NotificationFn: @escaping (SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_UI_AddNotifyDisplaySettingsUpdated(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyDisplaySettingsUpdated(Id: notificationId) }
            ) }
    }

    /**
     * Gets the friends overlay visibility.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID of the friends Social Overlay owner.
     * 
     * @return EOS_TRUE If the overlay is visible.
     */
    public func GetFriendsVisible(
        Options: SwiftEOS_UI_GetFriendsVisibleOptions
    ) throws -> Bool {
        try withPointerManager { pointerManager in
            try typecastBoolResult { 
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_UI_GetFriendsVisible(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Returns the current notification location display preference.
     * 
     * @return The current notification location display preference.
     */
    public func GetNotificationLocationPreference() -> EOS_UI_ENotificationLocation {
        withPointerManager { pointerManager in
            EOS_UI_GetNotificationLocationPreference(Handle) }
    }

    /**
     * Returns the current Toggle Friends Key.  This key can be used by the user to toggle the friends
     * overlay when available. The default value represents `Shift + F3` as `((int32_t)EOS_UIK_Shift | (int32_t)EOS_UIK_F3)`.
     * 
     * - Parameter Options:  Structure containing any options that are needed to retrieve the key.
     * @return A valid key combination which represent a single key with zero or more modifier keys.
     *         EOS_UIK_None will be returned if any error occurs.
     */
    public func GetToggleFriendsKey(
        Options: SwiftEOS_UI_GetToggleFriendsKeyOptions
    ) throws -> EOS_UI_EKeyCombination {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_UI_GetToggleFriendsKey(
                    Handle,
                    Options
                ) } }
    }

    /**
     * Hides the active Social Overlay.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID of the browser to close.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  A callback that is fired when the request to hide the friends list has been processed, or on an error.
     * 
     * @return EOS_Success If the Social Overlay has been notified about the request.
     *         EOS_InvalidParameters If any of the options are incorrect.
     *         EOS_NotConfigured If the Social Overlay is not properly configured.
     *         EOS_NoChange If the Social Overlay is already hidden.
     */
    public func HideFriends(
        Options: SwiftEOS_UI_HideFriendsOptions,
        CompletionDelegate: @escaping (SwiftEOS_UI_HideFriendsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_UI_HideFriends(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_UI_HideFriendsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Determine if a key combination is valid. A key combinations must have a single key and at least one modifier.
     * The single key must be one of the following: F1 through F12, Space, Backspace, Escape, or Tab.
     * The modifier key must be one or more of the following: Shift, Control, or Alt.
     * 
     * - Parameter KeyCombination:  The key to test.
     * @return  EOS_TRUE if the provided key combination is valid.
     */
    public func IsValidKeyCombination(
        KeyCombination: EOS_UI_EKeyCombination
    ) throws -> Bool {
        try withPointerManager { pointerManager in
            try typecastBoolResult { 
                EOS_UI_IsValidKeyCombination(
                    Handle,
                    KeyCombination
                ) } }
    }

    /**
     * Unregister from receiving notifications when the overlay display settings are updated.
     * 
     * - Parameter Id:  Handle representing the registered callback
     */
    public func RemoveNotifyDisplaySettingsUpdated(
        Id: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_UI_RemoveNotifyDisplaySettingsUpdated(
                Handle,
                Id
            ) }
    }

    /**
     * Define any preferences for any display settings.
     * 
     * - Parameter Options:  Structure containing any options that are needed to set
     * @return EOS_Success If the overlay has been notified about the request.
     *         EOS_InvalidParameters If any of the options are incorrect.
     *         EOS_NotConfigured If the overlay is not properly configured.
     *         EOS_NoChange If the preferences did not change.
     */
    public func SetDisplayPreference(
        Options: SwiftEOS_UI_SetDisplayPreferenceOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_UI_SetDisplayPreference(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Updates the current Toggle Friends Key.  This key can be used by the user to toggle the friends
     * overlay when available. The default value represents `Shift + F3` as `((int32_t)EOS_UIK_Shift | (int32_t)EOS_UIK_F3)`.
     * The provided key should satisfy EOS_UI_IsValidKeyCombination. The value EOS_UIK_None is specially handled
     * by resetting the key binding to the system default.
     * 
     * - Parameter Options:  Structure containing the key combination to use.
     * 
     * @return EOS_Success If the overlay has been notified about the request.
     *         EOS_InvalidParameters If any of the options are incorrect.
     *         EOS_NotConfigured If the overlay is not properly configured.
     *         EOS_NoChange If the key combination did not change.
     * 
     * @see EOS_UI_IsValidKeyCombination
     */
    public func SetToggleFriendsKey(
        Options: SwiftEOS_UI_SetToggleFriendsKeyOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_UI_SetToggleFriendsKey(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Opens the Social Overlay with a request to show the friends list.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID of the friends list to show.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter CompletionDelegate:  A callback that is fired when the request to show the friends list has been sent to the Social Overlay, or on an error.
     * 
     * @return EOS_Success If the Social Overlay has been notified about the request.
     *         EOS_InvalidParameters If any of the options are incorrect.
     *         EOS_NotConfigured If the Social Overlay is not properly configured.
     *         EOS_NoChange If the Social Overlay is already visible.
     */
    public func ShowFriends(
        Options: SwiftEOS_UI_ShowFriendsOptions,
        CompletionDelegate: @escaping (SwiftEOS_UI_ShowFriendsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_UI_ShowFriends(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_UI_ShowFriendsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
