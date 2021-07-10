import Foundation
import EOSSDK

/**
 * All the known presence information for a specific user. This object must be released by calling EOS_Presence_Info_Release.
 * 
 * @see EOS_Presence_CopyPresence
 * @see EOS_Presence_Info_Release
 * 
 * - see: release func: EOS_Presence_Info_Release
 */
public struct SwiftEOS_Presence_Info: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_INFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The status of the user  */
    public let Status: EOS_Presence_EStatus

    /** The Epic Online Services Account ID of the user  */
    public let UserId: EOS_EpicAccountId?

    /** The product ID that the user is logged in from  */
    public let ProductId: String?

    /** The version of the product the user is logged in from  */
    public let ProductVersion: String?

    /** The platform of that the user is logged in from  */
    public let Platform: String?

    /** The rich-text of the user  */
    public let RichText: String?

    /**
     * The first data record, or NULL if RecordsCount is not at least 1 
     * 
     * - Note: ``EOS/_tagEOS_Presence_Info/RecordsCount``:
     * The count of records available 
     */
    public let Records: [SwiftEOS_Presence_DataRecord]?

    /** The user-facing name for the product the user is logged in from  */
    public let ProductName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_Info {
        try _tagEOS_Presence_Info(
            ApiVersion: ApiVersion,
            Status: Status,
            UserId: UserId,
            ProductId: pointerManager.managedPointerToBuffer(copyingArray: ProductId?.utf8CString),
            ProductVersion: pointerManager.managedPointerToBuffer(copyingArray: ProductVersion?.utf8CString),
            Platform: pointerManager.managedPointerToBuffer(copyingArray: Platform?.utf8CString),
            RichText: pointerManager.managedPointerToBuffer(copyingArray: RichText?.utf8CString),
            RecordsCount: try safeNumericCast(exactly: Records?.count ?? .zero),
            Records: try pointerManager.managedPointerToBuffer(copyingArray: Records?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) }),
            ProductName: pointerManager.managedPointerToBuffer(copyingArray: ProductName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_Info?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Status = sdkObject.Status
        self.UserId = sdkObject.UserId
        self.ProductId = String(cString: sdkObject.ProductId)
        self.ProductVersion = String(cString: sdkObject.ProductVersion)
        self.Platform = String(cString: sdkObject.Platform)
        self.RichText = String(cString: sdkObject.RichText)
        self.Records = try sdkObject.Records.array(safeNumericCast(exactly: sdkObject.RecordsCount)).compactMap { 
            try SwiftEOS_Presence_DataRecord.init(sdkObject: $0.pointee) }
        self.ProductName = String(cString: sdkObject.ProductName)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PRESENCE_INFO_API_LATEST. 
     * - Parameter Status:  The status of the user 
     * - Parameter UserId:  The Epic Online Services Account ID of the user 
     * - Parameter ProductId:  The product ID that the user is logged in from 
     * - Parameter ProductVersion:  The version of the product the user is logged in from 
     * - Parameter Platform:  The platform of that the user is logged in from 
     * - Parameter RichText:  The rich-text of the user 
     * - Parameter Records:  The first data record, or NULL if RecordsCount is not at least 1 
     * 
     * - Note: ``EOS/_tagEOS_Presence_Info/RecordsCount``:
     * The count of records available 
     * - Parameter ProductName:  The user-facing name for the product the user is logged in from 
     */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_INFO_API_LATEST,
        Status: EOS_Presence_EStatus,
        UserId: EOS_EpicAccountId?,
        ProductId: String?,
        ProductVersion: String?,
        Platform: String?,
        RichText: String?,
        Records: [SwiftEOS_Presence_DataRecord]?,
        ProductName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Status = Status
        self.UserId = UserId
        self.ProductId = ProductId
        self.ProductVersion = ProductVersion
        self.Platform = Platform
        self.RichText = RichText
        self.Records = Records
        self.ProductName = ProductName
    }
}
