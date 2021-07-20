import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyAchievementDefinitionByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyAchievementDefinitionByAchievementId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyAchievementDefinitionByAchievementId = { Handle, Options, OutDefinition in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYDEFINITIONBYACHIEVEMENTID_API_LATEST)
                XCTAssertNil(Options!.pointee.AchievementId)
                XCTAssertNotNil(OutDefinition)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_CopyAchievementDefinitionByAchievementId")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyAchievementDefinitionByAchievementId = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_Definition? = try object.CopyAchievementDefinitionByAchievementId(AchievementId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionByAchievementId"])
            XCTAssertNil(result)
        }
    }
}
