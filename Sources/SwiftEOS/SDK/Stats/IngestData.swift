import Foundation
import EOSSDK

/** Contains information about a single stat to ingest. */
public struct SwiftEOS_Stats_IngestData: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_INGESTDATA_API_LATEST. */
    public let ApiVersion: Int32

    /** The name of the stat to ingest. */
    public let StatName: String?

    /** The amount to ingest the stat. */
    public let IngestAmount: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_IngestData?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.StatName = String(cString: sdkObject.StatName)
        self.IngestAmount = try safeNumericCast(exactly: sdkObject.IngestAmount)
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_IngestData {
        try _tagEOS_Stats_IngestData(
            ApiVersion: ApiVersion,
            StatName: pointerManager.managedPointerToBuffer(copyingArray: StatName?.utf8CString),
            IngestAmount: try safeNumericCast(exactly: IngestAmount)
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_STATS_INGESTDATA_API_LATEST.
    - Parameter StatName: The name of the stat to ingest.
    - Parameter IngestAmount: The amount to ingest the stat.
    */
    public init(
        ApiVersion: Int32 = EOS_STATS_INGESTDATA_API_LATEST,
        StatName: String?,
        IngestAmount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.StatName = StatName
        self.IngestAmount = IngestAmount
    }
}
