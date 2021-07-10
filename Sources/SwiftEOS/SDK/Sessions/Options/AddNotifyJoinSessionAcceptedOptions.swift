import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_AddNotifyJoinSessionAccepted function. */
public struct SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_AddNotifyJoinSessionAcceptedOptions {
        _tagEOS_Sessions_AddNotifyJoinSessionAcceptedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_AddNotifyJoinSessionAcceptedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST. 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
