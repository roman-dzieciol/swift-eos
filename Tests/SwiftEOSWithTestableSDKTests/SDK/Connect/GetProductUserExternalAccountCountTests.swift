import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetProductUserExternalAccountCountTests: XCTestCase {
    public func testEOS_Connect_GetProductUserExternalAccountCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_GetProductUserExternalAccountCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_Connect_GetProductUserExternalAccountCount")
            return .zero }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetProductUserExternalAccountCount(TargetUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_GetProductUserExternalAccountCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
