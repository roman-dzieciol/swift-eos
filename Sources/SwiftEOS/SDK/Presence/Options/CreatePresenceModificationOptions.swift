import Foundation
import EOSSDK

/** Data for the `EOS_Presence_CreatePresenceModification` function. */
public struct SwiftEOS_Presence_CreatePresenceModificationOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PRESENCE_CREATEPRESENCEMODIFICATION_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user's Epic Online Services Account ID */
    public let LocalUserId: EOS_EpicAccountId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_CreatePresenceModificationOptions {
        _tagEOS_Presence_CreatePresenceModificationOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_CreatePresenceModificationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PRESENCE_CREATEPRESENCEMODIFICATION_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user's Epic Online Services Account ID
    */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_CREATEPRESENCEMODIFICATION_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
