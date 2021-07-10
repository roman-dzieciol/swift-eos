import Foundation
import EOSSDK

/** The result meta-data for a presence query. */
public struct SwiftEOS_Presence_QueryPresenceCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful query, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user who made this request  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose presence was potentially queried  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_QueryPresenceCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Presence_QueryPresenceCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  Result code for the operation. EOS_Success is returned for a successful query, other codes indicate an error 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user who made this request 
     * - Parameter TargetUserId:  The Epic Online Services Account ID of the user whose presence was potentially queried 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
