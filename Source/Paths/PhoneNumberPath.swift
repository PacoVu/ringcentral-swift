import Foundation
import ObjectMapper
import Alamofire
open class PhoneNumberPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "phone-number"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.2</p><p>Returns the list of phone numbers that are used by a particular extension, and can be filtered by the phone number type. The returned list contains all numbers which are directly mapped to a given extension plus the features and also company-level numbers which may be used when performing different operations on behalf of this extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: GetExtensionPhoneNumbersResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetExtensionPhoneNumbersResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.2</p><p>Returns the list of phone numbers that are used by a particular extension, and can be filtered by the phone number type. The returned list contains all numbers which are directly mapped to a given extension plus the features and also company-level numbers which may be used when performing different operations on behalf of this extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetExtensionPhoneNumbersResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetExtensionPhoneNumbersResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.2</p><p>Returns the list of phone numbers that are used by a particular extension, and can be filtered by the phone number type. The returned list contains all numbers which are directly mapped to a given extension plus the features and also company-level numbers which may be used when performing different operations on behalf of this extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetExtensionPhoneNumbersResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Usage type of the phone number
        */
        open var `usageType`: [String]?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(usageType: [String]? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.usageType = `usageType`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `usageType` <- map["usageType"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: PhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
}
