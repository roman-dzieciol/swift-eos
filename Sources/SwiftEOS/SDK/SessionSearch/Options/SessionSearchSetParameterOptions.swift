import Foundation
import EOSSDK

/**
Input parameters for the `EOS_SessionSearch_SetParameter` function.

A search key may be set more than once to make multiple comparisons
The two comparisons are AND'd together
(ie, Key `GREATER_THAN` 5, Key `NOT_EQUALS` 10)
*/
public struct SwiftEOS_SessionSearch_SetParameterOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONDETAILS_SETTINGS_API_LATEST`. */
    public let ApiVersion: Int32

    /** Search parameter describing a key and a value to compare */
    public let Parameter: SwiftEOS_Sessions_AttributeData?

    /** The type of comparison to make against the search parameter */
    public let ComparisonOp: EOS_EOnlineComparisonOp

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_SetParameterOptions {
        try _tagEOS_SessionSearch_SetParameterOptions(
            ApiVersion: ApiVersion,
            Parameter: try pointerManager.managedPointer(copyingValueOrNilPointer: Parameter?.buildSdkObject(pointerManager: pointerManager)),
            ComparisonOp: ComparisonOp
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_SetParameterOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Parameter = try SwiftEOS_Sessions_AttributeData.init(sdkObject: sdkObject.Parameter.pointee)
        self.ComparisonOp = sdkObject.ComparisonOp
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONDETAILS_SETTINGS_API_LATEST`.
    - Parameter Parameter: Search parameter describing a key and a value to compare
    - Parameter ComparisonOp: The type of comparison to make against the search parameter
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        Parameter: SwiftEOS_Sessions_AttributeData?,
        ComparisonOp: EOS_EOnlineComparisonOp
    ) {
        self.ApiVersion = ApiVersion
        self.Parameter = Parameter
        self.ComparisonOp = ComparisonOp
    }
}
