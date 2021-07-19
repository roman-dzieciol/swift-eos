import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_CopyInfoTests: XCTestCase {
    public func testEOS_SessionDetails_CopyInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionDetails_CopyInfo = { Handle, Options, OutSessionInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(OutSessionInfo)
            TestGlobals.sdkReceived.append("EOS_SessionDetails_CopyInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_SessionDetails_Info? = try object.CopyInfo()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionDetails_CopyInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
