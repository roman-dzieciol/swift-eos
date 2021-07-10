import Foundation
import EOSSDK

/** Input parameters for the EOS_KWS_GetPermissionsCount function. */
public struct SwiftEOS_KWS_GetPermissionsCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_GETPERMISSIONSCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user whose permissions are being accessed  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_GetPermissionsCountOptions {
        _tagEOS_KWS_GetPermissionsCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_GetPermissionsCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_KWS_GETPERMISSIONSCOUNT_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the local user whose permissions are being accessed 
     */
    public init(
        ApiVersion: Int32 = EOS_KWS_GETPERMISSIONSCOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
