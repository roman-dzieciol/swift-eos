import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyAchievementDefinitionV2ByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyAchievementDefinitionV2ByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_CopyAchievementDefinitionV2ByIndex = { Handle, Options, OutDefinition in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
            XCTAssertNil(OutDefinition)
            TestGlobals.sdkReceived.append("EOS_Achievements_CopyAchievementDefinitionV2ByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Achievements_DefinitionV2? = try object.CopyAchievementDefinitionV2ByIndex(AchievementIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionV2ByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
