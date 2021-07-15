import Foundation
import EOSSDK


/** Data for the `EOS_Presence_SetPresence` function. */
public struct SwiftEOS_Presence_SetPresenceOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PRESENCE_SETPRESENCE_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user's Epic Online Services Account ID */
    public let LocalUserId: EOS_EpicAccountId?

    /** The handle to the presence update */
    public let PresenceModificationHandle: EOS_HPresenceModification?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_SetPresenceOptions {
        _tagEOS_Presence_SetPresenceOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            PresenceModificationHandle: PresenceModificationHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_SetPresenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.PresenceModificationHandle = sdkObject.PresenceModificationHandle
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PRESENCE_SETPRESENCE_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user's Epic Online Services Account ID
    - Parameter PresenceModificationHandle: The handle to the presence update
    */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_SETPRESENCE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        PresenceModificationHandle: EOS_HPresenceModification?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.PresenceModificationHandle = PresenceModificationHandle
    }
}
