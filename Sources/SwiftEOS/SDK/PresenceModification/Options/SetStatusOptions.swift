import Foundation
import EOSSDK

/** Data for the EOS_PresenceModification_SetStatus function. */
public struct SwiftEOS_PresenceModification_SetStatusOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_SETSTATUS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The status of the user  */
    public let Status: EOS_Presence_EStatus

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_SetStatusOptions {
        _tagEOS_PresenceModification_SetStatusOptions(
            ApiVersion: ApiVersion,
            Status: Status
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_SetStatusOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Status = sdkObject.Status
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PRESENCEMODIFICATION_SETSTATUS_API_LATEST. 
     * - Parameter Status:  The status of the user 
     */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_SETSTATUS_API_LATEST,
        Status: EOS_Presence_EStatus
    ) {
        self.ApiVersion = ApiVersion
        self.Status = Status
    }
}
