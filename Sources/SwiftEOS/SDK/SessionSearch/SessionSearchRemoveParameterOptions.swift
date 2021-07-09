import Foundation
import EOSSDK

/**
 * Input parameters for the EOS_SessionSearch_RemoveParameter function.
 * Removal requires both the key and its comparator in order to remove as the same key can be used in more than one operation
 */
public struct SwiftEOS_SessionSearch_RemoveParameterOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Search parameter key to remove from the search  */
    public let Key: String?

    /** Search comparison operation associated with the key to remove  */
    public let ComparisonOp: EOS_EOnlineComparisonOp

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_RemoveParameterOptions {
        _tagEOS_SessionSearch_RemoveParameterOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            ComparisonOp: ComparisonOp
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_RemoveParameterOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.ComparisonOp = sdkObject.ComparisonOp
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        Key: String?,
        ComparisonOp: EOS_EOnlineComparisonOp
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.ComparisonOp = ComparisonOp
    }
}
