import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyUnlockedAchievementByAchievementId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyUnlockedAchievementByAchievementId = { Handle, Options, OutAchievement in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                XCTAssertNil(Options!.pointee.AchievementId)
                XCTAssertNil(OutAchievement)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_CopyUnlockedAchievementByAchievementId")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyUnlockedAchievementByAchievementId = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_UnlockedAchievement? = try object.CopyUnlockedAchievementByAchievementId(
                UserId: nil,
                AchievementId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_CopyUnlockedAchievementByAchievementId"])
            XCTAssertNil(result)
        }
    }
}
