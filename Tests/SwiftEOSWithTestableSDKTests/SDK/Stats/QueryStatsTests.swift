import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_QueryStatsTests: XCTestCase {
    public func testEOS_Stats_QueryStats_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Stats_QueryStats = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Stats_QueryStats")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_STATS_QUERYSTATS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.StartTime, .zero)
                XCTAssertEqual(Options!.pointee.EndTime, .zero)
                XCTAssertNil(Options!.pointee.StatNames)
                XCTAssertEqual(Options!.pointee.StatNamesCount, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Stats_OnQueryStatsCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            TargetUserId: nil
                        )))
            }
            defer { __on_EOS_Stats_QueryStats = nil }
            
            // Given Actor
            let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryStats(
                LocalUserId: nil,
                StartTime: .zero,
                EndTime: .zero,
                StatNames: nil,
                TargetUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Stats_QueryStats"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Stats_QueryStats"])
    }
}
