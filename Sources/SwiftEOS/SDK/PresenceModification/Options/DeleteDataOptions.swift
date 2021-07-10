import Foundation
import EOSSDK

/** Data for the EOS_PresenceModification_DeleteData function. */
public struct SwiftEOS_PresenceModification_DeleteDataOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST.  */
    public let ApiVersion: Int32

    /** The count of data keys to delete  */
    public let RecordsCount: Int

    /** The pointer to start of a sequential array  */
    public let Records: [SwiftEOS_PresenceModification_DataRecordId]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_DeleteDataOptions {
        try _tagEOS_PresenceModification_DeleteDataOptions(
            ApiVersion: ApiVersion,
            RecordsCount: try safeNumericCast(exactly: RecordsCount),
            Records: try pointerManager.managedPointerToBuffer(copyingArray: Records?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_DeleteDataOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RecordsCount = try safeNumericCast(exactly: sdkObject.RecordsCount)
        self.Records = try sdkObject.Records.array(safeNumericCast(exactly: sdkObject.RecordsCount)).compactMap { 
            try SwiftEOS_PresenceModification_DataRecordId.init(sdkObject: $0.pointee) }
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST. 
     * - Parameter RecordsCount:  The count of data keys to delete 
     * - Parameter Records:  The pointer to start of a sequential array 
     */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST,
        RecordsCount: Int,
        Records: [SwiftEOS_PresenceModification_DataRecordId]?
    ) {
        self.ApiVersion = ApiVersion
        self.RecordsCount = RecordsCount
        self.Records = Records
    }
}
