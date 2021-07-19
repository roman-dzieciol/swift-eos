import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_SetPortRangeTests: XCTestCase {
    public func testEOS_P2P_SetPortRange_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_SetPortRange = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.Port, .zero)
            XCTAssertEqual(Options!.pointee.MaxAdditionalPortsToTry, .zero)
            TestGlobals.sdkReceived.append("EOS_P2P_SetPortRange")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetPortRange(
            Port: .zero,
            MaxAdditionalPortsToTry: .zero
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_SetPortRange"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
