import Foundation
import EOSSDK


/** Input parameters for the `EOS_Sessions_CopySessionHandleByInviteId` function. */
public struct SwiftEOS_Sessions_CopySessionHandleByInviteIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONS_COPYSESSIONHANDLEBYINVITEID_API_LATEST`. */
    public let ApiVersion: Int32

    /** Invite ID for which to retrieve a session handle */
    public let InviteId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CopySessionHandleByInviteIdOptions {
        _tagEOS_Sessions_CopySessionHandleByInviteIdOptions(
            ApiVersion: ApiVersion,
            InviteId: pointerManager.managedPointerToBuffer(copyingArray: InviteId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CopySessionHandleByInviteIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.InviteId = stringFromOptionalCStringPointer(sdkObject.InviteId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONS_COPYSESSIONHANDLEBYINVITEID_API_LATEST`.
    - Parameter InviteId: Invite ID for which to retrieve a session handle
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_COPYSESSIONHANDLEBYINVITEID_API_LATEST,
        InviteId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.InviteId = InviteId
    }
}
