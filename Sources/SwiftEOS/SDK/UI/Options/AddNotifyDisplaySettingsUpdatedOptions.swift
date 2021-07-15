import Foundation
import EOSSDK


/** Input parameters for the `EOS_UI_AddNotifyDisplaySettingsUpdated` function. */
public struct SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_UI_ADDNOTIFYDISPLAYSETTINGSUPDATED_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions {
        _tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_UI_ADDNOTIFYDISPLAYSETTINGSUPDATED_API_LATEST`.
    */
    public init(
        ApiVersion: Int32 = EOS_UI_ADDNOTIFYDISPLAYSETTINGSUPDATED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
