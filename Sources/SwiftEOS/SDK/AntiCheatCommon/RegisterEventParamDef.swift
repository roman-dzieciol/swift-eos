import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_RegisterEventParamDef: SwiftEOSObject {

    /** Parameter name. Allowed characters are 0-9, A-Z, a-z, '_', '-', '.'  */
    public let ParamName: String?

    /** Parameter type  */
    public let ParamType: EOS_EAntiCheatCommonEventParamType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_RegisterEventParamDef?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ParamName = String(cString: sdkObject.ParamName)
        self.ParamType = sdkObject.ParamType
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_RegisterEventParamDef {
        _tagEOS_AntiCheatCommon_RegisterEventParamDef(
            ParamName: pointerManager.managedPointerToBuffer(copyingArray: ParamName?.utf8CString),
            ParamType: ParamType
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ParamName:  Parameter name. Allowed characters are 0-9, A-Z, a-z, '_', '-', '.' 
     * - Parameter ParamType:  Parameter type 
     */
    public init(
        ParamName: String?,
        ParamType: EOS_EAntiCheatCommonEventParamType
    ) {
        self.ParamName = ParamName
        self.ParamType = ParamType
    }
}
