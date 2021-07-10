import Foundation
import EOSSDK

/** Input parameters for the `EOS_KWS_UpdateParentEmail` function. */
public struct SwiftEOS_KWS_UpdateParentEmailOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_KWS_UPDATEPARENTEMAIL_API_LATEST`. */
    public let ApiVersion: Int32

    /** Local user updating parental information */
    public let LocalUserId: EOS_ProductUserId?

    /** New parent email */
    public let ParentEmail: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_UpdateParentEmailOptions {
        _tagEOS_KWS_UpdateParentEmailOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ParentEmail: pointerManager.managedPointerToBuffer(copyingArray: ParentEmail?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_UpdateParentEmailOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ParentEmail = String(cString: sdkObject.ParentEmail)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_KWS_UPDATEPARENTEMAIL_API_LATEST`.
    - Parameter LocalUserId: Local user updating parental information
    - Parameter ParentEmail: New parent email
    */
    public init(
        ApiVersion: Int32 = EOS_KWS_UPDATEPARENTEMAIL_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        ParentEmail: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ParentEmail = ParentEmail
    }
}
