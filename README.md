# CDNetworks API Wrapper

The CDNetworks API Wrapper is a simple wrapper for
* Config Open API v1.0
* Cache Purge Open API v2.0

This gem allows a user to call methods from either of these APIs using the same syntax.

# Requirements
* A CDNetworks OCSP Account

# Installation
(Once this is on Rubygems)
<pre> gem install cdnetworks-api-wrapper </pre>

# Usage

## Creating an instance of CDNetworks API Wrapper
Create an instance:
<pre>
  cdn = CDNetworksApi.new({:user => [Your CDNetworks User Name], :password => [Your CDNetworks Password]})
</pre>

CDNetworks uses different access domains for some locations.  You can optionally specify a location when you create a new instance.

By default, the location is set to US/Global and uses the access domain https://openapi.us.cdnetworks.com

You can specify the following locations:
* Korea (uses access domain https://openapi.us.cdnetworks.com)
* Japan (uses access domain https://openapi.jp.cdnetworks.com)
* China (uses access domain https://openapi.txnetworks.cn)

<pre>
  cdn = CDNetworksApi.new(
    :user => [Your CDNetworks User Name],
    :password => [Your CDNetworks Password],
    :location => "Korea"
  )
</pre>

Again, the default location is US/Global using the access domain https://openapi.us.cdnetworks.com

Please see the CDNetworks API documentation for a full list of options and parameters for each API call

## Listing PADs and their information
<pre>
  cdn.list
</pre>

You can also add in parameters
<pre>
  cdn.list(:prod => true)
</pre>

## Viewing a PAD
<pre>
  cdn.view(:pad => "cache.foo.com")
</pre>

## Adding a PAD
<pre>
  cdn.add(:pad => "cache.foo.com", :origin => "neworigin.foo.com")
</pre>

## Editing a PAD
<pre>
  cdn.edit(:pad => "cache.foo.com", :honor_byte_range => "1")
</pre>

## Purging a cache
<pre>
  cdn.do_purge(:pad => "pad.foo.com")
</pre>

## Checking the status of a purge
NOTE: When a user makes a purge request to CDNetworks, it assigns the request an id called the "pid." This id is used to check the status of the purge request.
<pre>
  cdn.status(:pid => "1")
</pre>

## Listing all PAD domain names
<pre>
  cdn.pad_list(:output => "json")
</pre>
