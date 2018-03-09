import Foundation
import ObjectMapper
import Alamofire
open class CountryPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "country"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the countries available for calling.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: GetCountryListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetCountryListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the countries available for calling.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetCountryListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetCountryListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the countries available for calling.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetCountryListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Specifies whether login with the phone numbers of this country is enabled or not
        */
        open var `loginAllowed`: Bool?
        /*
        Indicates whether signup/billing is allowed for a country. If not specified all countries are returned (according to other filters specified if any)
        */
        open var `signupAllowed`: Bool?
        /*
        Specifies if RingCentral sells phone numbers of this country
        */
        open var `numberSelling`: Bool?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: Int?
        /*
        Specifies if free phone line for softphone is available for a country or not
        */
        open var `freeSoftphoneLine`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(loginAllowed: Bool? = nil, signupAllowed: Bool? = nil, numberSelling: Bool? = nil, page: Int? = nil, perPage: Int? = nil, freeSoftphoneLine: Bool? = nil) {
            self.init()
            self.loginAllowed = `loginAllowed`
            self.signupAllowed = `signupAllowed`
            self.numberSelling = `numberSelling`
            self.page = `page`
            self.perPage = `perPage`
            self.freeSoftphoneLine = `freeSoftphoneLine`
        }
        open func mapping(map: Map) {
            `loginAllowed` <- map["loginAllowed"]
            `signupAllowed` <- map["signupAllowed"]
            `numberSelling` <- map["numberSelling"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `freeSoftphoneLine` <- map["freeSoftphoneLine"]
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns the information on the required country.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetCountryInfoDictionaryResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetCountryInfoDictionaryResponse?, error) in
            callback(t, error)
        }
    }
}
