import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbySearch_RemoveParameter function. */
public struct SwiftEOS_LobbySearch_RemoveParameterOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_REMOVEPARAMETER_API_LATEST. */
    public let ApiVersion: Int32

    /** Search parameter key to remove from the search */
    public let Key: String?

    /** Search comparison operation associated with the key to remove */
    public let ComparisonOp: EOS_EComparisonOp

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_RemoveParameterOptions {
        _tagEOS_LobbySearch_RemoveParameterOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            ComparisonOp: ComparisonOp
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_RemoveParameterOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.ComparisonOp = sdkObject.ComparisonOp
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LOBBYSEARCH_REMOVEPARAMETER_API_LATEST.
    - Parameter Key: Search parameter key to remove from the search
    - Parameter ComparisonOp: Search comparison operation associated with the key to remove
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_REMOVEPARAMETER_API_LATEST,
        Key: String?,
        ComparisonOp: EOS_EComparisonOp
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.ComparisonOp = ComparisonOp
    }
}
