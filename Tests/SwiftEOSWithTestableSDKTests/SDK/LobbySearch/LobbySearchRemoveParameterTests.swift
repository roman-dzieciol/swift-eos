import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_RemoveParameterTests: XCTestCase {
    public func testEOS_LobbySearch_RemoveParameter_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbySearch_RemoveParameter = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Key)
            XCTAssertEqual(Options!.pointee.ComparisonOp, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_LobbySearch_RemoveParameter")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RemoveParameter(
            Key: nil,
            ComparisonOp: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbySearch_RemoveParameter"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
