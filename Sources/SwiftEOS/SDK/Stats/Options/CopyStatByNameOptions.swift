import Foundation
import EOSSDK


/** Input parameters for the `EOS_Stats_CopyStatByName` function. */
public struct SwiftEOS_Stats_CopyStatByNameOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_STATS_COPYSTATBYNAME_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the user who owns the stat */
    public let TargetUserId: EOS_ProductUserId?

    /** Name of the stat to retrieve from the cache */
    public let Name: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_CopyStatByNameOptions {
        _tagEOS_Stats_CopyStatByNameOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            Name: pointerManager.managedPointerToBuffer(copyingArray: Name?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_CopyStatByNameOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.Name = stringFromOptionalCStringPointer(sdkObject.Name)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_STATS_COPYSTATBYNAME_API_LATEST`.
    - Parameter TargetUserId: The Product User ID of the user who owns the stat
    - Parameter Name: Name of the stat to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_STATS_COPYSTATBYNAME_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        Name: String?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.Name = Name
    }
}
