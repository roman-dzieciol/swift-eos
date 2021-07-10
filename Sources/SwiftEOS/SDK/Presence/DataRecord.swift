import Foundation
import EOSSDK

/**
 * An individual presence data record that belongs to a EOS_Presence_Info object. This object is released when its parent EOS_Presence_Info object is released.
 * 
 * @see EOS_Presence_Info
 */
public struct SwiftEOS_Presence_DataRecord: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCE_DATARECORD_API_LATEST.  */
    public let ApiVersion: Int32

    /** The name of this data  */
    public let Key: String?

    /** The value of this data  */
    public let Value: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_DataRecord?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.Value = String(cString: sdkObject.Value)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_DataRecord {
        _tagEOS_Presence_DataRecord(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            Value: pointerManager.managedPointerToBuffer(copyingArray: Value?.utf8CString)
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PRESENCE_DATARECORD_API_LATEST. 
     * - Parameter Key:  The name of this data 
     * - Parameter Value:  The value of this data 
     */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_DATARECORD_API_LATEST,
        Key: String?,
        Value: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.Value = Value
    }
}
