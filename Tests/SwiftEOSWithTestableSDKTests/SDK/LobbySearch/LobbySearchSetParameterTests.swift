import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_SetParameterTests: XCTestCase {
    public func testEOS_LobbySearch_SetParameter_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbySearch_SetParameter = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Parameter)
            XCTAssertEqual(Options!.pointee.ComparisonOp, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_LobbySearch_SetParameter")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetParameter(
            Parameter: nil,
            ComparisonOp: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbySearch_SetParameter"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}