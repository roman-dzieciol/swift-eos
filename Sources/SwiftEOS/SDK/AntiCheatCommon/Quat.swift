import Foundation
import EOSSDK

/** Quaternion using left-handed coordinate system (as in Unreal Engine) */
public struct SwiftEOS_AntiCheatCommon_Quat: SwiftEOSObject {

    /** W component - scalar part */
    public let w: Float

    /** X component - forward direction */
    public let x: Float

    /** Y component - right direction */
    public let y: Float

    /** Z component - up direction */
    public let z: Float

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_Quat?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.w = sdkObject.w
        self.x = sdkObject.x
        self.y = sdkObject.y
        self.z = sdkObject.z
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_Quat {
        _tagEOS_AntiCheatCommon_Quat(
            w: w,
            x: x,
            y: y,
            z: z
        )
    }

    /**
    Memberwise initializer

    - Parameter w: W component - scalar part
    - Parameter x: X component - forward direction
    - Parameter y: Y component - right direction
    - Parameter z: Z component - up direction
    */
    public init(
        w: Float,
        x: Float,
        y: Float,
        z: Float
    ) {
        self.w = w
        self.x = x
        self.y = y
        self.z = z
    }
}
