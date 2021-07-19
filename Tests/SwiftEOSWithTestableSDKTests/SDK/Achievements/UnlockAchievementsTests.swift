import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_UnlockAchievementsTests: XCTestCase {
    public func testEOS_Achievements_UnlockAchievements_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Achievements_UnlockAchievements = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_UNLOCKACHIEVEMENTS_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                XCTAssertNil(Options!.pointee.AchievementIds)
                XCTAssertEqual(Options!.pointee.AchievementsCount, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            UserId: .nonZeroPointer,
                            AchievementsCount: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Achievements_UnlockAchievements")
            }
            defer { __on_EOS_Achievements_UnlockAchievements = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.UnlockAchievements(
                UserId: nil,
                AchievementIds: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.UserId)
                    XCTAssertEqual(arg0.AchievementsCount, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_UnlockAchievements"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
