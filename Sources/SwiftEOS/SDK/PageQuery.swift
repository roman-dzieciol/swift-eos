import Foundation
import EOSSDK


/** A page query is part of query options. It is used to allow pagination of query results. */
public struct SwiftEOS_PageQuery {

    /** API Version: Set this to `EOS_PAGEQUERY_API_LATEST`. */
    public let ApiVersion: Int32

    /** The index into the ordered query results to start the page at. */
    public let StartIndex: Int

    /** The maximum number of results to have in the page. */
    public let MaxCount: Int

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PAGEQUERY_API_LATEST`.
    - Parameter StartIndex: The index into the ordered query results to start the page at.
    - Parameter MaxCount: The maximum number of results to have in the page.
    */
    public init(
        ApiVersion: Int32 = EOS_PAGEQUERY_API_LATEST,
        StartIndex: Int,
        MaxCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.StartIndex = StartIndex
        self.MaxCount = MaxCount
    }
}
