import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_GetPlayerAchievementCountTests: XCTestCase {
    public func testEOS_Achievements_GetPlayerAchievementCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_GetPlayerAchievementCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserId)
            TestGlobals.sdkReceived.append("EOS_Achievements_GetPlayerAchievementCount")
            return .zero }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetPlayerAchievementCount(UserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_GetPlayerAchievementCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
