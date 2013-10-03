# Audit in Progress

I paid nothing for nothing
that's what I spent
c'mon
audit me
audit me
I don't give a shit, no

## Installation:

```
bundle install
```

## Usage:

```ruby
require './audit_in_progress'

data = StJoeCountyData.get_data_for_parcel("018-1034-1477")

=> {"PARCELID"=>"018-1034-1477",
 "TAXTYPE"=>"R",
 "TAXUNITUID"=>"18",
 "PARCELSTAT"=>"71-08-02-382-005.000-026",
 "LEGALDESCR"=>"Lot 21  Witherills Sub",
 "PAYYEAR"=>"2015",
 "NAME_1"=>"AMC MORTGAGE SERVICES INC",
 "MAILINGADD"=>"1100 Town & Country Rd #120",
 "MAILINGCIT"=>"Orange",
 "MAILINGSTA"=>"CA",
 "MAILINGZIP"=>"92863",
 "TIFAREAUID"=>"0",
 "TIFAREASSE"=>"0",
 "REALLANDVA"=>"2600",
 "REALRESLAN"=>"0",
 "REALIMPROV"=>"48200",
 "REALRESIMP"=>"0",
 "PROP_ADDR"=>"522  SHERMAN AV",
 "PROP_CITY"=>"South Bend",
 "PROP_STATE"=>"IN",
 "PROP_ZIP"=>"46616",
 "MAPREFEREN"=>"8-2F",
 "F_AREA"=>"5594.87142125",
 "ACREAGE"=>"0.13",
 "Detailed Report URL"=>
  "http://in-stjoseph-assessor.governmax.com/propertymax/site_authlink.asp?p=71-08-02-382-005.000-026&r=www.macoggis.com"}

```

## License

BSD - No warranty implied or otherwise; no liabilities assumed here, duder.

