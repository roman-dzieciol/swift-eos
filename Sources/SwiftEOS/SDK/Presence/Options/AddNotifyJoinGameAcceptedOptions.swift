import Foundation
import EOSSDK
public struct SwiftEOS_Presence_AddNotifyJoinGameAcceptedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_ADDNOTIFYJOINGAMEACCEPTED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_AddNotifyJoinGameAcceptedOptions {
        _tagEOS_Presence_AddNotifyJoinGameAcceptedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_AddNotifyJoinGameAcceptedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PRESENCE_ADDNOTIFYJOINGAMEACCEPTED_API_LATEST. 
     */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_ADDNOTIFYJOINGAMEACCEPTED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
