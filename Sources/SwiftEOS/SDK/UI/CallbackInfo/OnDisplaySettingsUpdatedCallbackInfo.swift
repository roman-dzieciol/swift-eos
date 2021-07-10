import Foundation
import EOSSDK
public struct SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo {

    /** True when any portion of the overlay is visible. */
    public let bIsVisible: Bool

    /**
    True when the overlay has switched to exclusive input mode.
    While in exclusive input mode, no keyboard or mouse input will be sent to the game.
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

    /**
    Memberwise initializer

    - Parameter bIsVisible: True when any portion of the overlay is visible.
    - Parameter bIsExclusiveInput: True when the overlay has switched to exclusive input mode.
    While in exclusive input mode, no keyboard or mouse input will be sent to the game.
    */
    public init(
        bIsVisible: Bool,
        bIsExclusiveInput: Bool
    ) {
        self.bIsVisible = bIsVisible
        self.bIsExclusiveInput = bIsExclusiveInput
    }
}
