import Foundation
import EOSSDK

/**
 * Contains information about a single player stat.
 * 
 * - see: release func: EOS_Stats_Stat_Release
 */
public struct SwiftEOS_Stats_Stat: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_STAT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the stat.  */
    public let Name: String?

    /** If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for start time.  */
    public let StartTime: Int

    /** If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for end time.  */
    public let EndTime: Int

    /** Current value for the stat.  */
    public let Value: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_Stat {
        try _tagEOS_Stats_Stat(
            ApiVersion: ApiVersion,
            Name: pointerManager.managedPointerToBuffer(copyingArray: Name?.utf8CString),
            StartTime: try safeNumericCast(exactly: StartTime),
            EndTime: try safeNumericCast(exactly: EndTime),
            Value: try safeNumericCast(exactly: Value)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_Stat?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Name = String(cString: sdkObject.Name)
        self.StartTime = try safeNumericCast(exactly: sdkObject.StartTime)
        self.EndTime = try safeNumericCast(exactly: sdkObject.EndTime)
        self.Value = try safeNumericCast(exactly: sdkObject.Value)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_STATS_STAT_API_LATEST. 
     * - Parameter Name:  Name of the stat. 
     * - Parameter StartTime:  If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for start time. 
     * - Parameter EndTime:  If not EOS_STATS_TIME_UNDEFINED then this is the POSIX timestamp for end time. 
     * - Parameter Value:  Current value for the stat. 
     */
    public init(
        ApiVersion: Int32 = EOS_STATS_STAT_API_LATEST,
        Name: String?,
        StartTime: Int,
        EndTime: Int,
        Value: Int
    ) {
        self.ApiVersion = ApiVersion
        self.Name = Name
        self.StartTime = StartTime
        self.EndTime = EndTime
        self.Value = Value
    }
}
