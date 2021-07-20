import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyUnlockedAchievementByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyUnlockedAchievementByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyUnlockedAchievementByIndex = { Handle, Options, OutAchievement in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
                XCTAssertNotNil(OutAchievement)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_CopyUnlockedAchievementByIndex")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyUnlockedAchievementByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_UnlockedAchievement? = try object.CopyUnlockedAchievementByIndex(
                UserId: nil,
                AchievementIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_CopyUnlockedAchievementByIndex"])
            XCTAssertNil(result)
        }
    }
}
