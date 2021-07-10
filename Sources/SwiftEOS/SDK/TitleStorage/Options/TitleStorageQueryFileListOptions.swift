import Foundation
import EOSSDK

/** Input data for the EOS_TitleStorage_QueryFileList function */
public struct SwiftEOS_TitleStorage_QueryFileListOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_QUERYFILELISTOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user who requested file metadata (optional)  */
    public let LocalUserId: EOS_ProductUserId?

    /** List of tags to use for lookup.  */
    public let ListOfTags: [String]?

    /** Number of tags specified in ListOfTags  */
    public let ListOfTagsCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_QueryFileListOptions {
        try _tagEOS_TitleStorage_QueryFileListOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ListOfTags: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: ListOfTags?.map { 
                    $0.utf8CString }),
            ListOfTagsCount: try safeNumericCast(exactly: ListOfTagsCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_QueryFileListOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ListOfTags = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.ListOfTags,
            count: sdkObject.ListOfTagsCount
        )
        self.ListOfTagsCount = try safeNumericCast(exactly: sdkObject.ListOfTagsCount)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_TITLESTORAGE_QUERYFILELISTOPTIONS_API_LATEST. 
     * - Parameter LocalUserId:  Product User ID of the local user who requested file metadata (optional) 
     * - Parameter ListOfTags:  List of tags to use for lookup. 
     * - Parameter ListOfTagsCount:  Number of tags specified in ListOfTags 
     */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_QUERYFILELISTOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        ListOfTags: [String]?,
        ListOfTagsCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ListOfTags = ListOfTags
        self.ListOfTagsCount = ListOfTagsCount
    }
}
