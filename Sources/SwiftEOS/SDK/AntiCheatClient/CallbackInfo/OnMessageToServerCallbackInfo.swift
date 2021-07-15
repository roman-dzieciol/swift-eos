import Foundation
import EOSSDK


/** Structure containing details about a new message that must be dispatched to the game server. */
public struct SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo {

    /**
    The message data that must be sent to the server

    - Note: ``EOS/_tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo/MessageDataSizeBytes``:
    The size in bytes of MessageData
    */
    public let MessageData: [UInt8]?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.MessageData = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.MessageData,
                count: try safeNumericCast(exactly: sdkObject.MessageDataSizeBytes)
            ))
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter MessageData: The message data that must be sent to the server
    - Note: ``EOS/_tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo/MessageDataSizeBytes``:
    The size in bytes of MessageData
    */
    public init(
        MessageData: [UInt8]?
    ) {
        self.MessageData = MessageData
    }
}
