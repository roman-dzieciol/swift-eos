import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyUnlockedAchievementByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyUnlockedAchievementByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyUnlockedAchievementByIndex = { Handle, Options, OutAchievement in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
                XCTAssertNotNil(OutAchievement)
                GTest.current.sdkReceived.append("EOS_Achievements_CopyUnlockedAchievementByIndex")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyUnlockedAchievementByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyUnlockedAchievementByIndex(
                    UserId: nil,
                    AchievementIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyUnlockedAchievementByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyUnlockedAchievementByIndex"])
    }
}
