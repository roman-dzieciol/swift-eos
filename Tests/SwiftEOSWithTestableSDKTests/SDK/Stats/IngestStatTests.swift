import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_IngestStatTests: XCTestCase {
    public func testEOS_Stats_IngestStat_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Stats_IngestStat = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Stats)
                XCTAssertEqual(Options!.pointee.StatsCount, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Stats_IngestStatCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            TargetUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Stats_IngestStat")
            }
            defer { __on_EOS_Stats_IngestStat = nil }
            
            // Given Actor
            let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.IngestStat(
                LocalUserId: nil,
                Stats: nil,
                TargetUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Stats_IngestStat"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
