import Foundation
import EOSSDK

/** Data for identifying which data records should be deleted. */
public struct SwiftEOS_PresenceModification_DataRecordId: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_DATARECORDID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The key to be deleted from the data record  */
    public let Key: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_DataRecordId?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_DataRecordId {
        _tagEOS_PresenceModification_DataRecordId(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PRESENCEMODIFICATION_DATARECORDID_API_LATEST. 
     * - Parameter Key:  The key to be deleted from the data record 
     */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_DATARECORDID_API_LATEST,
        Key: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
    }
}
