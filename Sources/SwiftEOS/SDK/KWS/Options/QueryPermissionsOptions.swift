import Foundation
import EOSSDK

/** Input parameters for the EOS_KWS_QueryPermissions function. */
public struct SwiftEOS_KWS_QueryPermissionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_QUERYPERMISSIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Local user querying their permisssions  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_QueryPermissionsOptions {
        _tagEOS_KWS_QueryPermissionsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_QueryPermissionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_KWS_QUERYPERMISSIONS_API_LATEST. 
     * - Parameter LocalUserId:  Local user querying their permisssions 
     */
    public init(
        ApiVersion: Int32 = EOS_KWS_QUERYPERMISSIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
