import Foundation
import EOSSDK

/** Input parameters for the EOS_KWS_RequestPermissions function. */
public struct SwiftEOS_KWS_RequestPermissionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_REQUESTPERMISSIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Local user requesting new permisssions  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * The number of permissions to request, may not exceed EOS_KWS_MAX_PERMISSIONS. Only new permissions need be included. 
     * - array buffer: PermissionKeys
     */
    public let PermissionKeyCount: Int

    /**
     * Names of the permissions to request (Setup with KWS) 
     * - array num: PermissionKeyCount
     */
    public let PermissionKeys: [String]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_RequestPermissionsOptions {
        try _tagEOS_KWS_RequestPermissionsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            PermissionKeyCount: try safeNumericCast(exactly: PermissionKeyCount),
            PermissionKeys: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: PermissionKeys?.map { 
                    $0.utf8CString })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_RequestPermissionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.PermissionKeyCount = try safeNumericCast(exactly: sdkObject.PermissionKeyCount)
        self.PermissionKeys = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.PermissionKeys,
            count: sdkObject.PermissionKeyCount
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_KWS_REQUESTPERMISSIONS_API_LATEST. 
     * - Parameter LocalUserId:  Local user requesting new permisssions 
     * - Parameter PermissionKeyCount:  The number of permissions to request, may not exceed EOS_KWS_MAX_PERMISSIONS. Only new permissions need be included. 
     * - array buffer: PermissionKeys
     * - Parameter PermissionKeys:  Names of the permissions to request (Setup with KWS) 
     * - array num: PermissionKeyCount
     */
    public init(
        ApiVersion: Int32 = EOS_KWS_REQUESTPERMISSIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        PermissionKeyCount: Int,
        PermissionKeys: [String]?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.PermissionKeyCount = PermissionKeyCount
        self.PermissionKeys = PermissionKeys
    }
}
