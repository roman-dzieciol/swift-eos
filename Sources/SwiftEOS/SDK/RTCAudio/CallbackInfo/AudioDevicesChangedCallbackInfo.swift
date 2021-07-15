import Foundation
import EOSSDK


/** This struct is passed in with a call to `EOS_RTCAudio_AddNotifyAudioDevicesChanged` registered event. */
public struct SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo {

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioDevicesChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioDevicesChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init() {
    }
}
