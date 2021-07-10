import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData: SwiftEOSObject {

    /** Locally unique value used in RegisterClient/RegisterPeer */
    public let PlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Player's current world position as a 3D vector */
    public let PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?

    /** Player's view rotation as a quaternion */
    public let PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?

    /** True if the player's view is zoomed (e.g. using a sniper rifle), otherwise false */
    public let bIsPlayerViewZoomed: Bool

    /** Set to true if the player is using a melee attack, otherwise false */
    public let bIsMeleeAttack: Bool

    /** Name of the weapon used. Will be truncated to EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_WEAPONNAME_MAX_LENGTH bytes if longer. */
    public let WeaponName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerUseWeaponData?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.PlayerHandle = sdkObject.PlayerHandle
        self.PlayerPosition = try SwiftEOS_AntiCheatCommon_Vec3f.init(sdkObject: sdkObject.PlayerPosition.pointee)
        self.PlayerViewRotation = try SwiftEOS_AntiCheatCommon_Quat.init(sdkObject: sdkObject.PlayerViewRotation.pointee)
        self.bIsPlayerViewZoomed = try swiftBoolFromEosBool(sdkObject.bIsPlayerViewZoomed)
        self.bIsMeleeAttack = try swiftBoolFromEosBool(sdkObject.bIsMeleeAttack)
        self.WeaponName = String(cString: sdkObject.WeaponName)
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerUseWeaponData {
        try _tagEOS_AntiCheatCommon_LogPlayerUseWeaponData(
            PlayerHandle: PlayerHandle,
            PlayerPosition: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerPosition?.buildSdkObject(pointerManager: pointerManager)),
            PlayerViewRotation: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerViewRotation?.buildSdkObject(pointerManager: pointerManager)),
            bIsPlayerViewZoomed: eosBoolFromSwiftBool(bIsPlayerViewZoomed),
            bIsMeleeAttack: eosBoolFromSwiftBool(bIsMeleeAttack),
            WeaponName: pointerManager.managedPointerToBuffer(copyingArray: WeaponName?.utf8CString)
        )
    }

    /**
    Memberwise initializer

    - Parameter PlayerHandle: Locally unique value used in RegisterClient/RegisterPeer
    - Parameter PlayerPosition: Player's current world position as a 3D vector
    - Parameter PlayerViewRotation: Player's view rotation as a quaternion
    - Parameter bIsPlayerViewZoomed: True if the player's view is zoomed (e.g. using a sniper rifle), otherwise false
    - Parameter bIsMeleeAttack: Set to true if the player is using a melee attack, otherwise false
    - Parameter WeaponName: Name of the weapon used. Will be truncated to EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_WEAPONNAME_MAX_LENGTH bytes if longer.
    */
    public init(
        PlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?,
        PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?,
        bIsPlayerViewZoomed: Bool,
        bIsMeleeAttack: Bool,
        WeaponName: String?
    ) {
        self.PlayerHandle = PlayerHandle
        self.PlayerPosition = PlayerPosition
        self.PlayerViewRotation = PlayerViewRotation
        self.bIsPlayerViewZoomed = bIsPlayerViewZoomed
        self.bIsMeleeAttack = bIsMeleeAttack
        self.WeaponName = WeaponName
    }
}
