import Foundation
import EOSSDK


/** Output parameters for the `EOS_Friends_DeleteFriend` Function. */
public struct SwiftEOS_Friends_DeleteFriendCallbackInfo {

    /** Result code for the operation. `EOS_Success` is returned if an invite was accepted, otherwise one of the error codes is returned. See `eos_common`.h */
    public let ResultCode: EOS_EResult

    /** Context that is passed into `EOS_Friends_DeleteFriend` */
    public let ClientData: UnsafeMutableRawPointer?

    /** The Epic Online Services Account ID of the user who is removing a user from their friends list. */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who is being removed from the friends list. */
    public let TargetUserId: EOS_EpicAccountId?

    /**
    Memberwise initializer

    - Parameter ResultCode: Result code for the operation. `EOS_Success` is returned if an invite was accepted, otherwise one of the error codes is returned. See `eos_common`.h
    - Parameter ClientData: Context that is passed into `EOS_Friends_DeleteFriend`
    - Parameter LocalUserId: The Epic Online Services Account ID of the user who is removing a user from their friends list.
    - Parameter TargetUserId: The Epic Online Services Account ID of the user who is being removed from the friends list.
    */
    public init(
        ResultCode: EOS_EResult,
        ClientData: UnsafeMutableRawPointer?,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ResultCode = ResultCode
        self.ClientData = ClientData
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
