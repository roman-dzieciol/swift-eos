import Foundation
import EOSSDK

/** Input parameters for the EOS_UI_SetDisplayPreference function. */
public struct SwiftEOS_UI_SetDisplayPreferenceOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_SETDISPLAYPREFERENCE_API_LATEST. */
    public let ApiVersion: Int32

    /** Preference for notification pop-up locations. */
    public let NotificationLocation: EOS_UI_ENotificationLocation

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_SetDisplayPreferenceOptions {
        _tagEOS_UI_SetDisplayPreferenceOptions(
            ApiVersion: ApiVersion,
            NotificationLocation: NotificationLocation
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_SetDisplayPreferenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.NotificationLocation = sdkObject.NotificationLocation
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_UI_SETDISPLAYPREFERENCE_API_LATEST.
    - Parameter NotificationLocation: Preference for notification pop-up locations.
    */
    public init(
        ApiVersion: Int32 = EOS_UI_SETDISPLAYPREFERENCE_API_LATEST,
        NotificationLocation: EOS_UI_ENotificationLocation
    ) {
        self.ApiVersion = ApiVersion
        self.NotificationLocation = NotificationLocation
    }
}
