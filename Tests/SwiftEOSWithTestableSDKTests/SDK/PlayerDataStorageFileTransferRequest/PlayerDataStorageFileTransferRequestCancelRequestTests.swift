import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorageFileTransferRequest_CancelRequestTests: XCTestCase {
    public func testEOS_PlayerDataStorageFileTransferRequest_CancelRequest_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorageFileTransferRequest_CancelRequest = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_CancelRequest")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PlayerDataStorageFileTransferRequest_Actor = SwiftEOS_PlayerDataStorageFileTransferRequest_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.CancelRequest()
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_CancelRequest"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
