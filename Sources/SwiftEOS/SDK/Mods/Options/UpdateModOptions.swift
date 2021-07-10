import Foundation
import EOSSDK

/** Input parameters for the EOS_Mods_UpdateMod Function. */
public struct SwiftEOS_Mods_UpdateModOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_MODS_UPDATEMOD_API_LATEST. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which the mod should be updated */
    public let LocalUserId: EOS_EpicAccountId?

    /** The mod to update */
    public let Mod: SwiftEOS_Mod_Identifier?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_UpdateModOptions {
        try _tagEOS_Mods_UpdateModOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Mod: try pointerManager.managedPointer(copyingValueOrNilPointer: Mod?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_UpdateModOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_MODS_UPDATEMOD_API_LATEST.
    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which the mod should be updated
    - Parameter Mod: The mod to update
    */
    public init(
        ApiVersion: Int32 = EOS_MODS_UPDATEMOD_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Mod = Mod
    }
}
