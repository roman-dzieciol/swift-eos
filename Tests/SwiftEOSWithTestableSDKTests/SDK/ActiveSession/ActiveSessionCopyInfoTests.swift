import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_CopyInfoTests: XCTestCase {
    public func testEOS_ActiveSession_CopyInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_ActiveSession_CopyInfo = { Handle, Options, OutActiveSessionInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(OutActiveSessionInfo)
            TestGlobals.sdkReceived.append("EOS_ActiveSession_CopyInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_ActiveSession_Info? = try object.CopyInfo()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_ActiveSession_CopyInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
