import Foundation
import EOSSDK

/** The result meta-data from setting a user's presence. */
public struct SwiftEOS_Presence_SetPresenceCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if presence was successfully set, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user that had their presence set  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_SetPresenceCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Presence_SetPresenceCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  Result code for the operation. EOS_Success is returned if presence was successfully set, other codes indicate an error 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user that had their presence set 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
    }
}
