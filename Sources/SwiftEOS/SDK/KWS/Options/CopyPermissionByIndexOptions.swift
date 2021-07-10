import Foundation
import EOSSDK

/** Input parameters for the `EOS_KWS_CopyPermissionByIndex` function. */
public struct SwiftEOS_KWS_CopyPermissionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user whose permissions are being accessed */
    public let LocalUserId: EOS_ProductUserId?

    /** The index of the permission to get. */
    public let Index: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_CopyPermissionByIndexOptions {
        try _tagEOS_KWS_CopyPermissionByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_CopyPermissionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user whose permissions are being accessed
    - Parameter Index: The index of the permission to get.
    */
    public init(
        ApiVersion: Int32 = EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}
