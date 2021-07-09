import Foundation
import EOSSDK

/** Data for the EOS_Presence_AddNotifyOnPresenceChanged function. */
public struct SwiftEOS_Presence_AddNotifyOnPresenceChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_ADDNOTIFYONPRESENCECHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_AddNotifyOnPresenceChangedOptions {
        _tagEOS_Presence_AddNotifyOnPresenceChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_AddNotifyOnPresenceChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_ADDNOTIFYONPRESENCECHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
