import Foundation
import EOSSDK

/** Data for the EOS_PresenceModification_SetData function. */
public struct SwiftEOS_PresenceModification_SetDataOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_SETDATA_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The count of records to set 
     * - array buffer: Records
     */
    public let RecordsCount: Int

    /**
     * The pointer to start of a sequential array of Presence DataRecords 
     * - array num: RecordsCount
     */
    public let Records: [SwiftEOS_Presence_DataRecord]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_SetDataOptions {
        try _tagEOS_PresenceModification_SetDataOptions(
            ApiVersion: ApiVersion,
            RecordsCount: try safeNumericCast(exactly: RecordsCount),
            Records: try pointerManager.managedPointerToBuffer(copyingArray: Records?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_SetDataOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RecordsCount = try safeNumericCast(exactly: sdkObject.RecordsCount)
        self.Records = try sdkObject.Records.array(safeNumericCast(exactly: sdkObject.RecordsCount)).compactMap { 
            try SwiftEOS_Presence_DataRecord.init(sdkObject: $0.pointee) }
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PRESENCEMODIFICATION_SETDATA_API_LATEST. 
     * - Parameter RecordsCount:  The count of records to set 
     * - array buffer: Records
     * - Parameter Records:  The pointer to start of a sequential array of Presence DataRecords 
     * - array num: RecordsCount
     */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_SETDATA_API_LATEST,
        RecordsCount: Int,
        Records: [SwiftEOS_Presence_DataRecord]?
    ) {
        self.ApiVersion = ApiVersion
        self.RecordsCount = RecordsCount
        self.Records = Records
    }
}
