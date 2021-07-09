import Foundation
import EOSSDK

/**
 * 
 * - see: release func: EOS_KWS_PermissionStatus_Release
 */
public struct SwiftEOS_KWS_PermissionStatus: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_PERMISSIONSTATUS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the permission  */
    public let Name: String?

    /** Status of the permission  */
    public let Status: EOS_EKWSPermissionStatus

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_PermissionStatus {
        _tagEOS_KWS_PermissionStatus(
            ApiVersion: ApiVersion,
            Name: pointerManager.managedPointerToBuffer(copyingArray: Name?.utf8CString),
            Status: Status
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_PermissionStatus?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Name = String(cString: sdkObject.Name)
        self.Status = sdkObject.Status
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_KWS_PERMISSIONSTATUS_API_LATEST,
        Name: String?,
        Status: EOS_EKWSPermissionStatus
    ) {
        self.ApiVersion = ApiVersion
        self.Name = Name
        self.Status = Status
    }
}
