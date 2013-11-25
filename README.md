# Meducation SDK

[![Build Status](https://travis-ci.org/meducation/meducation_sdk.png)](https://travis-ci.org/meducation/meducation_sdk)
[![Dependencies](https://gemnasium.com/meducation/meducation_sdk.png?travis)](https://gemnasium.com/meducation/meducation_sdk)
[![Code Climate](https://codeclimate.com/github/meducation/meducation_sdk.png)](https://codeclimate.com/github/meducation/meducation_sdk)

A wrapper for Meducation's SDK.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meducation_sdk'
```

And then execute:

    $ bundle

## Usage

Resources accept the following methods:

```ruby
MeducationSDK::MediaFile.find(id)
MeducationSDK::MediaFile.find_each #=> do ... end
MeducationSDK::MediaFile.where(foo: 'bar') #=> do ... end
MeducationSDK::MediaFile.create(foo: 'bar')
```

The following objects are currently supported:

```ruby
MediaFile
User
ItemComment
```

### Is it any good?

[Yes.](http://news.ycombinator.com/item?id=3067434)

## Contributing

Firstly, thank you!! :heart::sparkling_heart::heart:

We'd love to have you involved. Please read our [contributing guide](https://github.com/meducation/propono/tree/master/CONTRIBUTING.md) for information on how to get stuck in.

### Contributors

This project is managed by the [Meducation team](http://company.meducation.net/about#team). 

These individuals have come up with the ideas and written the code that made this possible:

- [Jeremy Walker](http://github.com/iHID)

## Licence

Copyright (C) 2013 New Media Education Ltd

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

A copy of the GNU Affero General Public License is available in [Licence.md](https://github.com/meducation/propono/blob/master/LICENCE.md)
along with this program.  If not, see <http://www.gnu.org/licenses/>.
