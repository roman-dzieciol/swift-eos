import Foundation
import EOSSDK

/** Input parameters for the `EOS_Lobby_RejectInvite` function. */
public struct SwiftEOS_Lobby_RejectInviteOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_REJECTINVITE_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID of the lobby associated with the invitation */
    public let InviteId: String?

    /** The Product User ID of the local user who is rejecting the invitation */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_RejectInviteOptions {
        _tagEOS_Lobby_RejectInviteOptions(
            ApiVersion: ApiVersion,
            InviteId: pointerManager.managedPointerToBuffer(copyingArray: InviteId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_RejectInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.InviteId = String(cString: sdkObject.InviteId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_REJECTINVITE_API_LATEST`.
    - Parameter InviteId: The ID of the lobby associated with the invitation
    - Parameter LocalUserId: The Product User ID of the local user who is rejecting the invitation
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_REJECTINVITE_API_LATEST,
        InviteId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.InviteId = InviteId
        self.LocalUserId = LocalUserId
    }
}
