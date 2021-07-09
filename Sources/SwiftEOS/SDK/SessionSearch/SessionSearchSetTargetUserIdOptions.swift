import Foundation
import EOSSDK

/** Input parameters for the EOS_SessionSearch_SetTargetUserId function. */
public struct SwiftEOS_SessionSearch_SetTargetUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to find; return any sessions where the user matching this ID is currently registered  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_SetTargetUserIdOptions {
        _tagEOS_SessionSearch_SetTargetUserIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_SetTargetUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
