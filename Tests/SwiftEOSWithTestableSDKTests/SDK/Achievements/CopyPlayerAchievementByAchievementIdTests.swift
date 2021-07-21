import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyPlayerAchievementByAchievementId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyPlayerAchievementByAchievementId = { Handle, Options, OutAchievement in
                GTest.current.sdkReceived.append("EOS_Achievements_CopyPlayerAchievementByAchievementId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYACHIEVEMENTID_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AchievementId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(OutAchievement)
                return .zero
            }
            defer { __on_EOS_Achievements_CopyPlayerAchievementByAchievementId = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyPlayerAchievementByAchievementId(
                    TargetUserId: nil,
                    AchievementId: nil,
                    LocalUserId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByAchievementId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByAchievementId"])
    }
}
