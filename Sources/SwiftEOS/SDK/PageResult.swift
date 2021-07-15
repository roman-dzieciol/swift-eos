import Foundation
import EOSSDK


/** A page result is part of query callback info. It is used to provide pagination details of query results. */
public struct SwiftEOS_PageResult {

    /** The index into the ordered query results to start the page at. */
    public let StartIndex: Int

    /** The number of results in the current page. */
    public let Count: Int

    /** The number of results associated with they original query options. */
    public let TotalCount: Int

    /**
    Memberwise initializer

    - Parameter StartIndex: The index into the ordered query results to start the page at.
    - Parameter Count: The number of results in the current page.
    - Parameter TotalCount: The number of results associated with they original query options.
    */
    public init(
        StartIndex: Int,
        Count: Int,
        TotalCount: Int
    ) {
        self.StartIndex = StartIndex
        self.Count = Count
        self.TotalCount = TotalCount
    }
}
