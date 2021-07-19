import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_SetRelayControlTests: XCTestCase {
    public func testEOS_P2P_SetRelayControl_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_SetRelayControl = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.RelayControl, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_P2P_SetRelayControl")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetRelayControl(RelayControl: .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_SetRelayControl"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
