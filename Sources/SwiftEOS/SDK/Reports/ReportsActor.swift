import Foundation
import EOSSDK
public class SwiftEOS_Reports_Actor: SwiftEOSActor {
    public let Handle: EOS_HReports

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HReports
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Sends the provided report directly to the Epic Online Services back-end.

    - Parameter ReporterUserId: Product User ID of the reporting player
    - Parameter ReportedUserId: Product User ID of the reported player.
    - Parameter Category: Category for the player report.
    - Parameter Message: Optional plain text string associated with the report as UTF-8 encoded null-terminated string.
    The length of the message can be at maximum up to EOS_REPORTS_REPORTMESSAGE_MAX_LENGTH bytes and any excess characters will be truncated upon sending the report.
    - Parameter Context: Optional JSON string associated with the report as UTF-8 encoded null-terminated string.This is intended as a way to associate arbitrary structured context information with a report.
    This string needs to be valid JSON, report will fail otherwise.The length of the context can be at maximum up to EOS_REPORTS_REPORTCONTEXT_MAX_LENGTH bytes, not including the null terminator, report will fail otherwise.
    - Parameter CompletionDelegate: This function is called when the send operation completes.
    */
    public func SendPlayerBehaviorReport(
        ReporterUserId: EOS_ProductUserId?,
        ReportedUserId: EOS_ProductUserId?,
        Category: EOS_EPlayerReportsCategory,
        Message: String?,
        Context: String?,
        CompletionDelegate: @escaping (SwiftEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfo) -> Void
    ) throws {
        try ____SendPlayerBehaviorReport(
            .init(
                ReporterUserId: ReporterUserId,
                ReportedUserId: ReportedUserId,
                Category: Category,
                Message: Message,
                Context: Context
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Reports_Actor {

    /**
    Sends the provided report directly to the Epic Online Services back-end.

    - Parameter Options: Structure containing the player report information.
    - Parameter CompletionDelegate: This function is called when the send operation completes.
    */
    private func ____SendPlayerBehaviorReport(
        _ Options: SwiftEOS_Reports_SendPlayerBehaviorReportOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Reports_SendPlayerBehaviorReport(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
