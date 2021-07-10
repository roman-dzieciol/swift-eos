import Foundation
import EOSSDK

/** Data for the `EOS_PresenceModification_SetRawRichText` API. */
public struct SwiftEOS_PresenceModification_SetRawRichTextOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PRESENCEMODIFICATION_SETRAWRICHTEXT_API_LATEST`. */
    public let ApiVersion: Int32

    /** The status of the user */
    public let RichText: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_SetRawRichTextOptions {
        _tagEOS_PresenceModification_SetRawRichTextOptions(
            ApiVersion: ApiVersion,
            RichText: pointerManager.managedPointerToBuffer(copyingArray: RichText?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_SetRawRichTextOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RichText = String(cString: sdkObject.RichText)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PRESENCEMODIFICATION_SETRAWRICHTEXT_API_LATEST`.
    - Parameter RichText: The status of the user
    */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_SETRAWRICHTEXT_API_LATEST,
        RichText: String?
    ) {
        self.ApiVersion = ApiVersion
        self.RichText = RichText
    }
}
