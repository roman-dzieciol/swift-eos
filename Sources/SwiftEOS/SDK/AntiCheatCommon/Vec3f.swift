import Foundation
import EOSSDK


/** Vector using left-handed coordinate system (as in Unreal Engine) */
public struct SwiftEOS_AntiCheatCommon_Vec3f: SwiftEOSObject {

    /** X axis coordinate - forward direction */
    public let x: Float

    /** Y axis coordinate - right direction */
    public let y: Float

    /** Z axis coordinate - up direction */
    public let z: Float

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_Vec3f?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
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
    ) throws -> _tagEOS_AntiCheatCommon_Vec3f {
        _tagEOS_AntiCheatCommon_Vec3f(
            x: x,
            y: y,
            z: z
        )
    }

    /**
    Memberwise initializer

    - Parameter x: X axis coordinate - forward direction
    - Parameter y: Y axis coordinate - right direction
    - Parameter z: Z axis coordinate - up direction
    */
    public init(
        x: Float,
        y: Float,
        z: Float
    ) {
        self.x = x
        self.y = y
        self.z = z
    }
}
