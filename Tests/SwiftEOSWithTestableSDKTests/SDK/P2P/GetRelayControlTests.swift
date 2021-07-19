import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetRelayControlTests: XCTestCase {
    public func testEOS_P2P_GetRelayControl_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_GetRelayControl = { Handle, Options, OutRelayControl in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(OutRelayControl)
            TestGlobals.sdkReceived.append("EOS_P2P_GetRelayControl")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ERelayControl? = try object.GetRelayControl()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_GetRelayControl"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
