import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogPlayerTickOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERTICK_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let PlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Player's current world position as a 3D vector  */
    public let PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?

    /** Player's view rotation as a quaternion  */
    public let PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?

    /** True if the player's view is zoomed (e.g. using a sniper rifle), otherwise false  */
    public let bIsPlayerViewZoomed: Bool

    /** Player's current health value  */
    public let PlayerHealth: Float

    /** Any movement state applicable  */
    public let PlayerMovementState: EOS_EAntiCheatCommonPlayerMovementState

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerTickOptions {
        try _tagEOS_AntiCheatCommon_LogPlayerTickOptions(
            ApiVersion: ApiVersion,
            PlayerHandle: PlayerHandle,
            PlayerPosition: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerPosition?.buildSdkObject(pointerManager: pointerManager)),
            PlayerViewRotation: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: PlayerViewRotation?.buildSdkObject(pointerManager: pointerManager)),
            bIsPlayerViewZoomed: eosBoolFromSwiftBool(bIsPlayerViewZoomed),
            PlayerHealth: PlayerHealth,
            PlayerMovementState: PlayerMovementState
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerTickOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PlayerHandle = sdkObject.PlayerHandle
        self.PlayerPosition = try SwiftEOS_AntiCheatCommon_Vec3f.init(sdkObject: sdkObject.PlayerPosition.pointee)
        self.PlayerViewRotation = try SwiftEOS_AntiCheatCommon_Quat.init(sdkObject: sdkObject.PlayerViewRotation.pointee)
        self.bIsPlayerViewZoomed = try swiftBoolFromEosBool(sdkObject.bIsPlayerViewZoomed)
        self.PlayerHealth = sdkObject.PlayerHealth
        self.PlayerMovementState = sdkObject.PlayerMovementState
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERTICK_API_LATEST,
        PlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        PlayerPosition: SwiftEOS_AntiCheatCommon_Vec3f?,
        PlayerViewRotation: SwiftEOS_AntiCheatCommon_Quat?,
        bIsPlayerViewZoomed: Bool,
        PlayerHealth: Float,
        PlayerMovementState: EOS_EAntiCheatCommonPlayerMovementState
    ) {
        self.ApiVersion = ApiVersion
        self.PlayerHandle = PlayerHandle
        self.PlayerPosition = PlayerPosition
        self.PlayerViewRotation = PlayerViewRotation
        self.bIsPlayerViewZoomed = bIsPlayerViewZoomed
        self.PlayerHealth = PlayerHealth
        self.PlayerMovementState = PlayerMovementState
    }
}
