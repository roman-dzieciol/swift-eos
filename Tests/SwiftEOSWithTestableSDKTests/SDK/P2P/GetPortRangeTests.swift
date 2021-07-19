import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetPortRangeTests: XCTestCase {
    public func testEOS_P2P_GetPortRange_Null() throws {
        TestGlobals.reset()
        var OutPort: UInt16? = nil
        var OutNumAdditionalPortsToTry: UInt16? = nil
        __on_EOS_P2P_GetPortRange = { Handle, Options, OutPort, OutNumAdditionalPortsToTry in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(OutPort)
            XCTAssertNil(OutNumAdditionalPortsToTry)
            TestGlobals.sdkReceived.append("EOS_P2P_GetPortRange")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.GetPortRange(
            OutPort: &OutPort,
            OutNumAdditionalPortsToTry: &OutNumAdditionalPortsToTry
        )
        XCTAssertNil(OutPort)
        XCTAssertNil(OutNumAdditionalPortsToTry)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_GetPortRange"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
