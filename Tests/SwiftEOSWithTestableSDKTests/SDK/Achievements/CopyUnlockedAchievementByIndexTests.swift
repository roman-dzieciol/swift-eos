import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyUnlockedAchievementByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyUnlockedAchievementByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_CopyUnlockedAchievementByIndex = { Handle, Options, OutAchievement in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserId)
            XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
            XCTAssertNil(OutAchievement)
            TestGlobals.sdkReceived.append("EOS_Achievements_CopyUnlockedAchievementByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Achievements_UnlockedAchievement? = try object.CopyUnlockedAchievementByIndex(
            UserId: nil,
            AchievementIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_CopyUnlockedAchievementByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
