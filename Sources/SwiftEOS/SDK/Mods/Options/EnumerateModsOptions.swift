import Foundation
import EOSSDK

/** Input parameters for the `EOS_Mods_EnumerateMods` Function. */
public struct SwiftEOS_Mods_EnumerateModsOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_MODS_ENUMERATEMODS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which the mod should be enumerated */
    public let LocalUserId: EOS_EpicAccountId?

    /** Type of the mods to enumerate */
    public let `Type`: EOS_EModEnumerationType

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_EnumerateModsOptions {
        _tagEOS_Mods_EnumerateModsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            `Type`: `Type`
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_EnumerateModsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.`Type` = sdkObject.`Type`
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_MODS_ENUMERATEMODS_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which the mod should be enumerated
    - Parameter `Type`: Type of the mods to enumerate
    */
    public init(
        ApiVersion: Int32 = EOS_MODS_ENUMERATEMODS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        `Type`: EOS_EModEnumerationType
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.`Type` = `Type`
    }
}
