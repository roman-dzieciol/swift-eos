import Foundation
import EOSSDK

/** Input parameters for the EOS_KWS_GetPermissionByKey function. */
public struct SwiftEOS_KWS_GetPermissionByKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_KWS_GETPERMISSIONBYKEY_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user getting permissions */
    public let LocalUserId: EOS_ProductUserId?

    /** Permission name to query */
    public let Key: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_GetPermissionByKeyOptions {
        _tagEOS_KWS_GetPermissionByKeyOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_GetPermissionByKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Key = String(cString: sdkObject.Key)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_KWS_GETPERMISSIONBYKEY_API_LATEST.
    - Parameter LocalUserId: The Product User ID of the local user getting permissions
    - Parameter Key: Permission name to query
    */
    public init(
        ApiVersion: Int32 = EOS_KWS_GETPERMISSIONBYKEY_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Key: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Key = Key
    }
}
