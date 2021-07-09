import Foundation
import EOSSDK

/** Input data for the EOS_PlayerDataStorage_DeleteFile function */
public struct SwiftEOS_PlayerDataStorage_DeleteFileOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_DELETEFILEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who authorizes deletion of the file; must be the file's owner  */
    public let LocalUserId: EOS_ProductUserId?

    /** The name of the file to delete  */
    public let Filename: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_DeleteFileOptions {
        _tagEOS_PlayerDataStorage_DeleteFileOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DeleteFileOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_DELETEFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
    }
}
