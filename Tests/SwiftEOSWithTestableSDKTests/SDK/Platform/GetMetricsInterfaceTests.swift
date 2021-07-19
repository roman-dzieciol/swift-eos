import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetMetricsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetMetricsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetMetricsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetMetricsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Metrics_Actor? = object.GetMetricsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetMetricsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
