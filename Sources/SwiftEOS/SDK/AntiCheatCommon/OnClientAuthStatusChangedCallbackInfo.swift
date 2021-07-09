import Foundation
import EOSSDK

/** Structure containing details about a client/peer authentication status change  */
public struct SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo {

    /** The identifier of the client/peer that this status change applies to. See the RegisterClient and RegisterPeer functions.  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** The client/peer's new authentication status  */
    public let ClientAuthStatus: EOS_EAntiCheatCommonClientAuthStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ClientHandle = sdkObject.ClientHandle
        self.ClientAuthStatus = sdkObject.ClientAuthStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientAuthStatus: EOS_EAntiCheatCommonClientAuthStatus
    ) {
        self.ClientHandle = ClientHandle
        self.ClientAuthStatus = ClientAuthStatus
    }
}
