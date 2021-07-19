import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_UnlockAchievementsTests: XCTestCase {
    public func testEOS_Achievements_UnlockAchievements_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_UnlockAchievements = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserId)
            XCTAssertNil(Options!.pointee.AchievementIds)
            XCTAssertEqual(Options!.pointee.AchievementsCount, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Achievements_UnlockAchievements") }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.UnlockAchievements(
            UserId: nil,
            AchievementIds: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.UserId)
                XCTAssertEqual(arg0.AchievementsCount, .zero)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_UnlockAchievements"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
