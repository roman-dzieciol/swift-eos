import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Achievements_CopyAchievementDefinitionByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyAchievementDefinitionByAchievementId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyAchievementDefinitionByAchievementId = { Handle, Options, OutDefinition in
                GTest.current.sdkReceived.append("EOS_Achievements_CopyAchievementDefinitionByAchievementId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYDEFINITIONBYACHIEVEMENTID_API_LATEST)
                XCTAssertNil(Options!.pointee.AchievementId)
                XCTAssertNotNil(OutDefinition)
                return .zero
            }
            defer { __on_EOS_Achievements_CopyAchievementDefinitionByAchievementId = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyAchievementDefinitionByAchievementId(AchievementId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionByAchievementId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionByAchievementId"])
    }
}
