import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Reports_SendPlayerBehaviorReportTests: XCTestCase {
    public func testEOS_Reports_SendPlayerBehaviorReport_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Reports_SendPlayerBehaviorReport = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_REPORTS_SENDPLAYERBEHAVIORREPORT_API_LATEST)
                XCTAssertNil(Options!.pointee.ReporterUserId)
                XCTAssertNil(Options!.pointee.ReportedUserId)
                XCTAssertEqual(Options!.pointee.Category, .zero)
                XCTAssertNil(Options!.pointee.Message)
                XCTAssertNil(Options!.pointee.Context)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                GTest.current.sdkReceived.append("EOS_Reports_SendPlayerBehaviorReport")
            }
            defer { __on_EOS_Reports_SendPlayerBehaviorReport = nil }
            
            // Given Actor
            let object: SwiftEOS_Reports_Actor = SwiftEOS_Reports_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SendPlayerBehaviorReport(
                ReporterUserId: nil,
                ReportedUserId: nil,
                Category: .zero,
                Message: nil,
                Context: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Reports_SendPlayerBehaviorReport"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Reports_SendPlayerBehaviorReport"])
    }
}
