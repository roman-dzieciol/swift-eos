import Foundation
import EOSSDK


/** Input parameters for the `EOS_SessionModification_AddAttribute` function. */
public struct SwiftEOS_SessionModification_AddAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONMODIFICATION_ADDATTRIBUTE_API_LATEST`. */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute to add to the session */
    public let SessionAttribute: SwiftEOS_Sessions_AttributeData?

    /** Is this attribution advertised with the backend or simply stored locally */
    public let AdvertisementType: EOS_ESessionAttributeAdvertisementType

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_AddAttributeOptions {
        try _tagEOS_SessionModification_AddAttributeOptions(
            ApiVersion: ApiVersion,
            SessionAttribute: try pointerManager.managedPointer(copyingValueOrNilPointer: SessionAttribute?.buildSdkObject(pointerManager: pointerManager)),
            AdvertisementType: AdvertisementType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_AddAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionAttribute = try SwiftEOS_Sessions_AttributeData.init(sdkObject: sdkObject.SessionAttribute?.pointee)
        self.AdvertisementType = sdkObject.AdvertisementType
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONMODIFICATION_ADDATTRIBUTE_API_LATEST`.
    - Parameter SessionAttribute: Key/Value pair describing the attribute to add to the session
    - Parameter AdvertisementType: Is this attribution advertised with the backend or simply stored locally
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_ADDATTRIBUTE_API_LATEST,
        SessionAttribute: SwiftEOS_Sessions_AttributeData?,
        AdvertisementType: EOS_ESessionAttributeAdvertisementType
    ) {
        self.ApiVersion = ApiVersion
        self.SessionAttribute = SessionAttribute
        self.AdvertisementType = AdvertisementType
    }
}
