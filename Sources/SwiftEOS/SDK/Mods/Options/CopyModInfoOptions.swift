import Foundation
import EOSSDK


/** Data for the `EOS_Mods_CopyModInfo` function. */
public struct SwiftEOS_Mods_CopyModInfoOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_MODS_COPYMODINFO_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which mods should be copied */
    public let LocalUserId: EOS_EpicAccountId?

    /** Type of the enumerated mod to copy */
    public let `Type`: EOS_EModEnumerationType

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_CopyModInfoOptions {
        _tagEOS_Mods_CopyModInfoOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            `Type`: `Type`
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_CopyModInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.`Type` = sdkObject.`Type`
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_MODS_COPYMODINFO_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which mods should be copied
    - Parameter `Type`: Type of the enumerated mod to copy
    */
    public init(
        ApiVersion: Int32 = EOS_MODS_COPYMODINFO_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        `Type`: EOS_EModEnumerationType
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.`Type` = `Type`
    }
}
