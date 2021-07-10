import Foundation
import EOSSDK

/** Structure containing details about a new message that must be dispatched to a connected client/peer. */
public struct SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo {

    /** The identifier of the client/peer that this message must be delivered to. See the RegisterClient and RegisterPeer functions.  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * The message data that must be sent to the client 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo/MessageDataSizeBytes``:
     * The size in bytes of MessageData 
     */
    public let MessageData: [UInt8]?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ClientHandle = sdkObject.ClientHandle
        self.MessageData = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.MessageData,
                count: try safeNumericCast(exactly: sdkObject.MessageDataSizeBytes)
            ))
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ClientHandle:  The identifier of the client/peer that this message must be delivered to. See the RegisterClient and RegisterPeer functions. 
     * - Parameter MessageData:  The message data that must be sent to the client 
     * 
     * - Note: ``EOS/_tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo/MessageDataSizeBytes``:
     * The size in bytes of MessageData 
     */
    public init(
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        MessageData: [UInt8]?
    ) {
        self.ClientHandle = ClientHandle
        self.MessageData = MessageData
    }
}
