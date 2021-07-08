import Foundation
import EOSSDK

/** Input parameters for the EOS_UI_AcknowledgeEventId. */
public struct SwiftEOS_UI_AcknowledgeEventIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_ACKNOWLEDGEEVENTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID being acknowledged.  */
    public let UiEventId: EOS_UI_EventId

    /**
     * 
     * The result to use for the acknowledgment. 
     * When acknowledging EOS_Presence_JoinGameAcceptedCallbackInfo this should be the 
     * result code from the JoinSession call.
     */
    public let Result: EOS_EResult

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_AcknowledgeEventIdOptions {
        _tagEOS_UI_AcknowledgeEventIdOptions(
            ApiVersion: ApiVersion,
            UiEventId: UiEventId,
            Result: Result
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_AcknowledgeEventIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UiEventId = sdkObject.UiEventId
        self.Result = sdkObject.Result
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_UI_ACKNOWLEDGEEVENTID_API_LATEST,
        UiEventId: EOS_UI_EventId,
        Result: EOS_EResult
    ) {
        self.ApiVersion = ApiVersion
        self.UiEventId = UiEventId
        self.Result = Result
    }
}

/** Input parameters for the EOS_UI_AddNotifyDisplaySettingsUpdated function. */
public struct SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_ADDNOTIFYDISPLAYSETTINGSUPDATED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions {
        _tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_UI_ADDNOTIFYDISPLAYSETTINGSUPDATED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_UI_GetFriendsVisible function. */
public struct SwiftEOS_UI_GetFriendsVisibleOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_GETFRIENDSVISIBLE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user whose overlay is being updated.  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_GetFriendsVisibleOptions {
        _tagEOS_UI_GetFriendsVisibleOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_GetFriendsVisibleOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_UI_GETFRIENDSVISIBLE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_UI_GetToggleFriendsKey function. */
public struct SwiftEOS_UI_GetToggleFriendsKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_GETTOGGLEFRIENDSKEY_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_GetToggleFriendsKeyOptions {
        _tagEOS_UI_GetToggleFriendsKeyOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_GetToggleFriendsKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_UI_GETTOGGLEFRIENDSKEY_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Output parameters for the EOS_UI_HideFriends function. */
public struct SwiftEOS_UI_HideFriendsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user whose friend list is being shown.  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_HideFriendsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_UI_HideFriendsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_UI_HideFriends function. */
public struct SwiftEOS_UI_HideFriendsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_HIDEFRIENDS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user whose friend list is being shown.  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_HideFriendsOptions {
        _tagEOS_UI_HideFriendsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_HideFriendsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_UI_HIDEFRIENDS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
public struct SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo {

    /** True when any portion of the overlay is visible.  */
    public let bIsVisible: Bool

    /**
     * 
     * True when the overlay has switched to exclusive input mode. 
     * While in exclusive input mode, no keyboard or mouse input will be sent to the game.
     */
    public let bIsExclusiveInput: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_OnDisplaySettingsUpdatedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.bIsVisible = try swiftBoolFromEosBool(sdkObject.bIsVisible)
        self.bIsExclusiveInput = try swiftBoolFromEosBool(sdkObject.bIsExclusiveInput)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_UI_OnDisplaySettingsUpdatedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Input parameters for the EOS_UI_SetDisplayPreference function. */
public struct SwiftEOS_UI_SetDisplayPreferenceOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_SETDISPLAYPREFERENCE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Preference for notification pop-up locations.  */
    public let NotificationLocation: EOS_UI_ENotificationLocation

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_SetDisplayPreferenceOptions {
        _tagEOS_UI_SetDisplayPreferenceOptions(
            ApiVersion: ApiVersion,
            NotificationLocation: NotificationLocation
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_SetDisplayPreferenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.NotificationLocation = sdkObject.NotificationLocation
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_UI_SETDISPLAYPREFERENCE_API_LATEST,
        NotificationLocation: EOS_UI_ENotificationLocation
    ) {
        self.ApiVersion = ApiVersion
        self.NotificationLocation = NotificationLocation
    }
}

/** Input parameters for the EOS_UI_SetToggleFriendsKey function. */
public struct SwiftEOS_UI_SetToggleFriendsKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_SETTOGGLEFRIENDSKEY_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * 
     * The new key combination which will be used to toggle the friends overlay.
     * The combination can be any set of modifiers and one key.
     * A value of EOS_UIK_None will cause the key to revert to the default.
     */
    public let KeyCombination: EOS_UI_EKeyCombination

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_SetToggleFriendsKeyOptions {
        _tagEOS_UI_SetToggleFriendsKeyOptions(
            ApiVersion: ApiVersion,
            KeyCombination: KeyCombination
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_SetToggleFriendsKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.KeyCombination = sdkObject.KeyCombination
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_UI_SETTOGGLEFRIENDSKEY_API_LATEST,
        KeyCombination: EOS_UI_EKeyCombination
    ) {
        self.ApiVersion = ApiVersion
        self.KeyCombination = KeyCombination
    }
}

/** Output parameters for the EOS_UI_ShowFriends function. */
public struct SwiftEOS_UI_ShowFriendsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user whose friend list is being shown.  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_ShowFriendsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_UI_ShowFriendsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_UI_ShowFriends function. */
public struct SwiftEOS_UI_ShowFriendsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_SHOWFRIENDS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user whose friend list is being shown.  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_ShowFriendsOptions {
        _tagEOS_UI_ShowFriendsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_ShowFriendsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_UI_SHOWFRIENDS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
