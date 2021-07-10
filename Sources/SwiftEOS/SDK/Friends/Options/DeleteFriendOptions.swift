import Foundation
import EOSSDK

/** Input parameters for the EOS_Friends_DeleteFriend function. */
public struct SwiftEOS_Friends_DeleteFriendOptions {

    /** API Version: Set this to EOS_FRIENDS_DELETEFRIEND_API_LATEST. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user who is deleting a friend. */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user to remove from the friends list. */
    public let TargetUserId: EOS_EpicAccountId?

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_FRIENDS_DELETEFRIEND_API_LATEST.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user who is deleting a friend.
    - Parameter TargetUserId: The Epic Online Services Account ID of the user to remove from the friends list.
    */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_DELETEFRIEND_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
