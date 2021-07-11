import Foundation
import EOSSDK

/** Input parameters for the `EOS_Mods_InstallMod` Function. */
public struct SwiftEOS_Mods_InstallModOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_MODS_INSTALLMOD_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which the mod should be installed */
    public let LocalUserId: EOS_EpicAccountId?

    /** The mod to install */
    public let Mod: SwiftEOS_Mod_Identifier?

    /** Indicates whether the mod should be uninstalled after exiting the game or not. */
    public let bRemoveAfterExit: Bool

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_InstallModOptions {
        try _tagEOS_Mods_InstallModOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Mod: try pointerManager.managedPointer(copyingValueOrNilPointer: Mod?.buildSdkObject(pointerManager: pointerManager)),
            bRemoveAfterExit: eosBoolFromSwiftBool(bRemoveAfterExit)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_InstallModOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod?.pointee)
        self.bRemoveAfterExit = try swiftBoolFromEosBool(sdkObject.bRemoveAfterExit)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_MODS_INSTALLMOD_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which the mod should be installed
    - Parameter Mod: The mod to install
    - Parameter bRemoveAfterExit: Indicates whether the mod should be uninstalled after exiting the game or not.
    */
    public init(
        ApiVersion: Int32 = EOS_MODS_INSTALLMOD_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?,
        bRemoveAfterExit: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Mod = Mod
        self.bRemoveAfterExit = bRemoveAfterExit
    }
}
