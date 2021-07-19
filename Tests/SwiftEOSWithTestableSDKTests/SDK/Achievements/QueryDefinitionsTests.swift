import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_QueryDefinitionsTests: XCTestCase {
    public func testEOS_Achievements_QueryDefinitions_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_QueryDefinitions = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.EpicUserId_DEPRECATED)
            XCTAssertNil(Options!.pointee.HiddenAchievementIds_DEPRECATED)
            XCTAssertEqual(Options!.pointee.HiddenAchievementsCount_DEPRECATED, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Achievements_QueryDefinitions") }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryDefinitions(
            LocalUserId: nil,
            EpicUserId_DEPRECATED: nil,
            HiddenAchievementIds_DEPRECATED: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_QueryDefinitions"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
