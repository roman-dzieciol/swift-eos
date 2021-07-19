import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorageFileTransferRequest_CancelRequestTests: XCTestCase {
    public func testEOS_TitleStorageFileTransferRequest_CancelRequest_Null() throws {
        TestGlobals.reset()
        __on_EOS_TitleStorageFileTransferRequest_CancelRequest = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_TitleStorageFileTransferRequest_CancelRequest")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_TitleStorageFileTransferRequest_Actor = SwiftEOS_TitleStorageFileTransferRequest_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.CancelRequest()
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_TitleStorageFileTransferRequest_CancelRequest"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
