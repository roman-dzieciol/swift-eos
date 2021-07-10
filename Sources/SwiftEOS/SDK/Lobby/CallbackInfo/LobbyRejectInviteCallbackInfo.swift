import Foundation
import EOSSDK

/** Output parameters for the EOS_Lobby_RejectInvite function. */
public struct SwiftEOS_Lobby_RejectInviteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The ID of the invitation being rejected  */
    public let InviteId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_RejectInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.InviteId = String(cString: sdkObject.InviteId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_RejectInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     * - Parameter InviteId:  The ID of the invitation being rejected 
     */
    public init(
        ResultCode: EOS_EResult,
        InviteId: String?
    ) {
        self.ResultCode = ResultCode
        self.InviteId = InviteId
    }
}
