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
    Lets the SDK know that the given UI event ID has been acknowledged and should be released.

    - Throws: An EOS_EResult is returned to indicate success or an error.
    EOS_Success is returned if the UI event ID has been acknowledged.
    EOS_NotFound is returned if the UI event ID does not exist.

    - SeeAlso: EOS_Presence_JoinGameAcceptedCallbackInfo
    - Parameter UiEventId: The ID being acknowledged.
    - Parameter Result: The result to use for the acknowledgment.
    When acknowledging EOS_Presence_JoinGameAcceptedCallbackInfo this should be the
    result code from the JoinSession call.
    */
    public func AcknowledgeEventId(
        UiEventId: EOS_UI_EventId,
        Result: EOS_EResult
    ) throws {
        try ____AcknowledgeEventId(.init(
                UiEventId: UiEventId,
                Result: Result
            ))
    }

    /**
    Register to receive notifications when the overlay display settings are updated.
    Newly registered handlers will always be called the next tick with the current state.

    - Note: must call RemoveNotifyDisplaySettingsUpdated to remove the notification.
    - Parameter NotificationFn: A callback that is fired when the overlay display settings are updated.
    - Returns: handle representing the registered callback
    */
    public func AddNotifyDisplaySettingsUpdated(
        NotificationFn: @escaping (SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo> {
        try ____AddNotifyDisplaySettingsUpdated(NotificationFn)
    }

    /**
    Gets the friends overlay visibility.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user whose overlay is being updated.
    - Returns: EOS_TRUE If the overlay is visible.
    */
    public func GetFriendsVisible(
        LocalUserId: EOS_EpicAccountId?
    ) throws -> Bool {
        try ____GetFriendsVisible(.init(LocalUserId: LocalUserId))
    }

    /**
    Returns the current notification location display preference.

    - Returns: The current notification location display preference.
    */
    public func GetNotificationLocationPreference() -> EOS_UI_ENotificationLocation {
        ____GetNotificationLocationPreference()
    }

    /**
    Returns the current Toggle Friends Key.  This key can be used by the user to toggle the friends
    overlay when available. The default value represents `Shift + F3` as `((int32_t)EOS_UIK_Shift | (int32_t)EOS_UIK_F3)`.

    - Returns: A valid key combination which represent a single key with zero or more modifier keys.
               EOS_UIK_None will be returned if any error occurs.
    */
    public func GetToggleFriendsKey() throws -> EOS_UI_EKeyCombination {
        try ____GetToggleFriendsKey()
    }

    /**
    Hides the active Social Overlay.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user whose friend list is being shown.
    - Parameter CompletionDelegate: A callback that is fired when the request to hide the friends list has been processed, or on an error.
    - Returns: EOS_Success If the Social Overlay has been notified about the request.
               EOS_InvalidParameters If any of the options are incorrect.
               EOS_NotConfigured If the Social Overlay is not properly configured.
               EOS_NoChange If the Social Overlay is already hidden.
    */
    public func HideFriends(
        LocalUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_UI_HideFriendsCallbackInfo) -> Void
    ) throws {
        try ____HideFriends(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }

    /**
    Determine if a key combination is valid. A key combinations must have a single key and at least one modifier.
    The single key must be one of the following: F1 through F12, Space, Backspace, Escape, or Tab.
    The modifier key must be one or more of the following: Shift, Control, or Alt.

    - Parameter KeyCombination: The key to test.
    - Returns: EOS_TRUE if the provided key combination is valid.
    */
    public func IsValidKeyCombination(
        KeyCombination: EOS_UI_EKeyCombination
    ) throws -> Bool {
        try ____IsValidKeyCombination(KeyCombination)
    }

    /**
    Define any preferences for any display settings.

    - Parameter NotificationLocation: Preference for notification pop-up locations.
    - Throws: EOS_InvalidParameters If any of the options are incorrect.
              EOS_NotConfigured If the overlay is not properly configured.
              EOS_NoChange If the preferences did not change.
    */
    public func SetDisplayPreference(
        NotificationLocation: EOS_UI_ENotificationLocation
    ) throws {
        try ____SetDisplayPreference(.init(NotificationLocation: NotificationLocation))
    }

    /**
    Updates the current Toggle Friends Key.  This key can be used by the user to toggle the friends
    overlay when available. The default value represents `Shift + F3` as `((int32_t)EOS_UIK_Shift | (int32_t)EOS_UIK_F3)`.
    The provided key should satisfy EOS_UI_IsValidKeyCombination. The value EOS_UIK_None is specially handled
    by resetting the key binding to the system default.

    - Parameter KeyCombination: The new key combination which will be used to toggle the friends overlay.
    The combination can be any set of modifiers and one key.
    A value of EOS_UIK_None will cause the key to revert to the default.
    - Throws: EOS_InvalidParameters If any of the options are incorrect.
              EOS_NotConfigured If the overlay is not properly configured.
              EOS_NoChange If the key combination did not change.
    - SeeAlso: EOS_UI_IsValidKeyCombination
    */
    public func SetToggleFriendsKey(
        KeyCombination: EOS_UI_EKeyCombination
    ) throws {
        try ____SetToggleFriendsKey(.init(KeyCombination: KeyCombination))
    }

    /**
    Opens the Social Overlay with a request to show the friends list.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user whose friend list is being shown.
    - Parameter CompletionDelegate: A callback that is fired when the request to show the friends list has been sent to the Social Overlay, or on an error.
    - Returns: EOS_Success If the Social Overlay has been notified about the request.
               EOS_InvalidParameters If any of the options are incorrect.
               EOS_NotConfigured If the Social Overlay is not properly configured.
               EOS_NoChange If the Social Overlay is already visible.
    */
    public func ShowFriends(
        LocalUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_UI_ShowFriendsCallbackInfo) -> Void
    ) throws {
        try ____ShowFriends(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_UI_Actor {

    /**
    Lets the SDK know that the given UI event ID has been acknowledged and should be released.

    - Throws: An EOS_EResult is returned to indicate success or an error.
    EOS_Success is returned if the UI event ID has been acknowledged.
    EOS_NotFound is returned if the UI event ID does not exist.

    - SeeAlso: EOS_Presence_JoinGameAcceptedCallbackInfo
    */
    private func ____AcknowledgeEventId(
        _ Options: SwiftEOS_UI_AcknowledgeEventIdOptions
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
    Register to receive notifications when the overlay display settings are updated.
    Newly registered handlers will always be called the next tick with the current state.

    - Note: must call RemoveNotifyDisplaySettingsUpdated to remove the notification.
    - Parameter NotificationFn: A callback that is fired when the overlay display settings are updated.
    - Returns: handle representing the registered callback
    */
    private func ____AddNotifyDisplaySettingsUpdated(
        _ NotificationFn: @escaping (SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedOptions(), managedBy: pointerManager) { Options in
                        EOS_UI_AddNotifyDisplaySettingsUpdated(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_UI_RemoveNotifyDisplaySettingsUpdated(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    Gets the friends overlay visibility.

    - Parameter Options: Structure containing the Epic Online Services Account ID of the friends Social Overlay owner.
    - Returns: EOS_TRUE If the overlay is visible.
    */
    private func ____GetFriendsVisible(
        _ Options: SwiftEOS_UI_GetFriendsVisibleOptions
    ) throws -> Bool {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_UI_GetFriendsVisible(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try swiftBoolFromEosBool($0) }
            ) }
    }

    /**
    Returns the current notification location display preference.

    - Returns: The current notification location display preference.
    */
    private func ____GetNotificationLocationPreference() -> EOS_UI_ENotificationLocation {
        withPointerManager { pointerManager in
            EOS_UI_GetNotificationLocationPreference(Handle) }
    }

    /**
    Returns the current Toggle Friends Key.  This key can be used by the user to toggle the friends
    overlay when available. The default value represents `Shift + F3` as `((int32_t)EOS_UIK_Shift | (int32_t)EOS_UIK_F3)`.

    - Returns: A valid key combination which represent a single key with zero or more modifier keys.
               EOS_UIK_None will be returned if any error occurs.
    */
    private func ____GetToggleFriendsKey() throws -> EOS_UI_EKeyCombination {
        try withPointerManager { pointerManager in
            try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_UI_GetToggleFriendsKeyOptions(), managedBy: pointerManager) { Options in
                EOS_UI_GetToggleFriendsKey(
                    Handle,
                    Options
                ) } }
    }

    /**
    Hides the active Social Overlay.

    - Parameter Options: Structure containing the Epic Online Services Account ID of the browser to close.
    - Parameter CompletionDelegate: A callback that is fired when the request to hide the friends list has been processed, or on an error.
    - Returns: EOS_Success If the Social Overlay has been notified about the request.
               EOS_InvalidParameters If any of the options are incorrect.
               EOS_NotConfigured If the Social Overlay is not properly configured.
               EOS_NoChange If the Social Overlay is already hidden.
    */
    private func ____HideFriends(
        _ Options: SwiftEOS_UI_HideFriendsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_UI_HideFriendsCallbackInfo) -> Void
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
    Determine if a key combination is valid. A key combinations must have a single key and at least one modifier.
    The single key must be one of the following: F1 through F12, Space, Backspace, Escape, or Tab.
    The modifier key must be one or more of the following: Shift, Control, or Alt.

    - Parameter KeyCombination: The key to test.
    - Returns: EOS_TRUE if the provided key combination is valid.
    */
    private func ____IsValidKeyCombination(
        _ KeyCombination: EOS_UI_EKeyCombination
    ) throws -> Bool {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    EOS_UI_IsValidKeyCombination(
                        Handle,
                        KeyCombination
                    ) },
                transformedResult: { 
                    try swiftBoolFromEosBool($0) }
            ) }
    }

    /**
    Define any preferences for any display settings.

    - Parameter Options: Structure containing any options that are needed to set
    - Throws: EOS_InvalidParameters If any of the options are incorrect.
              EOS_NotConfigured If the overlay is not properly configured.
              EOS_NoChange If the preferences did not change.
    */
    private func ____SetDisplayPreference(
        _ Options: SwiftEOS_UI_SetDisplayPreferenceOptions
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
    Updates the current Toggle Friends Key.  This key can be used by the user to toggle the friends
    overlay when available. The default value represents `Shift + F3` as `((int32_t)EOS_UIK_Shift | (int32_t)EOS_UIK_F3)`.
    The provided key should satisfy EOS_UI_IsValidKeyCombination. The value EOS_UIK_None is specially handled
    by resetting the key binding to the system default.

    - Parameter Options: Structure containing the key combination to use.
    - Throws: EOS_InvalidParameters If any of the options are incorrect.
              EOS_NotConfigured If the overlay is not properly configured.
              EOS_NoChange If the key combination did not change.
    - SeeAlso: EOS_UI_IsValidKeyCombination
    */
    private func ____SetToggleFriendsKey(
        _ Options: SwiftEOS_UI_SetToggleFriendsKeyOptions
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
    Opens the Social Overlay with a request to show the friends list.

    - Parameter Options: Structure containing the Epic Online Services Account ID of the friends list to show.
    - Parameter CompletionDelegate: A callback that is fired when the request to show the friends list has been sent to the Social Overlay, or on an error.
    - Returns: EOS_Success If the Social Overlay has been notified about the request.
               EOS_InvalidParameters If any of the options are incorrect.
               EOS_NotConfigured If the Social Overlay is not properly configured.
               EOS_NoChange If the Social Overlay is already visible.
    */
    private func ____ShowFriends(
        _ Options: SwiftEOS_UI_ShowFriendsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_UI_ShowFriendsCallbackInfo) -> Void
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
