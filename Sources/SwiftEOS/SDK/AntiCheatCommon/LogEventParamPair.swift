import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogEventParamPair: SwiftEOSObject {

    /** Parameter type  */
    public let ParamValueType: EOS_EAntiCheatCommonEventParamType
    public let ParamValue: _tagEOS_AntiCheatCommon_LogEventParamPair.__Unnamed_union_ParamValue

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogEventParamPair?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ParamValueType = sdkObject.ParamValueType
        self.ParamValue = sdkObject.ParamValue
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogEventParamPair {
        _tagEOS_AntiCheatCommon_LogEventParamPair(
            ParamValueType: ParamValueType,
            ParamValue: ParamValue
        )
    }

    /** Memberwise initializer */
    public init(
        ParamValueType: EOS_EAntiCheatCommonEventParamType,
        ParamValue: _tagEOS_AntiCheatCommon_LogEventParamPair.__Unnamed_union_ParamValue
    ) {
        self.ParamValueType = ParamValueType
        self.ParamValue = ParamValue
    }
}
