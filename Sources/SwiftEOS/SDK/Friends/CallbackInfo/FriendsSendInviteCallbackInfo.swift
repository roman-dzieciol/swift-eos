import Foundation
import EOSSDK


/** Output parameters for the `EOS_Friends_SendInvite` API. */
public struct SwiftEOS_Friends_SendInviteCallbackInfo {

    /** Result code for the operation. `EOS_Success` is returned if the invitation was sent, otherwise one of the error codes is returned. See `eos_common`.h */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user who sent the friends list invitation */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user to whom the friends list invitation was sent */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_SendInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Friends_SendInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: Result code for the operation. `EOS_Success` is returned if the invitation was sent, otherwise one of the error codes is returned. See `eos_common`.h
    - Parameter LocalUserId: The Epic Online Services Account ID of the user who sent the friends list invitation
    - Parameter TargetUserId: The Epic Online Services Account ID of the user to whom the friends list invitation was sent
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
