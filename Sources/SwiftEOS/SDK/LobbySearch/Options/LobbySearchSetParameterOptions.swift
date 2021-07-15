import Foundation
import EOSSDK


/** Input parameters for the `EOS_LobbySearch_SetParameter` function. */
public struct SwiftEOS_LobbySearch_SetParameterOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYSEARCH_SETPARAMETER_API_LATEST`. */
    public let ApiVersion: Int32

    /** Search parameter describing a key and a value to compare */
    public let Parameter: SwiftEOS_Lobby_AttributeData?

    /** The type of comparison to make against the search parameter */
    public let ComparisonOp: EOS_EComparisonOp

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_SetParameterOptions {
        try _tagEOS_LobbySearch_SetParameterOptions(
            ApiVersion: ApiVersion,
            Parameter: try pointerManager.managedPointer(copyingValueOrNilPointer: Parameter?.buildSdkObject(pointerManager: pointerManager)),
            ComparisonOp: ComparisonOp
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_SetParameterOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Parameter = try SwiftEOS_Lobby_AttributeData.init(sdkObject: sdkObject.Parameter?.pointee)
        self.ComparisonOp = sdkObject.ComparisonOp
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYSEARCH_SETPARAMETER_API_LATEST`.
    - Parameter Parameter: Search parameter describing a key and a value to compare
    - Parameter ComparisonOp: The type of comparison to make against the search parameter
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_SETPARAMETER_API_LATEST,
        Parameter: SwiftEOS_Lobby_AttributeData?,
        ComparisonOp: EOS_EComparisonOp
    ) {
        self.ApiVersion = ApiVersion
        self.Parameter = Parameter
        self.ComparisonOp = ComparisonOp
    }
}
