import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyUnlockedAchievementByAchievementId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyUnlockedAchievementByAchievementId = { Handle, Options, OutAchievement in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                XCTAssertNil(Options!.pointee.AchievementId)
                XCTAssertNotNil(OutAchievement)
                GTest.current.sdkReceived.append("EOS_Achievements_CopyUnlockedAchievementByAchievementId")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyUnlockedAchievementByAchievementId = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyUnlockedAchievementByAchievementId(
                    UserId: nil,
                    AchievementId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyUnlockedAchievementByAchievementId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyUnlockedAchievementByAchievementId"])
    }
}
