import Foundation
import EOSSDK


/** Data for the `EOS_PresenceModification_DeleteData` function. */
public struct SwiftEOS_PresenceModification_DeleteDataOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    The pointer to start of a sequential array

    - Note: ``EOS/_tagEOS_PresenceModification_DeleteDataOptions/RecordsCount``:
    The count of data keys to delete
    */
    public let Records: [SwiftEOS_PresenceModification_DataRecordId]?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_DeleteDataOptions {
        try _tagEOS_PresenceModification_DeleteDataOptions(
            ApiVersion: ApiVersion,
            RecordsCount: try safeNumericCast(exactly: Records?.count ?? .zero),
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
        self.Records = try sdkObject.Records?.array(safeNumericCast(exactly: sdkObject.RecordsCount)).compactMap { 
            try SwiftEOS_PresenceModification_DataRecordId.init(sdkObject: $0.pointee) }
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST`.
    - Parameter Records: The pointer to start of a sequential array
    - Note: ``EOS/_tagEOS_PresenceModification_DeleteDataOptions/RecordsCount``:
    The count of data keys to delete
    */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST,
        Records: [SwiftEOS_PresenceModification_DataRecordId]?
    ) {
        self.ApiVersion = ApiVersion
        self.Records = Records
    }
}
