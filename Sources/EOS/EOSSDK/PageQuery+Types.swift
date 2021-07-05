import Foundation
import EOSSDK

/** A page query is part of query options. It is used to allow pagination of query results. */
public struct SwiftEOS_PageQuery {

    /** API Version: Set this to EOS_PAGEQUERY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The index into the ordered query results to start the page at.  */
    public let StartIndex: Int

    /** The maximum number of results to have in the page.  */
    public let MaxCount: Int
}
