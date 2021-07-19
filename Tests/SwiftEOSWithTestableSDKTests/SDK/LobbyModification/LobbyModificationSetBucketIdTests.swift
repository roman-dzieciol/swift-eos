import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_SetBucketIdTests: XCTestCase {
    public func testEOS_LobbyModification_SetBucketId_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyModification_SetBucketId = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.BucketId)
            TestGlobals.sdkReceived.append("EOS_LobbyModification_SetBucketId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetBucketId(BucketId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyModification_SetBucketId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
