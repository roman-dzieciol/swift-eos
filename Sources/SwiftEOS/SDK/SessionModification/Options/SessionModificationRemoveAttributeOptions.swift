import Foundation
import EOSSDK


/** Input parameters for the `EOS_SessionModification_RemoveAttribute` function. */
public struct SwiftEOS_SessionModification_RemoveAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONDETAILS_SETTINGS_API_LATEST`. */
    public let ApiVersion: Int32

    /** Session attribute to remove from the session */
    public let Key: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_RemoveAttributeOptions {
        _tagEOS_SessionModification_RemoveAttributeOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_RemoveAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = stringFromOptionalCStringPointer(sdkObject.Key)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONDETAILS_SETTINGS_API_LATEST`.
    - Parameter Key: Session attribute to remove from the session
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        Key: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
    }
}
