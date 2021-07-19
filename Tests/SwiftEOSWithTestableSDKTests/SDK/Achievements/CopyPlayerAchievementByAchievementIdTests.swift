import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyPlayerAchievementByAchievementId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyPlayerAchievementByAchievementId = { Handle, Options, OutAchievement in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AchievementId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(OutAchievement)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_CopyPlayerAchievementByAchievementId")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyPlayerAchievementByAchievementId = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
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
    }
}
