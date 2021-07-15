import Foundation
import EOSSDK


/** Input parameters for the `EOS_Sessions_RejectInvite` function. */
public struct SwiftEOS_Sessions_RejectInviteOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONS_REJECTINVITE_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user rejecting the invitation */
    public let LocalUserId: EOS_ProductUserId?

    /** The invite ID to reject */
    public let InviteId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_RejectInviteOptions {
        _tagEOS_Sessions_RejectInviteOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            InviteId: pointerManager.managedPointerToBuffer(copyingArray: InviteId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_RejectInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.InviteId = stringFromOptionalCStringPointer(sdkObject.InviteId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONS_REJECTINVITE_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user rejecting the invitation
    - Parameter InviteId: The invite ID to reject
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_REJECTINVITE_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        InviteId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.InviteId = InviteId
    }
}
