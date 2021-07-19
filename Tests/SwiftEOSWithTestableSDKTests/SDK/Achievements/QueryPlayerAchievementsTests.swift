import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_QueryPlayerAchievementsTests: XCTestCase {
    public func testEOS_Achievements_QueryPlayerAchievements_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_QueryPlayerAchievements = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Achievements_QueryPlayerAchievements") }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryPlayerAchievements(
            TargetUserId: nil,
            LocalUserId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.UserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_QueryPlayerAchievements"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
