import Foundation
import EOSSDK

/** Input parameters for the `EOS_SessionModification_SetJoinInProgressAllowed` function. */
public struct SwiftEOS_SessionModification_SetJoinInProgressAllowedOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONMODIFICATION_SETJOININPROGRESSALLOWED_API_LATEST`. */
    public let ApiVersion: Int32

    /** Does the session allow join in progress */
    public let bAllowJoinInProgress: Bool

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetJoinInProgressAllowedOptions {
        _tagEOS_SessionModification_SetJoinInProgressAllowedOptions(
            ApiVersion: ApiVersion,
            bAllowJoinInProgress: eosBoolFromSwiftBool(bAllowJoinInProgress)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetJoinInProgressAllowedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.bAllowJoinInProgress = try swiftBoolFromEosBool(sdkObject.bAllowJoinInProgress)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONMODIFICATION_SETJOININPROGRESSALLOWED_API_LATEST`.
    - Parameter bAllowJoinInProgress: Does the session allow join in progress
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETJOININPROGRESSALLOWED_API_LATEST,
        bAllowJoinInProgress: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.bAllowJoinInProgress = bAllowJoinInProgress
    }
}
