import Foundation
import ObjectMapper
import Alamofire
open class TimezonePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "timezone"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all available timezones.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: GetTimezoneListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetTimezoneListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all available timezones.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetTimezoneListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetTimezoneListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all available timezones.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetTimezoneListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: String?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: String? = nil, perPage: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns the information on a certain timezone.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetTimezoneInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetTimezoneInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns the information on a certain timezone.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: GetTimezoneInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GetTimezoneInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns the information on a certain timezone.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: GetTimezoneInfoResponse?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
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
        convenience public init(page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
}
