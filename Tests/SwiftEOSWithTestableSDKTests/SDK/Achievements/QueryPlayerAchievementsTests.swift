import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_QueryPlayerAchievementsTests: XCTestCase {
    public func testEOS_Achievements_QueryPlayerAchievements_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Achievements_QueryPlayerAchievements = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_QUERYPLAYERACHIEVEMENTS_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            UserId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Achievements_QueryPlayerAchievements")
            }
            defer { __on_EOS_Achievements_QueryPlayerAchievements = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryPlayerAchievements(
                TargetUserId: nil,
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.UserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_QueryPlayerAchievements"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
