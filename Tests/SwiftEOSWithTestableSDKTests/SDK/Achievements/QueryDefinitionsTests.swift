import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_QueryDefinitionsTests: XCTestCase {
    public func testEOS_Achievements_QueryDefinitions_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Achievements_QueryDefinitions = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_QUERYDEFINITIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.EpicUserId_DEPRECATED)
                XCTAssertNil(Options!.pointee.HiddenAchievementIds_DEPRECATED)
                XCTAssertEqual(Options!.pointee.HiddenAchievementsCount_DEPRECATED, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Achievements_QueryDefinitions")
            }
            defer { __on_EOS_Achievements_QueryDefinitions = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryDefinitions(
                LocalUserId: nil,
                EpicUserId_DEPRECATED: nil,
                HiddenAchievementIds_DEPRECATED: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_QueryDefinitions"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
