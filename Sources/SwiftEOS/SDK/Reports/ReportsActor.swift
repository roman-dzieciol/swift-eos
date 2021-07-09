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
     * Sends the provided report directly to the Epic Online Services back-end.
     * 
     * - Parameter Options:  Structure containing the player report information.
     * - Parameter ClientData:  Optional client data provided by the user of the SDK.
     * - Parameter CompletionDelegate:  This function is called when the send operation completes.
     */
    public func SendPlayerBehaviorReport(
        Options: SwiftEOS_Reports_SendPlayerBehaviorReportOptions,
        CompletionDelegate: @escaping (SwiftEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfo) -> Void
    ) throws {
        try ____SendPlayerBehaviorReport(
            Options,
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Reports_Actor {

    /**
     * Sends the provided report directly to the Epic Online Services back-end.
     * 
     * - Parameter Options:  Structure containing the player report information.
     * - Parameter ClientData:  Optional client data provided by the user of the SDK.
     * - Parameter CompletionDelegate:  This function is called when the send operation completes.
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
