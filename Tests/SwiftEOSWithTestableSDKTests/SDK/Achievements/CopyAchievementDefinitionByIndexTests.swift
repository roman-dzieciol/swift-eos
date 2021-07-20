import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyAchievementDefinitionByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyAchievementDefinitionByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyAchievementDefinitionByIndex = { Handle, Options, OutDefinition in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYDEFINITIONBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
                XCTAssertNotNil(OutDefinition)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_CopyAchievementDefinitionByIndex")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyAchievementDefinitionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_Definition? = try object.CopyAchievementDefinitionByIndex(AchievementIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionByIndex"])
            XCTAssertNil(result)
        }
    }
}
