import Foundation
import EOSSDK


/** Data for the `EOS_Presence_QueryPresence` function */
public struct SwiftEOS_Presence_QueryPresenceOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PRESENCE_QUERYPRESENCE_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user making the request */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose presence data you want to retrieve; this value must be either the user making the request, or a friend of that user */
    public let TargetUserId: EOS_EpicAccountId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_QueryPresenceOptions {
        _tagEOS_Presence_QueryPresenceOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_QueryPresenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PRESENCE_QUERYPRESENCE_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local, logged-in user making the request
    - Parameter TargetUserId: The Epic Online Services Account ID of the user whose presence data you want to retrieve; this value must be either the user making the request, or a friend of that user
    */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_QUERYPRESENCE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
