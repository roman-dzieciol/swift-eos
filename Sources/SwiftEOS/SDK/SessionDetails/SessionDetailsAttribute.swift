import Foundation
import EOSSDK

/**
An attribution value and its advertisement setting stored with a session.

- Note: Release func: ```EOS_SessionDetails_Attribute_Release```
*/
public struct SwiftEOS_SessionDetails_Attribute: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONDETAILS_ATTRIBUTE_API_LATEST`. */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute */
    public let Data: SwiftEOS_Sessions_AttributeData?

    /** Is this attribution advertised with the backend or simply stored locally */
    public let AdvertisementType: EOS_ESessionAttributeAdvertisementType

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_Attribute {
        try _tagEOS_SessionDetails_Attribute(
            ApiVersion: ApiVersion,
            Data: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: Data?.buildSdkObject(pointerManager: pointerManager)),
            AdvertisementType: AdvertisementType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_Attribute?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Data = try SwiftEOS_Sessions_AttributeData.init(sdkObject: sdkObject.Data.pointee)
        self.AdvertisementType = sdkObject.AdvertisementType
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONDETAILS_ATTRIBUTE_API_LATEST`.
    - Parameter Data: Key/Value pair describing the attribute
    - Parameter AdvertisementType: Is this attribution advertised with the backend or simply stored locally
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_ATTRIBUTE_API_LATEST,
        Data: SwiftEOS_Sessions_AttributeData?,
        AdvertisementType: EOS_ESessionAttributeAdvertisementType
    ) {
        self.ApiVersion = ApiVersion
        self.Data = Data
        self.AdvertisementType = AdvertisementType
    }
}
