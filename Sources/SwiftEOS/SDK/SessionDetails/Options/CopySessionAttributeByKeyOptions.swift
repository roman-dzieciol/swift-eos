import Foundation
import EOSSDK


/** Input parameters for the `EOS_SessionDetails_CopySessionAttributeByKey` function. */
public struct SwiftEOS_SessionDetails_CopySessionAttributeByKeyOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYKEY_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    The name of the key to get the session attribution for

    - SeeAlso: `EOS_SessionModification_AddAttribute`
    */
    public let AttrKey: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_CopySessionAttributeByKeyOptions {
        _tagEOS_SessionDetails_CopySessionAttributeByKeyOptions(
            ApiVersion: ApiVersion,
            AttrKey: pointerManager.managedPointerToBuffer(copyingArray: AttrKey?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_CopySessionAttributeByKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AttrKey = stringFromOptionalCStringPointer(sdkObject.AttrKey)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYKEY_API_LATEST`.
    - Parameter AttrKey: The name of the key to get the session attribution for
    - SeeAlso: `EOS_SessionModification_AddAttribute`
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYKEY_API_LATEST,
        AttrKey: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AttrKey = AttrKey
    }
}
