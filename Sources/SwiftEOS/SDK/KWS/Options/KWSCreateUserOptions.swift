import Foundation
import EOSSDK


/** Input parameters for the `EOS_KWS_CreateUser` function. */
public struct SwiftEOS_KWS_CreateUserOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_KWS_CREATEUSER_API_LATEST`. */
    public let ApiVersion: Int32

    /** Local user creating a KWS entry */
    public let LocalUserId: EOS_ProductUserId?

    /** Date of birth in ISO8601 form (YYYY-MM-DD) */
    public let DateOfBirth: String?

    /** Parent email */
    public let ParentEmail: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_KWS_CreateUserOptions {
        _tagEOS_KWS_CreateUserOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            DateOfBirth: pointerManager.managedPointerToBuffer(copyingArray: DateOfBirth?.utf8CString),
            ParentEmail: pointerManager.managedPointerToBuffer(copyingArray: ParentEmail?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_CreateUserOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.DateOfBirth = stringFromOptionalCStringPointer(sdkObject.DateOfBirth)
        self.ParentEmail = stringFromOptionalCStringPointer(sdkObject.ParentEmail)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_KWS_CREATEUSER_API_LATEST`.
    - Parameter LocalUserId: Local user creating a KWS entry
    - Parameter DateOfBirth: Date of birth in ISO8601 form (YYYY-MM-DD)
    - Parameter ParentEmail: Parent email
    */
    public init(
        ApiVersion: Int32 = EOS_KWS_CREATEUSER_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        DateOfBirth: String?,
        ParentEmail: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.DateOfBirth = DateOfBirth
        self.ParentEmail = ParentEmail
    }
}
