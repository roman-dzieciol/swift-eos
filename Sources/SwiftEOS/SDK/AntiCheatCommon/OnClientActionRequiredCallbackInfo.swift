import Foundation
import EOSSDK

/** Structure containing details about a required client/peer action  */
public struct SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo {

    /** The identifier of the client/peer that this action applies to. See the RegisterClient and RegisterPeer functions.  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** The action that must be applied to the specified client/peer  */
    public let ClientAction: EOS_EAntiCheatCommonClientAction

    /** Code indicating the reason for the action  */
    public let ActionReasonCode: EOS_EAntiCheatCommonClientActionReason

    /** String containing details about the action reason  */
    public let ActionReasonDetailsString: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ClientHandle = sdkObject.ClientHandle
        self.ClientAction = sdkObject.ClientAction
        self.ActionReasonCode = sdkObject.ActionReasonCode
        self.ActionReasonDetailsString = String(cString: sdkObject.ActionReasonDetailsString)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientAction: EOS_EAntiCheatCommonClientAction,
        ActionReasonCode: EOS_EAntiCheatCommonClientActionReason,
        ActionReasonDetailsString: String?
    ) {
        self.ClientHandle = ClientHandle
        self.ClientAction = ClientAction
        self.ActionReasonCode = ActionReasonCode
        self.ActionReasonDetailsString = ActionReasonDetailsString
    }
}