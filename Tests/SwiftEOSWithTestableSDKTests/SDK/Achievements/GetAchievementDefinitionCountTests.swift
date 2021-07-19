import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_GetAchievementDefinitionCountTests: XCTestCase {
    public func testEOS_Achievements_GetAchievementDefinitionCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_GetAchievementDefinitionCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_Achievements_GetAchievementDefinitionCount")
            return .zero }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetAchievementDefinitionCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_GetAchievementDefinitionCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
