import Foundation
import EOSSDK

/** Input parameters for the EOS_SessionModification_SetInvitesAllowed function. */
public struct SwiftEOS_SessionModification_SetInvitesAllowedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_SETINVITESALLOWED_API_LATEST.  */
    public let ApiVersion: Int32

    /** If true then invites can currently be sent for the associated session  */
    public let bInvitesAllowed: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetInvitesAllowedOptions {
        _tagEOS_SessionModification_SetInvitesAllowedOptions(
            ApiVersion: ApiVersion,
            bInvitesAllowed: eosBoolFromSwiftBool(bInvitesAllowed)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetInvitesAllowedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.bInvitesAllowed = try swiftBoolFromEosBool(sdkObject.bInvitesAllowed)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONMODIFICATION_SETINVITESALLOWED_API_LATEST. 
     * - Parameter bInvitesAllowed:  If true then invites can currently be sent for the associated session 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETINVITESALLOWED_API_LATEST,
        bInvitesAllowed: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.bInvitesAllowed = bInvitesAllowed
    }
}
