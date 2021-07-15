import Foundation
import EOSSDK

public struct SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_API_LATEST`. */
    public let ApiVersion: Int32

    /** Struct containing detailed information about a weapon use event */
    public let UseWeaponData: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerUseWeaponOptions {
        try _tagEOS_AntiCheatCommon_LogPlayerUseWeaponOptions(
            ApiVersion: ApiVersion,
            UseWeaponData: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: UseWeaponData?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerUseWeaponOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UseWeaponData = try SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData.init(sdkObject: sdkObject.UseWeaponData?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_API_LATEST`.
    - Parameter UseWeaponData: Struct containing detailed information about a weapon use event
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_API_LATEST,
        UseWeaponData: SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData?
    ) {
        self.ApiVersion = ApiVersion
        self.UseWeaponData = UseWeaponData
    }
}
