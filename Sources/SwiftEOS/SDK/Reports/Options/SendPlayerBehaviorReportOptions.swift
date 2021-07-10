import Foundation
import EOSSDK

/** Input parameters for the EOS_Reports_SendPlayerBehaviorReport function. */
public struct SwiftEOS_Reports_SendPlayerBehaviorReportOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_REPORTS_SENDPLAYERBEHAVIORREPORT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the reporting player  */
    public let ReporterUserId: EOS_ProductUserId?

    /** Product User ID of the reported player.  */
    public let ReportedUserId: EOS_ProductUserId?

    /** Category for the player report.  */
    public let Category: EOS_EPlayerReportsCategory

    /**
     * Optional plain text string associated with the report as UTF-8 encoded null-terminated string.
     * The length of the message can be at maximum up to EOS_REPORTS_REPORTMESSAGE_MAX_LENGTH bytes
     * and any excess characters will be truncated upon sending the report.
     */
    public let Message: String?

    /**
     * Optional JSON string associated with the report as UTF-8 encoded null-terminated string.
     * This is intended as a way to associate arbitrary structured context information with a report.
     * This string needs to be valid JSON, report will fail otherwise.
     * The length of the context can be at maximum up to EOS_REPORTS_REPORTCONTEXT_MAX_LENGTH bytes, not including the null terminator, report will fail otherwise.
     */
    public let Context: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Reports_SendPlayerBehaviorReportOptions {
        _tagEOS_Reports_SendPlayerBehaviorReportOptions(
            ApiVersion: ApiVersion,
            ReporterUserId: ReporterUserId,
            ReportedUserId: ReportedUserId,
            Category: Category,
            Message: pointerManager.managedPointerToBuffer(copyingArray: Message?.utf8CString),
            Context: pointerManager.managedPointerToBuffer(copyingArray: Context?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Reports_SendPlayerBehaviorReportOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ReporterUserId = sdkObject.ReporterUserId
        self.ReportedUserId = sdkObject.ReportedUserId
        self.Category = sdkObject.Category
        self.Message = String(cString: sdkObject.Message)
        self.Context = String(cString: sdkObject.Context)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_REPORTS_SENDPLAYERBEHAVIORREPORT_API_LATEST. 
     * - Parameter ReporterUserId:  Product User ID of the reporting player 
     * - Parameter ReportedUserId:  Product User ID of the reported player. 
     * - Parameter Category:  Category for the player report. 
     * - Parameter Message:  Optional plain text string associated with the report as UTF-8 encoded null-terminated string.
     * The length of the message can be at maximum up to EOS_REPORTS_REPORTMESSAGE_MAX_LENGTH bytes
     * and any excess characters will be truncated upon sending the report.
     * - Parameter Context:  Optional JSON string associated with the report as UTF-8 encoded null-terminated string.
     * This is intended as a way to associate arbitrary structured context information with a report.
     * This string needs to be valid JSON, report will fail otherwise.
     * The length of the context can be at maximum up to EOS_REPORTS_REPORTCONTEXT_MAX_LENGTH bytes, not including the null terminator, report will fail otherwise.
     */
    public init(
        ApiVersion: Int32 = EOS_REPORTS_SENDPLAYERBEHAVIORREPORT_API_LATEST,
        ReporterUserId: EOS_ProductUserId?,
        ReportedUserId: EOS_ProductUserId?,
        Category: EOS_EPlayerReportsCategory,
        Message: String?,
        Context: String?
    ) {
        self.ApiVersion = ApiVersion
        self.ReporterUserId = ReporterUserId
        self.ReportedUserId = ReportedUserId
        self.Category = Category
        self.Message = Message
        self.Context = Context
    }
}
