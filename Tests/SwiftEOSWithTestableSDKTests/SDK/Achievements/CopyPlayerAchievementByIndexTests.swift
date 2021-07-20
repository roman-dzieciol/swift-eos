import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyPlayerAchievementByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyPlayerAchievementByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyPlayerAchievementByIndex = { Handle, Options, OutAchievement in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(OutAchievement)
                GTest.current.sdkReceived.append("EOS_Achievements_CopyPlayerAchievementByIndex")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyPlayerAchievementByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_PlayerAchievement? = try object.CopyPlayerAchievementByIndex(
                TargetUserId: nil,
                AchievementIndex: .zero,
                LocalUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByIndex"])
    }
}
