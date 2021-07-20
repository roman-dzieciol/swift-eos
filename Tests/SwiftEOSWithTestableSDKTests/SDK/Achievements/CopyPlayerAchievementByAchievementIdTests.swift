import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyPlayerAchievementByAchievementId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyPlayerAchievementByAchievementId = { Handle, Options, OutAchievement in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYACHIEVEMENTID_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AchievementId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(OutAchievement)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_CopyPlayerAchievementByAchievementId")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyPlayerAchievementByAchievementId = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_PlayerAchievement? = try object.CopyPlayerAchievementByAchievementId(
                TargetUserId: nil,
                AchievementId: nil,
                LocalUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByAchievementId"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByAchievementId"])
    }
}
