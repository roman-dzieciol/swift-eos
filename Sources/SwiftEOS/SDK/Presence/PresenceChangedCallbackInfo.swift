import Foundation
import EOSSDK

/** Data containing which users presence has changed */
public struct SwiftEOS_Presence_PresenceChangedCallbackInfo {

    /** The Epic Online Services Account ID of the local user who is being informed for PresenceUserId's presence change  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who had their presence changed  */
    public let PresenceUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_PresenceChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.PresenceUserId = sdkObject.PresenceUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Presence_PresenceChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        LocalUserId: EOS_EpicAccountId?,
        PresenceUserId: EOS_EpicAccountId?
    ) {
        self.LocalUserId = LocalUserId
        self.PresenceUserId = PresenceUserId
    }
}
