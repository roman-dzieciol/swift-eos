import Foundation
import EOSSDK

/**
 * Data for the EOS_Mods_CopyModInfo function.
 * 
 * @see EOS_Mods_CopyModInfo
 * @see EOS_Mods_ModInfo_Release
 * 
 * - see: release func: EOS_Mods_ModInfo_Release
 */
public struct SwiftEOS_Mods_ModInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_MODS_MODINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The array of enumerated mods or NULL if no such type of mods were enumerated 
     * 
     * - Note: ``EOS/_tagEOS_Mods_ModInfo/ModsCount``:
     * The count of enumerated mods 
     */
    public let Mods: [SwiftEOS_Mod_Identifier]?

    /** Type of the mods  */
    public let `Type`: EOS_EModEnumerationType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_ModInfo {
        try _tagEOS_Mods_ModInfo(
            ApiVersion: ApiVersion,
            ModsCount: try safeNumericCast(exactly: Mods?.count ?? .zero),
            Mods: try pointerManager.managedMutablePointerToBuffer(copyingArray: Mods?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) }),
            `Type`: `Type`
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_ModInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Mods = try sdkObject.Mods.array(safeNumericCast(exactly: sdkObject.ModsCount)).compactMap { 
            try SwiftEOS_Mod_Identifier.init(sdkObject: $0.pointee) }
        self.`Type` = sdkObject.`Type`
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_MODS_MODINFO_API_LATEST. 
     * - Parameter Mods:  The array of enumerated mods or NULL if no such type of mods were enumerated 
     * 
     * - Note: ``EOS/_tagEOS_Mods_ModInfo/ModsCount``:
     * The count of enumerated mods 
     * - Parameter `Type`:  Type of the mods 
     */
    public init(
        ApiVersion: Int32 = EOS_MODS_MODINFO_API_LATEST,
        Mods: [SwiftEOS_Mod_Identifier]?,
        `Type`: EOS_EModEnumerationType
    ) {
        self.ApiVersion = ApiVersion
        self.Mods = Mods
        self.`Type` = `Type`
    }
}
