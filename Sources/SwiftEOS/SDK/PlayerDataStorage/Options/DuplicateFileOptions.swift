import Foundation
import EOSSDK

/** Input data for the `EOS_PlayerDataStorage_DuplicateFile` function */
public struct SwiftEOS_PlayerDataStorage_DuplicateFileOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PLAYERDATASTORAGE_DUPLICATEFILEOPTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who authorized the duplication of the requested file; must be the original file's owner */
    public let LocalUserId: EOS_ProductUserId?

    /** The name of the existing file to duplicate */
    public let SourceFilename: String?

    /** The name of the new file */
    public let DestinationFilename: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_DuplicateFileOptions {
        _tagEOS_PlayerDataStorage_DuplicateFileOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            SourceFilename: pointerManager.managedPointerToBuffer(copyingArray: SourceFilename?.utf8CString),
            DestinationFilename: pointerManager.managedPointerToBuffer(copyingArray: DestinationFilename?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DuplicateFileOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.SourceFilename = stringFromOptionalCStringPointer(sdkObject.SourceFilename)
        self.DestinationFilename = stringFromOptionalCStringPointer(sdkObject.DestinationFilename)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PLAYERDATASTORAGE_DUPLICATEFILEOPTIONS_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user who authorized the duplication of the requested file; must be the original file's owner
    - Parameter SourceFilename: The name of the existing file to duplicate
    - Parameter DestinationFilename: The name of the new file
    */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_DUPLICATEFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        SourceFilename: String?,
        DestinationFilename: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.SourceFilename = SourceFilename
        self.DestinationFilename = DestinationFilename
    }
}
